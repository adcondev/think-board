FROM mongo:8-noble

MAINTAINER AdConDev

LABEL name="Database"
LABEL authors="Adrián Constante @ RED2000"
LABEL description="MongoDB Database"

RUN echo 'MongoDB Version: ' \
    mongod --version

RUN echo 'MongoDB Up and Running!'