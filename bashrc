# The following line starts keychain if this is an interactive shell
#if [ "$PS1" != "" ]; then . /users/apjoseph/.bashrc.keychain ; fi 
# .bash_profile 03/05/2001
####################################################################
#      copied from sawans .bashrc by me
#      Bourne again shell
####################################################################
export MANPATH=/usr/cisco/man:/usr/share/man:/usr/man:/usr/openwin/share/man:/usr/atria/doc/man:/usr/local/man:/usr/local/packages/motif/current/man:/usr/dt/man:/nfs/ddts/ddtshome/doc/man:/usr/local/ddts/doc/man:/users/apjoseph/.usr/man

export HELPPATH=/usr/openwin/lib/help:/usr/snm/help

export PATH=/usr/local/bin:/users/apjoseph/opt/bin:/opt/teambuilder/bin:/auto/ipssdk/bin:/usr/cisco/bin/:/usr/atria/bin:/opt/bin:/usr/local/bin:/usr/local/sbin:/usr/local/contrib/bin:/usr/ccs/bin:/usr/kerberos/bin:/bin:/usr/bin:/usr/X11R6/bin:/users/apjoseph/install/doxygen/bin:/opt/ECSossh/bin/:.:/usr/X11R6/bin:/usr/cisco/bin:/usr/sbin:/router/bin:/bin:/usr/bin:/usr/dt/bin:/usr/ucb:/etc:/usr/etc:/usr/share/bin:/usr/games:/usr/lib:/usr/local/lib:~/mybin:/sw/current/sparcbin:/usr/atria/bin:/usr/openwin/bin:.:/usr/local/ddts/bin:/sw/contrib/packages/ses/bin:/usr/local/bin/ctcva:/sbin:$PATH
export JAVA_HOME=/auto/ot-tools/java/ix86-linux/jre1.6.0_16/bin/java export CCASE_PHONY_DEPS_IMPLICIT_LOOKUP=1
export CDPATH=.:~:/vob:/vob/csids_3:
export WINEDITOR=/usr/X11R6/bin/gvim
export EDITOR=/usr/bin/vim
export TFTPHOST=labman
export TFTPDIR=/tftpboot/
export CC_DIFF_OPTS=-cpt
export PC_NOTIFY=apjoseph@cisco.com
export CCASE_HOST_TYPE=parallel
#export SESTOOLS_SHOW_PARENT_WARNS=1/usr/local/bin/ctcva
export CC_DISABLE_COPYRIGHT_CHECK=TRUE
#export CCASE_PHONY_DEPS_IMPLICIT_LOOKUP  true
export CCASE_MAKE_COMPAT gnu
#export CLEARCASE_AVOBS /vob/pacwan:/vob/t2:/vob/hj:/vob/wrs:/vob/otdiags:/vob/auto
export LM_LICENSE_FILE=7230@ls-na-west
export WIND_REGISTRY=localhost
export NAME_HOST=@`hostname`
#export PS1="\h:\w > "            # shell prompt format
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
export USER=apjoseph
export VISUAL=/usr/bin/pico
#export TEAMBUILDER_CPP_EXTNS=.ii
#export TEAMBUILDER_SYSTEM=cisco:cross
export CCASE_ABE_START_TIMEOUT=10
export CSCOPE_DB=`pwd`

# To add colors for ls
export LS_OPTIONS='--color=auto'
#eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias cline=clearline.exp
#export LS_COLORS='no=00:fi=00:di=40;33;01:ln=00;36:pi=40;33:so=00;35:bd=97;33;01:cd=97;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:'
#following line changes ls colours to solarized settings
eval `dircolors ~/.solarized-ls-colors`
alias xmerge='xrdb -merge ~/.Xresources'
set HOSTNAME=`uname -n`


alias ws='cd /ws/apjoseph-aus/rkannoth'
alias script='cd /vob/csids_3/ips-sdk/scripts'
alias build='cd /vob/csids_3/ips-sdk/build.jk3/buildroot/build_x86_64'
alias package='cd /vob/csids_3/ips-sdk/build.jk3/buildroot/package'


