require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
require("naughty")
require("vicious")
require("scratch")

beautiful.init(awful.util.getdir('config').."/themes/zenburn/theme.lua")

terminal = "xterm -ls -g 130x43"
editor = os.getenv("EDITOR") or "gvim"
editor_cmd = terminal .. " -e " .. editor

modkey = "Mod4"
altkey = "Mod1"

require("tags")
require("menu")
require("widgetstop")
require("bindings")
require("rules")
require("signals")

awful.util.spawn_with_shell("/home/topones/Nerd/repos/dotfiles/local/bin/compton.sh")
awful.util.spawn_with_shell("xrdb ~/.Xresources")
awful.util.spawn_with_shell("gnome-session")
--awful.util.spawn_with_shell("parcellite")
--awful.util.spawn_with_shell("guake -e /usr/bin/tmux")
awful.util.spawn_with_shell("fdpowermon")
