
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ENV PATH $PATH:/opt/gradle/gradle-4.8/bin
ADD gradle-4.8-bin.zip /tmp/gradle-4.8-bin.zip
RUN mkdir -p /opt/gradle \
    && unzip -d /opt/gradle /tmp/gradle-4.8-bin.zip
ENTRYPOINT [ "gradle", "-v" ]
