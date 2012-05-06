# Color ! (ls, grep, prompt)
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='0;32' # Green
export PS1="\[\e[0;31m\]\u\[\e[m\]@\[\e[0;34m\]\h\[\e[m\]:\[\e[0;32m\]\W\[\e[m\]\$ "

export EDITOR=vim

if [ $OSTYPE == "linux-gnu" ]
then
    alias ack=ack-grep
fi

alias ll="ls -al"

# Custom host profile
if [ -e ~/.profile.host ]
then
    source ~/.profile.host
fi
