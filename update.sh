#!/bin/bash

CURRDIR="$( pwd )"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$DIR"

git pull

./install.sh

cd "$CURRDIR"
