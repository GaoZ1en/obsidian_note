"""Supplement: exact connection correction, mixed-tail identity, and CPS signs.
Run with Sage --nodotsage; every execution uses a fresh private export directory.
The analytic trace-norm inequalities are proved in the report, not by this CAS.
"""
from sage.all import QQ, QuadraticField, PolynomialRing, save
import sage.version
from pathlib import Path
import os, tempfile, json, hashlib
R = PolynomialRing(QQ, names=('m','r','j'))
m,r,j = R.gens(); K = R.fraction_field()
w = lambda x: x*(x*x-1)
d = lambda a,x: K(-a*(a*a-1)*(2*x+a)/w(x+a))
raising = K(-(j+2*m)*w(j)/w(j+m))
mixed = K((j+r)*(j-r+2*m)*w(j-r)/w(j+m-r)
          -(j+2*m)*(j+m+r)*w(j)/w(j+m)
          +(m+r)*(j+2*(m-r))*w(j)/w(j+m-r))
correction = (j+m+r)*d(m,j)-(j+r)*d(m,j-r)-(m+r)*d(m-r,j)
residuals = {
    'exact_raising_correction': raising-(m-j)-d(m,j),
    'mixed_high_column_correction_m_ge_r': mixed-correction,
}
IField = QuadraticField(-1,'ii'); ii = IField.gen()
S = PolynomialRing(IField,names=('a','b','C')); a,b,C=S.gens(); L=S.fraction_field()
# Fourier average of the CPS integrand; a+b=0 is imposed after differentiation.
integrand = ii*(a*b*b-b*a*a)-ii*(a-b)
omega = L(-C/24*integrand(a=a,b=-a,C=C))
trace = L(QQ(13)/6*a*(a*a-1))
residuals['CPS_fourier_form'] = omega-(-ii*C/12*a*(a*a-1))
residuals['trace_to_CPS'] = trace-26*ii/C*omega
residuals['prequantum_plus_dual_half'] = -ii*omega-trace/2-(-ii*(-ii*(C+13)/12*a*(a*a-1)))
answer={'sage_version':sage.version.version,
        'scope':'Exact rational identities; no finite grid, no analytic-bound inference.',
        'checks':{name:{'passed':value==0,'residual':str(value)} for name,value in residuals.items()},
        'correction_derivative':str(d(m,j).derivative(j)),
        'all_passed':all(value==0 for value in residuals.values())}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='vacuum-trace-norm-bridge-',dir=store))
save({'residuals':residuals,'mixed':mixed,'correction':correction,'omega':omega,'answer':answer},str(out/'exact.sobj'))
(out/'results.json').write_text(json.dumps(answer,indent=2)+'\n',encoding='utf-8')
source=Path(__file__).read_bytes()
(out/'executed.py').write_bytes(source)
(out/'source.sha256').write_text(hashlib.sha256(source).hexdigest()+'\n',encoding='utf-8')
print(str(out/'results.json')); print(str(out/'exact.sobj'))
if not answer['all_passed']: raise RuntimeError('A bridge identity failed')