alias cc_diff='cc_diff -opts '\''-C 5 -p'\'''
alias jam="jam -j 'tbcompiler -joblimit'"
alias vob='cd /vob/csids_3'
alias cssh='cd /vob/csids_3/ips-sdk/sys-root/runtime-src/openssh'
alias apps='cd /vob/csids_3/dev/apps'
alias main='cd /vob/csids_3/dev/apps/mainApp'
alias dev='cd /vob/csids_3/dev'
alias sns='cd /vob/csids_3/projects/phoenix/sensor'
alias img='cd /vob/csids_3/system/cids-system/image'
alias drv='cd /vob/csids_3/dev/srcPool/drivers'
alias e1='cd /vob/csids_3/dev/srcPool/drivers/e1000-cids/src'
alias pkg='cd /vob/csids_3/system/cids-system/image/prebuilt/'
alias rl='cd /auto/scmlog/csids_3/'
alias sshs='ssh -X sekhar-lnx1'
alias sships1='ssh -X ipsblr-lnx1'
alias sshipslab='ssh -X ipsblr-lab-server'
alias vimj='vim -u NONE'
if [[ "$(uname -a |gawk '{ print $2 }')" = "jk3" ]]; then
   alias vim='echo "starting minimal vim";vim -u NONE';
fi
alias q='exit'
alias eclipse='/ws/sawgupta-bgl/install/eclipse/eclipse'
alias emacs='emacs -fn -adobe-courier-medium-r-normal--24-240-75-75-m-150-iso8859-1'
alias ct='cleartool'
alias cs='ct setview'
alias sl='echo "`ls -rtd /ws/apjoseph-bgl/apjoseph-* | tail -1  | xargs basename`";cs `ls -rtd /ws/apjoseph-bgl/apjoseph-* | tail -1  | xargs basename`;'
alias vnc='vncserver -alwaysshared -nolisten local -geometry 1440x900'
alias pwv='cleartool pwv'
alias unco_all='cleartool lsco -cview -avobs -short | xargs cleartool unco -rm'
alias xemacs='/usr/cisco/packages/emacs/emacs-21.2/bin/emacs'
alias clean='rm -f core *~ .#* .*~'
alias mylsv='cleartool lsview|grep "apjoseph"'
#alias setv='/auto/ot-tools/bin/setv'
alias etags='find . -name "*.[ch]*" -print|etags -'
alias mygrep='echo -n "Hi appu.. Enter string---->";read string;grep -r -i -n "$string" *|more' 
alias c='clear'
alias djacob="findcr    -w Identifier,Severity,Status,Est-fix-date,Engineer,Headline, -s SNAOHIPWM -o Est-fix-date  \"[DE-manager] ='jacob' AND [Severity] <4 \""
alias s='echo -n "ssh IP----->10.104.228.";read ipad;ssh 10.104.228.$ipad'
alias t='echo -n "telnet IP->10.104.228.19 20**";read ipad;telnet 10.104.228.19 20$ipad'
alias c='echo -n "clearline IP->10.104.228.19 port?";read ipad;cline 10.104.228.19 $ipad'
alias backlog="findcr    -w Identifier,Severity,Status,Est-fix-date,Engineer,Headline -s SNAOHIPWM -o Est-fix-date  \"[Engineer] ='apjoseph' AND [Severity] <4 \""
alias des='findcr -w Headline,Description -i '
alias lscol='cleartool lsco -cview -all'
alias lsco='cleartool lsco -cview -all -short'
alias vi='vim'
alias drivers='cd $CIDE_VOB_ROOT_PATH/dev/srcPool/drivers'
alias core='cd $CIDE_VOB_ROOT_PATH/dev/srcPool/lib/core'
alias hoard='cd $CIDE_VOB_ROOT_PATH/dev/srcPool/lib/libhoard'
alias gsa='cd $CIDE_VOB_ROOT_PATH/dev/apps/sensorApp'
alias sensor='cd $CIDE_VOB_ROOT_PATH/projects/phoenix/sensor;export RCPASS_NU=4VUcmvZr'
alias sld='export LD_LIBRARY_PATH=$CIDE_VOB_ROOT_PATH/lib/$CIDE_TARGET_SYSTEM:$TOOLCHAIN_SYSROOT/lib:$TOOLCHAIN_SYSROOT/usr/lib'
alias rsa='$CIDE_VOB_ROOT_PATH/dev/apps/sensorApp/$CIDE_BUILD_OUTPUT_DIR/sensorApp'
alias vr='cd $CIDE_VOB_ROOT_PATH'
alias tboff='export TEAMBUILDER=0'
alias tbon='export TEAMBUILDER=1'
alias safeon='export CIDE_BUILD_SAFE=yes'
alias safeoff='export CIDE_BUILD_SAFE=no'
alias dbon='export CIDE_DEBUG_IN_RELEASE=yes'
alias dboff='export CIDE_DEBUG_IN_RELEASE=no'
alias vigcc='vim +copen +make'
alias gvigcc='gvim +copen +make'
alias ccdiff='cc_diff  -cmd vim -opts -d'
alias rmsem='ipcs -st |  sed -n "/lathem/s/ .*//p" | xargs ipcrm sem'
alias lshij='ct ls -r | sed -n "s/@@.*hijack.*$//p"'
alias lsco='ct lsco -r -cview'
alias lsdiff='cc_diff -n | sed -n "s/  src: //p"'
alias screens='byobu'
alias gg='find . -regex ".*[.][ch]p*" | xargs grep'
alias myviews='cleartool lsview -s | grep lathem | sort'
alias mybugs='/usr/cisco/bin/findcr -m -w Identifier,Version,Severity,DE-priority,Status,Headline -f "%s %-16s %s %s %s %s\n" -o Status,DE-priority,Severity,Version "(Status = '\''O'\'' OR Status = '\''M'\'' OR Status = '\''R'\'' OR (([Status] = '\''A'\'' OR Status = '\''P'\'') AND [Severity] < 4 AND (([DE-priority] < 4 AND NOT exists([Note-title] LIKE '\''Evaluation'\'')) OR ([DE-priority] < 3))))"'
alias newbugs='/usr/cisco/bin/findcr -s N -w Identifier,Version,Severity,DE-priority,Status,Engineer,Code-reviewer,Headline -f "%s %-16s %s %s %s %8s %8s %s\n" -o Status,Engineer,DE-priority,Severity "Product = '\''cids'\''"'
alias allmybugs='/usr/cisco/bin/findcr -m -w Identifier,DE-priority,Status,Headline -f "%s %s %s %s\n" -o Status,DE-priority,Severity,Version "(Status = '\''O'\'' OR Status = '\''M'\'' OR Status = '\''R'\'' OR Status = '\''A'\'' OR Status = '\''P'\'')"'
alias felixbugs='/usr/cisco/bin/findcr -u flaura -w Product,Identifier,Version,Severity,DE-priority,Status,Headline -f "%-11s %s %-16s %s %s %s %s\n" -o Status,DE-priority,Severity,Version "(Status = '\''O'\'' OR Status = '\''M'\'' OR Status = '\''R'\'' OR (([Status] = '\''A'\'' OR Status = '\''P'\'') AND (([DE-priority] < 4 AND NOT exists([Note-title] LIKE '\''Evaluation'\'')) OR ([DE-priority] < 3))))"'
alias nubrabugs='/usr/cisco/bin/findcr -s AONMP -w Identifier,Version,Status,Severity,Engineer,Headline -f "%s %-16s %s %s %8s %s\n" -o Status,Severity,Engineer "Product = '\'cids\'' AND exists([Version] LIKE '\'*6.*\'')"'
alias zircbugs='/usr/cisco/bin/findcr -s AONMP -w Identifier,Version,Status,Severity,Engineer,Headline -f "%s %-16s %s %s %8s %s\n" -o Status,Severity,Engineer "Product = '\'cids\'' AND exists([Version] LIKE '\'*5.1*\'' OR [Version] LIKE '\'*5.01*\'' OR [Version] LIKE '\'*5.001*\'')"'
alias spykerbugs='/usr/cisco/bin/findcr -s NAO -w Identifier,Version,Status,Severity,DE-priority,Engineer,Headline -f "%s %-16.16s %s %s %s %8s %s\n" -o Status,Engineer,Severity "Product = '\'cids\'' AND [DE-priority] < 4 AND ( exists([Version] LIKE '\'*7.*\(*\)S*\'') OR exists([To-be-fixed] LIKE '\'*7.*\(*\)S*\'') )"'
alias vbugs='/usr/cisco/bin/findcr -s R -w Identifier,Severity,DE-priority,Status,Engineer,Primary-Code-reviewer,Headline,Apply-to,Verified-release -f "%s %s %s %s %-8s %-8s %-72s %s %s\n" -o Identifier "(Engineer = '\''`whoami`'\'' OR [Primary-Code-reviewer] = '\''`whoami`'\'') AND ([Product] = '\''cids'\'')"'
alias mbugs='/usr/cisco/bin/findcr -s M -w Identifier,Severity,DE-priority,Status,Engineer,Headline,To-be-fixed,Apply-to, -f "%s %s %s %s %-8s %-72s %s %s\n" -o Identifier "(Engineer = '\''`whoami`'\'') AND ([Product] = '\''cids'\'')"'
alias chbugs='/usr/cisco/bin/findcr -w Identifier,Version,Severity,DE-priority,Status,Engineer,Code-reviewer,Headline -f "%s %-16s %s %s %s %8s %8s %s\n" -o Status,Engineer,DE-priority,Severity "([DE-priority] <= 3 AND (Status = '\''A'\'' OR Status = '\''O'\'' OR Status = '\''R'\'') AND ([Engineer] = '\''lathem'\'' OR [Engineer] = '\''aarichar'\'' OR [Engineer] = '\''flaura'\'' OR [Engineer] = '\''dkjar'\'') OR (Status = '\''N'\'' AND Product = '\''cids'\'' AND [DE-manager] = '\''klwiley'\'')) AND (exists([Version] LIKE '\''006.000?000.5*'\'') OR exists([Version] LIKE '\''06.0(0?)C*'\'') OR exists([To-be-fixed] LIKE '\''006.000(000.5*)'\'') OR exists([To-be-fixed] LIKE '\''06.0(0?)C*'\''))"'
alias bughist='/usr/cisco/bin/findcr -m -w Identifier,Version,Severity,DE-priority,Status,Headline -f "%s %-16s %s %s %s %s\n" -o Status,DE-priority,Severity,Version;echo'

