# base CoMSES Dockerfile
FROM python:3.5-alpine
MAINTAINER CoMSES Net <dev@comses.net>
USER root
ARG COMSES_UID=2718
RUN adduser -u $COMSES_UID -D comses
