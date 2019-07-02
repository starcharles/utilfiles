if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$HOME/.rbenv/versions/2.0.0-p353/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/m4/bin:$PATH"
export PATH="/usr/local/opt/texinfo/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# esp32
export PATH=$HOME/esp/xtensa-esp32-elf/bin:$PATH
export IDF_PATH=~/esp/esp-idf
