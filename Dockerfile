FROM golang:1.20

RUN go version
ENV GOPATH=/

COPY ./ ./

# build go app
RUN go mod download
RUN go build -o hello-world-server ./main.go

CMD ["./hello-world-server"]