days = { 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' }
print( days[4] )
a = {}
k = "x"
print( a["x"] )
print( a[k] )
--a[k] = 10
--print( a["x"] )
--print( a[k] )
a[k] = 12
print( a[k] )
t = { 11, 22, 33, 44, "hi", you='one', me='two' }

print("Only numeric values")
for k,v in ipairs(t) do 
	print(k,v)
end

print("All the values")
for k,v in pairs(t)do
	print(k,v)
end

function table_count(t)
 local cnt = 0
 for v in pairs(t) do
   cnt = cnt + 1
  end
  return cnt
end

print("All the values using foreach")
table.foreach(t,print)

print("Print only some specific values")
	print( t[2] )
	print( t.you )

print('The Size of the table for numeric:',"\n", # t )
print('The Size of the table is :',"\n", table_count(t) )

print("Print same values in differnt ways")
t = { apple="5" }
a = "apple"
b = "apple"
print(t.apple, t[a], t[b])


print( "TABLE CONCAT:" )
    print( table.concat({ 1, 2, 3, "hello", 4, 'hi' }))
	print( table.concat({ 1, 2, 3, "hello", 4, 'hi' }, ",")) 

print( "Table Sorting:" )
	v = { 2,3,9,4 } 
function sort_table(v)
	table.sort(v)
	
end
sort_table(v)

local concatenated = table.concat(v, ",")
print('concatenated: ', concatenated)

--print( table.concat(v,"," ))
assert('2,3,4,9' == concatenated)


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
assert( true == r)



local ta = {1,2}
local tb = {1,2}
local r = table_equal(ta,tb)
assert( true == r)

local ta = {1,2}
local tb = {1}
local r = table_equal(ta,tb)
assert( false == r)

--print('r: ', r) -- true


--print( "table sorting:", sort_table(v))

print("Table Insert:" )
	c = { 1,2,3,5,6 }
    --print( table.concat(c) )
	table.insert(c,4,4)
    print( table.concat(c, ","))
	assert(c)

print("Printing the value in different way:")    
	a = {p=print}
	a.p(12)	

print("Remove command:")
d = { 1, 2, 3 }
table.remove(d,1)
print( table.concat(d))

local g = {1,2,3,4}
local pushed = Table.push(g,5)
assert({1,2,3,4,5} ==  g)
