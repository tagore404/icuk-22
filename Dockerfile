# Use a base image with Java runtime
FROM openjdk:8-jre-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/springboot-application-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
