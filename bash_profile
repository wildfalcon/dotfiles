
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lA'

eval "$(rbenv init -)"
