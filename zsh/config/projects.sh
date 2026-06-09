#########################################
# Projects
# things to help with persistent projects
#########################################

#########################
# Notes + Journal keeping
#########################

# taking notes
alias note="cd $NOTES && v -c star note-`date '+%Y%m%d-%a-%hh%mm'`.md"

# keeping a journal, maybe
alias journal="cd $JOURNAL && vim ."
alias jour="cd $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim ."
alias mois="cd $JOURNAL/`date '+%Y'` && vim ."
alias hoy="md $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim hoy-`date '+%Y%m%d-%a'`.md"
alias ayer="md $JOURNAL/`date '+%Y'`/`date '+%m-%b'` && vim -c star hoy-`date -v-1d '+%Y%m%d-%a'`.md"


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


###############################
# Processing + p5.js + Mechanic
###############################

# Make it easier to run processing sketches from the command line (JAVA & PY modes)
alias processing="processing-java"
alias p3.="runp3"
alias py3.="runpy3"

# p5.js
# source "$P5_SKETCHBOOK/starter/p5.sh"
alias pdev="nodemon app.js"

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

#########################
# Artificial Intelligence
#########################

# Claude code
# source "$CODE/scripts/clod/clod.sh"
alias cl="claude"
alias clr="claude --resume"
alias cln="claude --name"

# Ollama
alias ol="ollama"
alias ols="ollama serve"
alias olr="ollama run"
# Run specific models
alias olq="ollama run qwen2.5:3b"
alias olq7="ollama run qwen2.5:7b"
alias olp="ollama run phi4-mini"
alias olg="ollama run gemma3:4b"



#########
# Web dev
#########

# Echo my IP address
alias myip="curl http://ipecho.net/plain; echo"

# Start a simple HTTP server
alias serve="python3 -m http.server 8000"

# Web dev, local testing
alias ns="nodemon"
alias loc='ff http://localhost:3000'
alias nbuild="npm run build"
alias ndeploy="npm run deploy"
alias ndev="npm run dev"
alias n.="npm install"
alias nr="npm run"
alias hhr="npx hardhat run"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
