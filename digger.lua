function advance (x)
    for i = 1, x do
        turtle.forward()
    end
end

function moveLeft(x)
    turtle.turnLeft()
    advance(x)
    turtle.turnRight()
end

function moveRight(x)
    turtle.turnRight()
    advance(x)
    turtle.turnLeft()
end

function moveBack(x)
    turtle.turnLeft()
    turtle.turnLeft()
    advance(x)
    turtle.turnLeft()
    turtle.turnLeft()
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
    moveRight(1)
    digPick(1)
    moveLeft(1)
    advance(16)
    placeBlock(2) --place builder
    turtle.up()
    placeBlock(3)
    turtle.down()
    moveLeft(1)
    placeBlock(1)
    moveRight(2)
    placeBlock(4)
    moveLeft(1)
    sleep(10)
end