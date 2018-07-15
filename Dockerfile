FROM alpine

### Create user and group ###
RUN addgroup app \
	&& adduser app -D -G app

RUN apk --no-cache add bash su-exec shadow

### Hugo 0.44
COPY hugo /usr/local/bin/hugo

COPY bootstrap.sh /bootstrap.sh
COPY run.sh /home/app/run.sh

ENTRYPOINT ["/bootstrap.sh"]
