FROM node:10-alpine

RUN apk add --no-cache ffmpeg supervisor bash git alpine-sdk

RUN mkdir /app

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]