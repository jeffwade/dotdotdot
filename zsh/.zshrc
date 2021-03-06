# NAVIGATING THIS FILE (vim markers)
# 'n --> NAVIGATION (here)
# 'e --> ENVIRONMENT and PATH
# 'f --> FUNCTIONS
# 'a --> ALIASES
#   'p --> PROJECTS
#   'g --> GIT COMMANDS

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate _prefix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' menu select=10
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s of %1
zstyle :compinstall filename '/Users/jeff/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=2000
setopt sharehistory appendhistory autocd beep
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

bindkey -v
# End of lines configured by zsh-newuser-install

############################################ 
############################################ 
############################################ 
# Beginning of lines added by user



################################################
# ENVIRONMENT
################################################
# Customize prompt
# %B (%b) --- Start (stop) boldface mode.
# %U (%u) --- Start (stop) underline mode.
# %S (%s) --- Start (stop) standout mode.
# %F (%f) --- Start (stop) using a different foreground colour, if supported by the terminal. The colour may be specified two ways: either as a numeric argument, as normal, or by a sequence in braces following the %F, for example %F{red}. In the latter case the values allowed are as described for the fg zle_highlight attribute; Character Highlighting. This means that numeric colours are allowed in the second format also.
# %K (%k) --- Start (stop) using a different bacKground colour. The syntax is identical to that for %F and %f.
# source ~/.git-prompt.sh
# setopt PROMPT_SUBST ; PS1='[%c%B$(__git_ps1 " (%s)")%b] %# '
# precmd () { __git_ps1 "[%B%c%b]" " %# " " (%s)" }
# export GIT_PS1_SHOWCOLORHINTS=true
# export GIT_PS1_SHOWDIRTYSTATE=true
# export GIT_PS1_SHOWSTASHSTATE=true
# export GIT_PS1_SHOWUNTRACKEDFILES=true
# export GIT_PS1_SHOWUPSTREAM="verbose name"

# spaceship theme
autoload -U promptinit; promptinit
prompt spaceship

#######
# PATH
#######
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# activate jenv (java environment manager)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

################################################
# FUNCTIONS
################################################

md () { 
  # Create a directory and navigate to it.
  mkdir -pv $1
  cd $1
}

makeJournal () {
  # clear current file
  rm ~/Documents/personal/hoy/journal.md
  # Add all entries to journal
  for i
  do
    echo "------------\n# " $i "\n">> ~/Documents/personal/hoy/journal.md
    cat $i >> ~/Documents/personal/hoy/journal.md
    echo "\n\n" >> ~/Documents/personal/hoy/journal.md
  done
}

toJournal () {
  # Append entries to journal
  for i
  do
    echo "------------\n# " $i "\n">> ~/Documents/personal/hoy/journal.md
    cat $i >> ~/Documents/personal/hoy/journal.md
    echo "\n\n" >> ~/Documents/personal/hoy/journal.md
    # mv $i entries/`date '+%Y'`/`date '+%m'`
  done
}

#### Functions for developing in processing
# newpy3() {
#   mkdir -pv $1
#   cp ~/Documents/code/processing/py-standalone/processing-py.jar $1/
#   cd $1
#   vim $1.py
# }

# runp3() {
#     processing $1
# }

# runpy3() {
#     java -jar processing-py.jar $1.py
# }

function extract {
  if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
    return 1
  else
    for n in $@
    do
      if [ -f "$n" ] ; then
        case "${n%,}" in
          *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
            tar xvf "$n"       ;;
          *.lzma)      unlzma ./"$n"      ;;
          *.bz2)       bunzip2 ./"$n"     ;;
          *.rar)       unrar x -ad ./"$n" ;;
          *.gz)        gunzip ./"$n"      ;;
          *.zip)       unzip ./"$n"       ;;
          *.z)         uncompress ./"$n"  ;;
          *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
            7z x ./"$n"        ;;
          *.xz)        unxz ./"$n"        ;;
          *.exe)       cabextract ./"$n"  ;;
          *)
            echo "extract: '$n' - unknown archive method"
            return 1
            ;;
        esac
      else
        echo "'$n' - file does not exist"
        return 1
      fi
    done
  fi
}

################################################
# ALIASES
################################################

# aliases for editing and intializing dotfiles
alias dot="cd ~/.dotfiles/"
alias dot.="vim ~/.dotfiles/" #edit dotfiles
alias rc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"
alias rc.=". ~/.zshrc" #source dotfile

# Simplify navigation
alias jk="cd -"
alias apps="cd /Applications"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias box="cd ~/Box/ActiveProjects"
alias down="cd ~/Downloads"
alias downloads="cd ~/Downloads"
alias code="cd ~/Documents/code" 
alias web="cd ~/Documents/code/web"

# Toggle hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles YES && sudo killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO && sudo killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Copy the current path to the system clipboard
alias cwd="echo -n "$(pwd)" | pbcopy"

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ls="ls -F"
alias la="ls -aF"
alias ll="ls -laF"

# Search the current directory
alias f.="find . -name"

# Make grep more user friendly by highlighting matches
# and exclude grepping through .git folders
alias grep="grep --color=auto --exclude-dir=\.git"

# Make some possibly destructive commands more interactive.
alias rm="rm -v"
alias rmi="rm -iv"
alias mv="mv -v"
alias mvi="mv -iv"
alias cp="cp -v"
alias cpi="cp -iv"
alias rm!="rm -rfv" #just get rid of it

# Better folder creation
alias mkdir="mkdir -pv"

# Use neovim and open it easier
alias vim="nvim"
alias v="nvim"
alias v.="nvim ."
alias vs="nvim -S"

# Make it easier to run processing sketches from the command line (JAVA & PY modes)
alias processing="processing-java"
alias p3.="runp3"
alias py3.="runpy3"

