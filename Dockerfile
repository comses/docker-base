# base CoMSES Dockerfile
FROM phusion/baseimage:0.9.19
MAINTAINER CoMSES Net <dev@comses.net>
ONBUILD ENV PYTHONUNBUFFERED=1 \
            COMSES_UID=2718 \
            COMSES_USER=comses \
            LANG=C.UTF-8 \
            LC_ALL=C.UTF-8
ONBUILD RUN useradd -m --uid $COMSES_UID $COMSES_USER
