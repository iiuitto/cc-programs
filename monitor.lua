local modem = peripheral.find("modem", rednet.open)
local id, message = rednet.receive()
local ccstring = require("cc.strings")
local monitor = peripheral.find("monitor")
local width, height = monitor.getSize()
local lines = ccstring.wrap(message, width)
monitor.clear()
monitor.setTextScale(0.5)
for i in ipairs(lines) do
    monitor.setCursorPos(0,i)
    monitor.write(line)
end