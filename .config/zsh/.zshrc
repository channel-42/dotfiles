#load oh-my-zsh
export ZSH=/usr/share/oh-my-zsh
source $HOME/.config/zsh/exports
autoload -U colors && colors
#is overwritten by oh-my-zsh
PROMPT="%B%n@%M [ %~ ] 
> "
#"%B%{%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[red]%} [ %{$fg[magenta]%}%~ %{$fg[red]%}]%{$reset_color%}%b% 
#> "
ZSH_THEME="candy_mod"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#PLUGINS
plugins=(git zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"
alias wpp="$HOME/scripts/bash/wpp"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#aliases
alias icat='kitty icat'
alias vim='nvim'
alias dgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ugit='/usr/bin/git --git-dir=$HOME/Documents/.uni --work-tree=$HOME/Documents' 
alias down='systemctl suspend'
alias vpn='sudo openvpn /etc/openvpn/client/client.ovpn'
alias btt='cat /sys/class/power_supply/BAT0/capacity'
alias banner='$HOME/scripts/bash/palette.sh'
alias gtp='gotop -c vice'
alias rpush='rsync -urvhP $HOME/Documents/share pi@rpi.local:/home/pi/'
alias rpull='rsync -urvhP pi@rpi.local:/home/pi/share $HOME/Documents/'

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
alias l='exa -s type'
alias la='exa -las type'
