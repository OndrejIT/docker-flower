FROM alpine:latest
MAINTAINER Ondrej Barta <ondrej@ondrej.it>

RUN apk add --no-cache \
	python3 && \
	python3 -m ensurepip

RUN pip3 install --upgrade pip \
	redis==2.10.5 \
	flower==0.9.1 && \
	rm -rf ~/.cache

RUN adduser -S www-data
USER www-data

WORKDIR /srv/flower

EXPOSE 5555

ENTRYPOINT ["flower"]
