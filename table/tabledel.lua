exTable = {10,20,30}
for values in pairs(exTable) do
    print(values)
end

exTable[2] = nill

print("******* after delete  ********")
for values in pairs(exTable) do
    print(values)
end