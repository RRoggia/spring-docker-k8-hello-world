FROM sapmachine:11.0.4 AS jdk11
FROM maven 
COPY ./ /usr/src/docker-hello-world
WORKDIR /usr/src/docker-hello-world
RUN ["mvn", "clean", "install"]
CMD ["java", "-jar", "./target/docker-hello-world-0.0.1-SNAPSHOT.jar"]
