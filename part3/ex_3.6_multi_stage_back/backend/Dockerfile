FROM alpine:latest AS builder
WORKDIR /app
EXPOSE 8080
COPY . .
ENV REQUEST_ORIGIN=http://localhost:5000
RUN apk add --no-cache git make musl-dev go && go build && go test ./... && \
    addgroup newgroup && adduser -D newuser -G newgroup && \
    chown -R newuser:newgroup /app

USER newuser && newgroup
ENTRYPOINT [ "./server"]

FROM scratch
COPY --from=builder /app /app







