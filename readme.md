# My Django project template

I use this template as scaffolding for Django projects I build

## Installation

Install dependencies with pipenv

```zsh
pipenv install --dev
pipenv shell
```

Create `.env` file:

```ini
APP_NAME=Hello World

DEBUG=True
SECRET_KEY=

ADMINS=Your name, your email
```

Complete `SECRET_KEY` by activating python and running:

```python
from django.core.management.utils import get_random_secret_key
get_random_secret_key()
```