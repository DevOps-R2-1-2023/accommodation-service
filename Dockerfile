# Eclipse Temurin JDK 21 base image
FROM eclipse-temurin:21-jdk AS build

# Set working directory
WORKDIR /app

# Copy build files
COPY . .

# Build the project
RUN ./mvnw package

# Expose the port
EXPOSE 8081

# Define the entry point
CMD ["java", "-jar", "target/accommodation-service-0.0.1-SNAPSHOT.jar"]