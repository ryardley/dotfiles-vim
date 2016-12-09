eval "$(rbenv init -)"

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

prompt() {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  export PS1="${YELLOW}╭«${GREEN}\W${CYAN}\$(parse_git_branch)${YELLOW}\n╰«${RED}❥${YELLOW}⚡${RED}»${WHITE} "
}

# My Shortcuts
alias cdr='cd ~/ry'
alias cdp='cd ~/client-projects'
alias cdm='cd ~/teg/teg-marketplace-theme'
alias cdry='cd ~/ry/ryardley'
alias cdt='cd ~/client-projects/tmp-tasks'
alias datey='date +%Y%m%d'
alias gcp='chrome_proxy'
alias gc='open -a Google\ Chrome'
alias dqt='/Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh'
alias gl='git log --oneline --graph --decorate'
alias glg="git log --all --graph --pretty=format:'%C(auto)%h(%aN, %ar)%C(auto)%d %s %C(dim white)'"

alias kk="killall node gulp java"
alias kkk="kk"
alias kkkk="kkk"

# vagrant
alias v='vagrant'
alias vsh='v ssh'
alias vup='v up'
alias vh='v halt'
alias vr='v reload'
alias vwatch='v gatling-rsync-auto'
alias subl='atom'

# go
export GOPATH=~/go
export PATH=~/go/bin:$PATH

# bash_scripts
export PATH=~/bash_scripts:$PATH
export PATH=~/teg/bash_scripts:$PATH

# Android tools
PATH=$PATH:/Users/rudi/Library/Android/sdk/platform-tools:/Users/rudi/Library/Android/sdk/tools

# bin folder for handy shortcuts
PATH=$PATH:/Users/rudi/bin

# add node modules .bin folder for local executables
PATH=$PATH:./node_modules/.bin

# Add a path for shopify themekit
PATH=/Users/rudi/.themekit:$PATH

# if [ "$TERM_PROGRAM" = "iTerm.app" ]; then prompt; fi
prompt

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias g='git'
alias gs='git status'
complete -F _git g

# get iterm to be 256 colors for vim
TERM=xterm-256color

# NVM things
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Yosemite screwing with ulimit
ulimit -n 65536 65536

# Make ansible available to shell
source ~/client-projects/ansible/hacking/env-setup -q
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
