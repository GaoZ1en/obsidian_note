import sys
if sys.flags.optimize:
 raise RuntimeError("Verification requires Python assertions; optimization is forbidden")
from independent_stable import *
d=s.Symbol('d',positive=True);results=[]
for P in [6,8,9]:
 t=time.time();lab,A,B=matrices(d,P);print(P,'matrix',time.time()-t,flush=True)
 low=[i for i,l in enumerate(lab)if all(k in (2,3)for k in l)];high=[i for i in range(len(lab))if i not in low]
 sig=-2*d*d*(2*d*d+7*d+2)/((2*d-1)*(2*d+1)*(2*d+3));D=(A[high,high]-sig*s.Rational(P,2)*s.eye(len(high))).applyfunc(s.factor);T=A[low,high]
 Di=D.inv(method='DM').applyfunc(s.cancel);print(P,'inverse',time.time()-t,flush=True)
 L=(-T*Di).applyfunc(s.cancel);H1=(B[low,low]+L*B[high,low]).applyfunc(s.cancel)
 Rh=(Di*B[high,low]).applyfunc(s.cancel);Rl=(T*Di*Rh).applyfunc(s.cancel)
 C=(-H1*Rl-(B[low,high]+L*B[high,high]).applyfunc(s.cancel)*Rh).applyfunc(s.cancel)
 print(P,'C computed',time.time()-t,flush=True)
 x,y=s.symbols('x y');field=s.QQ.frac_field(d);r=[field.from_sympy(z) for z in rcoeff(d)];passed=True
 for col,idx in enumerate(low):
  st=lab[idx];f=x**st.count(2)*y**st.count(3)
  aa=st.count(2);bb=st.count(3);a3=aa*(aa-1)*(aa-2);b2=bb*(bb-1);b3=b2*(bb-2)
  target={(aa,bb):b2*r[0]+4*a3*r[1]+aa*b2*r[2]+b3*r[3],(aa-3,bb+2):a3*r[1],(aa+3,bb-2):4*(b2*r[0]+aa*b2*r[2]+b3*r[3])}
  for row,ii in enumerate(low):
   st2=lab[ii];v=target.get((st2.count(2),st2.count(3)),0);assert field.from_sympy(C[row,col])==v
 results.append({'P':P,'Delta':'symbolic d','all_C2_entries_identically_zero_residual':True,'seconds':time.time()-t});print(results[-1],flush=True)
 (OUT/'symbolic_jet_results.json').write_text(json.dumps(results,indent=2))
