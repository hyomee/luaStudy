-- LinkedList의 first노드를 생성 한다,
function newLinkedList()
    return {next = nil, data = nil}
end

-- 원하는 노드 뒤에 새로운 값의 노드를 추가 
function fncAddLinkedList(linkedlist, value)
    linkedlist.next = { next = linkedlist.next, data = value }
end

-- linkedlist 객체 생성
local linkedlist = newLinkedList()

-- linkedlist의 노드 추가
fncAddLinkedList(linkedlist, 1)
fncAddLinkedList(linkedlist, 2)

iterator = linkedlist.next

-- linkedlist를 위한 iterrator 초기값 설정
local iterator = linkedlist.next

-- 데이터가 1인 노드뒤에 새로운 노드를 추가 한다.
while iterator do
    if iterator.data == 1 then
        fncAddLinkedList(iterator, 3)
        break;
    end
    iterator = iterator.next
end
print(iterator)

-- 전체 linkedlist를 출력 한다.
iterator = linkedlist.next
while iterator do
    print(iterator.data)
    iterator = iterator.next
end

-- 결과 
-- 2
-- 1
-- 3