alias betabugs='/usr/cisco/bin/findcr -s NAOMI -w Identifier,Version,Status,Severity,DE-priority,Engineer,Headline -f "%s %-16.16s %s %s %s %8s %s\n" -o Status,Engineer,Severity "Product = '\'cids\'' AND [DE-priority] < 4 AND ( exists([Version] LIKE '\'*7.*\(*\)S*\'') OR exists([To-be-fixed] LIKE '\'*7.*\(*\)S*\'') ) AND exists ([Keyword] LIKE '\'beta_ss\'')"'
alias testssbugs='/usr/cisco/bin/findcr -s NAOMI -w Identifier,Version,Status,Severity,DE-priority,Engineer,Headline -f "%s %-16.16s %s %s %s %8s %s\n" -o Status,Engineer,Severity "Product = '\'cids\'' AND [DE-priority] < 4 AND ( exists([Version] LIKE '\'*7.*\(*\)S*\'') OR exists([To-be-fixed] LIKE '\'*7.*\(*\)S*\'') ) AND exists ([Keyword] LIKE '\'test_ss\'')"'
alias fcsssbugs='/usr/cisco/bin/findcr -s NAOI -w Identifier,Version,Status,Severity,DE-priority,Engineer,Headline -f "%s %-16.16s %s %s %s %8s %s\n" -o Status,Engineer,Severity "Product = '\'cids\'' AND [DE-priority] < 4 AND ( exists([Version] LIKE '\'*7.*\(*\)S*\'') OR exists([To-be-fixed] LIKE '\'*7.*\(*\)S*\'') ) AND exists ([Keyword] LIKE '\'fcs_ss\'')"'
alias ciambugs='/usr/cisco/bin/findcr -w Identifier,Version,To-be-fixed,Status,Severity,DE-priority,Engineer,Headline -f "%s %-16.16s %-16.16s %s %s %s %8s %s\n" -o To-be-fixed,Status,Engineer,Severity "Product = '\'cids\'' AND Component = '\'open-source\''"'
function ciamattr()
{
    tail -n +2 "$1" | awk -F , '{print $21}' | tr ' ' '\n' | sort -u | tr '\n' ' '; echo;
}
function ciamsummary()
{
    tail -n +2 "$1" | awk -F , '{printf "%i. %s\n%s\n\n", NR, $13, $17}';
}
function linediff()
{
   echo "File->$1"; cc_diff $1 | grep "\-\-\- [0-9]*,[0-9]* \-\-\-" ;
}



