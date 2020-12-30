program Main 

  implicit none

  integer :: u,i,j
  real(8), dimension (4,3) :: A
  real(8), dimension (3,3) :: B
  real(8), dimension (4,3) :: AB

  u=50

  open(u,file='M.dat',status='old')
   do i=1,4
     read(u,*) (A(i,j),j=1,3)
   enddo
  close(u)

 open(u,file='N.dat',status='old')
       do i=1,3
     read(u,*) (B(i,j),j=1,3)
   enddo

  close(u)
  
! do i = 1,4
 !   do j = 1,3
  !  AB(i,j) = A(i,1)*B(1,j)+A(i,2)*B(2,j)+A(i,3)*B(3,j)
!end do
!end do
!AB matmul(A,B)
call Matrix_multip(A,B,AB)
open(unit=u,file='MN.dat',status='replace')
do i = 1,4
write(u,*) (AB(i,j),j=1,3)
end do
close(u)

end program Main
