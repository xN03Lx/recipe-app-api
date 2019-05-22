FROM python:3.7-alpine
MAINTAINER bmkeros

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir -p /app
WORKDIR /app

COPY ./app /app

RUN adduser -D user
RUN chown user /app
USER user


