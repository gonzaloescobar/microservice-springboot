FROM maven:3-jdk-8-alpine as build
COPY ./ ./
RUN mvn clean package -DskipTests

FROM openjdk:8-jre-alpine
COPY --from=build target/microservice*.jar ./app.jar
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.jar"]

EXPOSE 8080
