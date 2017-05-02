-- Load Debian menu entries
require("debian.menu")

-- Create the main menu
myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   --{ "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "edit config", editor .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

-- Main menu
mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "Debian", debian.menu.Debian_menu.Debian },
                                    --{ "open terminal", terminal }
                                    { "Lock screen", "gnome-screensaver-command -l" }
                                  }
                        })
-- Create a laucher widget and 
mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon), menu = mymainmenu })
