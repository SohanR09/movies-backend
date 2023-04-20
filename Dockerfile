# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the executable JAR file from the target directory into the container at /app
COPY target/Movies-0.0.1-SNAPSHOT.jar /app

# Make port 8080 available to the world outside this container
EXPOSE 3000

# Run the JAR file
CMD ["java", "-jar", "app/Movies-0.0.1-SNAPSHOT.jar"]