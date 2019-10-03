FROM maven 
COPY ./ /usr/src/docker-hello-world
WORKDIR /usr/src/docker-hello-world
RUN ["mvn", "clean", "install"]
CMD ["java", "-jar", "./target/docker-hello-world-0.0.1-SNAPSHOT.jar"]
