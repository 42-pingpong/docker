FROM node:18-alpine

RUN apk add --no-cache dumb-init git tzdata && \
	cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone

COPY ./tools/react.sh /tmp/react.sh
RUN chmod +x /tmp/react.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

CMD ["/bin/ash", "/tmp/react.sh"]
EXPOSE ${REACT_PORT} 
