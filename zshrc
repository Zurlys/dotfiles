export ZSH="/Users/mantas/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  autojump
  brew
  docker
  docker-compose
  git
  tmux
  vscode
)

source $ZSH/oh-my-zsh.sh

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
