package utils

import "fmt"

// ParseNumber converts a string number to int, with error handling
func ParseNumber(s string) int {
	var num int
	_, err := fmt.Sscanf(s, "%d", &num)
	if err != nil {
		return 0
	}
	return num
}

// WrapJSONMarkdown wraps the content in markdown code block
func WrapJSONMarkdown(content string) string {
	return fmt.Sprintf("```json\n%s\n```", content)
}
