#!/bin/bash

CC=gcc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Copying bash files."

cp "$DIR/bash/.bashrc" "$HOME/.bashrc"
cp "$DIR/bash/.bash_aliases" "$HOME/.bash_aliases"
cp "$DIR/bash/.bash_logout" "$HOME/.bash_logout"

echo "Copying git files."

cp "$DIR/git/.gitconfig" "$HOME/.gitconfig"

echo "Copying ssh files.."

mkdir -p "$HOME/.ssh"
cp "$DIR/ssh/.ssh/config" "$HOME/.ssh/config"

echo "Copying tmux files."

cp "$DIR/tmux/.tmux.conf" "$HOME/.tmux.config"

echo "Copying vim files."

cp -r "$DIR/vim/.vim" "$HOME"
cp "$DIR/vim/.vimrc" "$HOME/.vimrc"

echo "Creating .config directory."

mkdir -p "$HOME/.config"

echo "Copying yed files."

cp -r "$DIR/yed" "$HOME/.config"

echo "Copying zsh files."

cp "$DIR/zsh/.zsh.aliases" "$HOME/.zsh.aliases"
cp "$DIR/zsh/.zsh.manpath" "$HOME/.zsh.manpath"
cp "$DIR/zsh/.zsh.path" "$HOME/.zsh.path"
cp "$DIR/zsh/.zsh.prompt" "$HOME/.zsh.prompt"
cp "$DIR/zsh/.zshenv" "$HOME/.zshenv"
cp "$DIR/zsh/.zshrc" "$HOME/.zshrc"

./install-packages.sh
./install-yed.sh

echo "Done."
