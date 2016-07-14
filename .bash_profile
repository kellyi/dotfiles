export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]    \$(__git_ps1)$blue\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="/usr/local/sbin:$PATH:$HOME/bin:/Applications/Postgres.app/Contents/Versions/latest/bin"

source ~/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

