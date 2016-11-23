lbar:setHeight(30)                     -- height of bar
lbar:monWidth(1900)                  -- monitor width: lbar tries to guess
lbar:monHeight(600)                  -- monitor height
lbar:setCoords(0, 1900 - 30)         -- should not need to do this
lbar:setFont("dir/to/font.ttf")        -- font for all text
lbar:setLog("/tmp/lbar_log.txt")       -- set log file

lbar:setColor(244, 194, 66)            -- set color

-- weather thingy
lbar:newArea({
    pos = 399,                         -- position in pixels from the left side
    --left = true,                     -- or left justify
    --right = true,                    -- or right justify
    --centered = true,                 -- or center
    width = 100,                       -- width in pixels

    background = {62, 94, 65},         -- dark green
    foreground = {0, 0, 0},            -- font color
    setpic = "getweather",             -- command to set picture
    --setpic = getpic,                 -- or pass a lua function
    --pic = "sun.png",                 -- alternatively set picture manually

    settext = "date",                  -- command to run to get text
    --settext = gettext,               -- or pass a lua function
    --text = "Weather",                -- alternatively set text manually
    interval = 1,                      -- interval to run settext in seconds

    onclick = function(x, y, b)        -- callback provides x, y, and button
        print("Look out the window!")
        -- could do system call out to notification system
    end,
})
