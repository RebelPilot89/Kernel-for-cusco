FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        git \
        python3 \
        libssl-dev \
        clang \
        make \
        gcc \
        bc \
        flex \
        bison \
        libelf-dev \
        libncurses5-dev \
        libncursesw5-dev \
        cpio \
        xz-utils \
        gcc-aarch64-linux-gnu \
        g++-aarch64-linux-gnu \
        tar \
        nano

# Establecer el directorio de trabajo
WORKDIR /home/rebelpilot89/kernel-msm

RUN rm -rf /home/rebelpilot89/kernel-msm/*

# Establecer las variables de entorno para la compilación cruzada
ENV CROSS_COMPILE=aarch64-linux-gnu-
ENV ARCH=arm64
