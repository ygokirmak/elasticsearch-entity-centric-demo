import argparse
parser = argparse.ArgumentParser()
parser.add_argument("echo", help="echo the string you use here")
parser.add_argument("--echo2", help="echo the string you use here")
args = parser.parse_args()
print args.echo
