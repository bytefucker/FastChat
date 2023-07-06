FROM nvidia/cuda:11.7.1-runtime-ubuntu20.04

WORKDIR /app

ADD ubuntu20_sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y python3.9 python3.9-distutils curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.9 get-pip.py

ADD . /app/

RUN pip3 install -e . \
    -i https://mirrors.cloud.tencent.com/pypi/simple \
    --trusted-host mirrors.cloud.tencent.com && rm -rf `pip3 cache dir`