# Use the right Python installer
alias pip="pip3"

# Opening GUI apps
# entertainment
alias steam="open -a steam"
# Start Spotify without ads
alias music="open -a mutespotifyads"


# open current directory
alias finder="open ."

# open browsers
alias chrome="open -a google\ chrome"
alias firefox="open -a firefox"
alias browse="open -a firefox"

# work/team tools
alias slack="open -a slack"
alias notion="open -a notion"
alias notes="open -a notion"
alias harvest="open -a harvest"
alias messages="open -a messages"

# start design tools
alias figma="open -a figma"
alias sketch="open -a sketch"
alias framer="open -a framer\ x"

# 3d tools
alias unity="open -a unity\ hub"
alias blender="open -a blender"

# start video tools
alias quicktime="open -a quicktime"
alias handbrake="open -a handbrake"
alias loom="open -a loom"

# Echo my IP address
alias myip="curl http://ipecho.net/plain; echo"

# Close the terminal
alias ,q="logout || exit"

# Top activities sorted by cpu or memory
alias topc='top -o cpu'
alias topm='top -o mem'

# Recursively delete `.DS_Store` files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanbox="rm! /Users/jeff/Library/Application\ Support/Box/Box/cache/*"

# Boldly go where no man has gone before
alias engage="echo -n -e '\033]0;USS Enterprise\007' && play -n -c1 synth whitenoise lowpass -1 120 lowpass -1 120 lowpass -1 120 gain +14"

# Play snake
alias snake="python ~/Documents/games/snake.py"

###########
# Projects
###########

# Learning
## REFERENCE
alias coderef="cd /Users/jeff/Documents/code/_reference"
alias data="cd ~/Documents/code/_reference/my-data"
alias gitref="cd /Users/jeff/Documents/code/_reference/progit/ && nvim -S Session.vim"
## CURRENT
alias lvs="cd ~/Documents/code/vim/learnvimscriptthehardway/chapters && nvim -S Session.vim"
alias js.="cd ~/Documents/code/web/training/lynda_js && nvim ."
alias gats="cd /Users/jeff/Documents/code/web/gatsby-tutorial"
## PAST
alias html="cd ~/Documents/code/web/training/lynda_html/site"
alias css="cd ~/Documents/code/web/training/lynda_css/css-portfolio"

# Reading
alias book="cd ~/Documents/ebooks/NarrativeFrederickDouglass/ && nvim -S Session.vim"

# Play ops
alias play="cd ~/Documents/personal/playops"

# Bridger website
alias bw="cd /Users/jeff/Documents/code/web/bridger.work"
alias bw.="cd /Users/jeff/Documents/code/web/bridger.work && nvim ."

# developing Sketch plugins
alias sketchplugins="cd /Users/jeff/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/"
alias lseek="cd ~/Documents/code/sketchplugins/layer-seeker"

# keeping a journal, maybe
alias hoy="md ~/Documents/personal/hoy/entries/`date '+%Y'`/`date '+%m'` && vim hoy-`date '+%Y%m%d-%a'`.md"
alias ayer="cd ~/Documents/personal/hoy && vim hoy-`date -v-1d '+%Y%m%d-%a'`"

# Processing
alias p3="cd ~/Documents/code/web/processing"
alias p3inspo="cd ~/Documents/code/processing/_inspiration"

#######
# GIT COMMANDS
#######

# Use gitlab as default.
# Escape \hub or \git if you need it for something specific
alias git="hub"
# alias hub="lab"

# start a repo
alias gin="git init"
alias gitin="git init"
alias get="git clone"

# checking status and history
alias gs="git status"
# git log long
alias gll="git log"
# limit git log
alias gl="git log --oneline"
alias gl3="git log --oneline -3"
alias gl5="git log --oneline -5"
alias gl10="git log --oneline -10"

# staging changes
alias ga="git add"
alias ga.="git add ." # add the current directory (usually the whole project)
alias ga!="git add -A" # add All changes
alias gap="git add -p" # patch staging
alias gus="git restore --staged" # git unstage

# commits
alias gc="git commit -m" # always add a message inline
alias gca="git commit -am" # add changes and commit -> "git commit add"
alias gac="git commit -am" # add changes and commit -> "git add commit"
alias gc!="git add -A && git commit -m" 
alias gcx="git commit --amend" # amend the last commit
alias gz="git reset" # git undo last commit

# stashing
alias gt="git stash" # git 'tash
alias gtm="git stash push -m" # git 'tash with message
alias gtl="git stash list"
alias gtp="git stash pop"
alias gta="git stash apply"
alias gtd="git stash drop"

# working with remote repos
alias gr="git remote"
alias gra="git remote add"
alias gpb="git push --set-upstream origin" #set up a remote branch 'git push branch'
alias gpsu="git push --set-upstream origin" #set up a remote branch 'git push set upstream'
alias gp="git push"
alias gp!="git push -f" # force push
alias gd="git pull" # git download

# branches
alias gb="git branch"
alias gbd="git branch -d" #delete branch
alias go="git checkout" # go to branch
alias goma="git checkout master" # go to master branch
alias gnb="git checkout -b" #create new local branch and check it out
alias gob="git checkout -b" #create new local branch and check it out

# merges
alias gm="git merge"
alias gx="git diff" #git "e_x_amine/compare"

# GITHUB COMMANDS
alias gh="hub browse" #git hub
# Issues
alias gi="hub issue"
alias gi.="hub issue create"
alias gis="hub issue show"
alias giu="hub issue update"
alias gie="hub issue update --edit"

# Pull-requests
alias gpr="hub pr"
alias gpr.="hub pull-request -p"

################################################
# Everything below heres has been `echo`ed into the file and needs to be sorted.

