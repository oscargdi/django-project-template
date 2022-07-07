#!/bin/bash

set -e

# Checks unused variables and unused imports
pipenv run autoflake . -r -c --remove-unused-variables --remove-all-unused-imports --ignore-init-module-imports
# Checks imports sorting
pipenv run isort . -c --profile black
# Checks templates on syntax or compile errors.
pipenv run ./manage.py validate_templates -v 2
# Checks migrations if missing or not up-to-date
pipenv run ./manage.py makemigrations -v 2 --check --dry-run
# Runs project tests
pipenv run ./manage.py test -v 2 --no-input
