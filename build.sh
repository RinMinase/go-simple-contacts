#!/bin/sh
docker build -t go-docker .
docker rm -f go-contacts
docker run -d --name go-contacts -p 8080:8080 go-docker
