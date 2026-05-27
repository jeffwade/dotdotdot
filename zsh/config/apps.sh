##################################################
# Apps
# items related to GUIs, TUIs and brewies
##################################################

####################
# CLIs
####################

# brew simpler
alias brewery="brew update && brew upgrade && brew cleanup"

####################
# TUIs
####################

# Draw in the terminal
# npm install --global @termdraw/app 
alias draw="termdraw"
alias td="termdraw"
alias tdl="termdraw --load"


####################
# GUIs
####################

## open finder at current directory
alias finder="open ."

## open browsers
export DEFAULT_BROWSER="arc"
alias $DEFAULT_BROWSER="open -a $DEFAULT_BROWSER"
alias browse="open -a $DEFAULT_BROWSER"

## work/team tools
alias slack="open -a slack"
alias notion="open -a notion"
alias messages="open -a messages"

## start design tools
alias figma="open -a figma"
alias miro="open -a miro"

## 3d tools
alias unity="open -a unity\ hub"
alias blender="open -a blender"

## start video tools
alias quicktime="open -a quicktime"
alias handbrake="open -a handbrake"
alias loom="open -a loom"

## Start Spotify without ads
alias music="open -a mutespotifyads"
