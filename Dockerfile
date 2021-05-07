FROM ubuntu:latest
RUN apt-get update
RUN apt install -y vim
COPY demo.sh /tmp
CMD "/bin/bash"