package main

import (
	"google.golang.org/grpc"
	"log"
	"net"
	"swipelab.co/ghost/protocol"
	"swipelab.co/ghost/services"
)

func main() {
	port := "9000"
	lis, err := net.Listen("tcp", ":"+port)
	if err != nil {
		log.Fatalf("Failed to listen on port %s > %v", port, err)
	}

	chatServer := services.ChatServer{}

	server := grpc.NewServer()

	protocol.RegisterChatServiceServer(server, &chatServer)

	log.Print("Starting gRPC server on port " + port)

	if err := server.Serve(lis); err != nil {
		log.Fatalf("Failed to server gRPC server on port %s > %v", port, err)
	}
}
