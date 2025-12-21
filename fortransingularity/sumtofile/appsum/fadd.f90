program fortrandemo
   implicit none
   integer, parameter :: n=5
   integer i, c1, c2, c3, c4
   integer sum
   sum = 0
   open(17,file='../appdata/matrix.csv',status='old')
   read(17,'()') !skip header
   do i=1,n
      read(17,*) c1, c2, c3, c4
      sum = sum +  c1 + c2 + c3 + c4
   end do 
   close(17)
   open(18,file='../appdata/sum.csv')
   write(18,'(I4)') sum
   close(18)
end program fortrandemo
