
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ENV PATH $PATH:/opt/gradle/gradle-4.8/bin
RUN mkdir -p /opt/gradle \
    && apk add --update curl \
    && curl -o /tmp/gradle-4.8-bin.zip https://downloads.gradle.org/distributions/gradle-4.8-bin.zip \
    && unzip -d /opt/gradle /tmp/gradle-4.8-bin.zip \
    && rm -fv /tmp/gradle-4.8-bin.zip
ENTRYPOINT [ "gradle", "-v" ]