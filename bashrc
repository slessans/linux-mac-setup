
# show git branch
function git-branch-name {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
		 
function git-dirty {
	st=$(git status 2>/dev/null | tail -n 1)
	if [[ $st != "nothing to commit, working directory clean" ]]
	then
		echo " *"
	fi
}

function gitify {
	status=$(git status 2>/dev/null | tail -n 2)
	if [[ $status == "" ]]
	then
		echo ""
	else
		echo " [$(git-branch-name)$(git-dirty)]"
	fi
}

export PROMPT_DIRTRIM=2

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
		   
PS1="$GREEN\u$NO_COLOUR:\W$YELLOW\$(gitify)$NO_COLOUR\$ "
