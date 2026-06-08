#################################################
# ALIASES
#################################################

# Use github as default.
# Escape \lab or \git if you need it for something specific
alias git="hub"
# alias hub="lab"

#edit .gitignore
alias .gi="vim ./.gitignore || vim ../.gitignore"

# start a repo
alias get="git clone"

# checking status and history
alias gs="git status"

# limit git log
alias gl="git log --oneline"
# search git log
alias glg="git log --oneline | grep"
# git log long
alias gll="git log"
# limit to past N commits
alias gl3="git log --oneline -3"
alias gl5="git log --oneline -5"
alias gl10="git log --oneline -10"

# staging changes
alias ga="git add"
alias gat="git add -u" # only add already tracked files
alias ga.="git add ." # add the current directory (usually the whole project)
alias ga!="git add -A" # add All changes
alias gA="git add -A" # add All changes
alias gap="git add -p" # patch staging
alias gre="git restore"
alias gres="git restore --staged" # git unstage
alias gus="git restore --staged" # git unstage
alias gmv='git mv' # git move

# commits
alias gc="git commit -m" # always add a message inline
alias gca="git commit -am" # add changes and commit -> "git commit add"
# alias gac="git add $1 && git commit -m $2" # add changes and commit -> "git add commit"
# Need to write function that handles this
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
alias grd="git push -d" #git remote delete
alias gpb="git push --set-upstream origin" #set up a remote branch 'git push branch'
alias gp="git push"
alias gp!="git push -f" # ! force push
alias gd="git pull" # git download
alias gg="git pull" # git get

# branches
alias gb="git branch"
alias gbd="git branch -d" #delete branch
alias go="git checkout" # go to branch
alias gom="git checkout main" # go to main branch
alias gos="git checkout source" # go to source branch
alias gob="git checkout -b" #create new local branch and check it out
alias gbmv="git branch -m" #git branch move

# rebasing
alias grb="git rebase"
alias grbi="git rebase -i"
alias grbc="git rebase --continue"

# merges
alias gm="git merge"
alias gmt="git mergetool"
alias gx="git diff" #git "e_x_amine/compare"

# GITHUB COMMANDS
# alias gh="hub"
alias ghb="gh browse" #git hub
## Issues
alias gi="gh issue create"
alias gil="gh issue list"
alias gic="gh issue comment"
alias gis="gh issue status"
alias giv="gh issue view"
alias gie="gh issue edit"

## Pull-requests
alias gpr="gh pr create"
alias gprh="gh pr --help"
alias gprl="gh pr list"
alias gopr="gh pr checkout"


################################################
# FUNCTIONS
################################################

whichgit () {
  echo "$(git config user.name)"
  echo "$(git config user.email)"
}
alias wg="whichgit"

gin () {
  if test $# -gt 0; then
    case "$1" in
      -l|--lw|--loswade)
        echo "Initializing git for Loswade"
        git init
        git config --local user.name "loswade"
        git config --local user.email "89751099+loswade@users.noreply.github.com"
        return 0
        ;;
      -j|--jw|--jeffwade)
        echo "Initializing git for Jeff Wade"
        git init
        git config --local user.name "jeffwade"
        git config --local user.email "jeffwade@users.noreply.github.com"
        return 0
        ;;
      *)
        echo "Not a valid initialization.\nTry -l|--lw|--loswade or -j|--jw|--jeffwade."
        return 1
    esac
  fi
  git init
}

ungit () {
  echo -n "Are you sure you want to unlink this git repo? (yes/no): >"
  local CONFIRMATION
  read CONFIRMATION
  case "$CONFIRMATION" in
    y|yes)
      rm -rf "./.git"
      echo ".git outta here"
      return 1
      ;;
    *)
      echo ".git's still here"
      return 0
      ;;
  esac
}
