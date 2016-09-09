# base CoMSES Dockerfile
FROM python:3.5-alpine
MAINTAINER CoMSES Net <dev@comses.net>
USER root
ARG COMSES_UID=2718
RUN addgroup -S comses && adduser -G comses -S comses -u $COMSES_UID
