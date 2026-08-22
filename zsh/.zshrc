HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

setopt AUTO_CD
setopt NO_BEEP

autoload -Uz compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

PROMPT='%B%~%b %# '

bindkey -v

# bindkey '^[[H'    beginning-of-line       # home
# bindkey '^[[F'    end-of-line             # end
# bindkey '^[[3~'   delete-char             # delete
# bindkey '^[[1;5C' forward-word            # ctrl + right arrow
# bindkey '^[[1;5D' backward-word           # ctrl + left arrow
# bindkey '^[[A'    up-line-or-history      # up arrow
# bindkey '^[[B'    down-line-or-history    # down arrow
# bindkey '^R'      history-incremental-search-backward # ctrl + r

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line  # Or bindkey -M vicmd v edit-command-line for Vi mode

function zvm_after_init() {
    ZVM_CURSOR_STYLE_ENABLED=true
    ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLOCK
    ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
    ZVM_VISUAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
    ZVM_VISUAL_LINE_MODE_CURSOR=$ZVM_CURSOR_BLOCK
    ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BLOCK
}
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.zshrc.local
