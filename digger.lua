local is_block, data = turtle.inspect()
if is_block then
    print(textutils.serialise(data))
else
    print("no block")
end