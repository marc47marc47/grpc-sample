package main

import (
	"log"
	"net"

	"google.golang.org/grpc"
	"grpc-example/chat"
)

func main() {
	lis, err := net.Listen("tcp", ":9000")
	if err != nil {
		log.Fatal("Failed to listen on port 9000: %v", err)
	}

	s := chat.Server{}

	gserver := grpc.NewServer()

	chat.RegisterChatServiceServer(gserver, &s)

	if err := gserver.Serve(lis); err != nil {
		log.Fatal("Failed to serve gRPC server over port 9000: %v", err)
	}

}
