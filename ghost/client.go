package main

import (
	"context"
	"google.golang.org/grpc"
	"log"
	"swipelab.co/ghost/protocol"
)

func main() {
	var conn *grpc.ClientConn
	conn, err := grpc.Dial(":9000", grpc.WithInsecure())
	if err != nil {
		log.Fatalf("Failed to connect : %v", err)
	}
	defer func(conn *grpc.ClientConn) {
		err := conn.Close()
		if err != nil {
			log.Fatalf("failed to close connection : %v", err)
		}
	}(conn)

	c := protocol.NewChatServiceClient(conn)

	event := &protocol.Event{
		Type: &protocol.Event_Message{
			Message: &protocol.Message{
				ChatId: &protocol.ChatId{
					Id: "TODO://chatId",
				},
				SenderId: &protocol.UserId{
					Id: "TODO://userId",
				},
				Body: &protocol.Content{
					Type: &protocol.Content_Text{
						Text: "Hello",
					},
				},
			},
		},
	}

	response, err := c.Send(context.Background(), event)
	if err != nil {
		log.Fatalf("cannot send : %v", err)
	}
	log.Printf("received response : %v", response)
}
