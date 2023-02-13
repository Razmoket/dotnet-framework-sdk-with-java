FROM mcr.microsoft.com/dotnet/sdk:7.0

RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME
