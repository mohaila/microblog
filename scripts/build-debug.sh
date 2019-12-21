#!/bin/sh
echo "Building authsvc (Debug)"
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o build/debug/authsvc cmd/authsvc/main.go

echo "Building blogsvc (Debug)"
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o build/debug/blogsvc cmd/blogsvc/main.go