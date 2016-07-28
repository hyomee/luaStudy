-- Queue 구현을 위한 head/tail point 지정
function fnc_QueueNew()
    return { head = 0, tail = 0}
end 

-- Queue에 Value를 삽입 하는 함수
function fnc_AddQueue(queue, value)

    local tailPoint = queue.tail
    queue[tailPoint] = value
    queue.tail = tailPoint + 1
end

-- Queue에 Value를 삭제 하는 함수
function fnc_DeleteQueue(queue)
    
    if (queue.head == queue.tail) then
        print("Queue is Empty")
        return
    end

    local headPoint = queue.head
    local retValue = queue[headPoint]

    queue[headPoint] = nil
    queue.head = headPoint + 1

    return retValue
end

-- logic
local queue = fnc_QueueNew()

-- 초기화 
fnc_DeleteQueue(queue)

fnc_AddQueue(queue, 10)
fnc_AddQueue(queue, 20)
fnc_AddQueue(queue, 30)

print(fnc_DeleteQueue(queue))
print(fnc_DeleteQueue(queue))
print(fnc_DeleteQueue(queue))