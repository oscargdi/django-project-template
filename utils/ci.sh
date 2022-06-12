#!/bin/bash

set -e

# Checks templates on syntax or compile errors.
pipenv run ./manage.py validate_templates -v 2
# Checks migrations if missing or not up-to-date
pipenv run ./manage.py makemigrations -v 2 --check --dry-run
# Runs project tests
pipenv run ./manage.py test -v 2 --no-input
