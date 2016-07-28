##Function##
- - -
함수란 코드의 중복을 피하고 구조적으로 만들며, 다른 사람이 이해하기 좋게 만들기 위하여 사용 합니다.

```
function 함수명(입력인자, ..)
   코드 블럭
end

예제] 파일을 읽어서 실행 하기
** test.lua
function test()
   print("function test")
end

** main.lua
dofile("test.lua");
test();

==> 결과 : function test

예제] 파일을 읽어서 실행 하기 [파라메터 연결]
function test(input)
   print("function test input :: "..input)
end

** main.lua
dofile("test.lua");
test("hello");

==> 결과 : function test input :: hello
```

**가변인수**
```
function funation_name(...)
    print("가변인수"..arg.n)
    for i = 1, arg.n do
         print("가변인수"..i)
    end 
end
```


