#!/bin/sh
python manage.py makemigrations
python manage.py migrate
echo "from helios_auth.models import User; User.objects.create(user_type='google',user_id='ben@adida.net', info={'name':'Ben Adida'})" | python manage.py shell
python manage.py runserver 0.0.0.0:8000
exec "$@"