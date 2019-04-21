FROM ubuntu:18.04

# docker image information

LABEL edu.uanet.sgc29-devops.url="https://github.com/s-collins/yaml-cpp.git" \
      edu.uanet.sgc29-devops.distro="ubuntu" \
      edu.uanet.sgc29-devops.os_version="18.04"

# arguments / variables

ARG CMAKE_URL=https://github.com/Kitware/CMake/releases/download/v3.14.0-rc2/cmake-3.14.0-rc2-Linux-x86_64.tar.gz

# toolchain installation

RUN apt-get update -y \
 && apt-get install -y make g++ curl \
 && curl -L $CMAKE_URL | tar xz --strip-components=1 -C /usr/local
