package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'

function test_sort()

--print("Table Sorting:" )
    v = { 2,3,9,4 }
function sort_table(v)
    table.sort(v)

end
sort_table(v)

local concatenated = table.concat(v, ",")
--print('concatenated: ', concatenated)

--print( table.concat(v,"," ))
assert_equal('2,3,4,9',  concatenated)


function table_equal(a,b)
  local result = false


  ca = table.concat(a)
  cb = table.concat(b)
                        
result =    ca == cb


  ka = {}
  va = {}
  for k,v in pairs(a) do
    table.insert(ka, k)
    table.insert(va, v)
  end

  kb = {}
  vb = {}
  for k,v in pairs(b) do
    table.insert(kb, k)
    table.insert(vb, v)
  end

  result = table.concat(ka) == table.concat(kb) and
             table.concat(va) == table.concat(vb)


  return result
end
local ta = {name='vineeta'}
local tb = {name='vineeta'}
local r = table_equal(ta,tb)
assert_equal( true, r)



local ta = {1,2}
local tb = {1,2}
local r = table_equal(ta,tb)
assert_equal( true, r)

local ta = {1,2}
local tb = {1} 
local r = table_equal(ta,tb)
assert_equal( false, r)

local t = {2,6}
local m = {2,6}
local s = table_equal(t,m)
assert_equal( true, s)
assert_equal({2}, Table.slice(t,0,1))
assert_equal({2}, Table.slice(t,1,1))
assert_equal({2,6}, Table.slice(t,1,2))
assert_equal("2 6", Table.join(t," "))
assert_equal("2,6", Table.join(t,","))
assert_equal({6,2}, Table.reverse(t))

local p = Table.push(t,4)
assert_equal({2,6,4},t)


local r = Table.pop(t,4)
assert_equal({2,6},t)
end


if is_main() then
  UnitTest.run()
end

