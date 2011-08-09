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
