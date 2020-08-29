# Created by newuser for 5.8
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pie/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
 
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias config='/usr/bin/git --git-dir=/home/pie/.cfg/ --work-tree=/home/pie'
export EDITOR=vim
