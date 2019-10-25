# docker-hello-world

Run the application
```
docker build -t rroggia/spring-docker-hello-world:1.1 .
docker run -d --name microservice-name -p 8080:8080 --network roggia rroggia/spring-docker-hello-world:1.1
curl localhost:8080


docker run -d --publish-all --network roggia --name monitoring java-monitoring
docker port monitoring
```

## Active metrics
[Spring References](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#production-ready-enabling)
