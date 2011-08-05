local cnt = 0
 i = 5
    repeat
         print ('i :', i)
         i = i + 0.5
         cnt = cnt + 1 
--assert( 10 == cnt)
    until i > 11


  print('cnt :', cnt)
  assert( 13 == cnt )  
