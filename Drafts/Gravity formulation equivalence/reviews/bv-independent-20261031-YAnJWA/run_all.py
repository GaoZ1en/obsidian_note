"""Run all preserved inputs in fresh Python namespaces under SageMath.
Command: sage --nodotsage run_all.py
The Sage MCP run uses this exact driver body, with the fixed source directory.
"""
from pathlib import Path
from hashlib import sha256
root=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA')
for name in ('canonical_map_checks.py','superfield_checks.py','cartan_and_ghost_checks.py','kinetic_density_check.py'):
    path=root/name
    source=path.read_text(encoding='utf-8')
    print('\n===',name,'===')
    print('Source SHA256:',sha256(source.encode()).hexdigest())
    exec(compile(source,str(path),'exec'),{'__name__':'__main__'})
