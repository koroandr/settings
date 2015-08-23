if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#source /usr/local/etc/bash_completion.d/git-prompt.sh
#GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='[\w$(__git_ps1)]\$ '
