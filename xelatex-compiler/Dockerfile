FROM debian:bullseye-slim
LABEL org.opencontainers.image.authors="ashwinath@hotmail.com"
LABEL org.opencontainers.image.source https://github.com/ashwinath/docker-images

WORKDIR /data
RUN apt update && apt install -y texlive-xetex texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra

ARG UNAME=ashwin
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME
