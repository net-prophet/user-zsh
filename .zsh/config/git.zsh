alias b="git checkout"
alias gb="git branch"

alias gss="git stash save"
alias gsa="git stash apply"
alias gsp="git stash pop"

function gsb {
  git stash branch $*
}

function gnewb {
  git stash save
  git checkout develop
  git stash branch $*
}

function gpu() {
  test -z "$1" && echo "usage: gpu [remote] [branch]"
  test -z "$2" && echo "usage: gpu [remote] [branch]"

  echo "> git push -u $1 $2"

  git push -u $1 $2
}

function gpc() {
  test -z "$1" && remote="origin" || remote=$1

  branch=$(git branch --show-current)

  gpu $remote $branch
}
