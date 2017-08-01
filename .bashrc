# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias br="git branch"
alias st="git status"
alias ad="git add ."
alias cc="git commit"
alias dif="git diff"
function difn(){ git diff $@ --name-only; }
alias ck="git checkout"
alias ckb="git checkout -b"
alias push="git push origin"
alias pull="git pull origin"
alias lg="git log"
alias lgn="git log --oneline"

alias vi='vim'
alias ll='ls -al'
alias vil='vim -c'
alias bashr='source ~/.bashrc'

function gg(){ grep -rn $@ *; }

# case ${UID} in
# 0)
#     PS1='\[\033[31m\]${PWD}\$\[\033[0m\] '
#     PS2='\[\033[31m\]>\[\033[0m\] '
#     [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[30m\]\h'" ${PS1}"
#     ;;
# *)
#     PS1='\[\033[37m\]\w:\$\[\033[0m\] '
#     PS2='\[\033[37m\]$\[\033[0m\] '
#     [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && PS1='\[\033[36m\]\D{%F} \t \u@\h'" ${PS1}"
#     ;;
# esac
#
# case "${TERM}" in
# kterm*|xterm)
#     PROMPT_COMMAND='echo -e "\033]0;'":"'${PWD}\007\c"'
#     ;;
# esac

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTIGNORE=?:??:exit
export HISTFILE=~/.bash_history/.bash_history-$OSTYPE-`date +%Y%m%d`

EDITOR=vim
