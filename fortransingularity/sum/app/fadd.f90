program fortrandemo
implicit none

   integer :: a, b
   character(len=32) arg
   call getarg(1,arg)
   read(arg,'(i2)')a 
   call getarg(2,arg)
   read(arg,'(i2)')b
   print *, a+b
   
end program fortrandemo
