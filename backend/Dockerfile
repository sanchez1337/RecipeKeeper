FROM python:3.11.9-alpine3.19
LABEL authors="sanchez1337"

ENV PYTHONUNBUFFERED 1

ARG CACHEBUST=1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./scripts/docker-entrypoint.sh /usr/local/bin/
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEPLOYMENT_MODE
ENV DEPLOYMENT_MODE=$DEPLOYMENT_MODE

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    apk add --update --no-cache postgresql-client jpeg-dev && \
    apk add --update --no-cache --virtual .tmp-build-deps \
      build-base postgresql-dev musl-dev zlib zlib-dev linux-headers && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ $DEPLOYMENT_MODE = "development" ]; \
      then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi && \
    rm -rf /tmp && \
    apk del .tmp-build-deps && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user && \
    mkdir -p /vol/web/media && \
    mkdir -p /vol/web/static && \
    chown -R django-user:django-user /vol && \
    chmod -R 755 /vol && \
    chmod +x /usr/local/bin/docker-entrypoint.sh

ENV PATH="/py/bin:$PATH"

USER django-user

ENTRYPOINT ["docker-entrypoint.sh"]