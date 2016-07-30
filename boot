#!/bin/sh

syslogd
dockerize -template $IMAPPROXYD_CONF.tmpl:$IMAPPROXYD_CONF \
    -stdout /var/log/messages \
    in.imapproxyd -f $IMAPPROXYD_CONF
