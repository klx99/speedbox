FROM ubuntu:20.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt install -y git vim ctags indent
RUN apt install -y sudo lsb-release wget iputils-ping net-tools

RUN DEBIAN_FRONTEND="noninteractive" apt install -y cmake clang
RUN apt install -y curl jq pkg-config rsync
#RUN apt install -y nvidia-opencl-dev
RUN apt install -y mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl
RUN apt remove -y gcc && apt autoremove
