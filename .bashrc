#
# ~/.bashrc tony-btw prompt (at least simillar)
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[34m\] \u@\h \[\e[0m\]\[\e[32m\]\W\[\e[0m\] $ '

export PATH="/usr/bin:$PATH"

nitch
