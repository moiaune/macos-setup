HOST_NAME=carlin

source ~/.nvm/nvm.sh
nvm use lts/fermium
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/mm/go/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# OH_MY_POSH_THEMES_DIR=$(brew --prefix oh-my-posh)/themes
OH_MY_POSH_THEMES_DIR="$HOME/code/github.com/madsaune/milbo-omp-theme"
eval "$(oh-my-posh --init --shell bash --config $OH_MY_POSH_THEMES_DIR/milbo.omp.json)"

function mkcd()
{
    mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias 🍺="git checkout -b drunk"
alias a='code .'
alias c='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias tfmt="terraform fmt -recursive"
alias ctfmt="terraform fmt -check -recursive"

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gsa='git status -uall'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
