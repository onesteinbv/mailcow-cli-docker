FROM python:3.10
MAINTAINER Onestein

COPY ./requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

COPY ./install /tmp/install
RUN set -x \
  && /tmp/install/dockerize.sh \
  && rm -r /tmp/install

COPY ./templates/python-mailcow.conf.tmpl /tmp/templates/python-mailcow.conf.tmpl
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mailcow"]