###############################
# Useful enviromental variables
###############################
PATH=${PATH}":${HOME}/.config/awesome/bin"
# Fixes Awesome WM bug with java apps that use Swing
_JAVA_AWT_WM_NONREPARENTING=1

################
# Useful aliases
################
alias 'ls=ls -a --color';
alias 'll=ls -l';
alias 'tree=tree -C';
alias 'grep=grep -n --color=auto';
alias 'makemeroot=sudo bash -ls';
alias 'mysqlroot=mysql -u root -p --default-character-set=utf8';
alias 'mynautilus=nautilus --no-desktop';
alias 'vimperator=firefox -P vimperator -no-remote';
#alias "netbeans=sh ${HOME}/Nerd/php/local/netbeans-7.0.1/bin/netbeans.sh";

################
# Other settings
################
# Use the next line with careful: "A great power comes with great responsability"
#set -o vi

####################################################################
# Prompt Customization 1
# source: https://bbs.archlinux.org/viewtopic.php?pid=581612
# or
# source: https://bbs.archlinux.org/viewtopic.php?pid=877675#p877675
####################################################################
CLCYAN="\[\033[0;36m\]"  # text elements
CLBLUE="\[\033[1;34m\]"  # brackets
CLGREEN="\[\033[0;32m\]"  # text elements
CLLIGHTGREEN="\[\033[1;32m\]"  # brackets
CLPURP="\[\033[1;35m\]"  # for user if whoami outputs 'root'
CLLGREY="\[\033[1;37m\]" # for user if whoami outputs something other than 'root'
CLSYS="\[\033[0;0m\]"    # set the text after the prompt to the color defined in the terminal profile
if [ `/usr/bin/whoami` = 'root' ]
then
    export PS1="$CLLIGHTGREEN[$CLPURP\u$CLLIGHTGREEN@$CLGREEN\h$CLLIGHTGREEN][$CLGREEN\w$CLLIGHTGREEN] : $CLSYS"
else
    export PS1="$CLLIGHTGREEN[$CLSYS\u$CLLIGHTGREEN@$CLGREEN\h$CLLIGHTGREEN] $CLGREEN\w$CLLIGHTGREEN : $CLSYS"
fi
####################################################################
# Prompt Customization 2
# source: https://bbs.archlinux.org/viewtopic.php?pid=581612
# or
# source: https://bbs.archlinux.org/viewtopic.php?pid=581612#p581612
####################################################################
# colored prompt
#if [ "`tput colors`" = "256" ]; then
    #B="\e[0;38;5;67m"
    #G="\e[0;38;5;114m"
    #Y="\e[0;38;5;214m"
#else
    #B="\e[0;34m"
    #G="\e[0;32m"
    #Y="\e[0;33m"
#fi
#W="\e[0m"
#PS1="\[$B\]┌─\[$W\][ \[$Y\]\A \[$W\]][ \[$G\]\h:\w \[$W\]]\n\[$B\]└─\[$Y\]> \[$W\]"
#PS2="  \[$Y\]> \[$W\]"
