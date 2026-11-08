#!/usr/bin/env sage -python
"""Complete nonzero spectrum at the first number-changing even-contact block.

Rational Delta=a/b>1 in lowest terms, phi^(2k), lambda>0. If b>k-2,
every complete first-order block is positive semidefinite. Otherwise the
first negative block has E=(k+b)*Delta,J=0 and exactly one negative eigenvalue.
Eigenvalue unit is lambda_(2k)*(2*pi)^(1-k)/2. This is a first-order coefficient
statement, not a stability theorem for the unprojected or full interacting QFT.
"""
import argparse
import hashlib
import json
from pathlib import Path
from sage.all import QQ, ZZ, PolynomialRing, binomial, factorial, matrix, prod
from contact_blocks import energy_basis,contact_matrix,gram_diagonal


def threshold_data(delta,k):
    delta=QQ(delta);k=int(k)
    if delta<=1 or k<2:
        raise ValueError('requires rational Delta>1 and k>=2')
    a,b=map(int,(delta.numerator(),delta.denominator()))
    if b>k-2:
        return {'all_blocks_psd':True,'Delta':delta,'k':k,'threshold_energy':None}
    r,s=k-b,k+b;E=s*delta
    basis=energy_basis(delta,E,0);dim=len(basis)
    alpha=binomial(s,k)/(factorial(k)*(k*delta-1))
    beta2=binomial(a+r-2,r-2)/(factorial(r)*factorial(s)*(E-1)**2)
    extra=[binomial(c+k-2,k-2)/(factorial(k)*(k*delta+2*c-1))
           for c in range(a//2+1)] if a%2==0 else []
    ring=PolynomialRing(QQ,'z');z=ring.gen()
    nonzero=(z*z-alpha*z-beta2)*prod(z-t for t in extra)
    rank=2+len(extra);zero=dim-rank
    if not (alpha>0 and beta2>0 and zero>=0):
        raise ArithmeticError('invalid threshold data')
    return {'all_blocks_psd':False,'Delta':delta,'k':k,'threshold_energy':E,
            'angular':0,'dimension':dim,'lower_particle_number':r,'ground_particle_number':s,
            'lower_active_primary_grade':(a,a),'alpha':alpha,'beta_squared':beta2,
            'additional_positive_coefficients':extra,'rank':rank,'zero_multiplicity':zero,
            'negative_multiplicity':1,'charpoly':z**zero*nonzero,'basis':basis}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--delta',default='2');p.add_argument('--k',type=int,default=3)
    p.add_argument('--check-full',action='store_true',help='also build the whole Fock block and check exactly')
    p.add_argument('--output',help='new output JSON, never overwrite')
    args=p.parse_args();out=Path(args.output) if args.output else None
    if out is not None and out.exists():
        raise FileExistsError(str(out))
    data=threshold_data(QQ(args.delta),args.k)
    if args.check_full and not data['all_blocks_psd']:
        A=contact_matrix(data['Delta'],2*args.k,data['basis'])
        G=matrix.diagonal(QQ,gram_diagonal(data['Delta'],data['basis']))
        assert A.charpoly('z')==data['charpoly']
        assert A.rank()==data['rank']
        assert G*A==A.transpose()*G
        data.update(full_matrix_verified=True,Gram_verified=True)
    report={key:([str(x) for x in val] if isinstance(val,(tuple,list)) else str(val))
            for key,val in data.items() if key!='basis'}
    for key in ('all_blocks_psd','full_matrix_verified','Gram_verified'):
        if key in data:
            report[key]=data[key]
    for key in ('k','angular','dimension','lower_particle_number','ground_particle_number',
                'rank','zero_multiplicity','negative_multiplicity'):
        if key in data:
            report[key]=int(data[key])
    if data['threshold_energy'] is None:
        report['threshold_energy']=None
    else:
        report['two_mixed_roots']='(alpha +/- sqrt(alpha^2+4*beta_squared))/2'
        report['charpoly']=str(data['charpoly'].factor())
    report['scale']='lambda_(2k)*(2*pi)^(1-k)/2'
    here=Path(__file__).resolve().parent
    report['source_sha256']={name:hashlib.sha256((here/name).read_bytes()).hexdigest()
                            for name in ('contact_blocks.py','even_threshold_spectrum.py')}
    text=json.dumps(report,indent=2)+'\n'
    if out is not None:
        out.write_text(text,encoding='utf-8')
    print(text)


if __name__=='__main__':
    main()
