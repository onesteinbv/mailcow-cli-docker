# mailcow-cli-docker

##  Usage

`
docker run --rm -e SERVER=mailcow.example.com -e TOKEN=000000-000000-000000-000000-000000 onestein/mailcow-cli:1.5.2 mailcow domain get
`

Prefix environment variables with `ARG_` to pass them as argument for mailcow.

More info on how to use mailcow cli:
https://pypi.org/project/python-mailcow/
