export PATH=$PATH:~/jdk-11.0.4+11/bin:$HOME/bin
export ZSH="/home/gt/.oh-my-zsh"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

ZSH_THEME="agnoster"

# https://stackoverflow.com/a/46864032/2675672
set -o noclobber

plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
	git
	dircycle
    virtualenv
    vi-mode
)

source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases

export LANG=en_US.UTF-8

function mkcd(){
    mkdir "$1" && cd "$1"
}

source /home/gt/.nvimloaderrc

# adapted from https://github.com/mokagio/dotfiles/blob/ea34a74ba820f9617f70d5d33769f5979d49a3f3/zshprompt
function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg_bold[red]$bg_[white]%}$LAST_EXIT_CODE%{$reset_color%} "
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT='$(check_last_exit_code)%F'$PROMPT

export NODE_PATH=`which node`

setopt clobber
export EDITOR="nvim"
export PATH=$PATH:/home/gt/android-studio/bin

export ANDROID_SDK_ROOT=/home/gt/android-studio/bin

export MANPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/man
export INFOPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/info
export PATH=$PATH:/usr/local/texlive/2020/bin/x86_64-linux
export PATH=$PATH:/home/gt/android-studio/bin
export PATH=$PATH:/home/gt/.local/bin
export PATH=$PATH:/home/gt/.pub-cache/bin
export PATH=$PATH:/home/gt/drivers
export PATH=$PATH:/home/gt/bin/erlang_ls_repo/_build/default/bin
export PATH=$PATH:/home/gt/bin/cmake-3.20.0-rc2-linux-x86_64/bin

export DENO_INSTALL="/home/gt/.deno"
export PATH="$PATH:$DENO_INSTALL/bin"

# part of growing up :)
alias vim="nvim"


[ -f "/home/gt/.ghcup/env" ] && source "/home/gt/.ghcup/env" # ghcup-env

alias jl="jupyter lab"

add-zsh-hook -Uz chpwd (){ [ -f .env ] && source .env; [ -d venv ] && source venv/bin/activate }

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh


alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"

export PATH="$HOME/.poetry/bin:$PATH"
