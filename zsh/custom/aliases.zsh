alias vim="nvim"

alias ll="ls -hrtla"
alias dbm="rake db:migrate && RAILS_ENV=test rake db:migrate"
alias less="less -r"

pgrefresh() {
  rm -fr /usr/local/var/postgres/postmaster.pid
  brew services restart postgresql
}

ctags_refresh() {
  ctags -R .
  ctags -R -f ./.git/tags
}

sslcert() {
  echo | openssl s_client -showcerts -servername $1 -connect $1:443 2>/dev/null | openssl x509 -inform pem -noout -text
}