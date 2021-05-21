# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
            . /usr/share/bash-completion/bash_completion

# Set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Define colors for the PS1
CYAN="\e[96m"
DARKCYAN="\e[36m"
DARKGRAY="\e[98m"
GRAY="\e[37m"
WHITE="\e[97m"

# Define helper functions for the PS1
git_branch () {
	if git branch > /dev/null 2>&1; then
		echo "on $(git branch | grep '^*' | awk '{print $2}') "
	else
		echo ""
	fi
}

conda_env () {
        if [ ! -z $CONDA_DEFAULT_ENV ]; then
                echo "via $CONDA_DEFAULT_ENV "
        else
                echo ""
        fi
}

# Define the ps1 itself
export PS1="\033]0;\u@\h\007"
export PS1=$PS1"$CYAN\w "
export PS1=$PS1"$DARKCYAN\$(git_branch)"
export PS1=$PS1"$GRAY\$(conda_env)"
export PS1=$PS1"$WHITE\n$ "

# Define alias for config git repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

