#!/usr/bin/env sage -python
"""Symbolic complete-block moments, using only states two vertices from ground.

Run after verify_large_N.py. Prints exact formulas and verifies the archived
symbolic_moments.json. No full large-energy matrix is constructed.
"""
from pathlib import Path
from collections import Counter
from itertools import combinations_with_replacement
import json
from sage.all import QQ, PolynomialRing, prod, factorial, factor
import verify_large_N as v

HERE=Path(__file__).resolve().parent
R=PolynomialRing(QQ,'n')
F=R.fraction_field()
n=F.gen()

def fall(x,k):
    return prod(x-j for j in range(k))

def act(ex):
    src=Counter(ex)
    src[v.ZERO]=n-sum(map(v.omega,ex))//2
    ans={}
    for s in (2,3,4):
        r=6-s
        for ann in combinations_with_replacement(sorted(src),s):
            ac=Counter(ann)
            if any(ac[i]>src[i] for i in ac if i!=v.ZERO):
                continue
            f=prod(fall(src[i],m) for i,m in ac.items())
            for cre in v.creators(r,sum(map(v.omega,ann)),sum(a-b for a,b in ann)):
                z=v.active_vertex(cre,ann)*f
                if not z:
                    continue
                dst=Counter(ex)
                dst.subtract({i:m for i,m in ac.items() if i!=v.ZERO})
                dst.update(i for i in cre if i!=v.ZERO)
                key=tuple(sorted(dst.elements()))
                ans[key]=ans.get(key,F(0))+z
    return ans

def centered(vec):
    ans={}
    for ex,c in vec.items():
        for k,a in act(ex).items():
            ans[k]=ans.get(k,F(0))+c*a
        ans[ex]=ans.get(ex,F(0))-c*fall(n,3)/180
    return {k:a for k,a in ans.items() if a}

def gr(ex):
    d=sum(map(v.omega,ex))//2
    return prod(QQ(factorial(m))/((a+1)*(b+1))**m
                for (a,b),m in Counter(ex).items())/fall(n,d)

def inn(a,b):
    return sum(x*b.get(k,0)*gr(k) for k,x in a.items())

def infinity_limit(f):
    f=F(f)
    numerator,denominator=f.numerator(),f.denominator()
    if numerator==0 or numerator.degree()<denominator.degree():
        return QQ(0)
    if numerator.degree()>denominator.degree():
        raise ValueError('Divergent limit')
    return numerator.leading_coefficient()/denominator.leading_coefficient()


def main():
    a=centered({():F(1)})
    b=centered(a)
    expressions=[inn(a,a)*840**2,inn(a,b)*840**3,inn(b,b)*840**4]
    result=dict(zip(('m2_scaled_840_squared','m3_scaled_840_cubed','m4_scaled_840_fourth'),
                    (str(factor(e)) for e in expressions)))
    previous=json.loads((HERE/'symbolic_moments.json').read_text())
    assert result==previous
    assert infinity_limit(expressions[0]/n**5)==1
    assert infinity_limit(expressions[1]/n**7)==-QQ(92)/3
    assert infinity_limit(expressions[2]/n**10)==3
    assert infinity_limit((expressions[2]/n**10-3)*n)==QQ(1018073)/1089
    qchecks=[]
    for j in range(1,6):
        ex=((j,j),)
        ae=act(ex)
        radial=v.cb.radial_moment(QQ(2),tuple(sorted((v.ZERO,)*4+ex+ex)))
        predicted=radial/4-QQ(2+2*j)/120
        actual=infinity_limit((ae[ex]-fall(n,3)/180)/n**2)
        assert actual==predicted
        target=((j+2,j+2),)
        overlap=v.cb.radial_moment(QQ(2),tuple(sorted((v.ZERO,)*4+ex+target)))
        actual_square=infinity_limit(ae[target]**2*gr(target)/gr(ex)/n**4)
        assert actual_square==(overlap/6)**2
        qchecks.append({'radial_mode':j,'diagonal_units_c6':str(actual),
                        'hop_plus2_square_units_c6_squared':str(actual_square)})
    print(json.dumps({'symbolic_moments_match_archive':True,
                      'Gaussian_limits_and_subleading_coefficients':True,
                      'quadratic_checks':qchecks,'exact_moments':result},indent=2))

if __name__=='__main__':
    main()
