# critical metadata
export ZSH="/home/gt/.oh-my-zsh"
ZSH_THEME="agnoster"
export LANG=en_US.UTF-8
export EDITOR="nvim"

# zsh plugins
plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
	git
	dircycle
    virtualenv
    vi-mode
)
source $ZSH/oh-my-zsh.sh

# common aliases
source ~/.bash_aliases

# see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# https://stackoverflow.com/a/46864032/2675672
# do not accidentally overwrite existing files
set -o noclobber

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

# self binary files
export PATH=$PATH:/home/gt/drivers:$HOME/bin

# python related binary path
export PATH=$PATH:/home/gt/.local/bin
export PATH="$HOME/.poetry/bin:$PATH"

# android stuff
export ANDROID_SDK_ROOT=/home/gt/android-studio/bin
export PATH=$PATH:/home/gt/android-studio/bin

# other tools (do add the download path for each)
export PATH=$PATH:~/jdk-11.0.4+11/bin
export PATH=$PATH:/usr/local/texlive/2020/bin/x86_64-linux
export PATH=$PATH:/home/gt/bin/erlang_ls_repo/_build/default/bin
export PATH=$PATH:/home/gt/bin/cmake-3.20.0-rc2-linux-x86_64/bin
export PATH=$PATH:/home/gt/bin/clangd_12.0.0/bin # https://github.com/clangd/clangd/releases

export DENO_INSTALL="/home/gt/.deno"
export PATH="$PATH:$DENO_INSTALL/bin"


# latex
export MANPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/man
export INFOPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/info

# auto set virtualenv where possible
add-zsh-hook -Uz chpwd (){ [ -f .env ] && source .env; [ -d venv ] && source venv/bin/activate }

# fzf completion setup
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
