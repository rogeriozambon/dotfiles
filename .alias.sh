alias ll="ls -Glahs"
alias ds="sudo find ~ -name '.DS_Store' -exec rm {} \;"
alias st="atom"
alias fu="sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
alias fm="cat /proc/meminfo"

function wt {
  if [ -z $1 ]; then
    CITY='maringa'
  else
    CITY=$1
  fi

  curl --silent --insecure -- wttr.in/$CITY | grep -v "^Follow " | head -7
}
