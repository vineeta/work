a = 1
b = 2
p = "-"
if p == "+"then
   r = a+b
elseif p == "-"then
   r = a-b
else
--  error("invalid statement")
end

assert( -1 == r)
print('r: ', r) 
