#
# .bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --hide=Desktop --hide=Downloads --hide=Jts'
alias grep='grep --color=auto'
PS1="\[\033[0;32m\]\u@\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ "

# >>> Setup paths >>>
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
# <<< Setup paths <<<

# >>> Setup pyenv >>>
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# <<< Setup pyenv <<<

