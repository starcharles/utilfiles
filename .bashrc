# export
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/Applications/MAMP/Library/bin
export PATH=$PATH:/Applications/MAMP/bin/php/php5.6.2/bin
export PATH=$PATH:/usr/local/opt/e2fsprogs/sbin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/xv6tools/bin
export PATH="$PATH:/Library/TeX/texbin"
export PATH=$PATH:/usr/bin/compass
export ANSIBLE_HOSTS="$HOME/ansible/hosts"
export PATH=$PATH:/usr/local/opt/coreutils/libexec/gnubin
export PATH=$PATH:$HOME/usr/local/Cellar/pyenv/1.2.7/libexec/
export MANPATH=$MANPATH:/usr/local/opt/coreutils/libexec/gnuman
export PATH="/Applications/Racket v6.10/bin:$PATH"
export PATH=$PATH:/Users/ns/bin
export PATH=$PATH:/usr/local/Cellar
export PATH=$PATH:$HOME/raspbian-sdk/prebuilt/bin
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

source $HOME/.git-completion.bash
#source dnvm.sh
source ~/git-flow-completion.bash
source ~/bitcoin-cli.bash-completion

# openvpn
export PATH=$(brew --prefix openvpn)/sbin:$PATH

# perl
export PERL_CPANM_OPT="--local-lib=~/perl5"
export PATH=$HOME/perl5/bin:$PATH;
export PERL5LIB=$HOME/perl5/lib/perl5:$PERL5LIB;

# Node.js
export NODE_PATH=/Users/ns/.nodebrew/current/lib/node_modules
export PATH=$HOME/.nodebrew/current/bin:$PATH

# nodeenv
#export PATH="$HOME/.nodenv/bin:$PATH"
#eval "$(nodenv init -)"

#PHP
export XDEBUG_CONFIG="idekey=PHPSTORM"

#GO
export GOPATH=$HOME/go;
export PATH=$GOPATH/bin:$PATH;

# goenv
export PATH="$GOENV_ROOT/bin:$PATH"
export GOENV_ROOT="$HOME/.goenv"

#python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PYTHONPATH=$PYTHONPATH:/Users/ns/.pyenv/shims/python
export PATH=/usr/local/bin/python:/Users/ns/.pyenv/shims/python:$PATH
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$HOME/Library/Python/2.7/bin
alias ipython='ipython --pylab'

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#phpenv
export PATH="/Users/ns/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# jenv
if which jenv > /dev/null; then
  # JENV_ROOTがemptyの場合、'${HOME}/.jenv'がrootと設定される
  export JENV_ROOT=/usr/local/var/jenv
  eval "$(jenv init -)"
fi

# ruby 
export PATH="$HOME/.rbenv/versions/2.3.1/bin:$PATH"

# rust 
export PATH="$HOME/.cargo/bin:$PATH"

# Rails
alias be='bundle exec'
alias bi='bundle install'
alias bil='bundle install --path=vendor/bundle ' # local install
alias bespec='bundle exec rspec spec/'
alias rakegrep="bin/rake routes | grep $@ "
export BUNDLE_GEMFILE="Gemfile"
#export BUNDLE_GEMFILE="Gemfile.local"

# Ocaml
eval $(opam config env)
alias ocaml="rlwrap ocaml"

# Docker
alias dc='docker-compose'
alias dcrails='dc run web bundle exec rails s'
alias dcbi='docker-compose run web bundle install'

# other alias
alias psg='ps aux | grep'
alias ll='ls -la'

#tmux
function precmd() {
    if [ ! -z $TMUX ]; then
         tmux refresh-client -S
    fi
}

# Fonts
source ~/.fonts/*.sh
