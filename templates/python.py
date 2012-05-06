#!/usr/bin/env python
import sys

def main(x):
    pass

if __name__ == '__main__':
    if len(sys.argv) != 2:
        sys.stderr.write('Usage: %s ...\n' % sys.argv[0])
        sys.exit(1)
    main(*sys.argv[1:])
