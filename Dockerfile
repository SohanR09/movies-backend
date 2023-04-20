FROM openjdk:8-jdk
VOLUME /tmp
ADD target/Movies-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 3000
CMD ["java", "-Dserver.port=3000", "-jar", "app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]