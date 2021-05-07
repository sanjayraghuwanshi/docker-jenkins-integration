FROM ubuntu:latest
RUN apt-get update
RUN apt install -y vim
ADD target/dockerjenkins.jar dockerjenkins.jar
CMD "/bin/bash"