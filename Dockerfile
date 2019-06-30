FROM golang:1.10.2-alpine

RUN apk add --no-cache make git

RUN go get -d -v github.com/kelseyhightower/confd && \
  ln -s $GOPATH/src/github.com/kelseyhightower/confd /app

WORKDIR /app

ARG VERSION=v0.16.0

RUN git checkout $VERSION

RUN make
