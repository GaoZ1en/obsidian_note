"""Supplemental exact verification of the opposite/right-action orientation.
Reuses only the definitions before 'checks=[]' in the frozen native Sage source;
it does not execute that source's tests or overwrite its frozen outputs.
"""
from pathlib import Path
import json
ROOT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy')
base=ROOT/'sage_exterior_check.py'
definitions=base.read_text(encoding='utf-8').split('\nchecks=[]',1)[0]
exec(compile(definitions,str(base)+'[definitions only]','exec'))
checks=[]
def check(label,residual):
    residual=normal(residual)
    checks.append({'label':label,'passed':bool(residual==A.zero()),'residual':str(residual)})
def full_right(F):
    return replace(F,{b:b*exp(-t*u)},{odd['c']:exp(t*u)*c,odd['v']:v-t*b*c})
def retained_right(F):
    return replace(F,{b:b*exp(t*r**2)},{odd['c']:exp(-t*r**2)*c,odd['s']:s+2*t*b*c*r})
for name in z:
    check('right full flow ODE '+name,deriv(full_right(z[name]),'t')-full_right(bracket(z[name],Gamma)))
for aa in z:
    for bb in z:
        check('right full canonical '+aa+','+bb,bracket(full_right(z[aa]),full_right(z[bb]))-bracket(z[aa],z[bb]))
ret=[name for name in z if name not in ['u','v']]
for name in ret:
    check('right retained flow ODE '+name,deriv(retained_right(z[name]),'t')-retained_right(bracket(z[name],gamma,True)))
for aa in ret:
    for bb in ret:
        check('right retained canonical '+aa+','+bb,bracket(retained_right(z[aa]),retained_right(z[bb]),True)-bracket(z[aa],z[bb],True))
check('right full action transport',full_right(replace(S,{t:0}))-S)
check('right retained action transport',retained_right(p*c+s*d)-Seff)
defect=bracket(s,exp(-t*r**2)*c,True)
check('right naive projection noncanonical defect',defect-2*t*r*exp(-t*r**2)*c)
report={'implementation':'native Sage supplementary inverse-orientation check','count':len(checks),'all_passed':all(x['passed'] for x in checks),'naive_defect':str(defect),'checks':checks}
(ROOT/'inverse_actual_output.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
lines=[str(sum(x['passed'] for x in checks))+'/'+str(len(checks))+' exact inverse-orientation residuals passed.','Right-projection defect = '+str(defect)]
lines += [('PASS ' if x['passed'] else 'FAIL ')+x['label']+'; residual='+x['residual'] for x in checks]
(ROOT/'inverse_actual_output.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
print('\n'.join(lines[:2]))
assert report['all_passed']
