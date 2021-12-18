#!/usr/bin/env bash

set -eu
cd $(dirname $0)

exec docker run -it --rm -v `pwd`/root:/root ctf
