FROM ubuntu
LABEL version="1.0"
LABEL description="Environnement ubuntu equipé d'une JVM 11"
LABEL os="ubuntu"
RUN apt-get update && \
apt-get install -y --no-install-recommends \
        openjdk-11-jre && \
apt-get install -y --no-install-recommends \
        default-jdk && \
mkdir /opt/api
ADD studies-0.0.1-SNAPSHOT.jar /opt/api/studies-0.0.1-SNAPSHOT.jar
ENV JAVA_HOME /usr/bin/java
CMD ["java","-jar","/opt/api/studies-0.0.1-SNAPSHOT.jar"]
WORKDIR /opt

