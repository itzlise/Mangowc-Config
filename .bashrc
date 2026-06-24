
PS1='\[\e[34m\]\u@\h \[\e[0m\]\[\e[32m\]\w\[\e[0m\] $ '

if [[ $- == *i* ]]; then
nitch
fi


# Commands that should be applied only for interactive shells.
[[ $- == *i* ]] || return

HISTFILESIZE=100000
HISTSIZE=10000

shopt -s histappend
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias -- grep='grep --color=auto'
alias -- ls='ls -la --color=auto'
alias -- nrs='sudo nixos-rebuild switch --flake /etc/nixos#nixos'
alias -- upgradenixos='sudo nixos-rebuild switch --flake /etc/nixos#nixos --upgrade'

if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
  . "/nix/store/ccyj4s2ha7w1g59834sv2lq624z8ppfn-bash-completion-2.17.0/etc/profile.d/bash_completion.sh"
fi

