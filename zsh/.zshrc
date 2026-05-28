export DOTFILES="$HOME/.dotdotdot"
export ZSHRC="$DOTFILES/zsh/config"
export PRIVATE_CONFIG_DIR="$HOME/.config/private"

source "$ZSHRC/init.sh"

if [ -d $ZSHRC ]; then
  # Find all '.sh' files in ~/zshrc, exclude 'init.sh'.  
  CONFIGS_STR=$(find $ZSHRC -name '*.sh' -not -name 'init.sh')
  CONFIGS=($(echo $CONFIGS_STR | tr '\n' ' '))

  for FILE in $CONFIGS; do
    echo "Sourcing $FILE..."
    source $FILE
  done
fi

if [ -d $PRIVATE_CONFIG_DIR ]; then
  echo "Sourcing private config files..."
  for FILE in $PRIVATE_CONFIG_DIR; do
    source $FILE
  done
fi


################################################
# Everything below here has been echoed into the file and needs to be sorted.
