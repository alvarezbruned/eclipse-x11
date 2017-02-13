FROM ubuntu:14.04
MAINTAINER Albert Alvarez


# Install 

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update

RUN apt-get install -y openjdk-8-jre openjdk-8-jdk
RUN apt-get update

RUN wget http://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/oomph/epp/neon/R2a/eclipse-inst-linux64.tar.gz
RUN mv eclipse-inst-linux64.tar.gz /opt
RUN tar -xvzf /opt/eclipse-inst-linux64.tar.gz
RUN rm /opt/eclipse-inst-linux64.tar.gz

#ENTRYPOINT ["/opt/eclipse/eclipse"]
