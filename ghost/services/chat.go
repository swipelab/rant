package services

import (
	"context"
	"log"
	"swipelab.co/ghost/protocol"
)

type ChatServer struct{}

func (c *ChatServer) Send(ctx context.Context, event *protocol.Event) (*protocol.Event, error) {
	log.Printf("Received event: %v", event.ProtoReflect())
	return event, nil
}
