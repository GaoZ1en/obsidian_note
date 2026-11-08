"""Exact two-parameter crossover certificate, with illustrative floating spectra."""
from sage.all import *
from pathlib import Path
import importlib.util,sys,json,hashlib
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
p=ROOT/'scripts/phi4_stable_pencils.py';sp=importlib.util.spec_from_file_location('stable',str(p));s=importlib.util.module_from_spec(sp);sp.loader.exec_module(s)
rep,H,Phi,M,G=s.make_block(2,2,characteristic=False)
R=PolynomialRing(QQ,'x');x=R.gen();K=NumberField(x*x+x-3,'dc',embedding=(AA(13).sqrt()-1)/2);dc=K.gen()
C=FractionField(PolynomialRing(K,['u','z']));u,z=C.gens();L=LaurentSeriesRing(C,'t',default_prec=8);t=L.gen();ds=L(dc)+u*t
A=matrix(L,3,[s.D(v).numerator()(ds)/s.D(v).denominator()(ds) for row in rep['A'] for v in row])
B=matrix(L,3,[s.D(v).numerator()(ds)/s.D(v).denominator()(ds) for row in rep['B'] for v in row])
avg=(A[0,0]+A[2,2])/2
X=(avg/t**2+z/t)*identity_matrix(L,3)-A/t**2-B
# Leibniz formula keeps a transparent common Laurent precision.
from itertools import permutations
pol=L.zero()
for perm in permutations(range(3)):
    inv=sum(perm[i]>perm[j] for i in range(3) for j in range(i+1,3))
    pol+=(-1)**inv*prod(X[i,perm[i]] for i in range(3))
den=(2*dc+1)*(2*dc+3);beta2=18/den**2;gap=2*(dc-1)/(2*dc+1)
target=gap*(z*z-beta2-u*u/(4*(2*dc+3)**2))
assert pol.valuation()==-4 and pol[-4]==target
# Float64 plots are illustrations; the preceding exact identity is the proof certificate.
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
D0=float(dc);beta=float(sqrt(AA(beta2)));data=[]
fig,ax=plt.subplots(figsize=(8.8,5.1),constrained_layout=True)
us=np.linspace(-2,2,81);limit=np.sqrt(beta*beta+us*us/(4*(2*D0+3)**2))
ax.plot(us,limit,'k--',lw=2,label='Proved crossover limit');ax.plot(us,-limit,'k--',lw=2)
for nn,color in [(100,'#d8a25b'),(400,'#397fa4'),(1600,'#218572')]:
    low=[];high=[]
    for uu in us:
        dd=D0+float(uu)/np.sqrt(nn)
        aa=np.array([[float(s.D(v)(dd)) for v in row] for row in rep['A']]);bb=np.array([[float(s.D(v)(dd)) for v in row] for row in rep['B']])
        av=(aa[0,0]+aa[2,2])/2
        scaled=(nn*aa+bb-nn*av*np.eye(3))/np.sqrt(nn)
        T=np.array([np.sqrt(nn),nn,nn]);scaled=scaled*T[None,:]/T[:,None]
        vals=np.linalg.eigvals(scaled);assert max(abs(vals.imag))<1e-9
        vals=sorted(vals.real);low.append(float(vals[-2]));high.append(float(vals[-1]))
        data.append({'N':nn,'u':float(uu),'Delta':dd,'lower_scaled':float(vals[-2]),'upper_scaled':float(vals[-1])})
    ax.plot(us,high,color=color,label='N='+str(nn));ax.plot(us,low,color=color)
ax.set_xlabel(r'$u=\sqrt{N}(\Delta-\Delta_c)$');ax.set_ylabel(r'$(\varepsilon/c_0-\binom{N}{2}-N\bar\sigma)/\sqrt{N}$')
ax.set_title(r'Real $\phi^4$: stable $(P,Q)=(2,2)$ crossover');ax.legend(fontsize=10);ax.grid(alpha=.18)
out=ROOT/'results'/'phi4_resonance_crossover.json';image=ROOT/'figures'/'phi4_resonance_crossover.png'
if out.exists() or image.exists():raise FileExistsError('Outputs already exist')
image.parent.mkdir(exist_ok=True);fig.savefig(image,dpi=190);plt.close(fig)
report={'status':'passed','exact_Laurent_valuation':int(pol.valuation()),'exact_leading_coefficient':str(pol[-4]),'target_equal':True,'Delta_c':str(dc),'beta_squared':str(beta2),'data_kind':'Float64 illustration, not interval certificates','data':data,'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
out.write_text(json.dumps(report,indent=2)+'\n');print(out);print(image)
