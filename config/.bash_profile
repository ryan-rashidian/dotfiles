# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Login shell environment

# Setup paths
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Set makepkg to run parallel jobs
export MAKEFLAGS="-j$(nproc)"

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

