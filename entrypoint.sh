#!/bin/bash
set -Eeuo pipefail

echo "Dockerize...";
mkdir /root/.config
dockerize -template /tmp/templates/python-mailcow.conf.tmpl:/root/.config/python-mailcow.conf
if [ ! -e /root/.config/python-mailcow.conf ]; then
  echo "Dockerize failed"
  exit 1
fi
echo "Done";

ENV_ARGS=$(python /tmp/scripts/env_to_args.py)

sh -c "$* $ENV_ARGS"
