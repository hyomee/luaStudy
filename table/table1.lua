exTable = {
    x = 10,
    {x = 20, y = 30},
    {a = 40, b = 50}
}
print(exTable)
print(exTable[0])
print("exTable['x'] = "..exTable.x)
print(exTable[1])
print("exTable[1].x = "..exTable[1].x)
print(exTable[2])
print("exTable[2].a = "..exTable[2].a)