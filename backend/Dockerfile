FROM node:18-alpine

RUN apk add --no-cache dumb-init git tzdata && \
	cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone

COPY ./tools/nest.sh /tmp/nest.sh
RUN chmod +x /tmp/nest.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/ash", "/tmp/nest.sh"]
EXPOSE ${NEST_PORT} 
