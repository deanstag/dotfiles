####################################################################
#      Main bashrc file
#      Bourne again shell
####################################################################
export EDITOR=/usr/bin/vim
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'

# PS1 settings from praveer
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
   #displays extra yam prompt when ./intelxx.yam is run
if [ -n "${YAM_HOST_TO_TARGET+x}" ]; then
    PS1="${RANDOM}[${GRAY}|\t| ${GREEN}\u${WHITE}@${BLUE}\h:${CYAN}\w${RANDOM}] ${GREEN}< ${BLUE}\! ${GREEN}> ${WHITE}(yam)
${RANDOM}# ${WHITE}" 
else
    PS1="${RANDOM}[${GRAY}|\t| ${GREEN}\u${WHITE}@${BLUE}\h:${CYAN}\w${RANDOM}] ${GREEN}< ${BLUE}\! ${GREEN}> ${WHITE}
${RANDOM}# ${WHITE}" 
fi    

}
prompt
export HISTSIZE=100000
#following line changes ls colours to solarized settings
eval `dircolors ~/.solarized-ls-colors`

if [ -f ~/.bashrc_cisco ]; then
#   echo "Sourcing cisco bashrc"   
   source ~/.bashrc_cisco
fi
