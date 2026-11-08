#!/usr/bin/env sage
"""Fresh second contact audit: adjacent-degree theorem and spectral edge.
No imports from previous audit scripts or archived implementations.
Exact arithmetic is QQ or QQ(d); optional numeric eigenvalues are labelled.
"""
from sage.all import (QQ, PolynomialRing, FractionField, matrix, vector,
                      diagonal_matrix, identity_matrix, binomial, factorial,
                      prod, rising_factorial, RDF, RR, pi)
from sage.env import SAGE_VERSION
from pathlib import Path
import json, argparse, hashlib


def pair_norm(P,k,d):
    n=P-k
    return (factorial(k)*rising_factorial(2*d+k-1,k)/rising_factorial(d,k)**2
            *factorial(n)*rising_factorial(3*d+P+k-1,n)
            /(rising_factorial(2*d+2*k,n)*rising_factorial(d,n)))


def pair_basis_coefficients(P,d):
    F=d.parent(); A=matrix(F,P+1,P+1)
    for k in range(P+1):
        A[k,k]=1
        for a in range(k+2,P+1,2):
            A[a,k]=A[a-2,k]*(P-a+2)*(P-a+1)/(4*((d+a)*(d+a-1)-(d+k)*(d+k-1)))
    return A


def permutation_matrix(P,d):
    # r=z1-z2,u=(z1+z2)/2-z3; (23) gives r'=u+r/2,u'=3r/4-u/2.
    F=d.parent();T=matrix(F,P+1,P+1)
    R=PolynomialRing(F,names=('r','u'));r,u=R.gens()
    mons=[r**a*u**(P-a) for a in range(P+1)]
    for k in range(P+1):
        f=(u+r/2)**k*(3*r/4-u/2)**(P-k)
        for a in range(P+1):T[a,k]=f.monomial_coefficient(mons[a])
    A=pair_basis_coefficients(P,d)
    S=A.inverse()*T*A
    assert S*S==identity_matrix(F,P+1)
    return S


def operator_matrices(P,d):
    F=d.parent();R=PolynomialRing(F,names=('r','u'));r,u=R.gens()
    A=pair_basis_coefficients(P,d)
    mons=[r**a*u**(P-a) for a in range(P+1)]
    basis=[sum(A[a,k]*mons[a] for a in range(P+1)) for k in range(P+1)]
    def B(f):
        return -(u-r/2)**2*(f.derivative(r).derivative(u)-f.derivative(u,2)/2)+d*(u-r/2)*(-f.derivative(r)+3*f.derivative(u)/2)+d*(d-1)*f
    BM=A.inverse()*matrix(F,[[B(f).monomial_coefficient(m) for f in basis]for m in mons])
    AM=diagonal_matrix(F,[(d+k)*(d+k-1) for k in range(P+1)])
    s=P*(P+3*d-1)+3*d*(d-1)
    CM=s*identity_matrix(F,P+1)-AM-BM
    return AM,BM,CM


def projected_raising_matrices(Q,d):
    P=Q+1;F=d.parent();R=PolynomialRing(F,names=('z1','z2','z3'));z=list(R.gens())
    r=z[0]-z[1];u=(z[0]+z[1])/2-z[2]
    AQ=pair_basis_coefficients(Q,d);AP=pair_basis_coefficients(P,d)
    basis=[sum(AQ[a,k]*r**a*u**(Q-a) for a in range(Q+1))for k in range(Q+1)]
    h=3*d/2+Q
    def jp(f):return sum(x*x*f.derivative(x)+d*x*f for x in z)
    def jm(f):return sum(f.derivative(x)for x in z)
    def Ti(f,i):
        plus=z[i]**2*f.derivative(z[i])+d*z[i]*f
        zero=z[i]*f.derivative(z[i])+d*f/2
        minus=f.derivative(z[i])
        return plus-jp(zero)/h+jp(jp(minus))/(2*h*(2*h-1))
    R2=PolynomialRing(F,names=('rr','uu'));rr,uu=R2.gens()
    mons=[rr**a*uu**(P-a)for a in range(P+1)]
    out=[]
    for i in range(3):
        images=[Ti(f,i)for f in basis]
        assert all(jm(f)==0 for f in images)
        vals=[R2(f(uu+rr/2,uu-rr/2,0))for f in images]
        mat=AP.inverse()*matrix(F,[[f.monomial_coefficient(m)for f in vals]for m in mons])
        out.append(mat)
    assert sum(out,matrix(F,P+1,Q+1))==0
    return out


