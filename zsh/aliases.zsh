# change dir aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# utilities
alias count="fd '\..' . | xargs wc -l"
alias serve="python3 -m http.server -b::"

# rust replacements
# - ls
alias ls="eza --group-directories-first --ignore-glob=\"Documents|Library|Movies|Music|Pictures|Public\""
alias ll="ls -la --git"
alias lt="ls --tree"
alias l="ls -1"
# - http
http() { xh --https --follow $@ user-agent:curl/7.77.0; }
headers() { http --verbose --print=hH $@ }
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

#cargo
alias cw="cargo watch --clear --watch src --exec run"

# cht.sh
cht() { http cht.sh/$1 }

# zenith
alias zenith="zenith --disable-history"

# bitwarden-cli
alias bw-list="bw sync && bw list items --folderid d91a71ad-72eb-4314-8bd4-701170f2224c | jq '.[] | {id, name} | join(\" \")'"
alias bw-get="bw sync && bw get notes"

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

# sing
alias sing="say Hello my baby, Hello my Honey, hello my ragtime gal! Send me a kiss by wire, baby my heart’s on fire! If you refuse me, honey you’ll lose me, then you’ll be left alone, oh baby! Telephone and tell me I’m your own!"

