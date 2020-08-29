# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

if [ -f $HOME/.secrets.sh ]; then
	source $HOME/.secrets.sh
fi

alias config='/usr/bin/git --git-dir=/home/pie/.cfg/ --work-tree=/home/pie'
export EDITOR=vim

source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
