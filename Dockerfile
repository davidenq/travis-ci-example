FROM golang:alpine as builder
WORKDIR /app
COPY . .
RUN apk update && apk upgrade && \
  apk add --no-cache build-base bash git openssh
RUN go test --cover ./...
RUN cgo_enabled=0 go build -o server ./...

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app . 
CMD ["./server"]