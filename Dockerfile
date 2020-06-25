FROM alpine

RUN apk update && \
		apk add python py-pip ca-certificates groff less && \
		rm -rf /var/cache/apk/* && \
		pip install awscli

ADD config /root/.aws/config

ENTRYPOINT ["aws"]
