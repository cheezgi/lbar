LArea = {}
LArea.__index = LArea

setmetatable(LArea, {
    __call = function(cls, ...)
        return cls.new(...)
    end
})

function LArea.new(pos, left, right, centered, width, background, foreground,
        setpic, pic, settext, text, interval, onclick)
    local self = setmetatable({}, LArea)

    if pos then
        self.pos = pos
        self.left = nil
        self.right = nil
        self.centered = nil
    else
        if left or right or centered then
            self.pos = nil
            self.left = left
            self.right = right
            self.centered = centered
        else
            error("area needs a position")
        end
    end

    self.width = width
    self.background = background
    self.foreground = foreground

    if setpic then
        self.setpic = setpic
        self.pic = nil
    elseif pic then
        self.setpic = nil
        self.pic = pic
    end

    if settext then
        self.settext = settext
        self.text = nil
    else
        if text then
            self.settext = nil
            self.text = text
        else
            error("area needs text")
        end
    end

    if interval and (setpic or settext) then
        self.interval = interval
    else
        error("area needs an interval to update")
    end

    self.onclick = onclick

    return self
end

