#!/usr/bin/env sage -python
"""Parent cross-checks of cluster compression, large N, and odd tree binding.

Independent branch certificates remain separate. These tests connect their
normalizations to the original Beta/Fock engine and test the new public odd
highest-binding utility. No finite check is substituted for an all-index proof.
"""
import argparse
import hashlib
import importlib.util
import json
import sys
import time
from pathlib import Path
from sage.all import AA, QQ, ZZ, PolynomialRing, binomial, factorial, matrix, prod, vector
sys.dont_write_bytecode=True
import contact_blocks as cb
from odd_highest_binding import highest_binding, source_moment

ROOT=Path(__file__).resolve().parents[1]
CHECKS=[]


def load(name,relative):
    spec=importlib.util.spec_from_file_location(name,ROOT/relative)
    module=importlib.util.module_from_spec(spec); spec.loader.exec_module(module)
    return module


def check(label,value):
    if value is not True and value is not False:
        raise TypeError('not an exact Python boolean: '+label)
    CHECKS.append({'label':label,'passed':value})
    if not value:
        raise AssertionError(label)


def nonzero_charpoly(A):
    p=A.charpoly('z');z=p.parent().gen()
    while p.degree() and p[0]==0:
        p=p//z
    return p


def direct_source_energy(delta,n,N,source):
    """Literal finite-oscillator OFPT, not the normal-form binding formula.

    Only zero or one nonground virtual mode is included. Missing processes
    cancel from the highest (n-1)th finite difference, not from lower energies.
    """
    total=QQ.zero();m=n-1
    for radial,q in source:
        if radial==0:
            for c in range(n+1):
                ann=n-c
                if ann>N:
                    continue
                out=N-ann+c
                amplitude_squared=q*q*factorial(N)*factorial(out)/(
                    factorial(N-ann)**2*factorial(c)**2*factorial(ann)**2)
                total+=amplitude_squared/((n-2*c)*delta)
        else:
            omega=delta+2*radial
            for c in range(m+1):
                ann=m-c
                if ann>N:
                    continue
                out=N-ann+c
                amplitude_squared=q*q*factorial(N)*factorial(out)/(
                    factorial(N-ann)**2*factorial(c)**2*factorial(ann)**2)
                den=(m-2*c)*delta-omega
                if den==0:
                    raise ArithmeticError('active intermediate resonance')
                total+=amplitude_squared/den
    return total


