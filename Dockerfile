FROM amazoncorretto:21-alpine
WORKDIR /app
COPY target/maven-demo-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-cp", "app.jar", "com.example.App"]
