FROM node:10-alpine

RUN apk add --no-cache ffmpeg supervisor bash git alpine-sdk

RUN mkdir /app

CMD ["/usr/bin/supervisord"]