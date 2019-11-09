#!/bin/sh

# shell basics
alias ll='ls -alF'
alias c='clear'
alias la='ls -A'
alias l='ls -CF'
alias mv='mv -i' # prevent accidental overwrites!
# alias gww='g++ -Wall -Wextra' # prevent accidental overwrites!
alias gww='g++ -Wall -Weffc++ -pedantic  \
-pedantic-errors -Wextra -Wcast-align \
-Wcast-qual -Wconversion \
-Wdisabled-optimization \
-Wfloat-equal -Wformat=2 \
-Wformat-nonliteral -Wformat-security  \
-Wformat-y2k \
-Wimport  -Winit-self  -Winline \
-Winvalid-pch   \
-Wmissing-field-initializers -Wmissing-format-attribute   \
-Wmissing-include-dirs -Wmissing-noreturn \
-Wpacked  -Wpadded -Wpointer-arith \
-Wredundant-decls \
-Wshadow -Wstack-protector \
-Wstrict-aliasing=2 -Wswitch-default \
-Wswitch-enum \
-Wunreachable-code -Wunused \
-Wunused-but-set-variable \
-Wunused-parameter \
-Wvariadic-macros \
-Wwrite-strings'
alias gdb="gdb -q"

# apt related
alias sai="sudo apt install"
alias sau="sudo apt update -y"
alias saud="sudo apt upgrade -y"

# saving myself from everyday boredom of accidentally running non-py3.7
alias py3='python3.7'
alias pip3='python3.7 -m pip'

# faster code compilation and running
# the touch is supposed to create an empty file if it doesn't exist
# and just change its access timestamp if it does exist
runC(){
    gcc -g -Wall -Wextra -o $1 $2 -lm && touch -a $3 && ./$1 < $3
}
run(){
    g++ -g -Wall -Wextra -o $1 $2 && ./$1
}

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
alias cfs='cf submit'
cfp(){
    cd ~/Codeforces && cf parse $1 $2 && cd "$1/$2" 
}
alias o="xdg-open"
