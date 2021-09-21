FROM golang:1.16-alpine
WORKDIR /app
EXPOSE 8080
COPY . .
ENV REQUEST_ORIGIN=http://localhost:5000
RUN go build && go test ./... && \
    addgroup newgroup && adduser newuser && \
    chown -R newuser:newgroup /app

USER newuser && newgroup

CMD [ "./server"]