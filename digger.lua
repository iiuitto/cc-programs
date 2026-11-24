local modem = peripheral.find("modem", rednet.open)
local chat = require("cc.strings")

local is_block, data = turtle.inspect()
if is_block then
    rednet.send(2, textutils.serialise(data))
    chat.sendMessage(textutils.serialise(data))
else
    rednet.send(2, "no block")
end