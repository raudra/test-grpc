FROM golang:1.20-alpine3.16

LABEL maintainer="raudra.gmail@nitt.com"

RUN apk add build-base bash git


WORKDIR /test-greetings

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . /test-greetings

RUN go mod tidy

RUN go build -o /usr/local/bin/test-greetings

CMD chmod +x /test-greetings

CMD test-greetings