def adjacent_certificate(Q):
    F=FractionField(PolynomialRing(QQ,'d'));d=F.gen();P=Q+1
    A,B,C=operator_matrices(Q,d);AP,BP,CP=operator_matrices(P,d)
    U,V,D=projected_raising_matrices(Q,d)
    assert AP*D==D*A and BP*U==U*B and CP*V==V*C
    assert all(U[j,k]==0 for j in range(P+1)for k in range(Q+1)if abs(j-k)>1)
    assert all(D[j,k]==0 for j in range(P+1)for k in range(Q+1)if j!=k)
    diagonal=[]
    for k in range(Q+1):
        expected=-(Q+k+2*d)*(Q-k+d)*(Q+k+3*d-1)/((3*d+2*Q)*(3*d+2*Q-1))
        assert D[k,k]==expected
        assert D[k,k]==-(P-k)*pair_norm(Q,k,d)/pair_norm(P,k,d)
        diagonal.append(str(expected.factor()))
    for j in range(1,P+1):
        assert U[j,j-1]==j*pair_norm(Q,j-1,d)/pair_norm(P,j,d)
        if j<=Q:
            assert D[j,j]*B[j,j-1]/U[j,j-1]==(Q+1-j)*(Q-j+d)
    s=Q*(Q+3*d-1)+3*d*(d-1)
    lam=[(d+k)*(d+k-1)for k in range(Q+1)]
    band_checks=[]
    for m in range(1,Q+1):
        Fm=U*(B**m)+V*(C**m)
        if m%2:
            for i in range(Q-m+1):
                expected=2*U[i+m+1,i+m]*prod(B[j+1,j]for j in range(i,i+m))
                assert Fm[i+m+1,i]==expected
                band_checks.append([m,i,'odd-leading'])
        else:
            for i in range(Q+2-m):
                factor=U[i+m,i+m-1]*prod(B[j+1,j]for j in range(i,i+m-1))
                Fi=sum(s-lam[j]for j in range(i,i+m))-(Q+1-i-m)*(Q-i-m+d)
                assert Fm[i+m,i]==factor*Fi
                lower=U*(B**(m-1))+V*(C**(m-1))
                assert lower[i+m,i]==2*factor
                band_checks.append([m,i,'even-next'])
    # A direct rectangular S3 twirl of arbitrary diagonal maps.
    SP=permutation_matrix(P,d);SQ=permutation_matrix(Q,d)
    JP=diagonal_matrix(F,[(-1)**k for k in range(P+1)])
    JQ=diagonal_matrix(F,[(-1)**k for k in range(Q+1)])
    columns=[]
    for k in range(Q+1):
        E=matrix(F,P+1,Q+1);E[k,k]=1
        tw=(E+SP*E*SQ+JP*SP*E*SQ*JQ)/3
        columns.append(vector(F,tw.list()))
    Tw=matrix(F,columns).transpose()
    assert Tw.rank()==Q
    assert Tw*vector(F,[D[k,k]for k in range(Q+1)])==0
    return {'Q':Q,'P':P,'Delta':'symbolic d','projected_raising_sum_zero':True,
            'complementary_pair_intertwining':True,'rectangular_tridiagonal':True,
            'diagonal_T3':diagonal,'norm_adjoint_formulas':True,
            'band_checks':band_checks,'twirl_rank':int(Tw.rank()),
            'twirl_nullity':int(Tw.ncols()-Tw.rank())}


def endpoint_certificate(P,d):
    S=permutation_matrix(P,d)
    g=[pair_norm(P,k,d)for k in range(P+1)]
    G=diagonal_matrix(d.parent(),g)
    assert G*S==S.transpose()*G
    endpoint=(-1)**P*rising_factorial(d,P)/rising_factorial(2*d,P)
    assert S[0,0]==endpoint
    M=matrix(d.parent(),P+1,P+1,lambda j,k:S[j,k]*S[k,j])
    assert M==M.transpose()
    assert all(sum(M.row(j))==1 for j in range(P+1))
    for k in range(P):
        ratio=4*(k+1)*(4*(d+k)**2-1)/(2*d+k-1)*(P+d-k-1)/((P-k)*(P+3*d+k-1)*(P+2*d+k))
        assert g[k+1]/g[k]==ratio
    return {'P':P,'Delta':str(d),'endpoint':str(endpoint),
            'orthogonalized_recoupling_squared_stochastic':True,
            'pair_norm_ratios_verified':True}


def direct_norm_certificate(P=4):
    F=FractionField(PolynomialRing(QQ,'d'));d=F.gen()
    R=PolynomialRing(F,names=('z1','z2','z3'));z1,z2,z3=R.gens()
    r=z1-z2;u=(z1+z2)/2-z3;A=pair_basis_coefficients(P,d)
    basis=[sum(A[a,k]*r**a*u**(P-a)for a in range(P+1))for k in range(P+1)]
    def inner(f,g):
        gd=g.dict()
        return sum(c*gd.get(e,0)*prod(factorial(x)/rising_factorial(d,x)for x in e)
                   for e,c in f.dict().items())
    for j in range(P+1):
        for k in range(P+1):
            assert inner(basis[j],basis[k])==(pair_norm(P,k,d)if j==k else 0)
    return {'P':P,'Delta':'symbolic d','direct_three_variable_Gram_equals_norm_formula':True}


