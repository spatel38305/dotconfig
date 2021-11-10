autoload -U compinit
compinit

# Don't have the shell check for mail
unset MAIL

# Get other shell configuration
source $HOME/.zsh.prompt       # set the prompt
source $HOME/.zsh.path         # setup the PATH
source $HOME/.zsh.manpath      # setup the MANPATH
source $HOME/.zsh.aliases  # setup command aliases

bindkey -d

# Turn off core dumps
limit coredumpsize 0

# Set some usefull options
setopt nohup            # Don't kill jobs when the shell exits
setopt nobeep           # Don't beep at me all the time
setopt nocheckjobs      # Don't check for running jobs at shell exit
setopt longlistjobs     # Show more information about jobs
setopt pushdtohome      # pushd goes to $HOME if nothing else is given
setopt noflowcontrol    # Disables ^S/^Q in line-edit mode
export DISPLAY=localhost:0.0

setopt interactivecomments

export LC_ALL=C

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line

export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolve.conf 2> /dev/null ):0
xport LIBGL_ALWAYS_INDIRECT=1
