#########################################################################
# ALIASES
#########################################################################

# aliases for editing and intializing dotfiles
alias dot="cd ~/.dotfiles/"
alias dot.="vim ~/.dotfiles/" #edit dotfiles
alias rc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"
alias rc.=". ~/.zshrc" #source dotfile

# Simplify navigation
source ~/.nav
alias rn="v ~/.nav"

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

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ls="ls -F"
alias la="ls -aF"
alias ll="ls -laF"

# Search the current directory
alias f.="find . -name"

# Make grep more user friendly by highlighting matches
# and exclude grepping through .git folders
alias grep="grep --color=auto --exclude-dir=\.git"

# search aliases and what they mean
alias alg="alias | grep"
alias alw="zsh -ixc : 2>&1 | grep ... | grep"
alias wh="which"

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

# Use neovim and open it easier
alias vim="nvim"
alias v="nvim"
alias v.="nvim ."
alias vs="nvim -S"

# Make it easier to run processing sketches from the command line (JAVA & PY modes)
alias processing="processing-java"
alias p3.="runp3"
alias py3.="runpy3"

# p5.js
# source "$P5_SKETCHBOOK/starter/p5.sh"
alias pdev="nodemon app.js"

# Claude code
# source "$CODE/scripts/clod/clod.sh"
alias cl="claude"
alias clr="claude --resume"
alias cln="claude --name"

# Use the right Python installer
alias pip="pip3"
# Start a simple HTTP server
alias serve="python3 -m http.server 8000"

# Echo my IP address
alias myip="curl http://ipecho.net/plain; echo"

# Close the terminal
alias ,q="logout || exit"

# Top activities sorted by cpu or memory
alias topc='top -o cpu'
alias topm='top -o mem'

# Recursively delete `.DS_Store` files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

###########
# Projects
###########

# taking notes
alias note="cd $NOTES && v -c star note-`date '+%Y%m%d-%a-%hh%mm'`.md"
# keeping a journal, maybe
alias journal="cd $JOURNAL && vim ."
alias jour="cd $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim ."
alias mois="cd $JOURNAL/`date '+%Y'` && vim ."
alias hoy="md $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim hoy-`date '+%Y%m%d-%a'`.md"
alias ayer="md $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim -c star hoy-`date -v-1d '+%Y%m%d-%a'`.md"

# Web dev, local testing
alias ns="nodemon"
alias loc='ff http://localhost:3000'
alias gdev="gatsby develop"
alias nbuild="npm run build"
alias ndeploy="npm run deploy"
alias ndev="npm run dev"
alias hhr="npx hardhat run"

# Mechanic
mech () {
  if test $# -gt 0; then
    case "$1" in
      -h|--help|help)
        echo "usage: mech [-h] [project-name]"
        echo "creates a new mechanic project"
        echo "passed without arguments, will execute npm run new"
        return 0
        ;;
      -n|--new|new)
        shift
        npm init mechanic@latest "$1"
        return 0
        ;;
      *)
        npm init mechanic@latest "$1"
        cd "$1"
        return 0
        ;;
    esac
  else
    npm run new
  fi
}

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
    echo "------------\n# " $i "\n">> ~/docs/personal/hoy/journal.md
    cat $i >> ~/docs/personal/hoy/journal.md
    echo "\n\n" >> ~/docs/personal/hoy/journal.md
  done
}

toJournal () {
  # Append entries to journal
  for i
  do
    echo "------------\n# " $i "\n">> ~/docs/personal/hoy/journal.md
    cat $i >> ~/docs/personal/hoy/journal.md
    echo "\n\n" >> ~/docs/personal/hoy/journal.md
    # mv $i entries/`date '+%Y'`/`date '+%m'`
  done
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

################################################
# Everything below here has been echoed into the file and needs to be sorted.
