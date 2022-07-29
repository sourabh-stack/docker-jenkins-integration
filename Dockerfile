FROM openjdk:8-jdk-buster
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} docker-jenkins-integration.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration.jar"]