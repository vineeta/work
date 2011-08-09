-- test_function.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_function()

function func(a,b,p)
--print( 'a:', a ) 
--print( 'b:', b ) 

    if p == "+"then
        r = a+b 
    elseif p == "-"then
        r = a-b 
    else
        error("invalid statement")
    end 
  -- print('p:', p)
  -- print('r:', r)
    return r
end
     
        func(1, 2, '+')
        assert_equal(3, r) 
 --print("\n")
         func(3, 4, '-')
        assert_equal(-1,r)
 
end



if is_main() then
  UnitTest.run()
end
