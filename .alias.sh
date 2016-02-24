alias ll="ls -Glahs"
alias ds="sudo find ~ -name '.DS_Store' -exec rm {} \;"
alias st="atom"
alias fu="sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
alias fm="cat /proc/meminfo"

function wt {
  curl --silent --insecure -- wttr.in/${@:-maringa} | head -7
}
