FROM alpine-java:base
MAINTAINER pysga1996
WORKDIR /opt/chi-discovery-service
COPY ./target/chi-discovery-service-0.0.1-SNAPSHOT.jar /opt/chi-discovery-service
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.profiles.active=k8s", "-jar", "./chi-discovery-service-0.0.1-SNAPSHOT.jar"]
VOLUME /opt/chi-discovery-service
EXPOSE 8010