# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/aiden/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


########################################
########################################
##                                    ##
##     ######     ##                  ##
##     ##""""            .##    ,,    ##
##     ##....    ##.     # `#. ##     ##
##     ######     ##        \##       ##
##     ##         ##       ## \ .~    ##
##     ##         *##    ##    ##     ##
########################################
########################################

# Pain peko
bindkey -e

# keybinds `showkey -a` (sakura)
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^[[3~' delete-char
bindkey '^K' kill-line
bindkey '^U' backward-kill-line
bindkey '^W' backward-kill-word
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^[[F' end-of-line
bindkey '^[[H' beginning-of-line
bindkey '^[[1;5D' backward-word 
bindkey '^[[1;5C' forward-word

#brightness env
export BRIGHTNESS=$(xrandr --verbose | awk '/Brightness/ { print $2; exit}')


########################################
########################################
##                                    ##
##   ####  ###   ##    ####    ####.  ##
##  ##  ##  ##        ## `##  ##. *#  ##
##  ##..##  ##  ##.     .3##   *#.    ##
##  ######  ##   ##   .#**##     *#.  ##
##  ##  ##  ##   ##   ##  ##  ##  *#  ##
##  ##  ##  ###  *##   ###*#   ####   ##
########################################
########################################

#rice
alias clear='clear; neofetch'
alias startx='exec startx'
PS1="
%F{cyan}╒═%f %B%F{white}%n%f%F{#808080}@%m%f %F{cyan}(%/)%b 
└─%f %F{#c703e8}%?%f %F{cyan}|%f%F{white} %#%f%F{cyan} ──%f "

#ls 
alias ls='ls --color=always --classify -lh'
alias la='ls --color=always --classify -lah'
alias ll='ls --color=always --classify -lh'

#cd
alias sc='cd ~/school;ls'
alias ~='cd ~;ls'

#permissions
alias pacman='doas pacman'
alias fdisk='doas fdisk -l'
alias mount='doas mount'
alias umount='doas umount'
alias podman='doas podman'
#alias fuck="doas !!"

#gpu switching
alias nvidia='optimus-manager --switch nvidia --no-confirm'
alias intel='optimus-manager --switch intel --no-confirm'
alias hybrid='optimus-manager --switch hybrid --no-confirm'

#rip vim
alias vim='nvim'
alias vi='nvim'

#QOL
c='echo `fc -e -` | xclip -in -section clipboard'
#######################################
#######################################
##                                   ##
##   ####  *##  ## ########  #####   ##
##  ##  ##  ##  ## """##""" ##* *##  ##
##  ##..##  ##  ##    ##    ##   ##  ##
##  ######  ##  ##    ##    ##   ##  ##
##  ##  ##  ##  ##    ##    ##   ##  ##
##  ##  ##  *####*#   ##     #####   ##
#######################################
#######################################

#_________________________________#
###   FIX THEN MOVE TO STARTX   ###
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^#
#ssh agent
#eval ssh-agent -s
#doas ssh-add ~/.ssh/github

#terminal launch
neofetch



