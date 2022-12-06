#FROM maven:3.6.0-jdk-11-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package

#maven clean package -----> mvn clean package
#build docker image ------> docker build -t {name_for_image} .
#run docker image as container -----> docker run -d -p {port}:{port tcp} {image name}
FROM openjdk:11 as build
COPY target/*.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]