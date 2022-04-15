# change dir aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# utilities
alias count="find '\..' . | xargs wc -l"

# rust replacements
# - ls
alias ls="exa --group-directories-first --ignore-glob=\"Documents|Library|Movies|Music|Pictures|Public\""
alias ll="ls -la --git"
alias lt="ls --tree"
alias l="ls -1"
# - http
http() { xh --follow $@ user-agent:curl/7.77.0; }
# - cat
alias cat="bat --paging=never"
# - grep
alias grep="rg"
alias grr="grep"
# - diff
alias diff="difft"
# - find
alias find="fd"

# node
alias nr="npm run -s"
alias ni="npm install"
alias nu="npm uninstall"

# git
alias gs="git status -s"
alias ga="git add"
alias gc="git commit"
alias gl="git log --branches --remotes --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%Creset%C(yellow)%d%Creset %<(80,trunc)%s' --abbrev-commit"
alias gp="git push --follow-tags"
alias gd="git diff"

# cht.sh
cht() { http cht.sh/$1 }

# extract
ex() {
  if [ -f $1 ]; then
    case $1 in
    *.tar.bz2) tar xjf $1 ;;
    *.tar.gz) tar xzf $1 ;;
    *.tar) tar xf $1 ;;
    *.bz2) bunzip2 $1 ;;
    *.gz) gunzip $1 ;;
    *.zip) unzip $1;;
    esac
  else
    echo "'$1' is not a file"
  fi
}
