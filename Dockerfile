FROM openjdk:8-jdk-alpine

LABEL source="https://github.com/fiap-69aoj-helppoint/helppoint-product" \
      maintainer="flavioso16@gmail.com"

ADD ./target/helppoint-configuration-server-0.0.1-SNAPSHOT.jar helppoint-configuration-server.jar
ADD ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

EXPOSE 9091

ENTRYPOINT ["/docker-entrypoint.sh"]