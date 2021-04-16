FROM docker.io/python:3.8-alpine
MAINTAINER Ondrej Barta <ondrej@ondrej.it>

RUN \
	apk --no-cache add tzdata ca-certificates && update-ca-certificates && \

	pip install --no-cache-dir \
		redis \
		flower

USER nobody

EXPOSE 5555

ENTRYPOINT ["flower"]
