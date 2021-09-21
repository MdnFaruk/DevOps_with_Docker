FROM ubuntu:18.04

WORKDIR usr/src/app

RUN apt update && apt install curl -y

COPY script.sh .

RUN chmod +x script.sh

CMD ./script.sh
