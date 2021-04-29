#!/bin/sh

if [[ "$(docker images -q golang:1.16-alpine)" == "" ]]; then
	docker build -t golang:1.16-alpine .
fi

if [[ "$(docker ps -q -f name=go-contacts)" != "" ]]; then
	docker rm -f go-contacts
fi

docker run -d --name go-contacts -p 8080:8080 golang:1.16-alpine

echo
echo "Successful project build"
echo "Open it on http://localhost:8080"
echo
