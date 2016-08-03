# base CoMSES Dockerfile
FROM python:3-alpine
MAINTAINER CoMSES Net <editors@openabm.org>
USER root
RUN addgroup -S comses && adduser -G comses -S comses
