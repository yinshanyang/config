eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/starship init zsh)"
eval "$(/opt/homebrew/bin/zoxide init zsh)"
eval "$(/opt/homebrew/bin/mise activate zsh)"
printf '\33c\e[3J'
precmd() { precmd() { echo } }

# histroy configuration
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history
