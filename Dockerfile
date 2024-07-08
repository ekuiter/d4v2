FROM ubuntu:22.04
RUN apt-get update && apt install -y \
    build-essential \
    cmake \
    libgmp-dev \
    libboost-all-dev \
    ninja-build
WORKDIR /home
COPY . ./
RUN ./build.sh -s
ENTRYPOINT [ "bin/d4_static" ]