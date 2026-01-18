# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# >>> Prompt colors >>>
PS1="\[\033[1;36m\]($) [\u@\h] [\w] (λ)-> \[\033[0m\]"
# <<< Prompt colors <<<

# >>> Command alias >>>
alias ls='ls --color=auto --hide=Desktop --hide=Downloads --hide=Jts'
alias grep='grep --color=auto'
alias make='make -j$(nproc)'
# <<< Command alias <<<

