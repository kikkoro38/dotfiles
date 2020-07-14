alias ll='ls -l'

# path to usr/local
export PATH=/usr/local/bin:$PATH

# ruby env
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

# postgres env
export PGDATA=/usr/local/var/postgres

# python env
export PATH="$HOME/.pyenv/shims:$PATH"

# bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
