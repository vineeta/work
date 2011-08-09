-- test_while.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_while()

--local i = 1
local cnt = 0 
i = 1 
while ( i <= 5 ) 
do
	--print ('i:', i)
	i = i + 1 
	cnt = cnt + 1 
	 
end

assert_equal(6,i)
assert_equal(5, cnt)
end



if is_main() then
  UnitTest.run()
end
