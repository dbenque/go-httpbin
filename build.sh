#!/bin/sh 

CGO_ENABLED=0 go build -i -installsuffix cgo -o ./docker/go-httpbin cmd/httpbin/ma.go

cd ./docker
docker build -t dbenque/go-httpbin:latest .
