FROM ubuntu:20.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt install -y git vim ctags indent
RUN apt install -y wget iputils-ping net-tools

RUN apt install -y python3 python3-venv sqlite3
