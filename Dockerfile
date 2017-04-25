# vim:set ft=dockerfile:

FROM docker.io/python:3-alpine
MAINTAINER Ondrej Barta <ondrej@ondrej.it>

RUN \
	apk --no-cache add tzdata && \

	pip install --no-cache-dir \
	redis==2.10.5 \
	https://github.com/mher/flower/zipball/master#egg=flower

USER nobody

EXPOSE 5555

ENTRYPOINT ["flower"]
