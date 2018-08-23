FROM ubuntu:18.04

MAINTAINER ohartl <hello@ohartl.de>

RUN apt update \
    && apt install libmysqlclient-dev python3-pip python3-dev -y \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && ln -s /usr/bin/pip3 pip \
    && pip3 install --upgrade pip \
    && pip3 install virtualenv

VOLUME ["/app"]
WORKDIR /app

CMD ["python3"]
