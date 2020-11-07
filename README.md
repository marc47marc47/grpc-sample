#grpc-sample


Origin sample from [Go gRPC Beginners Tutorial](https://tutorialedge.net/golang/go-grpc-beginners-tutorial/) by Elliot Forbes

This is a basic sample for gRPC sample

# Script Description
Script        | Description
--------------|--------------------------------
git-init.sh   | for git upload when first init
grpc-init.sh  | setup grpc required package and protoc cmd
grpc-protoc.sh| if change chat.proto, rerun this script to generate chat/chat.pb.go
startServer.sh| start grpc server
startClient.sh| begin to connect to grpc server



## Run
``` bash
# Terminal 1
marc47@marc47 ~/g/grpc-sample> sh startServer.sh
2020/11/07 12:02:30 Received message body from client: Hello from the client


# Terminal 2
marc47@marc47 ~/g/grpc-sample> sh startClient.sh
2020/11/07 12:02:30 Response from Server: Hello From the Server!
```
