# get aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.profile ]; then
	source ~/.profile
fi

# enable coloring
export CLICOLOR=1

# set coloring scheme for black bg
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# for non black:
# export LSCOLORS=ExFxCxDxBxegedabagacad
