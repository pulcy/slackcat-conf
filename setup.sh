#!/bin/sh -e

if [ -z ${WEBHOOK_URL} ]; then
    echo WEBHOOK_URL is empty
    exit 1
fi

echo "{ \"webhook_url\": \"$WEBHOOK_URL\"}" > /etc/slackcat.conf
