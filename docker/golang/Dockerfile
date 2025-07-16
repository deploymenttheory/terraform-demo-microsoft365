FROM golang:1.24.5-alpine3.22 AS builder

# Build PR updater
WORKDIR /build/pr_updater
# Copy go.mod and go.sum files
COPY scripts/update_pr/go.mod scripts/update_pr/go.sum ./
# Copy source files
COPY scripts/update_pr/pr_updater.go .
COPY scripts/update_pr/README.md ./
RUN go mod download
RUN go build -o pr-updater .

# Final stage
FROM alpine:3.21
WORKDIR /app
COPY --from=builder /build/pr_updater/pr-updater .

# Default command to run the PR updater
CMD ["./pr-updater"]