FROM golang:1.23.5-alpine3.21 AS builder

# Build PR updater
WORKDIR /build/pr_updater
COPY ./scripts/update_pr/go.mod ./scripts/update_pr/go.sum ./
COPY ./scripts/update_pr/pr_updater.go .
COPY ./scripts/update_pr/README.md ./
RUN go mod download
RUN go build -o pr-updater .

# Final stage
FROM alpine:3.21
WORKDIR /app
COPY --from=builder /build/pr_updater/pr-updater .

# Default command can be overridden at runtime
CMD ["./validator"]