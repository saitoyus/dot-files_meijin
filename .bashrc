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
