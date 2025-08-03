#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --hide=Desktop --hide=Downloads --hide=Zomboid'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# PATH
## User Installs
export PATH="$HOME/.local/bin:$PATH"

## User Executables
export PATH="$HOME/bin:$PATH"

