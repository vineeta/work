local cnt = 0

for i = 0,10,2 do
  print('i',i)
  --print('i', i*2 )
  cnt = cnt + 1
end

assert( 6 == cnt )



print("\n")
for j = 0,5 do
print('j=',j, j*2 )
end
