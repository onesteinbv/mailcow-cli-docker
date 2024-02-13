import os
import click


@click.command()
@click.option("--prefix", default="ARG_")
def main(prefix):
    """ Gets all environment values that start with prefix and returns args list (e.g. --message Hello --timeout never"""
    res = []
    keys = os.environ.keys()
    env_args = list(filter(lambda k: k.startswith(prefix), keys))
    for env_arg in env_args:
        arg = env_arg.replace(prefix, "")
        arg = arg.lower()
        res.append("--%s" % arg)
        res.append("\"%s\"" % os.environ.get(env_arg))
    click.echo(" ".join(res))
    return res


if __name__ == '__main__':
    main()
