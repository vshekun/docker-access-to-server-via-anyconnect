FROM alpine:latest

ARG ANYCONNECT_SERVER
ARG ANYCONNECT_USER
ARG ANYCONNECT_PASSWORD
ARG ANYCONNECT_ARGS
ARG REMOTE_HOST

RUN apk update
RUN apk add openconnect --no-cache
RUN apk add bash --no-cache

ADD entrypoint.sh /entrypoint.sh

HEALTHCHECK  --interval=10s --timeout=10s --start-period=10s \
    CMD /sbin/ifconfig tun0

CMD ["bash", "/entrypoint.sh"]
