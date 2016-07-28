-- 다차원 배열
-- 1. 10개의 크기의 배열을 만들기 위해서 
maxSize = 10

-- 배열 선언
arrayTable = {}

-- 배열의 크기 만큼 초기화 
for i = 1, maxSize do
    arrayTable[i] = {}
    for j = 1, maxSize do
        arrayTable[i][j] = (i-1) * 10 + j
    end
end

-- 출력
for i = 1, maxSize do
    for j = 1, maxSize do
        print("array["..i.."]["..j.."] = "..arrayTable[i][j])
    end
end

