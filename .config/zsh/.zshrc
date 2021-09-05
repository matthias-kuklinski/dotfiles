# Constants
HISTSIZE=1000 # Amount of commands loaded into memory from the history file.
SAVEHIST=1000 # Amount of commands stored in the history file.
HISTFILE=~/.config/zsh/zshhistory # Location of the history file.

# Environment Variables
export KEYTIMEOUT=1 # Wait 10 milliseconds for another key to be pressed.

# Settings
unsetopt beep # Do not beep on erros.

# Key-Bindings
bindkey -v # Enable vi-mode.
bindkey "^?" backward-delete-char # Fix backspace-bug after leaving insert mode.

# Completion system
zstyle :compinstall filename '/home/matthias/.zshrc' # Reference the configuration file for compinstall.
autoload -Uz compinit # Mark the completion system as a function.
compinit # Initialize the completion system.

# Aliases
alias l="ls --color=auto"
alias ll="ls -Al --color=auto"
alias c="clear"
alias n="nvim"

# Prompt
eval "$(starship init zsh)" # Initialize starship prompt.
