Docker(alpine)-flower
====================

Flower: https://github.com/mher/flower

Celery: http://www.celeryproject.org/

> Download: docker pull ondrejit/flower

> https://hub.docker.com/r/ondrejit/flower/

Config :
====================
> flower_conf.py (change CELERY_TIMEZONE etc...)

> docker-compose.yml (change BROKER url)

Usage:
====================
**Docker Compose:** 
> docker-compose up

**Docker:**
> docker run -d -p 5555:5555 -v /srv/flower:/srv/flower -e BROKER=redis://172.17.0.1:6379/1 --name=flower ondrejit/flower:latest --config=flower_conf

