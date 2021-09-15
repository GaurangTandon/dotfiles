# critical metadata
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
export LANG=en_US.UTF-8
export EDITOR="nvim"

# zsh plugins
plugins=(
	zsh-syntax-highlighting
	zsh-autosuggestions
	git
    virtualenv
    vi-mode
)
source $ZSH/oh-my-zsh.sh

# common aliases
source "$HOME/.bash_aliases"

# see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# https://stackoverflow.com/a/46864032/2675672
# do not accidentally overwrite existing files
set -o noclobber

source $HOME/.nvimloaderrc

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
export PATH=$PATH:$HOME/drivers:$HOME/bin
export PATH=$PATH:$HOME/bin/fd-bin

# python related binary path
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.poetry/bin:$PATH"

# android stuff
export ANDROID_SDK_ROOT=$HOME/android-studio/bin
export PATH=$PATH:$ANDROID_SDK_ROOT

# other tools (do add the download path for each)
export PATH=$PATH:/usr/local/texlive/2020/bin/x86_64-linux
export PATH=$PATH:$HOME/bin/erlang_ls_repo/_build/default/bin
export PATH=$PATH:$HOME/bin/cmake-3.20.0-rc2-linux-x86_64/bin
export PATH=$PATH:$HOME/bin/clangd_12.0.0/bin # https://github.com/clangd/clangd/releases

export DENO_INSTALL="$HOME/.deno"
export PATH="$PATH:$DENO_INSTALL/bin"

# latex
export MANPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/man
export INFOPATH=$MANPATH:/usr/local/texlive/2020/texmf-dist/doc/info

# auto set virtualenv where possible
add-zsh-hook -Uz chpwd (){ [ -f .env ] && source .env; [ -d venv ] && source venv/bin/activate }

# fzf completion setup
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
