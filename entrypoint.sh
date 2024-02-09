#!/bin/bash
set -Eeuo pipefail

mkdir /root/.config
echo "Dockerize...";
dockerize -template /tmp/templates/python-mailcow.conf.tmpl:/root/.config/python-mailcow.conf
echo "Done";

exec "$@"
