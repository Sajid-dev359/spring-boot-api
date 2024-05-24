# Use a different Java base image with JDK 17
FROM eclipse-temurin:17-jre-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file
COPY target/Person-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which the app will run
EXPOSE 8080

# Set the command to run the application
CMD ["java", "-jar", "app.jar"]
