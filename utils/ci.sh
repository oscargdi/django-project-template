#!/bin/bash

set -e

pipenv run ./manage.py validate_templates -b -v 2
pipenv run ./manage.py makemigrations --check --dry-run
pipenv run ./manage.py test -v 2 --no-input
