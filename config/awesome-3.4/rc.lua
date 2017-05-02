require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
require("naughty")
require("vicious")
require("scratch")
-- require("cheeky")

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

awful.util.spawn_with_shell("compton")
awful.util.spawn_with_shell("xrdb ~/.Xresources")
awful.util.spawn_with_shell("dbus-launch gnome-session")
awful.util.spawn_with_shell("dbus-launch volumeicon")
awful.util.spawn_with_shell("fdpowermon")
awful.util.spawn_with_shell("clipit")