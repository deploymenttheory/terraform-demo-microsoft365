FROM golang:1.23.5-alpine3.21 AS builder

# Build branch validator
WORKDIR /build/branch_validator
COPY scripts/branch_validator/go.mod .
COPY scripts/branch_validator/main.go .
COPY configuation/allowed_branch_prefixes.json /build/branch_validator/configuration/
RUN go mod download
RUN go build -o validator .

# Build PR updater
WORKDIR /build/pr_updater
COPY scripts/update_pr/go.mod scripts/update_pr/go.sum ./
COPY scripts/update_pr/ .
RUN go mod download
RUN go build -o pr-updater .

# Final stage
FROM alpine:3.21
WORKDIR /app
COPY --from=builder /build/branch_validator/validator .
COPY --from=builder /build/pr_updater/pr-updater .
COPY --from=builder /build/branch_validator/configuration/ ./configuration/

# Default command can be overridden at runtime
CMD ["./validator"]