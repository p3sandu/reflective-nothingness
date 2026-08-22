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

bindkey -e

bindkey '^[[H'    beginning-of-line       # Home
bindkey '^[[F'    end-of-line             # End
bindkey '^[[3~'   delete-char             # Delete
bindkey '^[[1;5C' forward-word            # Ctrl + Right Arrow
bindkey '^[[1;5D' backward-word           # Ctrl + Left Arrow
bindkey '^[[A'    up-line-or-history      # Up Arrow
bindkey '^[[B'    down-line-or-history    # Down Arrow
bindkey '^R'      history-incremental-search-backward # Ctrl + R

export EDITOR=nvim
export winhome="/run/media/user/OS/Users/cat/"
export http_proxy="http://192.168.42.129:9090"
export https_proxy="http://192.168.42.129:9090"
export HTTP_PROXY="http://192.168.42.129:9090"
export HTTPS_PROXY="http://192.168.42.129:9090"

alias uns="unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY"
alias neo="fastfetch --config examples/13.jsonc"
alias autorm="sudo pacman -Rns $(pacman -Qdtq)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias gall='git add . && git commit -m "" --allow-empty-message && git push -u origin main'
# alias notes="ln -s /run/media/user/OS/Users/cat/Desktop/tryintnottousemybrain/notes ~/notes && cd ~/notes"

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
