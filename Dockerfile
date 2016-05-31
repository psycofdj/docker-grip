FROM python:2.7.11-alpine
MAINTAINER Xavier MARCELET <xavier@marcelet.com>

RUN pip install grip
RUN mkdir -p /export

COPY ./entrypoint.sh /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
