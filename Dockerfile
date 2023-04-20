FROM openjdk:6-jdk-slim
VOLUME /tmp
ADD target/Movies-0.0.1-SNAPSHOT.jar app.jar
ENV PORT 3000
EXPOSE 3000
CMD ["java", "-Dserver.address=0.0.0.0", "-jar", "app.jar"]
CMD ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]