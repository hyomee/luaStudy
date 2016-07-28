##변수##
- - - 
Lua도 다른 스트립트 언어와 동일 하게 동적 변수형을 지원 하므로 미리 정의 할 필요가 없으며 실제 값에 의해서 형이 결정 됩니다. 다음은 변수 이름의 기본 규칙 입니다.
1. 변수명은 영문자, 숫자, _를 혼합해서 만들 수 있습니다.
2. 변수명으 시작은 영문자 또는 _로 시작을 하여햐 합니다.
3. 영문자는 대문자와 소문자를 구분 합니다.
4. 공백이나 특수문자를 변수명으로 사용 할 수 없습니다.
5. 미리 정의된 예약어는 변수명으로 사용 할 수 없습니다.</br>
   and, break, do, else, elseif, end, false, for, function, if, in, local, nil, not, or, repeat, return, then, true, until, while

**변수 종류**
1. nil :: 해당 변수가 정상 적인 값을 가지고 있지 않다는 의미 합니다.
2. boolaen :: true, false 두가지를 값을 의미 합니다.
3. number :: 정수와 소수를 구분하지 않고 모든 숫자를 의미 합니다.
4. string ::  "",''로 묶여 있는 문자들의 집합을 의미 합니다.</br>
   다음과 같이 특수문자를 사용 할 수 있습니다.
   * \b : 백스페이스
   * \n : 엔터
   * \r : 캐리어 리턴
   * \t : 탭
   * \\ : 백슬래시
   * \" : 큰 따옴표
   * \' : 작은 따옴표
   * \ddd : ASCII 코드 3자리에 해단 하는 문자열 출력 
5. function :: 함수도 변수의 한 종류로 재 정의 하여 사용 할 수 있습니다.
   ```
   ** userDefine.lua
   userDeinePrint = print
   userDeinePrint("hello lua!!!")

   prompt>lua53 C:\ESP8266\Study\userDefine.lua
   hello lua!!!
   prompt>
   ```
6. table :: {}이용 해서 초기화 할 수 있으면 마치 배열과 유사 합니다.<br>
   *변수명 = { 값1, 값2 .... }*
   > a={1,2,3} => print(a[1])
   > a["a"] = 100 => print(a["a"]) or print(a.a)
7. coroutine :: 프로그램에서 동시에 어떤 일을 수행 할 떄 사용 하는 것으로 다른 언어의 thread와 유사 합니다.
   ```
   > cr = coroutine.create( function() print("hello") end)
   > print( type(cr))
   Thread
   ```
8. 지역 변수, 전역 변수<br>
   모든 변수는 기본적으로 전역 변수 입니다. local로 선언한 변수만 지역 변수로 됩니다.


   