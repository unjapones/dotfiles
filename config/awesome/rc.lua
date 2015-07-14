require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
require("naughty")
require("vicious")
require("scratch")

beautiful.init(awful.util.getdir('config').."/themes/zenburn/theme.lua")

--terminal = "xterm -ls -g 135x35"
terminal = "terminator"
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

awful.util.spawn_with_shell("xrdb ~/.Xresources")
awful.util.spawn_with_shell("nm-applet")
awful.util.spawn_with_shell("gnome-session")
-- awful.util.spawn_with_shell("terminator -H -l bottom")
awful.util.spawn_with_shell("/home/topones3/Nerd/repos/dotfiles/local/bin/compton.sh")
awful.util.spawn_with_shell("redshift -t 6100:6100 -g 0.8:0.8:0.8")
