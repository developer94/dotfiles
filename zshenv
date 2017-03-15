#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# npm path
export PATH="$HOME/.npm-global/bin:$PATH"

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# projects:
alias swarmer="cd $HOME/projects/swarmer/src/server && \ 
               pyenv activate swarmer && \
               source .context.sh"
