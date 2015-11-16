tabname() {
  printf "\e]1;$1\a"
}

# Git Aware Prompt
# from https://github.com/jimeh/git-aware-prompt/blob/master/prompt.sh
find_git() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  local status=$(git status --porcelain 2> /dev/null)
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
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

PROMPT_COMMAND="find_git; $PROMPT_COMMAND"

# Pointer to installed binaries
export PATH=~/Software/bin:${PATH}
export PATH=/usr/local/bin:${PATH}
export PATH=/usr/local/sbin:${PATH}

# Generative Colours
hostnamecolor=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 30 + (total % 6)}')

# Colours for Prompt
export PS1="\[$(tput setaf ${hostnamecolor})\]\h\[$(tput setaf 12)\] ✖ \[$(tput setaf ${hostnamecolor})\]\u\[$(tput setaf 12)\] ✖ \[$(tput setaf 7)\]\w/\[$(tput setaf 12)\]\$git_branch\$git_dirty ▸ \[$(tput sgr0)\]"

# Colours for ls
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# ALIASES
alias ll="ls -l"
alias resource="source ~/.bash_profile"

# Ansible Playbook
alias ap="ansible-playbook"

# Babel-Node
alias bn="babel-node"

# Git Aliases
alias gs="git status -s"
alias ga="git add"
alias gc="git commit -m"

# Start Z
. `brew --prefix`/etc/profile.d/z.sh
