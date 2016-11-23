# lbar

Short for lua bar. A simple cross-platform solution for all window managers
and no dependencies on finicky X11 libraries.

lbar can be configured to execute lua code when an area is clicked using
callbacks. In ~/.lbar.lua

(this is just a rough outline of what I want this to contain. more will
likely be added later, documentation will likely come never unless someone
makes a nice PR. wink wink hint hint.)

```lua
-- lbar is a global when this script is run
-- this script is run once at startup, all other stuff comes in the form
-- of a callback.
lbar:setHeight(30)                     -- height of bar
lbar:setWidth(1900)                    -- monitor width
lbar:setFont("dir/to/font.ttf")        -- font for all text

-- weather thingy
lbar:newArea({
    onclick = function(x, y, b)        -- callback provides x, y, and button
        print("Look out the window!")
    end,
    setpic = "getweather"              -- command to set picture
    settext = "date",                  -- command to run to get text
    --settext = gettext                -- or pass a lua function
    --settext = "Weather"              -- alternatively set text manually:
    interval = 1,                      -- interval to run cmdstring in seconds
    pos = lbar:getWidth() / 2,         -- position in pixels from the left side
    width = 100,                       -- width in pixels
    background = {62, 94, 65},         -- dark green
    foreground = {0, 0, 0},            -- font color
})

-- music
lbar:newArea({
    cmd = "getmusicplaying", -- media player command or something
    onclick = function(x, y, b)
        -- launch some music widget or whatever
    end,
})

```

