# Git Aware Prompt
# from https://github.com/jimeh/git-aware-prompt/blob/master/prompt.sh
_find_git() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  local status=$(git status --porcelain 2> /dev/null)
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ $branch == "HEAD" ]]; then
      branch='detached*'
    fi
    if [[ "$status" != "" ]]; then
      git_branch=" >$branch<"
    else
      git_branch=" ($branch)"
    fi
  else
    git_branch=""
  fi
}

# Docker Aware Prompt
_find_machine() {
  if [[ $DOCKER_MACHINE_NAME == "" ]]; then
    machine=""
  else
    machine=" [$DOCKER_MACHINE_NAME]"
  fi
}

PROMPT_COMMAND="_find_git;_find_machine; $PROMPT_COMMAND"

# Pointer to installed binaries
export PATH=/usr/local/bin:${PATH}
export PATH=/usr/local/sbin:${PATH}

# Generative Colours
hostnamecolor=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 1 + (total % 6)}')
usernamecolor=$(id -u -n | od | tr ' ' '\n' | awk '{total = total + $1}END{print 1 + (total % 6)}')

# Colours for Prompt
export PS1="\n\[$(tput setaf ${hostnamecolor})\]\h\[$(tput setaf 12)\] ✖ \[$(tput setaf ${usernamecolor})\]\u\[$(tput setaf 12)\] ✖ \[$(tput setaf 7)\]\w\[$(tput setaf 12)\]\$git_branch\$machine \n▸ \[$(tput sgr0)\]"

# Colours for ls
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# ALIASES

# Name the Tab
tabname() { printf "\e]1;$1\a"; }

# Share to shared.swarm.is
share() { rsync -rz $1 web-share:/var/zpanel/hostdata/zadmin/public_html/shared_swarm_is/$2 && say 'the magic is done, sire'; }

# Transfer to transfer.sh
transfer() { curl --progress-bar --upload-file $1 https://transfer.sh/$1 | pbcopy && pbpaste && say 'the magic is done, sire'; }

# Count Lines of Code
alias count="find . -name '*.js' | xargs wc -l"

# Recursive grep
grr() { defaultPath=.; grep -r $1 ${2-$defaultPath}; }

# List
alias ll="ls -l"

# Node and NPM Aliases
alias nr="npm run -s"
alias ni="npm install"
alias nu="npm uninstall"

# Git Aliases
alias gs="git status -s"
alias ga="git add"
alias gc="git commit -m"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%Creset%C(yellow)%d%Creset %<(50,trunc)%s' --abbrev-commit"
alias gp="git push"

# Docker Aliases
alias doc="docker"
de() { eval "$(docker-machine env $1)"; }
alias dm="docker-machine"
alias dc="docker-compose"

# Start Z
if hash brew 2>/dev/null; then
  . `brew --prefix`/etc/profile.d/z.sh
fi
