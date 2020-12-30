subroutine Matrix_multip(A,B,AB)

implicit none

integer:: i, j
real(8), dimension(4,3):: A
real(8), dimension(3,3):: B
real(8), dimension(4,3):: AB

do i = 1,4
   do j = 1,3
    AB(i,j) = A(i,1)*B(1,j)+A(i,2)*B(2,j)+A(i,3)*B(3,j)
   end do
end do

end
