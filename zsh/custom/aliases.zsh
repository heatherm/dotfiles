alias l="ls -al"

#git
alias m="git checkout main"

function pgrefresh() {
  rm -fr /usr/local/var/postgres/postmaster.pid
  brew services restart postgresql
}