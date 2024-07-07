function love.conf(t)
    t.window.title = "Project Knightingale"
    t.window.width = 1920
    t.window.height = 1080
    t.window.fullscreen = true
    -- t.window.fullscreentype = "desktop"

    t.indenity = "data/saves"

    t.modules.joystick = false
    t.console = false

    t.window.resizable = true
end
