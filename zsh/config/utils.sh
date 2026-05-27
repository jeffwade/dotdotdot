################################################
# Utilities
# mods to built-in functions and similar helpers
################################################

###########
# Dot files
# aliases for editing and intializing dotfiles
##############################################

alias dot="cd $DOTFILES"        #open dotfiles directory
alias dot.="vim $DOTFILES"      #edit dotfiles
alias rc="vim ~/.zshrc"            #.zshrc
alias vrc="vim ~/.vimrc"
alias rc.=". ~/.zshrc" #source dotfile
alias rn="v ~/.nav"


###########
# General
###########

# vim
# Use neovim and open it easier
alias vim="nvim"
alias v="nvim"
alias v.="nvim ."
alias vs="nvim -S"

# Use the right Python installer
alias pip="pip3"

# brew simpler
alias brewery="brew update && brew upgrade && brew cleanup"
alias brewf=' echo "Removing old brewfile..." && rm $DOTFILES/brew/Brewfile && echo "Compiling new brewfile..." && brew bundle dump --file $DOTFILES/brew/Brewfile && echo "New brewfile at $DOTFILES/brew/Brewfile"'

#################
# Alias built-ins
#################

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ls="ls -F"
alias la="ls -aF"
alias ll="ls -laF"
alias lag="ls -AF | grep"

# Make some possibly destructive commands more interactive.
alias rmi="rm -iv"
alias mvi="mv -iv"
alias cpi="cp -iv"

# Remove directory
alias rd="echo 'removing directory' && rm -rf"

# If you really want to get rid of something, go out with a bang!
alias rm!="echo 'borrado!' && rm -rf" #just get rid of it

# Better folder creation
alias mkdir="mkdir -pv"

# less time taken typing less 
alias l="less"

# Make grep more user friendly by highlighting matches
# and exclude grepping through .git folders
alias grep="grep --color=auto --exclude-dir=\.git"

# Top activities sorted by cpu or memory
alias topc='top -o cpu'
alias topm='top -o mem'



###############
# Alias helpers
###############

# Close the terminal
alias ,q="logout || exit"

# search aliases and what they mean
alias alg="alias | grep"
alias alw="zsh -ixc : 2>&1 | grep ... | grep"
alias wh="which"

# Recursively delete `.DS_Store` files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

# Search the current directory
alias f.="find . -name"

# Toggle hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles YES && sudo killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO && sudo killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesk="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesk="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Copy the current path to the system clipboard
alias cwd="pbcopy < pwd"

# Clear the clipboard
alias cx="echo -n | pbcopy"



###########
# Functions
###########

md () {
  # Create a directory and navigate to it.
  mkdir -pv $1
  cd $1
}

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

