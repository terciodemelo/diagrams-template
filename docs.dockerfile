FROM python:3.8.3-slim

RUN apt update && apt install -y graphviz curl
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

RUN echo 'source $HOME/.poetry/env' >> ~/.bashrc

ADD . /root/workspace
WORKDIR /root/workspace