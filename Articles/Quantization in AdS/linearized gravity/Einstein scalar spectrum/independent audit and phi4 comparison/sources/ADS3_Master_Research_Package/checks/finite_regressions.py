#!/usr/bin/env python3
"""Targeted exact regressions and fully reproducible worked examples."""
from pathlib import Path
from fractions import Fraction as F
import argparse,json,os,sys,time
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'checks'))
from semantic_check import no_optimization,require
no_optimization()
sys.dont_write_bytecode=True
sys.path.insert(0,str(ROOT/'code/engine'))
sys.path.insert(0,str(ROOT/'code/research/racah'))
import sympy as s
import fock_spectrum as fs
from fock_exact import primary_hamiltonian,einstein_pair,orbit_gram
from counts import primary_dimension,baseline_multiplicity
from pair_gram import compressed_spectrum
from all_n_recoupling import spectrum as compiled_spectrum

def serial(x):return [[str(v) for v in x.row(i)] for i in range(x.rows)]
def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output-dir',type=Path,required=True)
    args=ap.parse_args();out=args.output_dir.resolve();out.mkdir(parents=True,exist_ok=True)
    if (out/'finite_regressions.json').exists():raise ValueError('Use a fresh output directory.')
    rows=[];tick=time.perf_counter();g=s.Symbol('g')
    for (k,l),expected in [((0,0),-s.Rational(56,5)),((1,1),-s.Rational(1368,35)),
                           ((2,0),-s.Rational(552,35)),((4,0),-16)]:
        value=einstein_pair(F(2),k,l)
        require(s.Rational(value)==expected,'Delta=2 pair coefficient '+str((k,l)))
    require(s.Rational(einstein_pair(F(3,2),0,0))==-s.Rational(9,2),'cancelled Delta=3/2 ground value')
    rows.append({'test':'pair normalization and removable point','status':'passed','scope':'Exact formula interface; gravitational integral checked separately.'})
    for n,p,q,expected in [
      (3,2,2,g**2+s.Rational(34480,175)*g+s.Rational(1484288,175)),
      (4,2,2,g**3+s.Rational(15576,35)*g**2+s.Rational(78091392,1225)*g+s.Rational(125343737856,42875))]:
        W,B,_=primary_hamiltonian(F(2),n,p,q)
        poly=W.charpoly(g).as_expr()
        require(s.expand(poly-expected)==0,'small mixed characteristic polynomial '+str(n))
        result=fs.primary('2',n,p,q,method='orbit',roots=True,states=True,projectors=True)
        (out/f'primary_N{n}_P{p}_Q{q}.json').write_text(json.dumps(result,indent=2)+'\n')
        comp=compiled_spectrum(F(2),n,p,q)
        coeff=[s.Rational(c) for c in comp['positive_shift_coefficients']]
        shifted=g-s.Rational(comp['baseline'])
        full=shifted**comp['baseline_multiplicity']*sum(c*shifted**(len(coeff)-1-i) for i,c in enumerate(coeff))
        require(s.expand(full-expected)==0,'independent compiled characteristic polynomial '+str(n))
        (out/f'compiled_N{n}_P{p}_Q{q}.json').write_text(json.dumps(comp,indent=2)+'\n')
        rows.append({'test':'mixed primary','N':n,'P':p,'Q':q,'status':'passed',
          'characteristic_polynomial':str(poly),'direct_matrix':serial(W),
          'scope':'Exact characteristic polynomials agree between differential/orbit and independently recoupled tree engines.'})
    sh=fs.shell('2','10',0,roots=True,states=True,projectors=True)
    require(sh['complete_scalar_shell_dimension']==20,'complete E0=10,J=0 scalar shell dimension')
    require([(b['N'],b['P'],b['Q'],b['complete_level_dimension']) for b in sh['particle_number_blocks']]
      ==[(1,4,4,1),(2,3,3,8),(3,2,2,8),(4,1,1,2),(5,0,0,1)],'all five particle-number sectors')
    (out/'shell_Delta2_E10_J0.json').write_text(json.dumps(sh,indent=2)+'\n')
    rows.append({'test':'complete shell and exact root merging','status':'passed','dimension':20})
    bound=fs.bound_states('2',3,12,0,verify=True)
    require(bound['multiplicity']==1 and bound['g']=='-48','actual saturated three-particle block')
    mixed=fs.primary('2',3,12,0,method='racah',roots=True,states=True,projectors=True)
    (out/'saturated_N3_P12_Q0.json').write_text(json.dumps({'kernel':bound,'full_primary':mixed},indent=2)+'\n')
    rows.append({'test':'actual Vandermonde-fourth-power state and complete residual','status':'passed'})
    d=s.Symbol('Delta',positive=True);star=(s.sqrt(33)-1)/4
    W,_,_=primary_hamiltonian(d,4,3,1)
    specialized=W.subs(d,star).applyfunc(s.simplify)
    require(specialized.rows==2,'critical primary dimension')
    require((specialized-specialized[0,0]*s.eye(2)).applyfunc(s.simplify)==s.zeros(2),
            'special mass recomputed complete rank-two scalar eigenspace')
    minimal=s.Poly(specialized.charpoly(g).as_expr(),g,extension=s.sqrt(33)).sqf_part()
    require(minimal.degree()==1,'specialize before square-free decomposition')
    rows.append({'test':'critical algebraic mass full block','status':'passed','Delta':str(star),
       'physical_dimension':2,'square_free_degree':1,'matrix':serial(specialized),
       'scope':'Exact calculation in Q(sqrt(33)); no generic multiplicities retained.'})
    compact=compressed_spectrum(F(2),3,12,0,verify=True,states=True)
    require('shifted_coefficients_descending' not in compact,'removed dense zero-factor output')
    factor=compact['shifted_characteristic_factorization']
    require(factor['zero_root_multiplicity']==1 and len(factor['nonzero_coefficients_descending'])==3,
            'compact physical zero factor plus degree-two positive polynomial')
    (out/'compact_N3_P12_Q0.json').write_text(json.dumps(compact,indent=2)+'\n')
    require(primary_dimension(3,10**9,6)==1166666668,'billion-degree exact dimension')
    require(baseline_multiplicity(3,10**9,6)==1166666645,'billion-degree exact kernel multiplicity')
    rows.append({'test':'compact output and large-index counting','status':'passed',
                 'P':10**9,'Q':6,'physical_dimension':1166666668,'physical_kernel':1166666645,'positive_rank':23,
                 'scope':'Only exact counts at the billion-degree input; no billion-degree diagonalization claimed.'})
    report={'status':'passed','elapsed_seconds':time.perf_counter()-tick,'checks':rows,
            'scope':'Fresh finite exact algebra and worked examples. Reused mathematical engines are identified; these checks do not prove all-index theorems.'}
    (out/'finite_regressions.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
if __name__=='__main__':main()
