# ~/.zshrc
# Neutral theme with syntax highlighting & autosuggestions

# --- Options ---
setopt autocd              # type dir to cd into it
setopt hist_ignore_dups    # no duplicate history
setopt share_history       # share history across shells
setopt extendedglob        # better globbing
setopt prompt_subst        # allow $(...) in prompt

# --- Environment ---
export EDITOR="vim"
export VISUAL="$EDITOR"
export HISTFILE="$HOME/.local/share/zsh/history"
export HISTSIZE=10000
export SAVEHIST=10000

# --- Prompt (Starship) ---
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

# --- Plugins ---
# Autosuggestions
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c6c6c" # light gray
fi

# Syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  # Neutral, not too bright
  ZSH_HIGHLIGHT_STYLES[default]="fg=#dcd7ba"
  ZSH_HIGHLIGHT_STYLES[command]="fg=#89b4fa"
  ZSH_HIGHLIGHT_STYLES[builtin]="fg=#fab387"
  ZSH_HIGHLIGHT_STYLES[alias]="fg=#f9e2af"
  ZSH_HIGHLIGHT_STYLES[path]="fg=#cdd6f4"
  ZSH_HIGHLIGHT_STYLES[comment]="fg=#7daea3,italic"
  ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=#f38ba8,bold"
fi

# --- Aliases ---
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gd='git diff'
alias ..='cd ..'
alias ...='cd ../..'

# --- Completion ---
autoload -Uz compinit && compinit

# --- Misc ---
# Use vi-style keybindings if you prefer
# bindkey -v
