#!/bin/bash

CC=gcc
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Creating .config directory."

mkdir -p "$HOME/.config"

copy_bash_files()
{
    echo "Copying bash files."
    bashVersion="$( cat "$DIR/bash/.spatel.bash" | xargs )"
    echo "bash files version: $bashVersion"

    cp "$DIR/bash/.bashrc" "$HOME/.bashrc"
    cp "$DIR/bash/.bash_aliases" "$HOME/.bash_aliases"
    cp "$DIR/bash/.bash_logout" "$HOME/.bash_logout"
    cp "$DIR/bash/.spatel.bash" "$HOME/.config/.spatel.bash"
}

if [ -f "$HOME/.config/.spatel.bash" ]; then
    updateFiles="$( diff "$DIR/bash/.spatel.bash" "$HOME/.config/.spatel.bash" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_bash_files
    else
        echo "bash files are up to date. Skipping. . ."
    fi
else
    copy_bash_files
fi

copy_git_files()
{
    echo "Copying git files."
    gitVersion="$( cat "$DIR/git/.spatel.git" | xargs )"
    echo "git files version: $gitVersion"

    cp "$DIR/git/.gitconfig" "$HOME/.gitconfig"
    cp "$DIR/git/.spatel.git" "$HOME/.config/.spatel.git"
}

if [ -f "$HOME/.config/.spatel.git" ]; then
    updateFiles="$( diff "$DIR/git/.spatel.git" "$HOME/.config/.spatel.git" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_git_files
    else
        echo "git files are up to date. Skipping. . ."
    fi
else
    copy_git_files
fi

copy_ssh_files()
{
    echo "Copying ssh files.."
    sshVersion="$( cat "$DIR/ssh/.spatel.ssh" | xargs )"
    echo "ssh files version: $sshVersion"

    mkdir -p "$HOME/.ssh"
    cp "$DIR/ssh/.ssh/config" "$HOME/.ssh/config"
    cp "$DIR/ssh/.ssh/authorized_keys" "$HOME/.ssh/authorized_keys"
    cp "$DIR/ssh/.spatel.ssh" "$HOME/.config/.spatel.ssh"
}

if [ -f "$HOME/.config/.spatel.ssh" ]; then
    updateFiles="$( diff "$DIR/ssh/.spatel.ssh" "$HOME/.config/.spatel.ssh" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_ssh_files
    else
        echo "ssh files are up to date. Skipping. . ."
    fi
else
    copy_ssh_files
fi

copy_tmux_files()
{
    echo "Copying tmux files."
    tmuxVersion="$( cat "$DIR/tmux/.spatel.tmux" | xargs )"
    echo "tmux files version: $tmuxVersion"

    cp "$DIR/tmux/.tmux.conf" "$HOME/.tmux.config"
    cp "$DIR/tmux/.spatel.tmux" "$HOME/.config/.spatel.tmux"
}

if [ -f "$HOME/.config/.spatel.tmux" ]; then
    updateFiles="$( diff "$DIR/tmux/.spatel.tmux" "$HOME/.config/.spatel.tmux" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_tmux_files
    else
        echo "tmux files are up to date. Skipping. . ."
    fi
else
    copy_tmux_files
fi

copy_vim_files()
{
    echo "Copying vim files."
    vimVersion="$( cat "$DIR/vim/.spatel.vim" | xargs )"
    echo "vim files version: $vimVersion"

    cp -r "$DIR/vim/.vim" "$HOME"
    cp "$DIR/vim/.vimrc" "$HOME/.vimrc"
    cp "$DIR/vim/.spatel.vim" "$HOME/.config/.spatel.vim"
}

if [ -f "$HOME/.config/.spatel.vim" ]; then
    updateFiles="$( diff "$DIR/vim/.spatel.vim" "$HOME/.config/.spatel.vim" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_vim_files
    else
        echo "vim files are up to date. Skipping. . ."
    fi
else
    copy_vim_files
fi

copy_yed_files()
{
    echo "Copying yed files."
    yedVersion="$( cat "$DIR/yed/.spatel.yed" | xargs )"
    echo "yed files version: $yedVersion"

    cp -r "$DIR/yed" "$HOME/.config"
    cp "$DIR/yed/.spatel.yed" "$HOME/.config/.spatel.yed"
}

if [ -f "$HOME/.config/.spatel.yed" ]; then
    updateFiles="$( diff "$DIR/yed/.spatel.yed" "$HOME/.config/.spatel.yed" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_yed_files
    else
        echo "yed files are up to date. Skipping. . ."
    fi
else
    copy_yed_files
fi

copy_zsh_files()
{
    echo "Copying zsh files."
    zshVersion="$( cat "$DIR/zsh/.spatel.zsh" | xargs )"
    echo "zsh files version: $zshVersion"

    cp "$DIR/zsh/.zsh.aliases" "$HOME/.zsh.aliases"
    cp "$DIR/zsh/.zsh.manpath" "$HOME/.zsh.manpath"
    cp "$DIR/zsh/.zsh.path" "$HOME/.zsh.path"
    cp "$DIR/zsh/.zsh.prompt" "$HOME/.zsh.prompt"
    cp "$DIR/zsh/.zshenv" "$HOME/.zshenv"
    cp "$DIR/zsh/.zshrc" "$HOME/.zshrc"
    cp "$DIR/zsh/.spatel.zsh" "$HOME/.config/.spatel.zsh"
}

if [ -f "$HOME/.config/.spatel.zsh" ]; then
    updateFiles="$( diff "$DIR/zsh/.spatel.zsh" "$HOME/.config/.spatel.zsh" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        copy_zsh_files
    else
        echo "zsh files are up to date. Skipping. . ."
    fi
else
    copy_zsh_files
fi


if [ -f "$HOME/.config/.spatel.packages" ]; then
    updateFiles="$( diff "$DIR/.spatel.packages" "$HOME/.config/.spatel.packages" | wc -l )"
    if [ "$updateFiles" -ne 0 ]; then
        cp "$DIR/.spatel.packages" "$HOME/.config/.spatel.packages"
        ./install-packages.sh
    else
        echo "packages are up to date. Skipping. . ."
    fi
else
    cp "$DIR/.spatel.packages" "$HOME/.config/.spatel.packages"
    ./install-packages.sh
fi

./install-yed.sh

echo "Done."
