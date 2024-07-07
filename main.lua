_G.love = require("love")

function love.load()
    gameFont = love.graphics.newFont("assets/assets_stevenColling/honeyblot_caps/honeyblot_caps.ttf", 50)

    target = {}
    target.x = 200
    target.y = 200
    target.radius = 50
    score = 0
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(0, 153 / 255, 204 / 255)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(204 / 255, 0, 51 / 255)
    love.graphics.setFont(gameFont)
    love.graphics.print("Project Knightingale", 960, 540)
    love.graphics.print(score, 0, 0)
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        -- 1 is the left mouse button, 2 is right button 3 is middle mouse button
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
end
