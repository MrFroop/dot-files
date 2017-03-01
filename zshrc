# -*- mode: sh; -*-

# Source antigen
source ~/.antigen.zsh

# Setup LANGUAGE so that ubuntu isn't complaining.
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle git-extras
antigen bundle docker
antigen bundle docker-compose
antigen bundle debian
antigen bundle systemd
antigen bundle vundle
antigen bundle tmuxinator

# A better history search
antigen bundle zsh-users/zsh-history-substring-search

# The name kinda gives this away.
antigen bundle zuxfoucault/colored-man-pages_mod

# Adds autoupdate to antigen.
antigen bundle unixorn/autoupdate-antigen.zshplugin

# Remind me about aliases for the command i just used.
antigen bundle djui/alias-tips 

# This is the new j apperently.
antigen bundle rupa/z

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

# Set vim as default editor
export EDITOR=vim

# Load host specific settings if they exist
if [[ -f ~/.zshrc-host && -r ~/.zshrc-host ]]; then
	source ~/.zshrc-host
fi

# Setup GO environment.
export GOPATH=$HOME/work
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin


# Add cask
export PATH="/home/mrfroop/.cask/bin:$PATH"

# Tell antigen that you're done.
antigen apply
