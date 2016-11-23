-- lbar: simple bar that does stuff

require("lbar")
ml = require("ml")

function love.load()
    lbar = LBar.new()
    if ml.exists(os.getenv("HOME") .. "/.lbar.lua") then
        require("~/.lbar.lua")
    else
        print("config file not found!")
    end
    print(ml.tstring(lbar))
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

