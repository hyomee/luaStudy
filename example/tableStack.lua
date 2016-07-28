-- Stack 구현을 위한 head/tail point 지정
function fnc_StackNew()
    return { top = 0}
end 

-- Stack에 Value를 삽입 하는 함수
function fnc_PushStack(stack, value)
    local newTop = stack.top + 1
    stack[newTop] = value
    stack.top = newTop
end

-- Stack에 Value를 삭제 하는 함수
function fnc_PopStack(stack)
    
    if (stack.top == 0) then
        print("Stack is Empty")
        return
    end

    local oldTop = stack.top
    local retValue = stack[oldTop]
    stack.top = oldTop - 1
    stack[oldTop] = nil

    return retValue
end

-- logic
local Stack = fnc_StackNew()

fnc_PushStack(Stack, 10)
fnc_PushStack(Stack, 20)
fnc_PushStack(Stack, 30)

print(fnc_PopStack(Stack))
print(fnc_PopStack(Stack))
print(fnc_PopStack(Stack))
print(fnc_PopStack(Stack))