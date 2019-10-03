FROM maven:3.6.2-jdk-11 
COPY ./ /usr/src/docker-hello-world
WORKDIR /usr/src/docker-hello-world
EXPOSE 8080
RUN ["mvn", "clean", "install"]
CMD ["mvn", "spring-boot:run"]
