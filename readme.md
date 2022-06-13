# Django project template

# About

- This template has been made for [Django web framework](https://docs.djangoproject.com/).
- [Pipenv](https://pipenv.pypa.io/) is used to manage dependencies and virtual environment.
- [Django Debug Toolbar](https://django-debug-toolbar.readthedocs.io/) is used to debug Django performance. It is only enabled when `DEBUG` is set to `True`
- [Django Extensions](https://django-extensions.readthedocs.io/) is installed for easier project management.
- `pylint` is used to check code linting.
- `black` is used to enforce code formatting.


# Development

For development you have two options:

> Note: In both cases, an admin account is created only for development purposes. The username for this account is `admin` and the password is `admin`. This account will not be created in any other environment (e.g. production).

Once app is running, you can access http://localhost:8000/ to go to the main page.

## VS Code devcontainer

The configuration needed to set up a devcontainer in VS Code is included in the `.devcontainer` folder.

Once the devcontainer is started you can used `pipenv` to run commands inside the virtual environment. E.g:

- For starting the app:

```zsh
pipenv run ./manage.py runserver 0:8000
```

> Note: all Django management commands can be run by using `pipenv run`, including those from Django Extensions, `pylint` and `black`.

For running CI workflow, execute:

```zsh
./utils/ci.sh
```

## Docker Compose

A `docker-compose.yml` file is included for setting up the environment required to start the application in development mode. Docker Compose starts the container and mounts the current folder into it, so that you can edit the files directly.

For starting the app within Docker Compose use the `Makefile` included in the project:

- To start the application execute:

```zsh
make start-app
```

- To stop the application execute:

```zsh
make stop-app
```

> Note: since the local folder is mounted into the container, any change will be kept in your local machine (e.g. `db.sqlite3` file)

For running CI workflow, execute:

```zsh
make ci
```