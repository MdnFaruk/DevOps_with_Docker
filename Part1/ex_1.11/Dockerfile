FROM openjdk:11

WORKDIR /home/faruk

EXPOSE 8080

COPY . .

RUN apt-get update && apt-get install dos2unix

RUN dos2unix ./mvnw

RUN chmod +x mvnw 

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
