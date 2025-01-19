FROM golang:1.23.5-alpine3.21 as branch-validator
WORKDIR /app
COPY scripts/branch_validator/main.go .
COPY ./configuration/allowed_branch_prefixes.json /app/configuration/
RUN go build -o validator main.go

FROM golang:1.23.5-alpine3.21 as pr-updater
WORKDIR /app
COPY ./scripts/update_pr/go.mod scripts/update_pr/go.sum ./
RUN go mod download
COPY scripts/update_pr/ .
RUN go build -o pr-updater