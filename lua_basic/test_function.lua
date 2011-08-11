function func(a,b,p)
print( 'a:', a ) 
print( 'b:', b )

	if p == "+"then
        r = a+b
	elseif p == "-"then
		r = a-b
	else
		error("invalid statement")
	end
    print('p:', p)
	print('r:', r)
   -- return r
end
		
		func(1, 2, '+')
        assert( r == 3 )
 print("\n")
		 func(3, 4, '-')
		assert( r == -1 )

function max(a)
	local mi = 1
	local m = a[mi]
		for i,v in pairs(a) do
			if v > m then
				mi = i
				m = v 
			end
		end
	return m, mi
end

print("The Max of the num is:")
print(max({1,2,3,7,22,4})) 

