#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --hide=Desktop --hide=Downloads --hide=Zomboid'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# >>> Setup paths >>>
## User Installs
export PATH="$HOME/.local/bin:$PATH"
## User Executables
export PATH="$HOME/bin:$PATH"
# <<< Setup paths <<<

# >>> Setup pyenv >>>
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# <<< Setup pyenv <<<

