# Create .machine.env in your $HOME directory
# with the appropriate export line
# export MACHINE="home"
# export MACHINE="work"

if [ -f "$HOME/.machine.env" ]; then
  source "$HOME/.machine.env"
else
  echo "No .machine.env file\nAdd to your $HOME directory using the appropriate command below
  \n For work computers:
     echo 'export MACHINE=\"work\"' >> $HOME/.machine.env
  \n For personal machines:
     echo 'export MACHINE=\"home\"' >> $HOME/.machine.env"
fi

