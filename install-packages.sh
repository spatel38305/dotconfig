#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

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

packagesVersion="$( cat "$DIR/.spatel.packages" | xargs )"
echo "packages version: $packagesVersion"

packages="$( cat packages.txt | sort -u | xargs )"

echo "Installing: $packages"

xargs -0 -n 1 sudo apt install -y < <( tr \\n \\0 < packages.txt )

case "$SHELL" in
    */zsh)
    echo "Shell is already zsh! Yay!"
    exit
    ;;
esac


if ! command -v zsh &> /dev/null; then
    echo "No zsh. Rip. :("
else
    echo "Changing shell to zsh!"
    chsh -s $( which zsh )
fi
