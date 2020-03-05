[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.env-passwords" ]] && source "$HOME/.env-passwords" # Load the default .profile

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Remove ruby warnings
export RUBYOPT='-W:no-deprecated -W:no-experimental'

# Set up homebrew completions
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi