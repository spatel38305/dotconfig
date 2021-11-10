#!/bin/bash

echo "Trying to install yed."

CURRDIR="$( pwd )"

cd "$HOME"

git clone "https://github.com/kammerdienerb/yed.git"

cd yed

canIsudo="$( sudo -v )"

echo "Installing yed!"

if [ "$canIsudo" == "" ]; then
    sudo ./install.sh
else
    ./install -p "$HOME/.local"
fi

if ! command -v yed &> /dev/null; then
    echo "No yed. Rip. :("
else
    echo "Updating ypm!"
    yed -c ypm-update
fi

cd "$CURRDIR"
