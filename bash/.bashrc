[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias please='sudo "$BASH" -c "$(history -p !!)"'
alias ll='ls -ABhlog --color=auto'
LS_COLORS=$LS_COLOR:'di=0;32:' ; export LS_COLORS
alias grep='grep --color=auto'
GREP_COLORS=$GREP_COLOR:'di=0;32:' ; export GREP_COLORS

alias vim='nvim'
alias v='vim -O'

alias g='git'

alias grep='rg'

#Preserve environment
alias sudo='sudo -E'

alias update='sudo pacman -Suy'

#Display git branch in terminal
# https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PROMPT_DIRTRIM=3 # Only show 3 directories
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
 
if [ -z $DISPLAY ] && [ "$(tty)" == "/dev/tty1" ]; then
	exec sway
fi
