###################################################################################################
# Useful enviromental variables
###################################################################################################
DOTFILES_LOCAL_BIN="${HOME}/Nerd/repos/dotfiles/local/bin"
AWESOME_BIN_PATH=${HOME}/.config/awesome/bin
PATH=${PATH}":${DOTFILES_LOCAL_BIN}:${AWESOME_BIN_PATH}"
TERM=screen-256color


###################################################################################################
# Useful aliases
###################################################################################################
alias 'ls=ls -a --color';
alias 'll=ls -l';
alias 'tree=tree -C';
alias 'grep=grep -n --color=auto';
alias 'makemeroot=sudo bash -ls';
alias 'mysqlroot=mysql -u root -p --default-character-set=utf8';
alias 'mynautilus=nautilus --no-desktop';
alias 'copywar=cp $HOME/.m2/repository/com/intercall/webonyx/webonyx/1.4-RELEASE/webonyx-1.4-RELEASE.war';
alias 'mvninstall=mvn clean install -Dmaven.test.skip=true -Dmaven.compiler.debug=true';
alias 'mvninstalltest=mvn clean install -Dmaven.compiler.debug=true';


###################################################################################################
# Prompt Customization 1
# source: https://bbs.archlinux.org/viewtopic.php?pid=581612
# source: https://bbs.archlinux.org/viewtopic.php?pid=877675#p877675
###################################################################################################
CLPURPLE="\[\033[0;35m\]"
CLCYAN="\[\033[0;36m\]"  # text elements
CLBLUE="\[\033[0;34m\]"  # brackets
CLBLUE2="\[\033[1;34m\]"  # brackets
CLYELLOW="\[\033[0;33m\]"  # text elements
CLRED="\[\033[0;31m\]"  # text elements
CLGREEN="\[\033[0;32m\]"  # text elements
CLLIGHTGREEN="\[\033[1;32m\]"  # brackets
CLPURP="\[\033[1;35m\]"  # for user if whoami outputs 'root'
CLLGREY="\[\033[1;37m\]" # for user if whoami outputs something other than 'root'
CLSYS="\[\033[0;0m\]"    # set the text after the prompt to the color defined in the terminal profile
if [ `/usr/bin/whoami` = 'root' ]
then
    export PS1="$CLPURP\u$CLPURPLE@$CLGREEN\h[$CLBLUE\w$CLGREEN] : $CLSYS"
else
    export PS1="$CLGREEN\u$CLPURPLE@$CLGREEN\h $CLBLUE\w$CLGREEN : $CLSYS"
fi


###################################################################################################
# Other settings
###################################################################################################
# Use the next line with careful: "A great power comes with great responsability"
#set -o vi
# Fixes Awesome WM bug with java apps that use Swing
_JAVA_AWT_WM_NONREPARENTING=1


###################################################################################################
# Work settings
###################################################################################################
WMGDIR=${HOME}/Work/WMG
PATH=${PATH}":${WMGDIR}/android-sdk-linux/tools"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
