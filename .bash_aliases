alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
runC(){
    gcc -g -Wall -Wextra -o $1 $2 -lm && ./$1 < $3
}
run(){
    g++ -g -Wall -Wextra -o $1 $2 && ./$1 < $3
}
alias c='clear'
