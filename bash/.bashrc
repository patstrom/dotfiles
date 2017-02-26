[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias please='sudo $(history -p !!)'
alias ll='ls -ABhlog --color=auto'

alias vim='nvim'

#Preserve environment
alias sudo='sudo -E'
