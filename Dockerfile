# Stage 1: Build
FROM maven:3.8.6-openjdk-8 AS build
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM openjdk:8-jre-slim
COPY --from=build /app/target/springboot-application-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
