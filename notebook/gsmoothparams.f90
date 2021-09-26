! Subroutine for Kalman smoothing of linear gaussian state space model

subroutine gsmoothparams(ymiss, timevar, zt, ht,tt, rtv, qt, p, n, m, r, d,j, at, pt, vt, ft, kt, &
rt, rt0, rt1, nt, nt0, nt1, nt2, pinf, kinf,finf ,ahat, vvt,epshat,epshatvar, &
etahat,etahatvar,thetahat,thetahatvar, ldlsignal,zorig, zorigtv,aug,state,dist,signal)

    implicit none

    integer, intent(in) :: d, j, p, r, m, n,aug,state,dist,signal,ldlsignal,zorigtv
    integer :: t, i, k1, k2
    integer, intent(in), dimension(n,p) :: ymiss
    integer, intent(in), dimension(5) :: timevar
    double precision, intent(in), dimension(p,m,(n-1)*timevar(1)+1) :: zt
    double precision, intent(in), dimension(p,p,(n-1)*timevar(2)+1) :: ht
    double precision, intent(in), dimension(m,m,(n-1)*timevar(3)+1) :: tt
    double precision, intent(in), dimension(m,r,(n-1)*timevar(4)+1) :: rtv
    double precision, intent(in), dimension(r,r,(n-1)*timevar(5)+1) :: qt
    double precision, intent(in), dimension(m,n+1) :: at
    double precision, intent(in), dimension(m,m,n+1) :: pt
    double precision, intent(in), dimension(p,n) ::  vt,ft
    double precision, intent(in), dimension(m,p,n) :: kt
    double precision, intent(in), dimension(m,m,d+1) ::  pinf
    double precision, intent(in),dimension(m,p,d) ::  kinf
    double precision, intent(in), dimension(p,d) ::  finf
    double precision, intent(inout), dimension(m,m,n+1) :: nt !n_1 = n_0, ..., n_201 = n_200
    double precision, intent(inout), dimension(m,n+1) :: rt !same as n, r_1 = r_0 etc.
    double precision, intent(inout), dimension(m,d+1) :: rt0,rt1
    double precision, intent(inout), dimension(m,m,d+1) :: nt0,nt1,nt2
    double precision, intent(inout), dimension(m*state,n*state) :: ahat
    double precision, intent(inout), dimension(m,m,n) :: vvt
    double precision, intent(inout), dimension(p*dist*aug,n*dist*aug) :: epshat
    double precision, intent(inout), dimension(p*dist*aug,n*dist*aug) :: epshatvar
    double precision, intent(inout), dimension(r*dist,n*dist) :: etahat
    double precision, intent(inout), dimension(r*dist,r*dist,n*dist) :: etahatvar
    double precision, intent(inout), dimension(p*signal,n*signal) :: thetahat
    double precision, intent(inout), dimension(p*signal,p*signal,n*signal) :: thetahatvar
    double precision, intent(in), dimension(ldlsignal*p,ldlsignal*m,ldlsignal*((n-1)*zorigtv+1)) :: zorig
    double precision, dimension(m,m) :: linf,l0
    double precision, dimension(m,m) :: nrec,nrec1,nrec2,im,mm,mm2
    double precision, dimension(m) :: rrec,rrec1,rhelp, help
    double precision, dimension(m,r) :: mr, mr2
    double precision, dimension(p,m) :: pm
    double precision, dimension(p,n) ::  ftinv
    double precision, dimension(p,d) ::  finfinv
    double precision, external :: ddot
    external dgemm, dsymm, dgemv, dsymv, dger

end subroutine gsmoothparams
