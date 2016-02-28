FROM gliderlabs/alpine:3.3

ADD ./setup.sh /app/

WORKDIR /app

ENTRYPOINT ["/app/setup.sh"]
