FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/spring-petclinic-3.5.0-SNAPSHOT.jar app.jar
EXPOSE 8585
ENTRYPOINT ["java", "-jar", "app.jar"]
