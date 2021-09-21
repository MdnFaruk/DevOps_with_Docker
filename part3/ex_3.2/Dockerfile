FROM alpine:latest

WORKDIR /usr/app
COPY build.sh ./

RUN apk add --no-cache git docker && chmod +x b.sh 

ENTRYPOINT [ "./build.sh" ]