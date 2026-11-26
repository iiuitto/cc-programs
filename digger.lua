function advance (x)
    for i = 1, x do
        turtle.forward()
    end
end

function moveLeft(x, t)
    turtle.turnLeft()
    advance(x)
    if t == 0 then
        turtle.turnRight()
    end
end

function moveRight(x, t)
    turtle.turnRight()
    advance(x)
    if t == 0 then
        turtle.turnLeft()
    end
end

function moveBack(x, t)
    turtle.turnLeft()
    turtle.turnLeft()
    advance(x)
    if t == 0 then
        turtle.turnLeft()
        turtle.turnLeft()
    end
end

function digPick(x)
    turtle.dig()
    turtle.suck(x)
end

function placeBlock(x)
    turtle.select(x)
    turtle.place()
end

while true do
    turtle.select(1) --break builder
    digPick(1)
    turtle.up()
    digPick(1)
    turtle.down()
    moveRight(1, 0)
    digPick(1)
    moveLeft(1, 0)
    advance(16)
    
    placeBlock(2) --place builder
    turtle.up()
    placeBlock(3)
    turtle.down()
    moveLeft(1, 0)
    placeBlock(1)
    moveRight(2, 0)
    placeBlock(4)
    moveLeft(1, 0)
    
    moveLeft(2, 0) --chunk loader placement
    moveBack(6, 1)
    turtle.select(5)
    digPick(1)
    moveBack(6,1)
    moveRight(2,0)
    
    sleep(10)
end