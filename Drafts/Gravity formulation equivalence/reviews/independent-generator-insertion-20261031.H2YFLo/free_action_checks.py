from sage.all import *
from sage.version import version as sage_version
from pathlib import Path
import json
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo')
labels=['kap']+[f'w{i}{a}' for i in range(3) for a in range(3)]+[f'f{i}{a}' for i in range(3) for a in range(3)]+[f'dw{j}{i}{a}' for j in range(3) for i in range(3) for a in range(3)]+[f'df{j}{i}{a}' for j in range(3) for i in range(3) for a in range(3)]
R=PolynomialRing(QQ,names=labels); v=R.gens_dict(); kap=v['kap']
w={(i,a):v[f'w{i}{a}'] for i in range(3) for a in range(3)}
f={(i,a):v[f'f{i}{a}'] for i in range(3) for a in range(3)}
dw={(j,i,a):v[f'dw{j}{i}{a}'] for j in range(3) for i in range(3) for a in range(3)}
df={(j,i,a):v[f'df{j}{i}{a}'] for j in range(3) for i in range(3) for a in range(3)}
def eps(i,j,k): return 0 if len({i,j,k})<3 else Permutation([i+1,j+1,k+1]).signature()
def T(y,i,a): return (sum(y[j,j] for j in range(3)) if i==a else R(0))-y[a,i]
def curl(dy,i,a): return sum(eps(i,j,k)*dy[j,k,a] for j in range(3) for k in range(3))
L=kap/2*sum(w[i,a]*T(w,i,a)-f[i,a]*T(f,i,a)+w[i,a]*curl(df,i,a)+f[i,a]*curl(dw,i,a) for i in range(3) for a in range(3))
def grad_linear(expr,j):
 return sum(expr.derivative(w[i,a])*dw[j,i,a]+expr.derivative(f[i,a])*df[j,i,a] for i in range(3) for a in range(3))
EL={(i,a):L.derivative(f[i,a])-sum(grad_linear(L.derivative(df[j,i,a]),j) for j in range(3)) for i in range(3) for a in range(3)}
residuals={f'EL_f_{i}_{a}':EL[i,a]-kap*(curl(dw,i,a)-T(f,i,a)) for i in range(3) for a in range(3)}
residuals['trace_T']=sum(T(f,i,i) for i in range(3))-2*sum(f[i,i] for i in range(3))
div_ew=sum(eps(j,a,k)*dw[j,k,a] for j in range(3) for a in range(3) for k in range(3))
residuals['trace_curl_is_negative_divergence']=sum(curl(dw,i,i) for i in range(3))+div_ew
residuals['contracted_EOM_density']=sum(EL[i,i] for i in range(3))+kap*div_ew+2*kap*sum(f[i,i] for i in range(3))
report={'sage_version':sage_version,'conventions':'normal orthonormal frame, epsilon123=1, full first jets, coefficient-first (f,E)=1 implies (S2,E)=+EL_f', 'residuals':{k:str(x) for k,x in residuals.items()},'checks':{k:bool(x==0) for k,x in residuals.items()},'failures':[k for k,x in residuals.items() if x!=0]}
(OUT/'free_action_actual_output.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
