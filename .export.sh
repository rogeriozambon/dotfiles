export GOROOT=/usr/local/go/1.13.4
export GOPATH=$HOME/work/go

export PYENV_ROOT=$HOME/.pyenv
export PYENV_HOME=$HOME/.pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

export PIPENV_VERBOSITY=-1
export PIPENV_IGNORE_VIRTUALENVS=1
export PIPENV_PYTHON=$PYENV_ROOT/shims/python

export WORKON_HOME=$HOME/.envs
export PROJECT_HOME=$HOME/work/python

export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$HOME/.cargo/bin

export vblank_mode=0

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
