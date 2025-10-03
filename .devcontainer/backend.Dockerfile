FROM node:22-alpine

MAINTAINER AdConDev

LABEL name="Backend"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="Node.js & Npm Environment"

RUN echo 'Node.js & Npm Versions: ' \
    node --version && npm --version

RUN echo 'Node.js and Npm Up and Running!'



