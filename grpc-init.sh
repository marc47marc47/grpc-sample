#!/bin/sh

echo " if brew install failed, get: https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/protoc-3.13.0-osx-x86_64.zip"

brew install protobuf
brew upgrade protobuf
go get -u github.com/golang/protobuf/protoc-gen-go
