# Sentry on Docker Compose

This is a production ready setup of
[Sentry](https://github.com/getsentry/sentry) with Postgres and Redis using
[Docker Compose](https://github.com/docker/fig).

![Docker Compose container overview](https://docs.google.com/drawings/d/1OB0R9QUec7hytx73EYHJcmLzj2m6bMNWnNv-nePAg24/pub?w=766&h=216)

## What are the requirements?

* [Docker](https://github.com/docker/docker) >= `v1.3`
* [Docker Compose](https://github.com/docker/fig) >= `v1.1.0-rc2`

## How do I start this thing?

```
docker-compose up
```

## How do I find the exposed port?

```
docker-compose port www 8080
```

## How do I add a user?

```
docker-compose run www createuser
```

## How do I configure stuff?

The `sentry.conf.py` holds all the Sentry configurations. Your secret stuff,
however, has to be put into your env.

* SECRET_KEY
* SERVER_EMAIL
* SENTRY_URL_PREFIX

## [MIT Licensed](https://github.com/Turistforeningen/sentry/blob/master/LICENSE)

