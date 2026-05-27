#################################################
# INITIALIZATION
# stuff to make sure that shell is set up to use all the right stuff
#################################################

# Create .zsh folder if it doesn't exist
[ -d "$HOME/.zsh" ] || mkdir -p "$HOME/.zsh"

# Load spaceship theme
if [ -f "$HOME/.zsh/spaceship/spaceship.zsh" ]; then
  echo "Sourcing spaceship prompt 🛸"
  source "$HOME/.zsh/spaceship/spaceship.zsh"
else
  git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
  echo "Sourcing spaceship prompt 🛸"
  source "$HOME/.zsh/spaceship/spaceship.zsh"
fi

########################################################################
# ENVIRONMENT
########################################################################

# shell integrations
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -e "$HOME/.shellfishrc" && source "$HOME/.shellfishrc"

# TODO: add function to source local files
# source certificates
source "$HOME/.certs"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:$HOME/.local/bin"

# activate jenv (java environment manager)
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# EDITOR
# export EDITOR="cursor --wait" #cursor
# export EDITOR="code" #vscode
export EDITOR="nvim" #neovim

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# DO NOT TRACK
export DO_NOT_TRACK=true
export GH_TELEMETRY=false
