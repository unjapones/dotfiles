###################################################################################################
# Useful enviromental variables
###################################################################################################
# Bash history config
HISTSIZE=3000
HISTFILESIZE=8000
# Path env variables
NERD="${HOME}/Nerd/"
DOTFILES_LOCAL_BIN="${HOME}/Nerd/repos/dotfiles/local/bin"
AWESOME_BIN_PATH=${HOME}/.config/awesome/bin
PATH=${PATH}":${DOTFILES_LOCAL_BIN}:${AWESOME_BIN_PATH}"
# 256 terminal color config
TERM=screen-256color


###################################################################################################
# Useful aliases
###################################################################################################
alias 'ls=ls -a --color';
alias 'll=ls -l';
alias 'tree=tree -C';
alias 'grep=grep -i --color=auto';
alias 'makemeroot=sudo bash -ls';
alias 'mysqlroot=mysql -u root -p --default-character-set=utf8';
alias 'mynautilus=nautilus --no-desktop';
# Start vim tracking the session (note that the plugin "Obsession" from Tim Pope is recommended)
alias 'vims=vim -S Session.vim';
alias 'notes=vim ${HOME}/Escritorio/notas';
alias 'nerdnotes=vim ${HOME}/Nerd/notes';
alias 'nr=sudo rm -rf /tmp/nginx && sudo service nginx restart';
alias 'a=atom';
alias 'sapt=sudo apt-get';
alias 'ydl=youtube-dl --rate-limit 75K';
alias 'tmux=TERM=xterm-256color /usr/bin/tmux';

# Opens the given editor (1st param) with the results of grep (2nd param)
function grepedit(){
  $1 $(grep -Ril $2 *);
}


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
    export PS1="$CLPURP\u$CLPURPLE@$CLGREEN\h[$CLBLUE\w$CLGREEN # $CLSYS"
else
    export PS1="$CLGREEN\u$CLPURPLE@$CLGREEN\h $CLBLUE\w$CLGREEN $ $CLSYS"
fi


###################################################################################################
# Other settings
###################################################################################################
# Use the next line with careful: "A great power comes with great responsability"
#set -o vi
# Fixes Awesome WM bug with java apps that use Swing
_JAVA_AWT_WM_NONREPARENTING=1


###################################################################################################
# Misc stuff
###################################################################################################
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
