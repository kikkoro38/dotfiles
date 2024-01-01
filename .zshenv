# path to usr/local
export PATH=/usr/local/bin:$PATH

# ruby env
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# postgres env
export PGDATA=/usr/local/var/postgres

# python env
export PATH="$HOME/.pyenv/shims:$PATH"

export LANG=ja_JP.UTF-8
export LANGUAGE="ja_JP:ja"

# for deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#for nvim
export XDG_CONFIG_HOME=~/.config

# WSL$B$G(Bsystemctl$B$r;H$($k$h$&$K$9$k@_Dj(B
# genie$B$N(Binstall$B$,I,MW(B
if [[ ! -v INSIDE_GENIE ]]; then
  echo "Starting genie:"
  exec /usr/bin/genie -s
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
