# base CoMSES Dockerfile
FROM python:3
MAINTAINER CoMSES Net <editors@openabm.org>

RUN groupadd -r comses && useradd -r -g comses comses
