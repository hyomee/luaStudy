function test(input)
   print("function test input :: "..input)
end

function farg(...)
    print("가변인수"..arg.n)
    for i = 1, arg.n do
         print("가변인수"..i)
    end 
end