alias cdets='/usr/cisco/bin/cdets'
alias dumpcr='/usr/cisco/bin/dumpcr'
alias fixcr='/usr/cisco/bin/fixcr'
alias findcr='/usr/cisco/bin/findcr'
alias addnote='/usr/cisco/bin/addnote'
alias addfile='/usr/cisco/bin/addfile'
alias addcr='/usr/cisco/bin/addcr'
alias sa='export SESTOOLS_DISABLE_FLEXELINT=1;/auto/ses/bin/static_ips -h -j 4'
alias sabypass='/auto/ses/bin/devphc-enclosure -nosa -i'
alias cc_co='/usr/cisco/bin/cc_co'
alias cc_unco='/usr/cisco/bin/cc_unco'
alias cc_update='/usr/cisco/bin/cc_update'
alias cc_diff='/usr/cisco/bin/cc_diff'
alias prepare='/usr/cisco/bin/prepare'
alias commit='/usr/cisco/bin/commit'
alias getmeta='cdets -p CSC.security -r cids -c sensorapp -e fix -d Development -m '

alias tba='lt seti-teambuilder-a; ssh seti-teambuilder-a'
alias tbb='lt seti-teambuilder-b; ssh seti-teambuilder-b'
alias tbc='lt seti-teambuilder-c; ssh seti-teambuilder-c'
alias ssp40='lt seti-ssp-40; telnet seti-ssp-40'
alias ssp40-c='lt seti-ssp-40-console; telnet p2-console 2057'
alias sspi40='lt cids@seti-ssp-ips40; ssh cids@seti-ssp-ips40'
alias sspi40-c='lt seti-ssp-ips40-console; telnet p2-console 2058'
alias stand='lt bgl-standalone; ssh cids@10.104.228.99'
alias cloud='echo "ssh bgl-ads-997";ssh bgl-ads-997'

