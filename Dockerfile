FROM openjdk:8-jre-alpine
VOLUME /tmp
WORKDIR /app
ARG JAR_FILE
COPY ${JAR_FILE} /app/app.jar
ENV JAVA_OPTS=""
EXPOSE 8080
HEALTHCHECK  --interval=5m --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost:8080/actuator/health || exit 1
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app/app.jar" ]