ARG NODE_VER

FROM node:${NODE_VER}-buster

ARG WORKDIR_PATH
ARG USER_ID

USER root
RUN apt-get -y update \
    &&  apt-get install --no-install-recommends -yqq \
    cron \
    wget \
    mc \
    git \
    unzip \
    zip \
    sudo

WORKDIR ${WORKDIR_PATH}
RUN npm install -g express-generator

# USER ${USER_ID}
