# .bashrc
zsh

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
alias ls='ls -G'
alias ll='ls -Gal'
alias vil='vim -c'
alias bashr='source ~/.bashrc'

export LSCOLORS=gxfxcxdxbxegedabagacad

function gg(){ grep -rn $@ *; }

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTIGNORE=?:??:exit
export HISTFILE=~/.bash_history/.bash_history-$OSTYPE-`date +%Y%m%d`
export PATH=$PATH:$HOME/home/saitoyus/local

EDITOR=vim
${HOME}/local/bin/zsh
