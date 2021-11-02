FROM golang:alpine

MAINTAINER panxi "panxi2021@gusulab.ac.cn"

WORKDIR $GOPATH/src/file-system

ADD . ./

ARG GO_MAIN=Main.go

RUN go build -o file_system .

EXPOSE 8080

ENTRYPOINT  ["./file_system"]

