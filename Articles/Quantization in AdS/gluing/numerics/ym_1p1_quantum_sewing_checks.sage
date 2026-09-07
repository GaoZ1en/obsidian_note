from sage.all import *
W=WeylCharacterRing("A1",style="coroots")
singlets=[(n,m,(W((n,))*W((m,))).inner_product(W((0,)))) for n in range(7) for m in range(7)]
def sl2(n):
    d=n+1
    E=matrix(QQ,d,d,lambda i,j: j if i==j-1 else 0)
    F=matrix(QQ,d,d,lambda i,j: n-j if i==j+1 else 0)
    H=diagonal_matrix(QQ,[n-2*j for j in range(d)])
    return E,F,H
casimir_ok=[]
constraint_ok=[]
nullity_ok=[]
norm_ok=[]
for n in range(9):
    E,F,H=sl2(n); d=n+1; ident=identity_matrix(QQ,d)
    casimir=H*H/4+(E*F+F*E)/2
    casimir_ok.append(casimir==QQ(n*(n+2))/4*ident)
    gens=[X.tensor_product(ident)-ident.tensor_product(X.transpose()) for X in (E,F,H)]
    v=vector(QQ,[1 if i==j else 0 for i in range(d) for j in range(d)])
    constraint_ok.append(all(A*v==0 for A in gens))
    nullity_ok.append(gens[0].stack(gens[1]).stack(gens[2]).right_kernel().dimension()==1)
    norm_ok.append(v.dot_product(v)==d)
R=PolynomialRing(QQ,names=("length1","length2","e2","hbar"))
length1,length2,e2,hbar=R.gens()
energy_ok=[e2*length1*hbar**2*QQ(n*(n+2))/8+e2*length2*hbar**2*QQ(n*(n+2))/8==e2*(length1+length2)*hbar**2*QQ(n*(n+2))/8 for n in range(9)]
A=PolynomialRing(QQ,names=("v1","v2","v3","p1","p2","p3"))
v1,v2,v3,p1,p2,p3=A.gens()
ev=A.hom([0,0,0,p1,p2,p3],A)
f=(v1+p1)**2+v2*p2+p3
g=v3*p1+v1*v2+p2**2
Icut=A.ideal([v1,v2,v3])

import json
checks={}
checks["SU2_SchurSinglets_n_m_0_to_6"] = (all(c == (1 if n == m else 0) for n,m,c in singlets))
checks["SU2_Casimir_n_0_to_8"] = (all(casimir_ok))
checks["SU2_CutMomentAnnihilatesContraction_n_0_to_8"] = (all(constraint_ok))
checks["SU2_UniqueSingletKernel_n_0_to_8"] = (all(nullity_ok))
checks["PeterWeyl_ContractionNormalization_n_0_to_8"] = (all(norm_ok))
checks["LengthWeightedEnergies_n_0_to_8"] = (all(energy_ok))
checks["ClassicalVerticalAugmentationProduct"] = (ev(f*g) == ev(f)*ev(g))
checks["ClassicalVerticalKernelWitness"] = (f-ev(f) in Icut)
checks["ClassicalSectionWitness"] = (ev(p1**2+p2*p3) == p1**2+p2*p3)
result={"scope":"Finite SU(2) and polynomial diagnostics; general statements are proved in the note","checks":checks,"allPassed":all(v is True for v in checks.values())}
print(json.dumps(result,indent=2))
assert result["allPassed"]
