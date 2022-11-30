# Constants
HISTFILE=~/.config/zsh/zshhistory # Location of the history file.
HISTSIZE=10000 # Amount of commands loaded into memory from the history file.
SAVEHIST=10000 # Amount of commands stored in the history file.

# Environment Variables
export KEYTIMEOUT=1 # Wait 10 milliseconds for another key to be pressed.
export STARSHIP_CONFIG=/home/matthias/.config/starship/config.toml # Export the starship configuration file location.

# Settings
unsetopt beep # Do not beep on erros.

# Key-Bindings
bindkey -v '^?' backward-delete-char # Enable vi-mode and fix backspace-bug after leaving insert mode.

# Highlights
zle_highlight=('paste:none') # Don't highlight pasted content.

# Completion system
zstyle :compinstall filename '/home/matthias/.zshrc' # Reference the configuration file for compinstall.
autoload -Uz compinit # Mark the completion system as a function.
compinit # Initialize the completion system.

# Aliases
alias l="ls -hl --color=auto"
alias ll="ls -Ahl --color=auto"
alias c="clear"
alias n="nvim"

# Vi-mode
function zle-keymap-select () {
  case $KEYMAP in
    vicmd) echo -ne '\e[1 q';;      # Display a block-shaped cursor.
    viins|main) echo -ne '\e[5 q';; # Display a beam-shaped cursor.
  esac
}
zle -N zle-keymap-select

zle-line-init() { echo -ne '\e[5 q' }
zle -N zle-line-init

echo -ne '\e[5 q' # Display a beam-shaped cursor on startup.
preexec() { echo -ne '\e[5 q' } # Display a beam-shaped cursor for each new prompt.

# Prompt
eval "$(starship init zsh)" # Initialize starship prompt.
