###############
# Env variables
###############
NERD="${HOME}/Nerd/"
DOTFILES_LOCAL_BIN="${HOME}/Nerd/repos/dotfiles/local/bin"
AWESOME_BIN_PATH=${HOME}/.config/awesome/bin
PATH=${PATH}":${DOTFILES_LOCAL_BIN}:${AWESOME_BIN_PATH}"
TERM=screen-256color

#########
# Aliases
#########
alias 'editbashprofile=vim ${HOME}/.bash_profile';
alias 'nr=sudo service nginx restart';
alias 'ls=ls -a --color';
alias 'll=ls -l';
alias 'tree=tree -C';
alias 'grep=grep -n --color=auto';
alias 'makemeroot=sudo bash -ls';
alias 'mysqlroot=mysql -u root -p --default-character-set=utf8';
alias 'mynautilus=nautilus --no-desktop';
alias 'editnr=sudo vim /etc/nginx/nginx.conf && nr';
# Start vim tracking the session (note that the plugin "Obsession" from Tim Pope is recommended)
alias 'vims=vim -S Session.vim';
alias 'notes=vim ${HOME}/Escritorio/notes.md';
alias 'youtube-dl-mp3=youtube-dl --extract-audio --audio-format mp3';
alias 'mplayer-slow3=mplayer -fps 23.976';
alias 'awesomeconfig=cd ${HOME}/.config/awesome && vim';
alias 'cdnerd=cd ${NERD}';
alias 'gitchangedfiles=git diff --name-status';
alias 'gitfilesincommit=git show --pretty="" --name-only';
alias 'nr=sudo service nginx restart';

######################
# Prompt Customization
######################
CLPURPLE="\[\033[0;35m\]"
CLCYAN="\[\033[0;36m\]"
CLBLUE="\[\033[0;34m\]"
CLBLUE2="\[\033[1;34m\]"
CLYELLOW="\[\033[0;33m\]"
CLRED="\[\033[0;31m\]"
CLGREEN="\[\033[0;32m\]"
CLLIGHTGREEN="\[\033[1;32m\]"
CLPURP="\[\033[1;35m\]"
CLLGREY="\[\033[1;37m\]"
CLSYS="\[\033[0;0m\]"
GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
WHITE=$(tput setaf 7)

function git_branch {
  # Shows the current branch if in a git repository
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/';
}

# 2 line prompt:
# PWD [(git_branch)]
# →_
PS1="\n${CLBLUE}\w${YELLOW}\$(git_branch)\n${CLPURP}→ ${CLSYS}";

################
# Other settings
################
# Fix Awesome WM bug with java apps that use Swing
_JAVA_AWT_WM_NONREPARENTING=1

##################
# Useful functions
##################
# Give a PRNUMBER (GitHub), creates the corresponding branch automatically.
# Usage:
#   $ pr-merge PRNUMBER
function pr-merge () {
  PR=${1:-1}
  REMOTE=${2:-upstream};
  git fetch $REMOTE pull/$1/merge:pr-$PR && git checkout pr-$PR;
}

#############
# Work things
#############
BASH_PROFILE_WORK_PATH="${HOME}/.bash_profile_work"
if [ -e $BASH_PROFILE_WORK_PATH ]
then
  . $BASH_PROFILE_WORK_PATH
fi

#####
# nvm
#####
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
