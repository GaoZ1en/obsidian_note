"""Fresh Sage reconstruction of CL.L nonchiral rational identities and Gamma evaluation.
Uses explicit Racah finite sums, not any delivered matrix/determinant implementation.
"""
from sage.all import *
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
R=PolynomialRing(QQ,'t'); t=R.gen(); F=R.fraction_field()
C=(t+2)*(t+3)
def rf(x,n): return prod(x+j for j in range(n))
def omega(n,z):
    return QQ((2*n+3)*factorial(n+2)/factorial(n))*rf(z-n+1,n)*rf(z+5,n)/rf(z+2-n,2+2*n)
def hyp(k,r,z):
    return sum(rf(-k,j)*rf(k+3,j)*rf(-r,j)*rf(r+3,j)/(rf(2,j)*rf(z+5,j)*rf(-z,j)*factorial(j)) for j in range(min(k,r)+1))
labels=[(0,0),(2,0),(1,1),(3,1)]
a=[QQ(24)/5,QQ(8)/35,QQ(312)/35,QQ(8)/21]
coefs={1:[22777385983672320000,-15868616384839680000,2354932309885747200,-99602839321159680,-804814733494656,448355770462944,-55706313971344,2531703580048,-36897892656,-965349490,49512859],-1:[22777385983672320000,5323530281287680000,-1819047222197452800,231488302666106880,-13129076943639936,59239627206624,39871122618736,-2109151550192,59626249104,-2005422050,49512859]}
checks=[]
def check(label,val):
    if val is not True: raise AssertionError((label,val))
    checks.append({'label':label,'passed':True})
factors={}
for eta in (1,-1):
    mat=matrix(F,4,4,lambda i,j:(1 if i==j else 0)+2*eta*(-1)*hyp(labels[i][0],labels[j][0],t)*hyp(labels[i][1],labels[j][1],ZZ(1))*a[j]*omega(labels[j][0],t)*omega(labels[j][1],ZZ(1))/(20+a[j]))
    f=mat.det()
    fprinted=F(sum(coefs[eta][j]*C**j for j in range(11))/(49512859*C**4*(C-12)*(C-6)**2*(C-2)**3))
    check('CL.L8 all-t nonchiral determinant eta=%s'%eta,f==fprinted)
    factors[(1,eta)]=f
for u in (0,1):
    for degree in range(0,3):
        idx=[i for i,(k,l) in enumerate(labels) if k<=degree and l<=u]
        mat=matrix(QQ,len(idx),len(idx),lambda ii,jj:(1 if ii==jj else 0)+2*(-1)**(degree+u)*hyp(labels[idx[ii]][0],labels[idx[jj]][0],ZZ(degree))*hyp(labels[idx[ii]][1],labels[idx[jj]][1],ZZ(u))*a[idx[jj]]*omega(labels[idx[jj]][0],ZZ(degree))*omega(labels[idx[jj]][1],ZZ(u))/(20+a[idx[jj]]))
        if u==1:
            check('CL.L8 finite nonchiral prefix t=%s'%degree, mat.det()==[QQ(25)/31,QQ(8875)/7843,QQ(1413125)/1388211][degree])

# Independent high-precision root-multiset Gamma evaluation (not an interval certificate).
PC=PolynomialRing(QQ,'c'); c=PC.gen()
p0={1:1829*c**4-6912*c**3-248132*c**2+3022560*c+7257600,-1:1829*c**4-22352*c**3+292028*c**2-3828960*c+7257600}
p1={eta:sum(coefs[eta][j]*c**j for j in range(11)) for eta in (1,-1)}
d0=1829*c*c*(c-2)*(c-6)
d1=49512859*c**4*(c-12)*(c-6)**2*(c-2)**3

def gamma_tail(num,den,m,precision):
    CF=ComplexField(precision)
    nr=num.roots(CF,multiplicities=True)
    dr=den.roots(QQ,multiplicities=True)
    roots_num=[]; roots_den=[]
    max_res=CF(0).real()
    for rr,mult in nr:
        scale=sum(abs(CF(cc))*max(CF(1).real(),abs(rr)**j) for j,cc in enumerate(num.list()))
        max_res=max(max_res,abs(num(rr))/scale)
        for root in [(-5+(1+4*rr).sqrt())/2,(-5-(1+4*rr).sqrt())/2]: roots_num.extend([root]*mult)
    for rr,mult in dr:
        for root in [(-5+(1+4*CF(rr)).sqrt())/2,(-5-(1+4*CF(rr)).sqrt())/2]: roots_den.extend([root]*mult)
    result=prod(((m-r)/2).gamma() for r in roots_den)/prod(((m-r)/2).gamma() for r in roots_num)
    return result,max_res
outputs=[]
for prec in [250,350]:
    CF=ComplexField(prec)
    value=CF((20+3*a[0])*20/(20+a[0])**2)*CF(QQ(25)/31*QQ(8875)/7843*QQ(1413125)/1388211)
    pair=QQ(1)
    for i in range(4):
        if 2*labels[i][1]<=1: pair*=(20+2*a[i])/(20+a[i])
        for j in range(i+1,4):
            if labels[i][1]+labels[j][1]<=1:
                pair*=20*(20+a[i]+a[j])/((20+a[i])*(20+a[j]))
    value*=CF(pair)
    residual=CF(0).real()
    for num,den,m in [(p0[1],d0,2),(p0[-1],d0,3),(p1[1],d1,4),(p1[-1],d1,3)]:
        tail,res=gamma_tail(num,den,m,prec)
        residual=max(residual,res)
        value*=tail
    outputs.append({'precision_bits':prec,'value':str(value),'log':str(value.log()),'max_normalized_root_residual':str(residual)})
    printed=CF('-0.03585462866989608117295310521438741375902240815406055763950798')
    check('CL.L9 displayed log agrees to 55 decimals at bits=%s'%prec, bool(abs(value.log()-printed)<CF(10)**(-55)))
path=OUT/'results/audit2_cluster_gamma.json'
assert not path.exists(),path
path.write_text(json.dumps({'checks':checks,'numerical_outputs':outputs,'scope':'Exact rational all-t identities plus independent two-precision numerical Gamma evaluation. Root residuals and agreement are not interval enclosures.'},indent=2))
print(json.dumps({'checks':checks,'numerical_outputs':outputs},indent=2))
print('Result:',path)
