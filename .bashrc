# git settings
if [ -f /usr/local/git ] ; then
  source /usr/local/git/contrib/completion/git-prompt.sh
  source /usr/local/git/contrib/completion/git-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[32m\]\w\[\033[31m\]\n$(__git_ps1)\[\033[00m\]\$ '

# WSLでsystemctlを使えるようにする設定
# genieのinstallが必要
if [[ ! -v INSIDE_GENIE ]]; then
  echo "Starting genie:"
  exec /usr/bin/genie -s
fi

# rails関連のコマンド
# 再帰だとわかりにくいのでちゃんと書く
alias bx='bundle exec'
alias bi='bundle install --clean'
alias rails='bundle exec rails'
alias rspec='bundle exec rspec'
alias rubocop='bundle exec rubocop'
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
