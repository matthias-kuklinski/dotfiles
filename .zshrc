# Constants
HISTFILE=~/.histfile # Location of the history file.
HISTSIZE=1000 # Amount of commands loaded into memory from the history file.
SAVEHIST=1000 # Amount of commands stored in the history file.

# Settings
unsetopt beep # Do not beep on erros.

# Key-Bindings
bindkey -v # Enable vi-mode.
bindkey "^?" backward-delete-char # Fix backspace-bug after leaving insert mode.
