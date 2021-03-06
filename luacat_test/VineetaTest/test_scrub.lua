-- test_scrub.lua

package.path = package.path .. ";../luacat/?.lua"

require 'UnitTest' 



function scrub(args)


  for k,v in pairs(args) do
    print('args k ', k)
  end

 return {}
end


function scrub_arguments(args)
  --
	local t = {}
   for k,v in pairs(args) do
        t[k] = "[Function]"
    end
   return t
 
end

function test_scrub_two()

  local a = {
  animal = function() end,
  fruit = function() end,
  pet = function() end,
  }

  local scrubbed_arguments = scrub_arguments(a)
  local expected_arguments = {
   animal = "[Function]",
   fruit = "[Function]",
   pet = "[Function]",
  }
  	
  assert_equal(expected_arguments, scrubbed_arguments)
end


function test_scrub()

  local a = {
    say = function() end,
    names = function() end,
  }

  local scrubbed_arguments = scrub_arguments(a)
  local expected_arguments = {
    say = "[Function]",
    names = "[Function]",
  }
  assert_equal(expected_arguments, scrubbed_arguments)

end


if is_main() then 
  UnitTest.run()
end
