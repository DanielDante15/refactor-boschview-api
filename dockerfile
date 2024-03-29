FROM python:3.11.4-slim-bullseye
WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get update


RUN apt-get update && apt-get install -y libpq-dev build-essential

RUN pip install asgiref==3.7.2 attrs==23.1.0 Django==3.2.1 django-cors-headers==4.3.1 djangorestframework==3.14.0 djangorestframework-simplejwt==5.3.1 drf-spectacular==0.26.5 drf-yasg==1.21.7 gunicorn==21.2.0 inflection==0.5.1 jsonschema==4.20.0 jsonschema-specifications==2023.11.2 packaging==23.2 Pillow==10.1.0 psycopg2==2.9.9 PyJWT==2.8.0 pytz==2023.3.post1 PyYAML==6.0.1 referencing==0.32.0 rpds-py==0.13.2 sqlparse==0.4.4 uritemplate==4.1.1 whitenoise==6.6.0

COPY . /app

ENTRYPOINT [ "gunicorn", "api.wsgi"]