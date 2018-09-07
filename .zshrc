# show current working path
export PS1="%d$ "

# aliases
alias ls='ls --color=auto'

# env variables
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim

# add rust-specific tools to PATH
export PATH="${PATH}:$HOME/.cargo/bin"
