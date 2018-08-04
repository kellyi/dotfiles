export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]    \$(__git_ps1)$blue\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="/usr/local/sbin:/usr/local/bin:$PATH:$HOME/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:~/.local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

source ~/git-prompt.sh
source ~/.bashrc

export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

export PATH="$HOME/.cargo/bin:$PATH"
