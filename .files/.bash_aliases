#!/bin/sh

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# prevent accidental overwrites!
alias mv='mv -i' 

# convenience
alias mx='chmod +x'
alias c='clear'
mkcd(){
    mkdir "$1" && cd "$1"
}
alias o="xdg-open"
alias ...="../.."
alias :q="exit"

# quiet mode
alias gdb="gdb -q"

# apt related
alias sai="sudo apt install"
alias sau="sudo apt update -y"
alias saud="sudo apt upgrade -y"

# barebones vim mode
alias v="vim -u /home/gt/.cp_vimrc"

# saving myself from everyday boredom of accidentally running non-py3.x
alias py3='python3.8'
alias pip3='python3.8 -m pip'

# takes a single string argument, and times it using date utility
timeit(){
    start=$(date +%s.%N)
    eval "$1"
    end=$(date +%s.%N)
    runtime=$(echo "$end-$start" | bc -l )
    echo "$runtime"
}


alias flutterc="flutter run -d chrome --web-hostname localhost --web-port 5000"

alias gimp="flatpak run org.gimp.GIMP//stable" # i hate flatpak
# keep forgetting the IP, for some reason DNS doesn't work for ada.iiit.ac.in
alias ada="ssh -X gaurang.tandon@10.4.24.24" 

# wikipedia stuff
export WBGETENTITIES="https://www.wikidata.org/w/api.php?format=json&action=wbgetentities"

# clone github repo in ssh mode using https url
ghcl() {
    prefix=$(echo -n $1 | sed 's|https://github.com/|git@github.com:|' | sed 's|/$||')
    git clone "$prefix.git"
}

# clipboard interaction enhancement
# copy a.cpp will place a.cpp in your clipboard
# echo x | cbcp places x in your clipboard
alias cbcp='xclip -selection clipboard'
copy() {
    cat $1 | cbcp
}

# part of growing up :)
alias vim="nvim"

# better ssh sessions
alias ssh='TERM=xterm-256color ssh'

source ~/.cp_aliases
