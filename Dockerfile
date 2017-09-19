# base CoMSES Dockerfile
FROM phusion/baseimage:0.9.22
LABEL maintainer="Allen Lee <allen.lee@asu.edu>"
    
ONBUILD ENV PYTHONUNBUFFERED=1 \
            COMSES_UID=2718 \
            COMSES_USER=comses \
            LANG=C.UTF-8 \
            LC_ALL=C.UTF-8
ONBUILD RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold" \
    && useradd -m --uid $COMSES_UID $COMSES_USER
