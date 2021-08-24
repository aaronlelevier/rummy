#!/bin/bash
echo "start"

echo "build"
GOOS=linux GOARCH=amd64 go build -o main main.go
zip main.zip main

echo "package"
sam build

echo "deploy"
sam deploy

echo "done"