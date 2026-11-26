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
    
    moveLeft(3,0) --place chunkloaders
    advance(8)
    placeBlock(7)
    turtle.turnRight()
    placeBlock(7)
    turtle.up()
    placeBlock(6)
    turtle.select(5)
    turtle.drop(1)
    sleep(1)
    digPick(2)
    turtle.turnLeft()
    placeBlock(7)
    placeBlock(6)
    turtle.select(5)
    turtle.drop(1)
    sleep(1)
    digPick(2)
    turtle.down()
    moveBack(8,0)
    moveRight(3,0)
    turtle.select(1)

    
    moveLeft(3, 0) --break old chunk loader
    moveBack(6, 1)
    turtle.select(7)
    digPick(1)
    moveBack(6,1)
    moveRight(2,0)
    turtle.select(1)
    
    sleep(10)
end