source ~/.gitcompletion.sh
source ~/.prompt.sh
source ~/.alias.sh
source ~/.export.sh

reload() {
  source ~/.bashrc;
}

hd() {
  df -lP |awk '{ sum += $3 } END { printf "%d GiB\n", sum/2**20 }';
}
