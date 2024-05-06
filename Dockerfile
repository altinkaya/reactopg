# Use a lightweight JDK base image
FROM eclipse-temurin:17-alpine AS build


# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/*.jar /app/app.jar

# Expose the port that the application will listen on
EXPOSE 7000

# Command to run the application when the container starts
CMD ["java", "-jar", "app.jar"]
