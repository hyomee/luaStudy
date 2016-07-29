##Lua##
- - - 
매우 작은 스크립트 언어로 ANSI C 크드로 6천 줄 정도로 되어 있다.

**Lua 특징**
1. OOP 특성을 살리는데 매우 적합한 함수 구조를 제공 합니다.
2. 연관배열을 제공 하여, 강력한 데이터 관리를 할 수 있도록 해 줍니다.
3. 프로그래머에게 명시적으로 메모리 할당을 관리 할 수 있게 할 떄, 발생 가능한 메모리 문제를 Garbage Collection(GC)을 통해 줄일 수 있습니다.
4. fallback mechanism을 지원 합니다.
5. 다양한 형태를 구현할 수 있도록 재귀적 특성을 지원합니다.

**Lua 설치**
1. 다운로드 :: http://luabinaries.sourceforge.net/download.html

**Lua 실행 옵션**
* -e 스트링 :: 스트링에 해당 하는 문장을 실행 합니다.
* -l libname :: libname에 해당 하는 라이브러리를 실행 합니다.
* -v :: 인터프리터릐 버전 정보를 표시해 줍니다.
* -i :: script를 수행한 후에 interractive 모드로 들어 갑니다.

**Lua 실행**

    ** prompt에서 실행 
    prompt>lua53
    Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio
    >print ("hello lua!!!");
    hello lua!!!
    >Ctrl+c
    prompt>

    ** 파일을 실행
    prompt>lua53 C:\ESP8266\Study\hello.lua
    hello lua!!!
    prompt>

**Lua 학습 순서**
* [변수](variable.md)
* [연산자](operation.md)
* [함수](function.md)
* [테이블](table.md)
* [클래스](class.md)