FROM ubuntu:14.04
MAINTAINER Albert Alvarez


# Install 

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget
RUN apt-get install software-properties-common -y


RUN apt-get install -y openjdk-8-jre openjdk-8-jdk
RUN apt-get update

RUN apt-get install eclipse-pde -y

ENTRYPOINT ["/opt/eclipse/eclipse"]
