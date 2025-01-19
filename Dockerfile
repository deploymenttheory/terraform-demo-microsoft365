FROM golang:1.23.5-alpine3.21 as branch-validator
WORKDIR /app
COPY scripts/branch_validator/main.go .
COPY configuation/allowed_branch_prefixes.json /app/configuration/
COPY scripts/go.mod scripts/go.sum ./
RUN go build -o validator main.go

FROM golang:1.23.5-alpine3.21 as pr-updater
WORKDIR /app/scripts/update_pr
COPY scripts/go.mod scripts/go.sum ./
RUN go mod download
COPY scripts/update_pr/ ./
RUN go build -o /app/pr-updater .