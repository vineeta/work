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

     names = {"Peter", "Paul", "Mary"}
     grades = {Mary = 10, Paul = 7, Peter = 8}
     function sort_grade (name, grades)
     table.sort(names, function (n1, n2)
      r  = grades[n1] > grades[n2]
      return r       
     end)
end
     sort_grade({"Peter", "Paul", "Mary"}, {Mary = 10, Paul = 7, Peter = 8})
     assert_equal(true,r)


function make_counter()
  local count = 0
  return function()
    count = count + 1
    return count
  end
end
c1 = make_counter()
c2 = make_counter()
assert_equal(c1(),c2())

    Lib = {}
    function Lib.foo (x,y)
      local r = x + y
      return r
    end
    Lib.foo (2,4)
    print(r)
    function Lib.goo (x,y)
	  local r = x - y
      return r
    end
    Lib.goo (2,4)
	print(r)
end

if is_main() then
  UnitTest.run()
end
