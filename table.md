##Table##
Lua에서 Table을 배열 처럼 움직이는데 다음과 같은 특징이 있습니다.
1. index를 통해 내용을 가지고 오고, 저장 합니다.
2. nil을 제외한 문자열이나 기타 다른 값을 키로 키에 해당하는 값을 참조 할 수 있습니다.
3. 크가가 동적으로 필요한 만큼 자동으로 증가 합니다.
4. Lua의 table은 객체(Object) 입니다.
5. index의 삭제는 nil을 설정 해 주면 됩니다.

예제1] 간단한 Table 예제
```
--table 생성
examTable = {10,20}
print("examtable :: "..examTable[1])
--table 생성
examTableCr = {x=10,y=20}
print("examTableCr :: x :: "..examTableCr["x"])
print("examTableCr :: y :: "..examTableCr["y"])
z = examTableCr["x"] + examTableCr["y"] 
examTableCr["z"] = z
print("examTableCr :: z :: "..examTableCr["z"])
-- 참조 
ref = examTableCr
print("ref :: z :: "..ref["z"])

결과 ==> 
examtable :: 10
examTableCr :: x :: 10
examTableCr :: y :: 20
examTableCr :: z :: 30
ref :: z :: 30
```

예제2] Table 생성 
```
exTable1 = {10,20}
exTable2 = {[1] = 10, [2] = 20}
-- 0 붜터 시작 하는 경우 
exTable3 = {[0] = 10,20,30,40,50}

print("exTable1 :: index 1 ::"..exTable1[1])
print("exTable2 :: index 1 ::"..exTable2[1])
print("exTable3 :: index 0 ::"..exTable3[0])

결과 =>
exTable1 :: index 1 ::10
exTable2 :: index 1 ::10
exTable3 :: index 0 ::10
```

예제3] 중첩된 Table 생성
```
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

결과 =>
table: 00000000010c9ac0
nil
exTable['x'] = 10
table: 00000000010c9700
exTable[1].x = 20
table: 00000000010c9b40
exTable[2].a = 40
```

예제 4] Table 삭제
```
exTable = {10,20,30}
for values in pairs(exTable) do
    print(values)
end

exTable[2] = nill

print("******* after delete  ********")
for values in pairs(exTable) do
    print(values)
end

결과 =>
1
2
3
******* after delete  ********
1
3
```

**\* Table의 활용 \***
* 배열
  - 근본적으로 lua는 테이블의 크기를 지정 할 수 없습니다.
  - Lua의 index는 1 부터 시작을 하는데 0으로 시작을 할려면 시작점을 0으로 하면 됩니다.
  - 2차원 배열도 만들수 있다.
  - 참고 :: [example\tableArray.lua](example\tableArray.lua)
  
* Queue
  - FIFO(First In, First Out) 예제를 통해서 확인 해 보자
  - 참고 :: [example/tableQueue.lua ](example/tableQueue.lua) 
  
* Stack
  - Stack는 FILO(First In, Last Out) 방식으로 테이터를 저장, 로드 합니다.
  - 참고 :: [example/tableStack.lua ](example/tableStack.lua)  
  
* Linked list
  * 크기에 제약이 없이 데이터이 추가, 삭제가 자유로운 list형태의 데이터 구조
  * 데이터와 다음 데이터의 포인터를 가지는 노드(node)가 있고, 각 노드는 포인터를 이용해 연결되어 있는 형태
  * 각 노드의 가장 처음에는 헤드 노드가 존재하는 형태 입니다. 따라서 헤드 노드를 시작으로 연결되어 있는(linked) list형태의 데이터 구조에 대한 순차적인 접근이 가능
  * lua에서는 노드가 테이블이 되고, 포인터는 데이블이 가리키는 다른 테이블로 생각 하면 됩니다.
  * 참고 :: [example\tableLinkedlist.lua](example/tableLinkedlist.lua)