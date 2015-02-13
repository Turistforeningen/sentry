FROM python:2.7

MAINTAINER Hans Kristian Flaatten <hans.kristian.flaatten@turistforeningen.no>

RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y libxslt1-dev libxml2-dev
#                      libpq-dev expect libldap2-dev libsasl2-dev libssl-dev

RUN pip install -U sentry[postgres] sentry-slack

EXPOSE 8080

ADD sentry.conf.py /root/.sentry/sentry.conf.py

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /wheels/*

