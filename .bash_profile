alias ll='ls -la --color'

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

# for deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#for nvim
export XDG_CONFIG_HOME=~/.config
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
