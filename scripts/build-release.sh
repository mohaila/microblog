#!/bin/sh
echo "Building authsvc (Release)"
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-s -w -extldflags "-static"' -o build/release/authsvc cmd/authsvc/main.go

echo "Building blogsvc (Release)"
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-s -w -extldflags "-static"' -o build/release/blogsvc cmd/blogsvc/main.go