export ZSH="/Users/mantas/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  autojump
  brew
  docker
  docker-compose
  git
  kubectl
  vscode
  web-search
)

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

function code {
  if [[ $# = 0 ]]
  then
    open -a "Visual Studio Code"
  else
    local argPath="$1"
    [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
    open -a "Visual Studio Code" "$argPath"
  fi
}

function update_branch_from_master(){
  git checkout master && git pull && git checkout - && git rebase master
}

autoload -U +X bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az

export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
