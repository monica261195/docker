FROM ubuntu:latest
ARG PACKAGE
RUN apt-get update -y && apt-get install $PACKAGE
