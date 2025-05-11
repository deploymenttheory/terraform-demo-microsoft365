package github

import (
	"context"
	"fmt"
	"os"

	"github.com/deploymenttheory/terraform-demo-microsoft365/scripts/update_pr/internal/config"
	"github.com/deploymenttheory/terraform-demo-microsoft365/scripts/update_pr/internal/utils"
	"github.com/shurcooL/githubv4"
	"golang.org/x/oauth2"
)

// Client wraps the GitHub GraphQL client
type Client struct {
	client *githubv4.Client
	ctx    context.Context
}

// NewClient creates a new GitHub GraphQL client with authentication
func NewClient(config *config.Config) *Client {
	ctx := context.Background()
	ts := oauth2.StaticTokenSource(
		&oauth2.Token{AccessToken: config.GithubToken},
	)
	tc := oauth2.NewClient(ctx, ts)
	client := githubv4.NewClient(tc)

	return &Client{
		client: client,
		ctx:    ctx,
	}
}

// getPullRequestID retrieves the node ID for a specific Pull Request
func (c *Client) getPullRequestID(owner, repo, number string) (string, error) {
	var query struct {
		Repository struct {
			PullRequest struct {
				ID githubv4.ID
			} `graphql:"pullRequest(number: $number)"`
		} `graphql:"repository(owner: $owner, name: $repo)"`
	}

	variables := map[string]interface{}{
		"owner":  githubv4.String(owner),
		"repo":   githubv4.String(repo),
		"number": githubv4.Int(utils.ParseNumber(number)),
	}

	err := c.client.Query(c.ctx, &query, variables)
	if err != nil {
		return "", fmt.Errorf("failed to get PR ID: %v", err)
	}

	return query.Repository.PullRequest.ID.(string), nil
}

// addComment adds a comment to the PR using its node ID
func (c *Client) addComment(prID string, body string) error {
	var mutation struct {
		AddComment struct {
			ClientMutationID string
		} `graphql:"addComment(input: $input)"`
	}

	input := githubv4.AddCommentInput{
		SubjectID: prID,
		Body:      githubv4.String(body),
	}

	return c.client.Mutate(c.ctx, &mutation, input, nil)
}

// UpdatePRWithText adds a comment to the PR with formatted JSON content
func (c *Client) UpdatePRWithText(owner, repo, prNumber, artifactPath string) error {

	prID, err := c.getPullRequestID(owner, repo, prNumber)
	if err != nil {
		return fmt.Errorf("failed to get PR ID: %v", err)
	}

	content, err := os.ReadFile(artifactPath)
	if err != nil {
		return fmt.Errorf("failed to read artifact file: %v", err)
	}

	comment := utils.WrapJSONMarkdown(string(content))

	err = c.addComment(prID, comment)
	if err != nil {
		return fmt.Errorf("failed to add comment: %v", err)
	}

	return nil
}
