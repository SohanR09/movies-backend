FROM openjdk:8-jdk
EXPOSE 3000
CMD ["java", "-Dserver.port=${PORT}", "-jar", "app.jar"]
VOLUME /tmp
ADD target/Movies-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]