FROM ubuntu:20.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt install -y git vim ctags indent
RUN apt install -y wget iputils-ping net-tools

RUN apt install -y python gcc g++-multilib
RUN DEBIAN_FRONTEND="noninteractive" apt install -y pkg-config

#RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
