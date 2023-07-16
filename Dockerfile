#FROM openjdk:8-jdk-alpine https://www.baeldung.com/spring-boot-docker-images
FROM adoptopenjdk/openjdk11:alpine-jre
EXPOSE 8080
ARG JAR_FILE=target/rest-service-complete-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]