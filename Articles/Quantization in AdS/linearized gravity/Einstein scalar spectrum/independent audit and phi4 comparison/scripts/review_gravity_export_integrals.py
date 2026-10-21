#!/usr/bin/env python3
"""Export three-pairing quartic integrands from supplied source profiles.

Uses the distinct-labelled convention U_ab=2*u_ab, T_ab=2*t_ab.  The
expressions are independently integrated by Wolfram, not by the source solver.
This is independent integration of given solutions, not a fresh source solve.
"""
import argparse
from collections import Counter
import json
from pathlib import Path
import sympy as s
from sympy.printing.mathematica import mathematica_code

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--sources',required=True);ap.add_argument('--output',required=True);args=ap.parse_args()
    y=s.Symbol('y',positive=True)
    data=json.loads(Path(args.sources).read_text())
    profiles={tuple(sorted(tuple(leg) for leg in item['legs'])):{key:s.sympify(item[key],locals={'y':y,'I':s.I}) for key in ['u','A','B','Q']} for item in data['sources']}
    A=((0,0),(1,0));B=((0,1),(0,-1))
    definitions=[('AA',A,A),('AB',A,B),('BB',B,B),('noncircular',((0,0),(0,0),(0,2)),((2,2),))]
    lines=['(* Independent integration of exported source profiles. No target answers are inputs. *)','ClearAll[y];','Block[{$Messages={}, $MessageList={}},','densities=<|']
    rows=[]
    for label,outgoing,incoming in definitions:
        legs=[(*a,-1) for a in outgoing]+[(*a,1) for a in incoming]
        divisor=s.sqrt(s.prod(s.factorial(v) for v in Counter(outgoing).values())*s.prod(s.factorial(v) for v in Counter(incoming).values()))
        pieces=[s.S.Zero]*3
        for ai,bi in [((0,1),(2,3)),((0,2),(1,3)),((0,3),(1,2))]:
            a=profiles[tuple(sorted(legs[i] for i in ai))]
            b=profiles[tuple(sorted(legs[i] for i in bi))]
            pieces[0]+=128*y*(a['A']*b['A']+a['B']*b['B'])/divisor
            pieces[1]+=-32*y*(a['u']*b['Q']+b['u']*a['Q'])/divisor
            pieces[2]+=-256*y*a['u']*b['u']/divisor
        rows.append('"'+label+'" -> {'+', '.join(mathematica_code(s.factor(s.cancel(p))) for p in pieces)+'}')
    lines.append(',\n'.join(rows));lines.append('|>;')
    lines.append('integrals=Map[Function[v,FullSimplify[Integrate[#, {y,1,Infinity},Assumptions->y>1]]& /@ v],densities];')
    lines.append('totals=Map[Total,integrals];')
    lines.append('<|"Parts"->integrals,"Totals"->totals,"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>]')
    out=Path(args.output)
    if out.exists():raise RuntimeError('Refusing overwrite')
    out.write_text('\n'.join(lines)+'\n')
    print(out)

if __name__=='__main__':main()
