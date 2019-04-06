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

autoload -U +X bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az
