FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip pipenv

WORKDIR /src

COPY Pipfile* ./

RUN pipenv install --ignore-pipfile --deploy

COPY . .

# Needs to be updated when deploying in production! (Gunicorn/Nginx)
CMD pipenv run ./manage.py runserver 0:8000