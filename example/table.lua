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
