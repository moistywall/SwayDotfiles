export PATH="$HOME/.local/bin:$PATH"

# Zsh history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

# Basic usability
# setopt AUTO_CD
# setopt CORRECT
setopt NO_BEEP

# Completion
autoload -Uz compinit
compinit

# keybinds
bindkey -e
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3' delete-char

# コマンド出力の色調整の設定で使った、詳しいことはまたchatgptに聞いたほうが良い
if [ -f "$HOME/.dircolors" ]; then
  eval "$(dircolors "$HOME/.dircolors")"
fi

eval "$(starship init zsh)"
