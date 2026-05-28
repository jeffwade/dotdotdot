export DOTFILES="$HOME/.dotdotdot"
export ZSHRC="$DOTFILES/zsh/config"
export PRIVATE_CONFIG_DIR="$HOME/.config/private"
echo_processes=false
source "$ZSHRC/init.sh"

if [ -d $ZSHRC ]; then
  # Find all '.sh' files in ~/zshrc, exclude 'init.sh'.  
  CONFIGS_STR=$(find $ZSHRC -name '*.sh' -not -name 'init.sh')
  CONFIGS=($(echo $CONFIGS_STR | tr '\n' ' '))

   [ "$echo_processes" = true ] && echo "Sourcing config files..."
  for FILE in $CONFIGS; do
    [ "$echo_processes" = true ] && echo "  ${FILE##*/}"
    source $FILE
  done
fi

if [ -d $PRIVATE_CONFIG_DIR ]; then

  CONFIGS_STR=$(find $PRIVATE_CONFIG_DIR -name '*.sh')
  CONFIGS=($(echo $CONFIGS_STR | tr '\n' ' '))

  [ "$echo_processes" = true ] && echo "\nSourcing private config files..."
  for FILE in $CONFIGS; do
    [ "$echo_processes" = true ] && echo "  ${FILE##*/}"
    source $FILE
  done
fi


################################################
# Everything below here has been echoed into the file and needs to be sorted.
