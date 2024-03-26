package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"sync"
	go_proto "test-greeting/src/go-proto"
	"time"

	"google.golang.org/grpc"
)

type server struct{}

func (*server) Greet(ctx context.Context, req *go_proto.GreetingRequest) (*go_proto.GreetingResponse, error) {
	fmt.Printf("Greeting function invoked %+v", req)
	firstName := req.GetGreeting().GetFirstName()
	LastName := req.GetGreeting().GetLastName()
	result := "Hello " + firstName + LastName

	res := &go_proto.GreetingResponse{
		Result: result,
	}
	return res, nil
}

func (*server) Fetch(req *go_proto.Request, srv go_proto.StreamingService_FetchServer) error {
	var wg sync.WaitGroup
	var res *go_proto.Response
	for i := 0; i < 100; i++ {
		wg.Add(1)
		go func(count int64) {
			defer wg.Done()
			time.Sleep(time.Duration(count) * time.Second)
			res = &go_proto.Response{
				Result: fmt.Sprintf("Request for #%d for Id:%d", count, req.Id),
			}

			if err := srv.Send(res); err != nil {
				log.Printf("send error %v", err)
			}

			fmt.Printf("\n finishing request number : %d", count)

		}(int64(i))
	}

	wg.Wait()
	return nil
}

func main() {
	fmt.Println("Golang GRPC")

	listner, err := net.Listen("tcp", "0.0.0.0:5051")

	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	fmt.Println("GRPC server started")

	s := grpc.NewServer()

	go_proto.RegisterGreetServiceServer(s, &server{})
	go_proto.RegisterStreamingServiceServer(s, &server{})

	if err := s.Serve(listner); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
