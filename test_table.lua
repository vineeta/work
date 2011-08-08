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
	return v
end

print( table.concat(v,"," ))
--print( "table sorting:", sort_table(v))

print("Table Insert:" )
	c = { 1,2,3,5,6 }
    --print( table.concat(c) )
	table.insert(c,4,4)
    print( table.concat(c, ","))
