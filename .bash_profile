alias ll='ls -l'

# path to usr/local
export PATH=/usr/local/bin:$PATH

# ruby env
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# postgres env
export PGDATA=/usr/local/var/postgres

# python env
export PATH="$HOME/.pyenv/shims:$PATH"

# source .bashrc
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export LANG=ja_JP.UTF-8
export LANGUAGE="ja_JP:ja"
