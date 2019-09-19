## Prepare Build
FROM alpine:latest as prepare-build

WORKDIR /usr/build
COPY target/*.jar ./
RUN unzip *.jar && rm ./*.jar

## Build Spring Boot Image
FROM spring-boot-base:8

COPY --from=prepare-build /usr/build/BOOT-INF/lib /app/lib
COPY --from=prepare-build /usr/build/META-INF /app/META-INF
COPY --from=prepare-build /usr/build/BOOT-INF/classes /app

EXPOSE 8080/tcp

CMD ["nl.ns.aws.springbootawssample.SpringBootAwsSampleApplication"]