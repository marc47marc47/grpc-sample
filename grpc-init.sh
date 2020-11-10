#!/bin/sh

echo " if brew install failed, get: https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/protoc-3.13.0-osx-x86_64.zip"


brew install protobuf
brew upgrade protobuf
go get -u github.com/golang/protobuf/protoc-gen-go




# get grpc example
# https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x248f5/
# export GO111MODULE=on  # Enable module mode
# go get google.golang.org/protobuf/cmd/protoc-gen-go \
#          google.golang.org/grpc/cmd/protoc-gen-go-grpc
# 
# git clone -b v1.33.1 https://github.com/grpc/grpc-go
