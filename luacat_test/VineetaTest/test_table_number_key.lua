-- test_table_number_key.lua

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'


function test_table_number_key_with_count()
  local expected = {
    ['1'] = {0, "ok"},
    ['2'] = {0, "say"},
  }

  local args = {"ok", "say"}
  local t = {}
  for k,v in pairs(args) do
 
	cnt = 0  
 	cnt = cnt + 1
	t[k]  = v  
  end
end
  assert_equal(expected, t)


function test_table_number_key()
  local expected = {
    ['1'] = {0, "ok"},
    ['2'] = {0, "say"},
  }
  local t = {}

  t['1'] = {0, "ok"}
  t['2'] = {0, "say"}

  assert_equal(expected, t)

end

if is_main() then 
  UnitTest.run()
end
