-- test_if.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_if()


a = 1 
b = 2 
p = "+" 
if p == "+"then
   r = a+b 
elseif p == "-"then
   r = a-b 
else
 error("invalid statement")
end

--assert( 3 == r)
  assert_equal(3, r)


end


if is_main() then 
  UnitTest.run()
end
