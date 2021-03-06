-- lbar: simple bar that does stuff

require("lbar")
ml = require("ml")

function love.load()
    lbar = LBar.new()
    if ml.exists(os.getenv("HOME") .. "/.lbar.lua") then
        dofile(os.getenv("HOME") .. "/.lbar.lua")
    else
        print("config file not found!")
    end
    print(ml.tstring(lbar))
    love.window.setMode(lbar.width, lbar.height, {borderless = true})
    love.window.setPosition(lbar.xcoord, lbar.ycoord, lbar.display)
end

function love.update(dt)
end

function love.draw()
end

function love.keypressed(key)
end

function love.mousepressed(x, y)
end

function love.mousereleased(x, y)
end

