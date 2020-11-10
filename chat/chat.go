package chat

import (
	"context"
	"log"
)

type Server struct {
}

func (s *Server) SayHello(ctx context.Context, message *Message) (*Message, error) {
	log.Printf("message.Body from client: %s", message.Body)
	return &Message{Body: "Hello From the Server!"}, nil
}
