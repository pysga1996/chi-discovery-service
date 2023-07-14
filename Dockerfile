FROM openjdk:8-jdk-alpine
MAINTAINER pysga1996
WORKDIR /app
RUN mkdir -p /opt
COPY ./target/chi-discovery-service-0.0.1-SNAPSHOT.jar /opt
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.profiles.active=k8s", "-jar", "/opt/chi-discovery-service-0.0.1-SNAPSHOT.jar"]
VOLUME /app
EXPOSE 80