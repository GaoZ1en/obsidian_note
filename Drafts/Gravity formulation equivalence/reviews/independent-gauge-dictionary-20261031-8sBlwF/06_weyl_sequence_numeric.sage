import mpmath as mp
import json
mp.mp.dps=50
rows=[]
for L0 in [4,8,16,32,64]:
    L=mp.mpf(int(L0)); R=L
    chi=lambda s:mp.sin(mp.pi*s)**2
    dchi=lambda s:mp.pi*mp.sin(2*mp.pi*s)
    ddchi=lambda s:2*mp.pi**2*mp.cos(2*mp.pi*s)
    w=lambda s:mp.coth(R+L*s)
    c=lambda s:2/mp.sinh(2*(R+L*s))
    n=mp.quad(lambda s:w(s)*chi(s)**2,[0,1])
    cn=L**(-2)*mp.quad(lambda s:w(s)*dchi(s)**2,[0,1])
    dn=L**(-4)*mp.quad(lambda s:w(s)*(-ddchi(s)+L*c(s)*dchi(s))**2,[0,1])
    mixed=L**(-2)*mp.quad(lambda s:w(s)*chi(s)*(-ddchi(s)+L*c(s)*dchi(s)),[0,1])
    q=mp.sqrt((dn+4*cn)/n)
    o1=mp.sqrt((dn+8*mixed+16*n)/n)
    rows.append({'R=L':int(L0),'norm_Q_b_over_norm_b':mp.nstr(q,16),'norm_O1_b_over_norm_b':mp.nstr(o1,16),'L_times_Q_ratio':mp.nstr(L*q,16)})
print(json.dumps({'profile':'sin(pi*s)^2 on [0,1], zero outside; H2 but not C_infinity','rows':rows,'predicted_limit_L_times_Q_ratio':mp.nstr(4*mp.pi/mp.sqrt(3),16)},indent=2))