FROM openjdk:8
MAINTAINER devops
WORKDIR /tmp/
COPY target/movies-1.0-SNAPSHOT.jar ./app.jar
COPY application.properties ./application.properties
EXPOSE 8090
CMD ["java" "-jar", "app.jar"]  
