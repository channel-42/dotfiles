# Created by newuser for 5.8
export ZSH=/usr/share/oh-my-zsh
export LAMBDA_MOD_N_DIR_LEVELS=5
autoload -U colors && colors
PROMPT="%B%n@%M [ %~ ] 
> "
#"%B%{%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[red]%} [ %{$fg[magenta]%}%~ %{$fg[red]%}]%{$reset_color%}%b% 
#> "
ZSH_THEME="lambda-mod"
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

plugins=(git)
alias wpp="/home/lukas/scripts/bash/wallpaper_automation.sh"
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
alias dgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
