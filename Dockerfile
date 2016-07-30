FROM alpine:edge
MAINTAINER me@cheungpat.com

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update imapproxy dockerize ca-certificates

ADD boot /
RUN chmod +x /boot
ADD imapproxyd.conf.tmpl /etc/

ENV IMAPPROXYD_CONF=/etc/imapproxyd.conf \
    TLS_CA_PATH=/usr/share/ca-certificates \
    LISTEN_PORT=143

EXPOSE 143

CMD /boot
