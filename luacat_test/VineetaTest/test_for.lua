-- test_for.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_for()


local cnt = 0 

for i = 0,10,2 do
  --print('i',i)
  --print('i', i*2 )
  cnt = cnt + 1 
end

assert_equal(6,cnt )



--print("\n")
for j = 0,5 do

    if 0 == j then
   	  assert_equal(0, j*2)
    elseif 1 == j then
   	  assert_equal(2, j*2)
    end

--print('j=',j, j*2 )
end


  --assert_equal(3, r)


end


if is_main() then 
  UnitTest.run()
end
