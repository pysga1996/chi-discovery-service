FROM openjdk:8-jdk-alpine
MAINTAINER pysga1996
RUN apk update
RUN apk --no-cache add curl
WORKDIR /app
RUN mkdir -p /opt
COPY ./target/chi-discovery-service-0.0.1-SNAPSHOT.jar /opt
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.profiles.active=k8s", "-jar", "/opt/chi-discovery-service-0.0.1-SNAPSHOT.jar"]
HEALTHCHECK --start-period=60s --interval=30s --timeout=10s \
  CMD curl -f http://localhost:80/chi-discovery-service/actuator/health | grep UP || exit 1
VOLUME /app
EXPOSE 80