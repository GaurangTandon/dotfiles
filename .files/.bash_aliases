#!/bin/sh
alias ll='ls -alF'
alias c='clear'
alias la='ls -A'
alias l='ls -CF'
alias mv='mv -i' # prevent accidental overwrites!
# the touch is supposed to create an empty file if it doesn't exist
# and just change its access timestamp if it does exist
runC(){
    gcc -g -Wall -Wextra -o $1 $2 -lm && touch -a $3 && ./$1 < $3
}
run(){
    g++ -g -Wall -Wextra -o $1 $2 && touch -a $3 && ./$1 < $3
}
# alias c='f -e code' # quick opening files with vim
# alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open
alias sai="sudo apt install"
alias sau="sudo apt update -y"
alias saud="sudo apt upgrade -y"