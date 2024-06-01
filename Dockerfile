FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-devel

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

RUN apt update -y \
&& apt install -y \
    libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev \
    protobuf-compiler libgflags-dev libgoogle-glog-dev liblmdb-dev opencl-headers \ 
    ocl-icd-opencl-dev libviennacl-dev youtube-dl \
    git wget libopencv-dev libboost-all-dev
