####################################################################
#      Main bashrc file
#      Bourne again shell
####################################################################
export EDITOR=/usr/bin/vim
#export PS1="\h:\w > "            # shell prompt format
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
#export PS1='\[\e[1;35m\]\h \[\e[0;32m\]: \u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
#displays extra yam prompt when ./intelxx.yam is run
#if [ -n "${YAM_HOST_TO_TARGET+x}" ]; then
#   export PS1='\[\e[1;39m\]\h \[\e[0;34m\]: \u\[\e[m\] \[\e[0;36m\]\w\[\e[m\] \[\e[1;37m\](yam)\$\[\e[m\] \[\e[1;37m\]'
#else
#   export PS1='\[\e[1;39m\]\h \[\e[0;34m\]: \u\[\e[m\] \[\e[0;36m\]\w\[\e[m\] \[\e[1;37m\]\$\[\e[m\] \[\e[1;37m\]'
#fi
# set prompt: ``hostname:/directory $ ''
function prompt
{
    local WHITE="\[\033[1;37m\]"
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local GRAY="\[\033[0;33m\]"
    local BLUE="\[\033[0;34m\]"
    local RANDOM="\[\033[0;39m\]"
   # export PS1="
   # ${GREEN}\u${CYAN}@${BLUE}\h ${CYAN}\w${RANDOM}
   # $ "
if [ -n "${YAM_HOST_TO_TARGET+x}" ]; then
PS1="${GRAY}[|\t| ${GREEN}\u${WHITE}@${BLUE}\h:${CYAN}\W] \!${RANDOM}(yam)
# " 
else
    PS1="${RANDOM}[${GRAY}|\t| ${GREEN}\u${RANDOM}@${BLUE}\h:${CYAN}\w${RANDOM}] ${GREEN}< ${BLUE}\! ${GREEN}> ${RANDOM}
# " 
fi    

}
prompt
export HISTSIZE=100000
#following line changes ls colours to solarized settings
eval `dircolors ~/.solarized-ls-colors`

if [ -f ~/.bashrc_cisco ]; then
   echo "Sourcing cisco bashrc"   
   source ~/.bashrc_cisco
fi
