--local i = 1
local cnt = 0
i = 1
while ( i <= 5 )
do
print ('i:', i)
i = i + 1
cnt = cnt + 1
--assert( 'cnt', cnt ) 
end

print( 'cnt:', cnt )

assert( 5 == cnt )
