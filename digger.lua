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

while true do
    turtle.select(1) --break builder
    turtle.dig()
    turtle.suck(1)
    turtle.up()
    turtle.dig()
    turtle.suck(1)
    turtle.down()
    moveRight(1)
    turtle.dig()
    turtle.suck(1)
    moveLeft(1)
    advance(16)
    turtle.select(2) --place builder
    turtle.place()
    turtle.up()
    turtle.select(3)
    turtle.place()
    turtle.down()
    moveLeft(1)
    turtle.select(1)
    turtle.place()
    moveRight(2)
    turtle.select(4)
    turtle.place()
    moveLeft(1)
    sleep(10)
end