#!/bin/bash

pipenv run ./manage.py migrate
pipenv run ./manage.py createsuperuser --noinput || true

exec "$@"