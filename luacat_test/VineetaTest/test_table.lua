-- test_table.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_merge_table()
  local t_one = { say = "F"}
  local t_two = { names = "N"} 
  local t = {}

  for k,v in pairs(t_one) do
    t[k] = v
  end
  for k,v in pairs(t_two) do
    t[k] = v
  end

  assert_equal({say="F",names="N"}, t)
end


function test_multi_keys_in_table()

  local t = {}
  t.say = 'F'

  local some = 'names'
  t[some] = "N"
  --t
  --some
  --"N"

  assert_equal({say="F",names="N"}, t)

end

function test_key_in_table()
  local t = {}
  t.say = 'F'
  assert_equal({say="F"}, t)
end

function test_empty_table()
  local t = {}
  assert_equal({}, t)
end


if is_main() then 
  UnitTest.run()
end
