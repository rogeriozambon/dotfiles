source ~/.gitcompletion.sh
source ~/.prompt.sh
source ~/.alias.sh
source ~/.export.sh

reload() {
  source ~/.bash_profile;
}

hd() {
  df -lP |awk '{ sum += $3 } END { printf "%d GiB\n", sum/2**20 }';
}
