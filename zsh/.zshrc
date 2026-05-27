export DOTFILES="$HOME/.dotdotdot"
export ZSHRC="$DOTFILES/config"

source "$ZSHRC/init.sh"

# Find all '.sh' files in ~/zshrc, exclude 'init.sh'.  
CONFIGS_STR=$(find $ZSHRC -name '*.sh' -not -name 'init.sh')

CONFIGS=($(echo $CONFIGS_STR | tr '\n' ' '))

for FILE in $CONFIGS; do
  source $FILE
done


######################################################################
# Everything below here has been echoed into the file and needs to be sorted.
