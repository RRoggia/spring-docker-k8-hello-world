# docker-hello-world

Run the application
```
docker build -t rroggia/spring-docker-hello-world:1.1 .
docker run -p 8080:8080 rroggia/spring-docker-hello-world:1.1
curl localhost:8080
```