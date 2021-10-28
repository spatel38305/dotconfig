source $HOME/.zsh.path

# Sometimes I like to keep a history...
export SAVEHIST="2000"
export HISTSIZE="500"
export HISTFILE="$HOME/.zsh.history"

export CVS_RSH=ssh

# Most people are ok with vim
export EDITOR=vim
export VISUAL=vim

# Set up the parameters for 'less' ... and use it
export LESS='-emiSRX'
export PAGER=less

umask 077

# Don't have the shell check for mail
unset MAIL         

