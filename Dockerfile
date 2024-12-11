FROM phusion/baseimage:jammy-1.0.4
LABEL maintainer="CoMSES Net <support@comses.net>"

RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold" && \
    apt-get install -y build-essential pipx
    
ONBUILD ENV PYTHONUNBUFFERED=1 \
            COMSES_UID=2718 \
            COMSES_USER=comses \
            LANG=C.UTF-8 \
            LC_ALL=C.UTF-8
ONBUILD RUN useradd -m --uid $COMSES_UID $COMSES_USER