function rnpre() { addnote -r PREFCS -t Release-note $1 Release-note $HOME/Release-note-prefcs; }
function rnignore() { addnote -r IGNORE -t Release-note $1 Release-note $HOME/Release-note-ignore; }
function rnignorepsirt() { addnote -r IGNORE -t Release-note $1 Release-note $HOME/Release-note-ignore-psirt; }
function sendsource ()
{
    ( cd $CIDE_VOB_ROOT_PATH/dev; find apps srcPool/lib srcPool/drivers -regex '.*[.][ch]p?p?' -print | tar cvfTz - - ) | ssh $@ "cd idsRoot/var/dev; zcat - | tar -x -f- ";
}
function sendlibs ()
{
    ( cd $CIDE_VOB_ROOT_PATH/lib/$CIDE_TARGET_SYSTEM; \ls lib*_d.* | tar cvfzT - - ) | ssh $@ "cd idsRoot/lib; zcat - | tar -x -f- ";
#    ( cd $CIDE_VOB_ROOT_PATH/lib/$CIDE_TARGET_SYSTEM/3rd; tar cvfz - . ) | ssh $@ "cd idsRoot/lib; tar -xz -f- ";
}
function sendrellibs ()
{
    ( cd $CIDE_VOB_ROOT_PATH/lib/$CIDE_TARGET_SYSTEM; \ls lib* | tar cvfzT - - ) | ssh $@ "cd idsRoot/lib; zcat - | tar -x -f- ";
#    ( cd $CIDE_VOB_ROOT_PATH/lib/$CIDE_TARGET_SYSTEM/3rd; tar cvfz - . ) | ssh $@ "cd idsRoot/lib; tar -xz -f- ";
}
function senddebug ()
{
    scp $CIDE_VOB_ROOT_PATH/dev/apps/sensorApp/${CIDE_TARGET_SYSTEM}_debug/sensorApp $@:idsRoot/var/dev/sensorApp-debug;
}
function sendrelease ()
{
    scp $CIDE_VOB_ROOT_PATH/dev/apps/sensorApp/${CIDE_TARGET_SYSTEM}_release/sensorApp $@:idsRoot/var/dev/sensorApp-release;
}
function hl () { /usr/cisco/bin/findcr -i $1 -w Identifier,Status,Engineer,Headline,Resolved-on -f "%s -|- %s -|- %s -|- %s -|- %s \n";echo; }

function start_task () { /usr/cisco/bin/start_task -d /ws/apjoseph-bgl -v /vob/csids_3 -t $2 -b $1; }
function start_task_t () { /usr/cisco/bin/start_task -d /ws/apjoseph-bgl -v /vob/csids_3 -t $1_$2 -b $1; }
function vsa ()
{
    cleartool startview $1;
    export CIDE_VOB_ROOT_PATH=/view/$1/vob/csids_3;
    $CIDE_VOB_ROOT_PATH/dev/build/makeBuildInfo;
    lt $1;
    cd $CIDE_VOB_ROOT_PATH;
}
function lt () {
    lt_pid=`ps -p $$ o ppid --no-headers | tr -d " "`
#    echo "pid is $lt_pid"
    lt_session=`dcop konsole-$lt_pid konsole currentSession`
#    echo "session is $lt_session"
    `dcop konsole-$lt_pid $lt_session renameSession $1`
    echo -ne "\033]L$1\033\\"
    unset lt_pid lt_session
    
}

function cc_vimdiff() {
   vimdiff `cc_latest $1` $1
}
function dumpdiff() {
dumpcr -e -a "Diff*" $1 | less
}
#source /sw/packages/ccache/current/bin/setup-ccache
export SHELL=/usr/local/bin/bash

