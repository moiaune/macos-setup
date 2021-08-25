HOST_NAME=carlin

source ~/.nvm/nvm.sh
nvm use lts/fermium
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/mm/go/bin
export PATH="/usr/local/sbin:$PATH"

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# OH_MY_POSH_THEMES_DIR=$(brew --prefix oh-my-posh)/themes
OH_MY_POSH_THEMES_DIR="$HOME/code/github.com/madsaune/milbo-omp-theme"
eval "$(oh-my-posh --init --shell bash --config "$OH_MY_POSH_THEMES_DIR/milbo.omp.json")"

function mkcd()
{
    mkdir "$1" && cd "$1" || return
}

# -------
# Aliases
# -------
alias ls="exa"
alias l="ls" # List files in current directory
alias ll="ls -la" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias tfmt="terraform fmt -recursive"
alias ctfmt="terraform fmt -check -recursive"
alias vim="nvim"
alias vi="nvim"

# ----------------------
# Git Aliases
# ----------------------
alias gcm='git commit -m'
alias gsa='git status -uall'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
