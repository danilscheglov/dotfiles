# --- Oh My Zsh ---

export ZSH="$HOME/.config/oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"


# --- Environment ---

export EDITOR=nvim
export VISUAL=nvim

export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"


# --- History ---

export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE="$XDG_CACHE_HOME/zsh/history"

setopt append_history
setopt share_history


# --- Aliases ---

alias ls='eza --icons --group-directories-first'
alias ll='eza -la --git --header --group --icons --group-directories-first'


# --- SDKMAN ---

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$XDG_DATA_HOME/sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
