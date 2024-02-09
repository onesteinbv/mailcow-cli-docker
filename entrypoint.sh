#!/bin/bash
set -Eeuo pipefail

mkdir /root/.config
dockerize -template /tmp/templates/python-mailcow.conf.tmpl:/root/.config/python-mailcow.conf

exec "$@"
