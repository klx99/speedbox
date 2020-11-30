FROM carrier:20.04

RUN echo developer |sudo -S sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN echo developer |sudo -S apt update
RUN echo developer |sudo -S apt install -y vim ctags indent
RUN echo developer |sudo -S apt install -y valgrind gdb
