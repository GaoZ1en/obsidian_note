from sage.all import *
from pathlib import Path
import os, tempfile, json, sage.version
A=PolynomialRing(QQ,names=('m','r')); m,r=A.gens(); F=A.fraction_field()
B=PolynomialRing(F,'n'); n=B.gen(); K=B.fraction_field()
w=lambda x:x*(x*x-1)
f=K((n+2*m)**2*w(n)/w(n+m))
poly,remnum=f.numerator().quo_rem(f.denominator())
rem=K(f-poly)
tail=K(2*m*n+(n+m)**2*w(n-m)/w(n)-f)
d=m-r
mixed=K((n+r)*(n-r+2*m)*w(n-r)/w(n+d) - (n+2*m)*(n+m+r)*w(n)/w(n+m) + (m+r)*(n+2*d)*w(n)/w(n+d))
def infinity_data(expr):
    if expr==0:return {'zero':True}
    num,den=expr.numerator(),expr.denominator()
    return {'degree_difference':int(num.degree()-den.degree()),'leading_ratio':str(num.leading_coefficient()/den.leading_coefficient())}
C=PolynomialRing(QQ,names=('a','N')); a,N=C.gens()
last_polynomial_sum=a*N*N-a*(a-1)*N+a*(a-1)*(2*a-1)/6 + a*(a*N-a*(a-1)/2)-2*a**3
cutoff_constant=a*N*(N+1)-2*a-last_polynomial_sum
answer={'sage_version':sage.version.version,'f_polynomial_part':str(poly),'f_remainder':str(rem),'diagonal_tail_infinity':infinity_data(tail),'mixed_tail_case_m_ge_r_infinity':infinity_data(mixed),'polynomial_cutoff_constant':str(cutoff_constant),'constant_minus_expected':str(cutoff_constant-QQ(13)/6*a*(a*a-1))}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'; store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='sage-witt-fresh-infinity-',dir=store))
save({'f':f,'tail':tail,'mixed':mixed,'answer':answer},str(out/'result.sobj'))
(out/'output.json').write_text(json.dumps(answer,indent=2)+'\n',encoding='utf-8')
