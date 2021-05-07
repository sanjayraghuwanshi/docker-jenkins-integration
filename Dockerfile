FROM ubuntu:latest
RUN apt-get update
RUN apt install -y vim
CMD "/bin/bash"