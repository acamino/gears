# https://leetschau.github.io/remove-duplicate-zsh-history.html
setopt EXTENDED_HISTORY
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

setopt INC_APPEND_HISTORY
setopt NO_SHARE_HISTORY

SAVEHIST=14500
HISTSIZE=14500
