#!/bin/bash

if ! command -v yed &> /dev/null; then
    echo "yed not found"
else
    echo "yed is already installed. Skipping. . ."
    exit
fi

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

cd ~/.config/yed

./build_init.sh

if ! command -v yed &> /dev/null; then
    echo "No yed. Rip. :("
else
    echo "Updating ypm!"
    yed -c ypm-update
fi

cd "$CURRDIR"
