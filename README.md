# spring-boot-aws-sample

intro...

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
docker build --build-arg JAR_FILE=target/spring-boot-aws-sample-0.0.1-SNAPSHOT.jar -t spring-boot-aws-sample:latest .
```

Run container:

```bash
docker run -d -p 18080:8080 spring-boot-aws-sample:latest
```
