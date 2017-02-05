# Source antigen
source /usr/share/zsh-antigen/antigen.zsh

# Setup LANGUAGE so that ubuntu isn't complaining.
export LANGUAGE=en_US.UTF-8

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle git-extras
antigen bundle docker
antigen bundle docker-compose
antigen bundle tmux

# Remind me about aliases for the command i just used.
antigen bundle djui/alias-tips 

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Modify spaceship settings
export SPACESHIP_NVM_SHOW=false
export SPACESHIP_RUBY_SHOW=false
export SPACESHIP_SWIFT_SHOW_LOCAL=false
export SPACESHIP_XCODE_SHOW_LOCAL=false
export SPACESHIP_VENV_SHOW=false
export SPACESHIP_PYENV_SHOW=false
export SPACESHIP_VI_MODE_SHOW=false
export SPACESHIP_GIT_UNPULLED="↓"
export SPACESHIP_GIT_UNPUSHED="↑"


# Setup drone-cli
export DRONE_SERVER=http://localhost
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoibXJmcm9vcCIsInR5cGUiOiJ1c2VyIn0.6umEJ0kRX1fiZlV8gkart0zK4fk6fV0OML5i0DdJpWs

# Tell antigen that you're done.
antigen apply
