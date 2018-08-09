FROM python:3.6-alpine

MAINTAINER ohartl <hello@ohartl.de>

RUN set -e; \
    apk add --no-cache --virtual .build-deps \
        gcc \
        libc-dev \
        linux-headers \
        mariadb-dev \
        python3-dev \
    && pip install virtualenv

VOLUME ["/app"]
WORKDIR /app

CMD ["python3"]
