# spring-boot-aws-sample

This sample project make use of the spring boot base distroless image for running on AWS.

<https://ns-bitbucket.dev.infosupport.net/projects/SRE/repos/spring-boot-docker/browse>

## Build

```bash
mvn package
```

## Run

```bash
mvn spring-boot:run
```

or 

```bash
java -jar target/spring-boot-aws-sample-0.0.1-SNAPSHOT.jar
```

## Docker

Build image:

```bash
docker build -t spring-boot-aws-sample:latest .
```

Run container:

```bash
docker run -d -p 18080:8080 spring-boot-aws-sample:latest
```
