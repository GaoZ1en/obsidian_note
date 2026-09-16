from verify_quantum import *

def d(n):return s.Rational(n*(n*n-1),12)
def A0(n):return s.Rational(12,n*n-1)
def A1(n):return s.Rational(12,n*(n-1)) if n>=3 else s.Integer(0)
def pairs(n):return [(a,n-a) for a in range(n-2,1,-1) if a>=n-a>=2]
def g0(a,b):return -(A0(a)*(2*a+b)+A0(b)*(a+2*b))/((1+(a==b))*d(a+b))
def g1(a,b):return s.Integer(0) if (a,b)==(2,2) else -(A1(b)*(a+1-b)+A1(a+b)*(2*a+b))/((1+(a==b))*d(a))
def gt1(a,b):return -(A1(a+1)*(2*a+b+2)+A1(b+1)*(a+2*b+2))/((1+(a==b))*d(a+b+1))
def B0(n):return -(sum(A0(m)*(n+m)**2*d(n-m) for m in range(2,n-1))+2*d(n)*sum(g0(a,b)*(2*a+b)*d(b) for a,b in pairs(n)))/d(n)**2
def B1(n):return -(sum(A1(m)*(n+m)*(n+m-2)*d(n-m) for m in range(3,n-1))+d(n-1)*sum(g1(a,b)*(2*a+b)*d(b) for a,b in pairs(n))+d(n)*sum(gt1(a,b)*(2*a+b)*d(b) for a,b in pairs(n-1)))/(d(n)*d(n-1))

comparisons=0
for u in (0,1):
    rows=json.loads((OUT/f'quantum_u{u}_through_level10.json').read_text())
    lookup={(tuple(r['negative']),tuple(r['positive'])):r for r in rows}
    for n in range(2,11):
        for I0 in parts(n-u):
            for J in parts(n):
                e1=e2=s.Integer(0)
                if len(I0)==len(J)==1:
                    e1=(A0(n) if u==0 else A1(n));e2=(B0(n) if u==0 else B1(n))
                elif len(I0)==1 and len(J)==2:e2=(g0(*J) if u==0 else g1(*J))
                elif len(I0)==2 and len(J)==1:e2=(g0(*I0) if u==0 else gt1(*I0))
                row=lookup.get((I0,J),{})
                for k,expected in ((1,e1),(2,e2)):
                    actual=s.sympify(row.get(f'c^-{k}','0'))
                    assert s.cancel(actual-expected)==0,(u,n,I0,J,k,actual,expected)
                    comparisons+=1
    # The inverse-c extraction is compared against direct rational substitution.
    for row in rows:
        expr=s.sympify(row['exact'],locals={'c':c})
        ser=sum(s.sympify(row[f'c^-{k}'])/c**k for k in range(1,5))
        num,den=s.fraction(s.cancel(expr-ser))
        assert num==0 or s.degree(den,c)-s.degree(num,c)>=5

# All negative low-symbol coefficients by Hermitian conjugation, no new fitting.
plusrows=json.loads((OUT/'quantum_u1_through_level10.json').read_text());minus=[]
for row in plusrows:
    rr=dict(row);rr['u']=-1;rr['negative']=row['positive'];rr['positive']=row['negative'];rr['positive_level']=sum(rr['positive']);minus.append(rr)
(OUT/'quantum_u-1_from_adjoint_output_level10.json').write_text(json.dumps(minus,indent=2))
# Exact algebra action checks; no truncation of intermediate grades.
jac=0
for level in range(9):
 for w in parts(level):
  for m,n in [(2,-2),(3,-2),(2,-3),(1,-1),(0,-3),(4,-2),(-2,-3)]:
   lhs={}
   for v,a in act(n,w).items():lhs=add(lhs,act(m,v),a)
   for v,a in act(m,w).items():lhs=add(lhs,act(n,v),-a)
   rhs={};rhs=add(rhs,act(m+n,w),m-n)
   if m+n==0:rhs=add(rhs,{w:c*s.Rational(m*(m*m-1),12)})
   assert add(lhs,rhs,-1)=={}
   jac+=1
result={'original_c^-1_c^-2_coefficient_comparisons':comparisons,'exact_PBW_commutator_tests_through_input_level8':jac,'H0_exact_normal_terms_positive_level_le10':299,'H1_exact_normal_terms_positive_level_le10':196,'Hminus1_terms_by_adjoint':196,'inverse_c_expansion':'through c^-4, remainder O(c^-5) for each coefficient','domain':'algebraic direct sum of finite-energy vacuum levels; c>1','full_CPS_quantum_moment_map_not_proved':True}
(OUT/'quantum_checks.json').write_text(json.dumps(result,indent=2));print(result)
