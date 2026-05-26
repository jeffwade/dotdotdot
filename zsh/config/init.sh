#################################################
# INITIALIZATION
# stuff to make sure that shell is set up to use all the right stuff
#################################################

# Create .zsh folder if it doesn't exist
[ -d "$HOME/.zsh" ] || mkdir -p "$HOME/.zsh"

# Get dot files
if [ ! -d "$HOME/.dotfiles" ]; then
  # if no dotfiles, then clone repo
  git clone --depth=1 https://github.com/jeffwade/dotdotdot.git "$HOME/.dotfiles"
fi

# # Configure zsh
#   # create symbolic links
#   zsh_config_dir = "$HOME/.zsh/config"
# [ -d zsh_config_dir ] || mkdir -p zsh_config_dir

# for FILE in zsh_config_dir/*; do
#   source $FILE
# done

# Load spaceship theme
if [ -f "$HOME/.zsh/spaceship/spaceship.zsh" ]; then
  echo "Sourcing spaceship prompt 🛸"
  source "$HOME/.zsh/spaceship/spaceship.zsh"
else
  git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
  echo "Sourcing spaceship prompt 🛸"
  source "$HOME/.zsh/spaceship/spaceship.zsh"
fi

# EDITOR
# export EDITOR="cursor --wait" #cursor
# export EDITOR="code" #vscode
export EDITOR="nvim" #neovim

# DO NOT TRACK
export DO_NOT_TRACK=true
export GH_TELEMETRY=false
