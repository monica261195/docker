FROM ubuntu:latest
ARG PACKAGE
RUN apt update -y && apt install $PACKAGE
