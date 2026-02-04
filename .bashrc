#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return





########################################
########################################
##                                    ##
##   ####  ###   ##    ####    ####   ##
##  ##  ##  ##        ## `##  ##  `#  ##
##  ##..##  ##  ###     ./##   ##.    ##
##  ######  ##  `##   .#/ ##    `##.  ##
##  ##  ##  ##   ##   ##/###  ## `##  ##
##  ##  ##  ###  ###   ## ##   ####   ##
########################################
########################################

#rice
alias clear='clear; neofetch'

#ls 
alias ls='ls --color=always --classify -lh'
alias la='ls --color=always --classify -lah'

#cd
alias sc='cd ~/school;ls'
alias ~='cd ~;ls'

#permissions
alias pacman='doas pacman'
alias systemctl='doas systemctl'
alias fdisk='doas fdisk -l'









PS1='\n\e[0;36m╒═\e[m \e[1;97m\u\e[m\e[1;90m@\h\e[m \e[1;36m(\w)\e[m \n\e[0;36m└─\e[m \e[0;94m\#\e[m\e[0;36m ──\e[m '


#terminal launch
neofetch
