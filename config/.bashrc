# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# >>> Terminal colors >>>
PS1="\[\033[0;32m\]\u@\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ "
# <<< Terminal colors <<<

# >>> Command alias >>>
alias ls='ls --color=auto --hide=Desktop --hide=Downloads --hide=Jts'
alias grep='grep --color=auto'
alias make='make -j$(nproc)'
# <<< Command alias <<<

