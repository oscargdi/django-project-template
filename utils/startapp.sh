#!/bin/bash

pipenv run ./manage.py startapp $1

rm $1/admin.py
mkdir -p $1/admin/ && touch $1/admin/__init__.py

rm $1/models.py
mkdir -p $1/models/ && touch $1/models/__init__.py

rm $1/tests.py
mkdir -p $1/tests/ && touch $1/tests/__init__.py

rm $1/views.py
mkdir -p $1/views/ && touch $1/views/__init__.py

echo "from django.urls import path
from $1 import views
urlpatterns = []" >> $1/urls.py

pipenv run black $1/
pipenv run isort $1/
