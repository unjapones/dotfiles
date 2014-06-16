#!/bin/bash

# Source: http://scripthacks.wikispaces.com/Open+in+Guake

#notify-send "Opening in guake" "$1"
 
if [[ -z $@ ]]; then
    exit 2
fi
CURRENT_DIR=$1
 
#qdbus org.guake.RemoteControl /org/guake/RemoteControl org.guake.RemoteControl.show_hide
dbus-send --session --dest=org.guake.RemoteControl --print-reply /org/guake/RemoteControl org.guake.RemoteControl.show_hide
 
#qdbus org.guake.RemoteControl
dbus-send --session --dest=org.guake.RemoteControl --print-reply
if [[ ! $? -eq 0 ]]; then
    guake -n "${CURRENT_DIR}" &
    sleep 0.5s
##    qdbus org.guake.RemoteControl /org/guake/RemoteControl org.guake.RemoteControl.execute_command "pwd"
dbus-send --session --dest=org.guake.RemoteControl --print-reply /org/guake/RemoteControl org.guake.RemoteControl.execute_command "pwd"
else
    #qdbus org.guake.RemoteControl /org/guake/RemoteControl org.guake.RemoteControl.add_tab "${CURRENT_DIR}"
    dbus-send --session --dest=org.guake.RemoteControl --print-reply /org/guake/RemoteControl org.guake.RemoteControl.add_tab "${CURRENT_DIR}"
fi;
sleep 0.5s
#qdbus org.guake.RemoteControl /org/guake/RemoteControl org.guake.RemoteControl.rename_current_tab "$(basename "${CURRENT_DIR}")"
dbus-send --session --dest=org.guake.RemoteControl --print-reply /org/guake/RemoteControl org.guake.RemoteControl.rename_current_tab "$(basename "${CURRENT_DIR}")"
