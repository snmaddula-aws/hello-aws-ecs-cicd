# Base image
FROM amazoncorretto:17-alpine-jdk

# Working directory
WORKDIR /app

# Copy executable jar to work dir
COPY build/libs/app.jar /app

# Expose the port number
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]