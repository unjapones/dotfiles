-- {{{ MOUSE BINDINGS
-------------------------------------------------------------------------------
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    -- Bind mousewheel on desktop to switch viewports
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}} end MOUSE BINDINGS


-- {{{ KEY BINDINGS
-------------------------------------------------------------------------------
globalkeys = awful.util.table.join(
    -- Open an application selector
    awful.key({ modkey,           }, "Tab", function ()
         -- If you want to always position the menu on the same place set coordinates
         awful.menu.menu_keys.down = { "Down", "Alt_L" }
         local cmenu = awful.menu.clients({width=245}, { keygrabber=true, coords={x=525, y=330} }) end),
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "w", function () mymainmenu:show({keygrabber=true}) end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    -- -----------------------------------------------------------------
    -- Disabled, modkey + Tab will display the list of available clients
    -- awful.key({ modkey, }, "Tab", function () awful.client.focus.history.previous() if client.focus then client.focus:raise() end end),
    -- -----------------------------------------------------------------

    -- Resize floats using the keyboar (form Awesome FAQ)
    awful.key({ modkey, "Shift"   }, "Down",    function () awful.client.moveresize(  0,   0,   0,  40) end),
    awful.key({ modkey, "Shift"   }, "Up",      function () awful.client.moveresize(  0,   0,   0, -40) end),
    awful.key({ modkey, "Shift"   }, "Left",    function () awful.client.moveresize(  0,   0, -40,   0) end),
    awful.key({ modkey, "Shift"   }, "Right",   function () awful.client.moveresize(  0,   0,  40,   0) end),
    awful.key({ modkey, "Control"   }, "Down",  function () awful.client.moveresize(  0,  20,   0,   0) end),
    awful.key({ modkey, "Control"   }, "Up",    function () awful.client.moveresize(  0, -20,   0,   0) end),
    awful.key({ modkey, "Control"   }, "Left",  function () awful.client.moveresize(-20,   0,   0,   0) end),
    awful.key({ modkey, "Control"   }, "Right", function () awful.client.moveresize( 20,   0,   0,   0) end),

    -- Standard program
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end),
    --awful.key({ modkey, "Shift"   }, "Return", function () awful.util.spawn("gnome-terminal") end),
    awful.key({ modkey,           }, "e",      function () awful.util.spawn("nautilus --no-desktop") end),
    awful.key({ modkey,           }, "p",      function () awful.util.spawn("gnome-screenshot -i -a") end),
    awful.key({ modkey, "Shift"   }, "b",      function () awful.util.spawn("awsetbg -a -r /home/japones/Imágenes/walls20") end),
    --awful.key({ modkey, "Shift"   }, "i",      function () awful.util.spawn("firefox") end),
    awful.key({ modkey, "Control" }, "i",      function () awful.util.spawn("luakit") end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),

    -- Prompt
    awful.key({ modkey,           }, "y",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end),

    -- Dropdown terminal
    awful.key({ modkey            }, "o",      function () scratch.drop("xterm -bg '#212121' -ls -e 'tmux'","bottom","center",1,0.4) end),
    awful.key({ modkey, "Shift"   }, "p",      function () scratch.drop("subl -n -b","right","center",1,0.4) end)
    --awful.key({ modkey, "Shift"   }, "o",      function () scratch.drop("gnome-terminal","bottom","center",1,0.5) end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    -- awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "n",      function (c) c.minimized = not c.minimized    end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end),
    awful.key({ modkey, "Shift"   }, "t", 
        function (c)
            if   c.titlebar then awful.titlebar.remove(c)
            else awful.titlebar.add(c, { modkey = modkey }) end
        end)
)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          awful.tag.viewtoggle(tags[screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}} end KEY BINDINGS
