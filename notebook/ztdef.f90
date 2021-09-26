subroutine ztdef(timevar, zt, p, n, m, dist, aug)

    implicit none

    integer, intent(in) :: p, m, n, dist, aug
    integer, intent(in), dimension(5) :: timevar
    double precision, intent(in), dimension(:,:,:) :: zt
    !f2py depend(timevar) dimension(p,m,(n-1)*timevar(1)+1)

end subroutine ztdef
