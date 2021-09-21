FROM golang:1.16
WORKDIR /app
EXPOSE 8080
COPY . .
RUN go build
RUN go test ./...
CMD [ "./server"]