! Test file for symbol detection
program test_program
  !! This comment should NOT be a symbol
  integer :: x

  call my_subroutine()

end program test_program

! Module with procedures
module test_module
  !! Module documentation - NOT a symbol
  implicit none

contains

  subroutine my_subroutine()
    !! Subroutine docs - NOT a symbol
    integer :: local_var
    print *, "Hello"
  end subroutine my_subroutine

  integer function my_function(n)
    !! Function docs - NOT a symbol
    integer, intent(in) :: n
    my_function = n * 2
  end function my_function

end module test_module

! Derived type definition
module types_module
  type :: my_type
    !! Type member docs - NOT a symbol
    integer :: value
    real :: data
  end type my_type
end module types_module
