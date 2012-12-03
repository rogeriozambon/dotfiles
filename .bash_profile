source ~/.git-completion.sh
source ~/.prompt.sh
source ~/.alias.sh
source ~/.export.sh

export QMAKESPEC=/usr/local/Qt4.8/mkspecs/macx-g++

# Ruby debug
debug() {
  ruby -r pry "$@";
}

# reload source
reload() {
  source ~/.bash_profile;
}

# Space used by HD
hd_used() {
  df -lP |awk '{ sum += $3 } END { printf "%d GiB\n", sum/2**20 }';
}
