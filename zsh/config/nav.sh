#!/bin/sh

export DOCS="$HOME/Documents"
export CODE="$DOCS/code"
export WEB="$CODE/web"
export P5_SKETCHBOOK="$CODE/p5"
export CLOD_PROJECTS="$CODE/claude"
export DOT36="$WEB/36dot"
export SCRIPTS="~/.scripts"
export NOTES="$DOCS/note"
export JOURNAL="$DOCS/hoy/entries"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias jk="cd -"

# system folders
alias apps="cd /Applications"
alias docs="cd $DOCS"
alias dots="cd $DOTFILES"
alias desk="cd $HOME/Desktop"
alias down="cd $HOME/Downloads"
alias downloads="cd $HOME/Downloads"

# projects
alias code="cd $CODE && la" 
alias scripts="cd $CODE/scripts && la"
alias notes="cd $NOTES && la"

# volumes
alias blinky="cd /Volumes/Blinky"

# Remote servers / SSH
alias sshpi="ssh pi@192.168.1.140"

# Learning
## REFERENCE
# alias coderef="cd $DOCS/code/_reference"
# alias data="cd $DOCS/code/_reference/my-data"
# alias gitref="cd $DOCS/code/_reference/progit/ && nvim -S Session.vim"
# alias lvs="cd $DOCS/code/vim/learnvimscriptthehardway/chapters && nvim -S Session.vim"
# alias gats="cd $DOCS/code/web/gatsby-tutorial"
# alias p3inspo="cd $DOCS/code/processing/_inspiration"
alias lpthw="cd $DOCS/code/python/lpthw"
alias bos="cd $DOCS/code/_reference/thebookofshaders"

# My website [jeffdo.es](https://jeffdo.es)
alias jw="cd $DOCS/code/web/jeffdoes"
alias jw.="cd $DOCS/code/web/jeffdoes/src && nvim ."

# Processing / P5
alias p5s="cd $P5_SKETCHBOOK"

# Web
alias web="cd $WEB"
alias dot36="cd $DOT36"
