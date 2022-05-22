

function love.load()


    
    kolko = {}
    kolko.width = 100
    kolko.height = 50
    kolko.x = kolko.width
    kolko.y = kolko.height 
    kolko.xdir = true
    kolko.ydir = true
    local vsync = true
    kolko.speed = 3
    kolko.napis = nil
    sound = love.audio.newSource("/sounds/click.ogg", "static")


    siemaneczko = {"asd"}
    kolor = {1,1,1}
    kolko.rotate = 0

    
end

function love.update(dt)
    if kolko.xdir then
        kolko.x = kolko.x + kolko.speed
    elseif not kolko.xdir then
        kolko.x = kolko.x - kolko.speed
    end

    if kolko.ydir then 
        kolko.y = kolko.y + kolko.speed
    elseif not kolko.ydir then
        kolko.y = kolko.y - kolko.speed
    end
    
    if kolko.x < kolko.width then
        kolko.xdir = true
        sound:play()
    elseif kolko.x > 1280 - kolko.width then 
        sound:play()
        kolko.xdir = false
    end
    
    if kolko.y < kolko.height then
        sound:play()
        kolko.ydir = true
    elseif kolko.y > 720 - kolko.height then
        sound:play()
        kolko.ydir = false
    end



    --kolko.rotate = kolko.rotate + 0.001


end

function love.draw()
    --love.graphics.circle("line", kolko.x, kolko.y, kolko.width)
    love.graphics.rotate(kolko.rotate)
    love.graphics.setColor(kolor[1], kolor[2], kolor[3])
    love.graphics.ellipse("fill", kolko.x, kolko.y, kolko.width, kolko.height)
    love.graphics.setColor(0,0,0)
    --love.graphics.print(kolko.napis , kolko.x - 25, kolko.y - 5)
end

function love.keypressed(key)
    if key == "a" then
       kolor[1] = 1
       kolor[2] = 0
       kolor[3] = 0
    elseif key == "d" then
        kolor[1] = 0
        kolor[2] = 0
        kolor[3] = 1
    end
 end