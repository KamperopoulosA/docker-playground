FROM ubuntu:24.04

WORKDIR /java

RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L -o openjdk-26.tar.gz \
    https://download.java.net/java/GA/jdk26.0.1/458fda22e4c54d5ba572ab8d2b22eb83/8/GPL/openjdk-26.0.1_linux-x64_bin.tar.gz

RUN tar -xzf openjdk-26.tar.gz

RUN rm openjdk-26.tar.gz

ENV JAVA_HOME=/java/jdk-26.0.1
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN java -version
RUN javac -version