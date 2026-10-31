from pathlib import Path
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9')
# Control case: remove the X color doublet in ALL form degrees.
# Reuse the exact same code, stopping before the deliberately nonzero-side test.
src=(OUT/'torus-source.sage.py').read_text(encoding='utf-8')
src=src.replace('UV_MASKS={0,1,6,7}','UV_MASKS=set(range(8))')
src=src.split("check('both quartic master sides are nonzero'")[0]
exec(compile(src,str(OUT/'torus-source.sage.py')+'[all-form-color-control]','exec'))
assert left=={} and right=={} and bool(S4)
assert any(metadata[i][0]=='pi' for i in allids(S4))
text='\n'.join([
 'Exact torus color-projection control; Sage '+SAGE_VERSION,
 'Same constant-form dgla and flat A0=e1 J3 as the endpoint test.',
 'CONTROL CHANGE: UV is X1,X2 in ALL form degrees; h=(ad J3)^-1 i1 R.',
 '32 retained coordinates. The projected binary color bracket is itself Lie.',
 'S4 is NONZERO, with '+str(len(S4))+' exact monomials, including ghost antifields.',
 '(S3P,S3P)=0 and (S2P,S4)=0 separately, verified exactly.',
 'Thus nonminimal DP!=0 and nonzero S4 do not alone make the quartic master cancellation a nontrivial two-sided test.',
 'This control is not used as evidence for the nonzero-side identity; the main endpoint torus and Heisenberg fixtures provide that evidence.'
])+'\n'
(OUT/'torus-color-control-output.txt').write_text(text,encoding='utf-8')
print(text)
