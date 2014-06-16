###################################################################################################
# Useful enviromental variables
###################################################################################################
_JAVA_AWT_WM_NONREPARENTING=1
wmname LG3D
TERM='xterm-256color'

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
#alias 'copywar=cp $HOME/.m2/repository/com/intercall/webonyx/webonyx/1.6-RELEASE/webonyx-1.6-RELEASE.war';
alias 'mvninstall=mvn clean install -Dmaven.test.skip=true -Dmaven.compiler.debug=true';
alias 'mvninstalltest=mvn clean install -Dmaven.compiler.debug=true';

alias 'h-list=hamster-cli list';
alias 'h-start=hamster-cli start';
alias 'h-stop=hamster-cli stop';

###################################################################################################
# Prompt Customization 1
# source: https://bbs.archlinux.org/viewtopic.php?pid=581612
# source: https://bbs.archlinux.org/viewtopic.php?pid=877675#p877675
###################################################################################################

# Reference the function in the prompt using: '$(parse_git_branch)' -> NOTE THE SINGLE QUOTES
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

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
    export PS1="$CLCYAN[\D{%T}] $CLGREEN\u$CLPURPLE@$CLGREEN\h $CLBLUE\w $CLCYAN"'$(parse_git_branch)'" $CLGREEN$ $CLSYS"
fi


###################################################################################################
# Other settings
###################################################################################################
# Use the next line with careful: "A great power comes with great responsability"
#set -o vi
# Fixes Awesome WM bug with java apps that use Swing
_JAVA_AWT_WM_NONREPARENTING=1


###################################################################################################
# Nerd settings
###################################################################################################
QOOBIZ="${HOME}/Nerd/FL/qoobiz"
QOOBIZSRC="${HOME}/Nerd/FL/qoobiz/src/Verne"
alias 'apacheservice=sudo sh /etc/init.d/apache2';
alias 'symph_clearcache=php app/console cache:clear';


###################################################################################################
# Work settings
###################################################################################################
alias 'pstom=ps ax | grep tomcat';

WORK_MAVEN_BIN="${HOME}/Work/CS/local/apache-maven-3.0.5/bin"
WORK_DBEAVER_BIN="${HOME}/Work/CS/local/dbeaver"
WORK_OPENJDK64_BIN="/usr/lib/jvm/java-1.6.0-openjdk-amd64/bin"
JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64/"
PATH=${PATH}":${WORK_MAVEN_BIN}:${WORK_DBEAVER_BIN}:${WORK_OPENJDK64_BIN}"

MOBILESHELLSRC="${HOME}/Work/WMG/mobile-shell/src/mobile-shell"
PATH="${PATH}:$HOME/Work/WMG/local/adt-bundle/sdk/build-tools"
PATH="${PATH}:$HOME/Work/WMG/local/adt-bundle/sdk/platform-tools"
PATH="${PATH}:$HOME/Work/WMG/local/adt-bundle/sdk/tools"
ANDROID_HOME="$HOME/Work/WMG/local/adt-bundle/sdk"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
