#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$(tty)" = "/dev/tty1" ]; then
    ~/.local/bin/launch-hyprland
fi

alias ls='exa -l'
alias grep='grep --color=auto'
alias nf='neofetch'
alias ff='fastfetch'
PS1='\[\e[38;5;238m\][\[\e[38;5;224m\]\u\[\e[38;5;238m\]@\[\e[38;5;110m\]\H\[\e[0m\] \W\[\e[38;5;238m\]]\[\e[0;1m\]\$\[\e[0m\] '
