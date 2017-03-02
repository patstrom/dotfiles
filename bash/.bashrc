[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias please='sudo $(history -p !!)'
alias ll='ls -ABhlog --color=auto'

alias vim='nvim'
alias v='vim'

alias g='git'

#Preserve environment
alias sudo='sudo -E'

# ssh-agent
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent > ~/.ssh
#fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#    eval "$(<~/.ssh)"
#fi

