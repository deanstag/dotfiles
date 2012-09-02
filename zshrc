
#Colour and Prompt settings Copied from n4cht's zsh at dotshare.it
#------------------------------------------////
# Colors:
#------------------------------------------////
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

#Color table
fg_black=%{$'\e[0;30m'%}
fg_red=%{$'\e[0;31m'%}
fg_green=%{$'\e[0;32m'%}
fg_brown=%{$'\e[0;33m'%}
fg_blue=%{$'\e[0;34m'%}
fg_purple=%{$'\e[0;35m'%}
fg_cyan=%{$'\e[0;36m'%}
fg_lred=%{$'\e[1;31m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_violet=%{$'\e[1;35m'%}
fg_white=%{$'\e[1;37m'%}
fg_gray=%{$'\e[0;39m'%}
#Text Background Colors
bg_red=%{$'\e[0;41m'%}
bg_green=%{$'\e[0;42m'%}
bg_brown=%{$'\e[0;43m'%}
bg_blue=%{$'\e[0;44m'%}
bg_purple=%{$'\e[0;45m'%}
bg_cyan=%{$'\e[0;46m'%}
bg_gray=%{$'\e[0;47m'%}
if [ -n "${YAM_HOST_TO_TARGET+x}" ]; then
   PROMPT="${fg_gray}[${fg_brown}|%*| ${fg_green}%n${fg_white}@${fg_blue}%m:${fg_cyan}%~${fg_gray}] ${fg_green}< ${fg_blue}%! ${fg_green}> ${fg_white}(yam)
${fg_gray}# ${fg_white}"
else
   PROMPT="${fg_gray}[${fg_brown}|%*| ${fg_green}%n${fg_white}@${fg_blue}%m:${fg_cyan}%~${fg_gray}] ${fg_green}< ${fg_blue}%! ${fg_green}>
${fg_gray}# ${fg_white}"
fi    

export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
eval `dircolors ~/.solarized-ls-colors`
export HISTSIZE=100000
