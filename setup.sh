#!/bin/sh -e

if [ -z ${WEBHOOK_URL} ]; then
    echo WEBHOOK_URL is empty
    exit 1
fi

if [ -d /etc/slackcat.conf ]; then
    rm -Rf /etc/slackcat.conf
fi

echo "{ \"webhook_url\": \"$WEBHOOK_URL\"}" > /etc/slackcat.conf

if [ ! -z ${SLEEP} ]; then
    sleep ${SLEEP}
fi