def cluster_witness_certificate(N,P,d=QQ(2)):
    F=d.parent();R=PolynomialRing(F,names=tuple('z'+str(i+1)for i in range(N)));z=list(R.gens())
    t=N*d/2+P
    def jp(f):return sum(x*x*f.derivative(x)+d*x*f for x in z)
    def jm(f):return sum(f.derivative(x)for x in z)
    def primary(f):
        ans=R(0);low=f;den=F(1)
        for r in range(P+1):
            if r:
                low=jm(low);den*=r*(2*t-r-1)
            raised=low
            for j in range(r):raised=jp(raised)
            ans+=(-1)**r*raised/den
        return ans
    vec=[primary(x**P)for x in z]
    def inner(f,g):
        gd=g.dict()
        return sum(c*gd.get(e,0)*prod(factorial(a)/rising_factorial(d,a)for a in e)
                   for e,c in f.dict().items())
    norm=inner(vec[0],vec[0]);rho=inner(vec[0],vec[1])/norm
    assert norm>0 and all(jm(v)==0 for v in vec)
    assert all(inner(vec[i],vec[j])==norm*(1 if i==j else rho)for i in range(N)for j in range(N))
    checks=0
    for i in range(N):
        for a in range(N):
            for b in range(a+1,N):
                if i in (a,b):continue
                diff=z[a]-z[b];v=vec[i]
                Cv=-diff**2*v.derivative(z[a]).derivative(z[b])+d*diff*(v.derivative(z[a])-v.derivative(z[b]))+d*(d-1)*v
                assert Cv==d*(d-1)*v;checks+=1
    aa=rho**2
    refined=QQ((N-1)*(N-2))/2*(1+(N-1)*aa)/(1+(N-3)*aa)
    assert refined>=QQ((N-1)*(N-2))/2 and refined<=QQ(N*(N-1))/2
    return {'N':N,'P':P,'Delta':str(d),'raw_primary_norm':str(norm),'rho':str(rho),
            'internal_pair_zero_label_checks':checks,
            'Rayleigh_lower_bound_divided_by_c0':str(refined),
            'universal_lower_bound_divided_by_c0':str(QQ((N-1)*(N-2))/2)}


def numerical_edge(P,d):
    S=permutation_matrix(P,d)
    M=matrix(RDF,P+1,P+1,lambda j,k:RDF(S[j,k]*S[k,j]))
    # L=16*pi*W, exact channel coefficients 1/(k+Delta-1/2).
    c=[RDF(1/(d+k-QQ(1)/2))for k in range(P+1)]
    root=diagonal_matrix(RDF,[x.sqrt()for x in c])
    H=root*(identity_matrix(RDF,P+1)+2*M)*root
    ev=sorted([float(x)for x in H.eigenvalues()],reverse=True)
    return {'P':P,'Delta':str(d),'operator':'16*pi*W_contact',
            'top_eigenvalues':ev[:4],
            'fixed_index_limits':[float(1/(d+k-QQ(1)/2))for k in range(4)],
            'method':'RDF symmetric eigensolver; illustrative, not rank proof'}


def main(argv=None):
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);args=p.parse_args(argv)
    result={'provenance':{'Sage_version':SAGE_VERSION,'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                          'archived_or_previous_script_imports':False},
            'adjacent_degree_theorem':'N=3, P=Q+1, all Delta>1: rank=Q, nullity=d3(P,Q)-Q.',
            'adjacent_certificates':[adjacent_certificate(q)for q in [0,1,2,4,6]],
            'direct_norm_certificate':direct_norm_certificate(),
            'cluster_witness_certificates':[cluster_witness_certificate(4,3),cluster_witness_certificate(5,2)],
            'endpoint_certificates':[], 'numerical_edges':[]}
    F=FractionField(PolynomialRing(QQ,'d'));d=F.gen()
    for P in [0,1,2,4,6]:result['endpoint_certificates'].append(endpoint_certificate(P,d))
    for P in [8,16,32,64]:result['numerical_edges'].append(numerical_edge(P,QQ(2)))
    args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'output':str(args.output),'adjacent_degrees':[0,1,2,4,6],
                      'symbolic_band_checks':sum(len(c['band_checks'])for c in result['adjacent_certificates']),
                      'edge_samples':result['numerical_edges']},ensure_ascii=False,indent=2))
    return result

if __name__=='__main__':main()
