# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Gaini Laxman <laxman@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/spring-boot-chat-app.jar spring-boot-chat-app.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-boot-chat-app.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","/spring-boot-chat-app.jar"]

