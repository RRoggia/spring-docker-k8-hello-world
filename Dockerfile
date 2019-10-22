FROM maven:3.6.2-jdk-11 AS build
COPY ./ /usr/src/docker-hello-world
WORKDIR /usr/src/docker-hello-world
RUN ["mvn", "clean", "install"]

FROM openjdk:11-jre
COPY --from=build /usr/src/docker-hello-world/target/ .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "docker-hello-world-0.0.1-SNAPSHOT.jar"]
