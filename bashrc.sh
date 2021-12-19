# This file has some of the bash configurations that I love to use
# These configurations will be added to .bashrc file


# Displays current git branch in the bash prompt
# For more details: https://thucnc.medium.com/how-to-show-current-git-branch-with-colors-in-bash-prompt-380d05a24745
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[92m\]\u@\h:\[\e[96m\]\w\[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# aws cli auto-completion command
# make sure that aws_completer location by running `which aws_completer`
complete -C '/usr/local/bin/aws_completer' aws

# kubectl auto-completion command

