
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$PATH:home/gt/anaconda3/bin"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source /home/gt/.config/broot/launcher/bash/br
