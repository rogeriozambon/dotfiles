alias g="git"
alias ll="ls -Glahs --color=always"
alias ds="sudo find ~ -name '.DS_Store' -exec rm {} \;"
alias fu="sudo sysctl -w vm.drop_caches=3 && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches"
alias pcat="pygmentize -f terminal256 -O style=native -g"
