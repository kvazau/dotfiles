#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LD_LIBRARY_PATH="/usr/local/lib"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '