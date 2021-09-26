subroutine sample_func(timevar,zt, p,n,m) 
  implicit none

  integer, intent(in) ::  p, m, n
  integer, intent(in), dimension(5) :: timevar
  double precision, intent(in), dimension(:,:,:) :: zt
  !f2py depend(timevar) dimension(p,m,(n-1)*timevar(1)+1)
  external dgemm, dsymm, dgemv, dsymv, dger
end subroutine sample_func
