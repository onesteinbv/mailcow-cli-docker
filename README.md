# mailcow-cli-docker

##  Usage

`
docker run --rm -e SERVER=mailcow.example.com -e TOKEN=000000-000000-000000-000000-000000 onestein/mailcow-cli:1.2.0 mailcow domain get
`

Prefix environment variables with `ARG_` to use them as argument for mailcow (additional)

More info:
https://pypi.org/project/python-mailcow/
