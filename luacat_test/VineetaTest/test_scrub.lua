-- test_scrub.lua

package.path = package.path .. ";../luacat/?.lua"

require 'UnitTest' 



function scrub(args)


  for k,v in pairs(args) do
    print('args k ', k)
  end

  -- TODO: implement
--ocal scrubbed = {'say', 'names'}
--      scrubbed[0] = 'say'
-- scrubbed[1] = 'name'
--f callbacks.['0'] then
--scrubbed[0]
--lse
--scrubbed[1]
--end
 return {}
end


function scrub_arguments(args)
  --
	local t = {}
 	--for k,v in pairs(args) do
--		t[k] = "[Function]"
 --   end
    for k,v in pairs(args) do
        t[k] = "[Function]"
    end
      	--r = table.concat(t,"=")
 return t
 -- {names = "[Function]", say = "[Function]"}
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


  --local scrubbed = scrub(args)
--  local expected = {
--    callbacks = {
--      ['0'] = {0, "say"},
--    ['1'] = {0, "names"},
--  },
--  arguments = {
--    say = "[Function]",
--    names = "[Function]",
--  }
--}
--assert_equal(expected, scrubbed)

end


if is_main() then 
  UnitTest.run()
end
