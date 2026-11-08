import sympy as s,json
z=s.symbols('z')
with open('stable_work/independent_results.json') as f:r=json.load(f)
f=s.Poly(s.sympify(r['even_polynomial']),z)
q=s.Poly(f,z,modulus=11).monic();x=s.Poly(z,z,modulus=11)
def modpow(a,k,mod):
    out=s.Poly(1,z,modulus=11)
    while k:
        if k%2:out=(out*a).rem(mod)
        a=(a*a).rem(mod);k//=2
    return out
rem=(modpow(x,11**7,q)-x).rem(q)
g=s.gcd(q,modpow(x,11,q)-x)
assert rem.is_zero and g.degree()==0
fac19=s.factor_list(f.as_expr(),modulus=19)
assert sorted(int(s.degree(p,z)) for p,m in fac19[1] for k in range(m))==[1,1,1,1,1,2]
assert all(m==1 for p,m in fac19[1])
cert={'f11_monic':str(q.as_expr()),'z_power_11_7_minus_z_mod_f':str(rem.as_expr()),'gcd_f_z_11_minus_z':str(g.as_expr()),'mod19_factorization_unit':int(fac19[0]),'mod19_factors':[(str(p),int(m)) for p,m in fac19[1]],'mod19_quadratic_discriminant':int((8**2-4*2)%19),'mod19_discriminant_euler_test':pow((8**2-4*2)%19,9,19)}
assert cert['mod19_discriminant_euler_test']==18
with open('stable_work/galois_certificate.json','w') as f:json.dump(cert,f,indent=2)
print(json.dumps(cert,indent=2))
