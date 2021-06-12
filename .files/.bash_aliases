#!/bin/sh

# shell basics
alias ll='ls -alF'
alias c='clear'
alias la='ls -A'
alias l='ls -CF'
alias mv='mv -i' # prevent accidental overwrites!
alias mx='chmod +x'

# safe compilation flags
alias gdb="gdb -q"

# apt related
alias sai="sudo apt install"
alias sau="sudo apt update -y"
alias saud="sudo apt upgrade -y"
alias v="vim -u /home/gt/.cp_vimrc"

# saving myself from everyday boredom of accidentally running non-py3.7
alias py3='python3.8'
alias pip3='python3.8 -m pip'

# takes a single string argument
timeit(){
    start=$(date +%s.%N)
    eval "$1"
    end=$(date +%s.%N)
    runtime=$(echo "$end-$start" | bc -l )
    echo "$runtime"
}

# xalanq/cf-tool
alias cft='cf test'
cfr() {
    cf race $1 && cd $1/a
}
cfp(){
    cd ~/codeforces && cf parse $1 $2 && cd "$1/$2" 
}
cfg(){
    cd ~/codeforces && mkdir -p "$1/$2" && cd "$1/$2" && cf gen  
}

# daily driver
alias o="xdg-open"
alias ...="../.."
alias :q="exit"
alias cbcp='xclip -selection clipboard'

# Online judge tools related aliases
alias ojt='gmm *.cpp; oj test'
alias ojs='oj submit -w 0 -y *.cpp'
ojp(){
    cd ~/AtCoder && mkdir -p "$1/$2/$3" && cd "$1/$2/$3" && cf gen
}
generate(){
    i=1
    c="a"
    lim=$(($1))

    while (( $i <= $lim )) do
        echo $c

        mkdir $c
        cd $c
        cf gen
        cd ..

        c="$(echo $c | tr '[a-y]z' '[b-z]a')"
        i=$(($i + 1))
    done
}


alias flutterc="flutter run -d chrome --web-hostname localhost --web-port 5000"
alias dw="~/Downloads"

alias gimp="flatpak run org.gimp.GIMP//stable" # i hate flatpak
alias ada="ssh -X gaurang.tandon@10.4.24.24"

export WBGETENTITIES="https://www.wikidata.org/w/api.php?format=json&action=wbgetentities"

alias dld1="py3 ~/codeforces/download_prob.py contest -n1"
alias dld6="py3 ~/codeforces/download_prob.py contest -n6"

exppdf(){
    convert "$1.pdf" "$1.png"
    x="$1*"
    zip "$1.zip" "$x"
}

ghcl() {
    prefix=$(echo -n $1 | sed 's|https://github.com/|git@github.com:|')
    git clone "$prefix.git"
}

copy() {
    cat $1 | cbcp
}
