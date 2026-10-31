from sage.all import *
import sage.version
from pathlib import Path
import os, tempfile, json
R = PolynomialRing(QQ, names=('m','n'))
m,n=R.gens(); K=R.fraction_field()
w=lambda x: x*(x*x-1)
f=lambda x: K((x+2*m)**2*w(x)/w(x+m))
tail=K(2*m*n + (n+m)**2*w(n-m)/w(n) - f(n))
poly=n*n+m*n-2*m*m
rem=f(n)-poly
answer={
 'sage_version':sage.version.version,
 'positive_torsion_numerator':str(((2*m+n)*w(n)-(m+2*n)*w(m)-(n-m)*w(m+n)).factor()),
 'f_exact_remainder':str(rem.factor()),
 'curvature_tail_factored':str(tail.factor()),
 'n2_tail_limit':str(tail.numerator().leading_coefficient() if False else 'computed below by univariate infinity'),
}
S=PolynomialRing(QQ,'t'); t=S.gen(); F=S.fraction_field()
answer['finite_m_tails']={}
for mm in range(1,9):
    expr=F(tail(m=mm,n=t))
    num=expr.numerator(); den=expr.denominator()
    lim=QQ(num.leading_coefficient())/QQ(den.leading_coefficient()) if num.degree()+2==den.degree() else (0 if num==0 else 'unexpected degree')
    answer['finite_m_tails'][str(mm)]={'factor':str(expr.factor()), 'n2_limit':str(lim)}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'; store.mkdir(parents=True, exist_ok=True, mode=0o700)
out=Path(tempfile.mkdtemp(prefix='sage-witt-fresh-algebra-',dir=store))
save({'ring':R,'f':f(n),'tail':tail,'remainder':rem,'answer':answer},str(out/'result.sobj'))
(out/'output.json').write_text(json.dumps(answer,indent=2)+'\n',encoding='utf-8')
print(str(out/'output.json')); print(str(out/'result.sobj'))