def run():
    cg=load('independent_channel_gram','independent/nonchiral-clusters/channel_gram.py')
    fs=load('independent_fixed_shell','independent/large-N-fixed-shell/fixed_shell.py')
    rr=load('independent_resonant_action','independent/large-N-resonant/verify_large_N.py')
    # Exact all-N (1,1) family, including formal Delta.
    F=PolynomialRing(QQ,'Delta').fraction_field();D=F.gen()
    for d in (QQ(3)/2,QQ(2),QQ(7)/3,D):
        for k in (2,3,4):
            for N in (k,k+1,k+3):
                B=cb.fock_basis(N,1,1);A=cb.contact_matrix(d,2*k,B)
                kap=1/(factorial(k)*(k*d-1));ground=kap*binomial(N,k)
                radial=ground+kap*N*((k-2)*d-1)/(k*d+1)*binomial(N-2,k-2)
                p=A.charpoly('z');z=p.parent().gen()
                check(f'radial_family_d{d}_k{k}_N{N}',p==(z-ground)*(z-radial))
    clusters=[]
    for d,k,P,Q in [(QQ(3)/2,3,2,2),(QQ(2),3,2,2),(QQ(2),3,3,1),
                     (QQ(7)/3,3,3,2),(QQ(3)/2,4,2,2),(QQ(2),4,3,1)]:
        _,_,_,A=cb.compress_primary(d,2*k,k+1,P,Q)
        M=cg.channel_data(d,k,P,Q)['matrix']
        check(f'cluster_bulk_spectrum_d{d}_k{k}_{P}_{Q}',
              nonzero_charpoly(factorial(k)*A)==nonzero_charpoly(M))
        check(f'cluster_rank_d{d}_k{k}_{P}_{Q}',A.rank()==cg.exact_rank(k,P,Q))
        clusters.append({'Delta':str(d),'k':k,'P':P,'Q':Q,'primary_dimension':A.nrows(),
                         'small_matrix':cb.matrix_json(M),'nonzero_charpoly':str(nonzero_charpoly(M))})
    # Explicit physical coincidence kernel and its complete-resonance failure.
    zeros=[((0,0),(0,0),(0,2),(2,0)),((0,0),(0,2),(1,0),(1,0)),
           ((0,0),(0,1),(0,1),(2,0)),((0,1),(0,1),(1,0),(1,0))]
    coeff=(1,-1,-1,1)
    basis=cb.fock_basis(4,2,2);v=vector(QQ,[sum(c for s,c in zip(zeros,coeff) if s==t) for t in basis])
    A=cb.contact_matrix(QQ(2),6,basis);G=matrix.diagonal(QQ,cb.gram_diagonal(QQ(2),basis))
    check('nonchiral_Z3_fixed_N_kernel',A*v==0)
    check('nonchiral_Z3_norm',v*G*v==QQ(29)/36)
    target=((0,0),)*6
    cross=factorial(6)*sum(c*cb.stripped_entry(QQ(2),6,target,s) for s,c in zip(zeros,coeff))
    check('nonchiral_Z3_nonzero_complete_resonance',cross==QQ(2)/7)
    # Complete Delta2 ground-column variance, not a selected-N calculation.
    for N in (4,5):
        basis=cb.energy_basis(QQ(2),QQ(2*N),0);A=cb.contact_matrix(QQ(2),6,basis)
        G=cb.gram_diagonal(QQ(2),basis);j=basis.index(((0,0),)*N)
        var=sum(G[i]/G[j]*A[i,j]**2 for i in range(len(basis)) if i!=j)
        check(f'complete_resonant_variance_N{N}',
              var==prod(ZZ(N-l) for l in range(4))*(N+QQ(17)/2)/840**2)
    for N in (6,20):
        v1=rr.centered_action(N,{():QQ(1)})
        var=rr.inner(N,v1,v1)
        check(f'independent_occupation_variance_N{N}',
              var==prod(ZZ(N-l) for l in range(4))*(N+QQ(17)/2)/840**2)
    for k,d,j in [(3,QQ(2),1),(4,QQ(3)/2,2),(4,QQ(2),1),(4,QQ(2),2),
                   (5,QQ(4)/3,3),(5,QQ(2),3)]:
        nu=ZZ(j*d);labels=((0,0),)*(2*k-1)+((nu,nu),)
        predicted=prod(1-(k-1)*d+l for l in range(nu))/((k*d-1)*prod(k*d+l for l in range(nu)))
        actual=cb.radial_moment(d,tuple(sorted(labels)))
        check(f'general_linear_source_k{k}_d{d}_j{j}',actual==predicted and actual!=0)
    # Fixed-shell matrix and an algebraic, nonresonant half-order splitting.
    for d,k,N,P,Q in [(QQ(2),3,7,2,2),(QQ(5)/3,2,8,3,2)]:
        b,A=fs.finite_matrix(d,k,N,P,Q)
        physical=tuple(tuple(sorted(((0,0),)*(N-len(s))+s)) for s in b)
        C=cb.contact_matrix(d,2*k,physical);G=cb.gram_diagonal(d,physical)
        scale=factorial(k)*factorial(k-1)*(k*d-1)/ZZ(N)**(k-1)
        ground=binomial(N,k)/(factorial(k)*(k*d-1))
        target=matrix(AA,len(b),len(b),lambda i,j:
                      scale*(C[i,j]*AA(G[i]/G[j]).sqrt()-(ground if i==j else 0)))
        check(f'fixed_shell_exact_d{d}_k{k}_{P}_{Q}',A==target)
    d=(AA(13).sqrt()-1)/2
    check('irrational_collision',fs.omega(d,2,2,2)==2*fs.omega(d,2,1,1))
    b,Hhalf=fs.half_order_matrix(d,2,2,2)
    i=b.index(((2,2),));j=b.index(((1,1),(1,1)))
    alpha=AA(2).sqrt()*(AA(13).sqrt()-2)/(3*AA(13).sqrt())
    check('irrational_half_order_splitting',Hhalf[i,j]==alpha)
    # General odd-family normal form against independent literal Fock action.
    odd=[]
    for k in range(1,7):
        n=2*k+1;m=2*k;d=QQ(m)/(m-1)
        value,exact,terms=highest_binding(d,n)
        check(f'odd_negative_n{n}',exact and value<0)
        source=[]
        for radial in range(k):
            q=source_moment(d,n,radial)
            labels=((0,0),)*(n-1)+((radial,radial),)
            check(f'odd_source_integral_n{n}_r{radial}',q==cb.radial_moment(d,tuple(sorted(labels))))
            source.append((radial,q))
        check(f'odd_source_termination_n{n}',source_moment(d,n,k)==0)
        energies=[direct_source_energy(d,n,N,source) for N in range(m+1)]
        difference=sum((-1)**(m-N)*binomial(m,N)*energies[N] for N in range(m+1))
        check(f'odd_literal_Fock_difference_n{n}',difference==value)
        for N in range(1,m+1):
            block=cb.energy_basis(d,N*d,0)
            expected=1 if N<m else 2
            check(f'odd_full_ground_degeneracy_n{n}_N{N}',len(block)==expected)
            if N==m:
                check(f'odd_top_degeneracy_parity_n{n}',sorted(map(len,block))==[1,m])
        odd.append({'degree':n,'Delta':str(d),'coefficient':str(value),
                    'radial_terms':[{'index':i,'value':str(t)} for i,t in terms]})
    check('quintic_exact_value',highest_binding(QQ(4)/3,5)[0]==-QQ(61947)/364000)
    check('septic_exact_value',highest_binding(QQ(6)/5,7)[0]==-QQ(168524890325)/4090552187904)
    rejected=False
    try:
        highest_binding(QQ(2),5)
    except ArithmeticError:
        rejected=True
    check('quintic_active_pole_not_silently_removed',rejected)
    return {'passed':True,'count':len(CHECKS),'checks':CHECKS,'clusters':clusters,'odd_family':odd,
            'scope':'Finite exact cross-checks. All-index rank, Gaussian limit, and all-odd negativity rely on the explicit analytic proofs; no whole-QFT large-N limit is certified.'}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',required=True)
    args=parser.parse_args();out=Path(args.output)
    if out.exists():
        raise FileExistsError(str(out))
    start=time.time();report=run();report['elapsed_seconds']=time.time()-start
    sources=['code/contact_blocks.py','code/odd_highest_binding.py','code/verify_extended_structures.py',
             'independent/nonchiral-clusters/channel_gram.py','independent/large-N-fixed-shell/fixed_shell.py',
             'independent/large-N-resonant/verify_large_N.py']
    report['source_sha256']={s:hashlib.sha256((ROOT/s).read_bytes()).hexdigest() for s in sources}
    out.write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'passed':report['passed'],'count':report['count'],'elapsed_seconds':report['elapsed_seconds'],
                      'output':str(out)},indent=2))


if __name__=='__main__':
    main()
