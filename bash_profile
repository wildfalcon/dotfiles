[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.env-passwords" ]] && source "$HOME/.env-passwords" # Load the default .profile

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"