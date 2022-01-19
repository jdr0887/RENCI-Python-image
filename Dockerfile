FROM python:3.9-buster

# get some credit
LABEL maintainer="renci.org"

# update/install basic tools
RUN apt-get update
RUN apt-get install -yq vim

# create a new non-root user
RUN useradd -M -u 1000 nru

# update pip
RUN pip install --upgrade pip
