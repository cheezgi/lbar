require("larea")

LBar = {}
LBar.__index = LBar

setmetatable(LBar, {
    __call = function(cls, ...)
        return cls.new(...)
    end
})

function LBar.new()
    local self = setmetatable({}, LBar)
    self.areas = {}
    self.height = 20
    self.width = 400
    self.xcoord = 0
    self.ycoord = 0
    self.color = {255, 255, 255}
    self.font = love.grahpics.newFont(18)
    self.log = nil
    return self
end

function LBar:setHeight(h)
    self.height = h
end

function LBar:monWidth(mw)
    self.width = mw
end

function LBar:monHeight(mh)
    self.ycoord = mh - self.height
end

function LBar:setCoords(x, y)
    self.xcoord = x
    self.ycoord = y
end

function LBar:setFont(f)
    self.font = f
end

function LBar:setLog(l)
    self.log = l
end

function LBar:setColor(r, g, b)
    self.color = {r, g, b}
end

-- FIXME this is derpy
function LBar:newArea(a)
    local pos = a.pos
    local left = a.left
    local right = a.right
    local centered = a.centered
    local width = a.width
    local background = a.background
    local foreground = a.foreground
    local setpic = a.setpic
    local pic = a.pic
    local settext = a.settext
    local text = a.text
    local interval = a.interval
    local onclick = a.onclick
    table.insert(self.areas, LArea.new(pos, left, right, centered, width,
        background, foreground, setpic, pic, settext, text, interval, onclick))
end

