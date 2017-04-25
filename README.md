Docker(alpine)-flower
====================

Flower: https://github.com/mher/flower

Celery: http://www.celeryproject.org/

> Download: docker pull ondrejit/flower

> https://hub.docker.com/r/ondrejit/flower/

Usage:
====================
**Docker Compose:** 
> docker-compose up

**Docker:**
> docker run -d -p 5555:5555 ondrejit/flower:latest --broker=redis://172.17.0.1:6379/1

