alias ll='ls -alF'
alias c='clear'
alias la='ls -A'
alias l='ls -CF'
# the touch is supposed to create an empty file if it doesn't exist
# and just change its access timestamp if it does exist
runC(){
    gcc -g -Wall -Wextra -o $1 $2 -lm && touch -a $3 && ./$1 < $3
}
run(){
    g++ -g -Wall -Wextra -o $1 $2 && touch -a $3 && ./$1 < $3
}
