# dotfiles

### Usage

Clone this repo in your `$HOME` folder.

    $ git clone git@github.com:rogeriozambon/dotfiles.git ~/.dotfiles

And now creates symlinks for all files.

```sh
cd ~/.dotfiles

for f in $(find ~/.dotfiles -maxdepth 1 -type f -printf "%f\n"); do
    ln -s "~/.dotfiles/$f" "~/$f";
done
```
