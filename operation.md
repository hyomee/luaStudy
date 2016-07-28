##연산자##
- - -
연산자란 변수를 가공 하는 것을 의미 하며, Lua에서는 다음과 같은 연산자를 제공 합니다.
1. 치환 연산자 :: '='
2. 산술 연산자 :: +, - , *, /, %(나머지), ^(좌승)
3. 관계 연산자 :: >, <, >=, <=, ==, ~= (같지않음)
4. 논리 연산자 :: A and B, A or B, not A
5. 기타 연산자 :: .. (문자열 합침), #(배열의 길이) [ 배열 -> 문자열, 데이블 ..]

**연산자 우선 순위**</br>
 ^ >> -(단항연산자[부호]),not,# >> *,/,% >> +,- >> .. > >,>=,<=,==,~= >> and >> or

##제어##
1. if
   ```
   if conditon then
      statement
      ...
   end

   if conditon then
      statement
      ...
   elseif conditon then
      statement
      ...
   end
   ```
2. while
   ```
   while condition do
     statements
     ....
   end
   ```
3. repeat ~ until
   ```
   repeat
      statements
      ....
   until condition
   ```
4. for
   ```
   for variable = start-condition, end-condition, step do
      statements
   end

   예제 구구단 출력] 
   for i = 2, 9 do
      for j = 1, 9 do
         print (i.."*"..j.."="..i*j)
      end
   end

   for element-variable in iterrator do
      statements
   end

   에제] ipairs 사용 
   local direction = {"a","b","c","d"}

   for index, value in ipairs(direction) do
      print("ipaires["..index.."]="..value)
   end 

   결과 :: 
   ipaires[1]=a
   ipaires[2]=b
   ipaires[3]=c
   ipaires[4]=d

   예제] ipairs를 사용자 정의 함수로 작성  
   function getElement(table, index)
       index = index + 1;
       local element = table[index];
       if element then
           return index, element;
       end
    end

    function mylpaires(table)
       return getElement, table, 0
    end

    for index, value in mylpaires(direction) do
       print("ipaires["..index.."]="..value);
    end 
   ```
5. break, return 
