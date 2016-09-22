#!/usr/bin/env python3

# Author Ondrej Barta
# ondrej@ondrej.it
# Copyright 2016

import os


BROKER_URL = os.environ["BROKER"]
BROKER_TRANSPORT_OPTIONS = {
	"fanout_prefix": True,
	"fanout_patterns": True,
	"visibility_timeout": 86400,
}
CELERY_RESULT_BACKEND = os.environ["BROKER"]
CELERY_TIMEZONE = "Europe/Prague"
CELERY_ACCEPT_CONTENT = ["json"]
CELERY_TASK_SERIALIZER = "json"
CELERY_RESULT_SERIALIZER = "json"
CELERY_TASK_RESULT_EXPIRES = 3600
