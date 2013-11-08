###################################################################################################
# Useful enviromental variables
###################################################################################################
DOTFILES_LOCAL_BIN="${HOME}/Nerd/repos/dotfiles/local/bin"
AWESOME_BIN_PATH=${HOME}/.config/awesome/bin
PATH=${PATH}":${DOTFILES_LOCAL_BIN}:${AWESOME_BIN_PATH}"


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
WORK_MAVEN_BIN="${HOME}/Work/CS/local/apache-maven-3.0.5/bin"
WORK_DBEAVER_BIN="${HOME}/Work/CS/local/dbeaver"
WORK_OPENJDK64_BIN="/usr/lib/jvm/java-1.6.0-openjdk-amd64/bin"
JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64/"
PATH=${PATH}":${WORK_MAVEN_BIN}:${WORK_DBEAVER_BIN}:${WORK_OPENJDK64_BIN}"

CSLOCAL="${HOME}/Work/CS/local"
WOSRC="${HOME}/Work/CS/workspace/webonyx"
TOM="${HOME}/Work/CS/local/apache-tomcat-7.0.41-netbeans/apache-tomcat-7.0.41"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
