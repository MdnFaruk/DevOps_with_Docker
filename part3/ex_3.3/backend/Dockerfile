#docker build -t back . && docker run -p 8080:8080 back
FROM golang:1.16
WORKDIR /app
EXPOSE 8080
COPY . .
ENV REQUEST_ORIGIN=http://localhost:5000
RUN go build
RUN go test ./...
RUN groupadd newGroup && useradd -m newUser -G newGroup
RUN chown -R newUser:newGroup /app

USER newUser && newGroup

CMD [ "./server"]