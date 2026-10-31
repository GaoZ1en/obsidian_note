from sage.all import QQ, PolynomialRing, ExteriorAlgebra, save
from pathlib import Path
import os, tempfile, json
# CE algebra: d e3=e1e2, integral e123=1; tensor su(2), B=delta.
# P retains harmonic forms and the acyclic T3 pair. UV=T1,T2 acyclic pairs.
even_names=['a10','a11','a12','a20','a21','a22','a32','r0','r1','r2']
odd_names=['c0','c1','c2','b130','b131','b132','b230','b231','b232','b122']
C=PolynomialRing(QQ,even_names)
A=ExteriorAlgebra(C,names=odd_names)
ev=[A(v) for v in C.gens()]
od=list(A.gens())
def degree(m):return int(m).bit_count()
def add(*args):
    ans={}
    for X in args:
        for k,v in X.items():ans[k]=ans.get(k,A.zero())+v
    return {k:v for k,v in ans.items() if v!=0}
def scale(X,a):return {k:a*v for k,v in X.items() if a*v!=0}
def wedge(m,n):
    if m&n:return None,0
    inv=sum(1 for i in range(3) for j in range(3) if (m>>i)&1 and (n>>j)&1 and i>j)
    return m|n,(-1)**inv
def eps(a,b,c):
    if len({a,b,c})<3:return 0
    return (-1)**sum(1 for i in range(3) for j in range(i+1,3) if [a,b,c][i]>[a,b,c][j])
def bracket(X,tx,Y,ty):
    ans={}
    for (m,a),u in X.items():
      for (n,b),v in Y.items():
        w,sg=wedge(m,n)
        if sg==0:continue
        sg*=(-1)**(degree(m)*((ty-degree(n))%2))
        for c in range(3):
          e=eps(a,b,c)
          if e:ans[(w,c)]=ans.get((w,c),A.zero())+sg*e*u*v
    return {k:v for k,v in ans.items() if v!=0}
def D(X,t):return {(3,a):(-1)**((t-1)%2)*u for (m,a),u in X.items() if m==4}
def h(X,t):return {(4,a):(-1)**((t-2)%2)*u for (m,a),u in X.items() if m==3 and a in (0,1)}
def P(X):return {(m,a):u for (m,a),u in X.items() if not(m in (3,4) and a in (0,1))}
def beta(X,tx,Y,ty):
    ans=A.zero()
    for (m,a),u in X.items():
      for (n,b),v in Y.items():
        w,sg=wedge(m,n)
        if a==b and w==7 and sg:ans+=sg*(-1)**(degree(m)*((ty-degree(n))%2))*u*v
    return ans
x={}
for a in range(3):
    x[(0,a)]=od[a];x[(1,a)]=ev[a];x[(2,a)]=ev[3+a]
    x[(5,a)]=-od[3+a];x[(6,a)]=-od[6+a];x[(7,a)]=ev[7+a]
x[(4,2)]=ev[6];x[(3,2)]=-od[9]
B=bracket(x,1,x,1)
z=scale(h(B,2),-QQ(1)/2)
y=add(x,z)
Fy=add(D(y,1),scale(bracket(y,1,y,1),QQ(1)/2))
F1=D(x,1);F2=scale(P(B),QQ(1)/2);F3=P(bracket(x,1,z,1))
Seff=QQ(1)/2*beta(y,1,D(y,1),2)+QQ(1)/6*beta(y,1,bracket(y,1,y,1),2)
S2=QQ(1)/2*beta(x,1,D(x,1),2);S3=QQ(1)/6*beta(x,1,B,2)
S4=-QQ(1)/8*beta(h(B,2),1,B,2)
checks={
'full_superfield_master_residual':bool(beta(Fy,2,Fy,2)==0),
'UV_stationarity_exact':bool(h(Fy,2)=={}),
'quadratic_z_is_exact_fixed_point':bool(add(z,scale(h(bracket(y,1,y,1),2),QQ(1)/2))=={}),
'effective_action_has_exact_negative_one_eighth_quartic':bool(Seff-S2-S3-S4==0),
'projected_gradient_is_F1_plus_F2_plus_F3':bool(add(P(Fy),scale(add(F1,F2,F3),-1))=={}),
'naively_compressed_cubic_has_NONZERO_degree_four_master_defect':bool(beta(F2,2,F2,2)!=0),
'quartic_tree_cancels_that_defect':bool(beta(F2,2,F2,2)+2*beta(F1,2,F3,2)==0),
'degree_three_master_identity':bool(beta(F1,2,F2,2)==0),
'degree_five_master_identity':bool(beta(F2,2,F3,2)==0),
'degree_six_master_identity':bool(beta(F3,2,F3,2)==0),
'ghost_antifield_terms_actually_present_in_quartic':bool(any(len(k)>0 for k in S4.monomial_coefficients()))
}
report={'checks':checks,'all_passed':all(checks.values()),'S4':str(S4),'naive_degree_four_defect':str(beta(F2,2,F2,2)),'variables':{'even':even_names,'odd':odd_names},'scope':'Exact finite cyclic dg-Lie sign and CME check only; NOT gravitational operator or analytic domain proof.'}
store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='sage-nonlinear-uv-',dir=store))
save(report,str(out/'result.sobj'))
(out/'preview.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'checks':checks,'all_passed':all(checks.values()),'preview':str(out/'preview.json'),'native':str(out/'result.sobj')},indent=2))
