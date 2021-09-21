#docker build -t back . && docker run -p 8080:8080 back
FROM golang:1.16
WORKDIR /app
EXPOSE 8080
COPY . .
ENV REQUEST_ORIGIN=http://localhost:5000
RUN go build
RUN go test ./...
CMD [ "./server"]