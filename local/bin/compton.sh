#!/bin/sh
# -cCGbf
# client side shadows on windows
# Avoid drawing shadows on dock/panel windows
# Don't dray shadows on DND windows
# Daemonize process
# Fade windows in/out when opening/closing
#
# -o 0.8 Opacity of the shadow
# -l -17 Left offset for shadows
# -I 0.1 Opaciti change between steps while fading in
# -O 0.1 Opaciti change between steps while fading out
/home/japones/Nerd/linux/desktop/compton/compton -cCGbf -o 0.8  -l -17 -I 0.1 -O 0.1
