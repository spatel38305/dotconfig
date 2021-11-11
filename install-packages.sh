#!/bin/bash

echo "Trying to install packages."

canIsudo="$( sudo -v )"

if [ "$canIsudo" == "" ]; then
    echo "I can sudo!"
else
    echo "I cannot sudo. Exiting . . . :("
    exit
fi

if ! command -v apt &> /dev/null; then
    echo "I cannot apt. Exiting . . . :("
    exit
else
    echo "I can apt!"
fi

packagesVersion="$( cat "$DIR/packages/.spatel.packages" | xargs )"
echo "packages version: $packagesVersion"

packages="$( cat packages.txt | sort -u | xargs )"

echo "Installing: $packages"

xargs -0 -n 1 sudo apt install -y < <( tr \\n \\0 < packages.txt )

if [ -n "$ZSH_VERSION" ]; then
    echo "Shell is already zsh! Yay!"
    exit
fi

if ! command -v zsh &> /dev/null; then
    echo "No zsh. Rip. :("
else
    echo "Changing shell to zsh!"
    chsh -s $( which zsh )
fi
