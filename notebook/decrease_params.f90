! Subroutine for Kalman smoothing of linear gaussian state space model

subroutine decrease_params(ymiss, timevar, vt,ft,zt, ht,tt, rtv, qt, p, n, m, r, d,j, at, pt, &
pinf,&
ldlsignal, zorigtv,aug,state,dist,signal)

    implicit none

    integer, intent(in) :: d, j, p, r, m, n
    integer, intent(in) :: aug,state,dist,signal,ldlsignal,zorigtv
    integer :: t, i, k1, k2
    integer, intent(in), dimension(:,:) :: ymiss
    !f2py depend(p) dimension(n,p)
    integer, intent(in), dimension(5) :: timevar
    double precision, intent(in), dimension(:,:,:) :: zt
    !f2py depend(timevar) dimension(p,m,(n-1)*timevar(1)+1)
    double precision, intent(in), dimension(:,:,:) :: ht
    !f2py depend(timevar) dimension(p,p,(n-1)*timevar(2)+1)
    double precision, intent(in), dimension(:,:,:) :: tt
    !f2py depend(timevar) dimension(m,m,(n-1)*timevar(3)+1)
    double precision, intent(in), dimension(:,:,:) :: rtv
    !f2py depend(timevar) dimension(m,r,(n-1)*timevar(4)+1)
    double precision, intent(in), dimension(:,:,:) :: qt
    !f2py depend(timevar) dimension(r,r,(n-1)*timevar(5)+1)
    double precision, intent(in), dimension(m,n+1) :: at
    double precision, intent(in), dimension(m,m,n+1) :: pt
    double precision, intent(in), dimension(:,:) ::  vt,ft
    !f2py depend(p) dimension(p,n)
    !double precision, intent(in), dimension(m,p,n) :: kt
    double precision, intent(in), dimension(m,m,d+1) ::  pinf
    !double precision, intent(in),dimension(m,p,d) ::  kinf
    !double precision, intent(in), dimension(p,d) ::  finf
    !double precision, intent(inout), dimension(m,m,n+1) :: nt !n_1 = n_0, ..., n_201 = n_200
    !double precision, intent(inout), dimension(m,n+1) :: rt !same as n, r_1 = r_0 etc.
    !double precision, intent(inout), dimension(m,d+1) :: rt0,rt1
    !double precision, intent(inout), dimension(m,m,d+1) :: nt0,nt1,nt2
    !double precision, intent(inout), dimension(m*state,n*state) :: ahat
    !double precision, intent(inout), dimension(m,m,n) :: vvt
    !double precision, intent(inout), dimension(p*dist*aug,n*dist*aug) :: epshat
    !double precision, intent(inout), dimension(p*dist*aug,n*dist*aug) :: epshatvar
    !double precision, intent(inout), dimension(r*dist,n*dist) :: etahat
    !double precision, intent(inout), dimension(r*dist,r*dist,n*dist) :: etahatvar
    !double precision, intent(inout), dimension(p*signal,n*signal) :: thetahat
    !double precision, intent(inout), dimension(p*signal,p*signal,n*signal) :: thetahatvar
    !double precision, intent(in), dimension(ldlsignal*p,ldlsignal*m,ldlsignal*((n-1)*zorigtv+1)) :: zorig

end subroutine decrease_params
