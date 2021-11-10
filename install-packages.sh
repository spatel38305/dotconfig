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

packages="$( cat packages.txt | sort -u | xargs )"

echo "Installing: $packages"

sudo apt install -y "$packages"

if ! command -v zsh &> /dev/null; then
    echo "No zsh. Rip. :("
else
    echo "Changing shell to zsh!"
    chsh -s $( which zsh )
fi
