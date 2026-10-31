from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json

OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad').resolve()
ROOT = Path('/Users/koishi/Documents/Note').resolve()
assert OUT.is_dir() and OUT.parent == ROOT / 'Drafts/Gravity formulation equivalence/reviews'

specs = [
    ('Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md', 'source16.md', None),
    ('Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md', 'source18.md', None),
    ('Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md', 'source14-boundary-excerpt.md', (124,126)),
    ('Articles/Quantization in AdS/perturbation/formalism.md', 'cps-convention-excerpt.md', (7,25)),
    ('AGENTS.md', 'root-rules.md', None),
    ('Articles/Quantization in AdS/AGENTS.md', 'article-rules.md', None),
]
records = []
for relative, name, selected in specs:
    source = ROOT / relative
    raw = source.read_bytes()
    if selected is None:
        frozen = raw
    else:
        a, b = selected
        lines = raw.decode('utf-8').splitlines(keepends=True)
        frozen = (f'# Source excerpt: lines {a}--{b}\n\n' + ''.join(lines[a-1:b])).encode('utf-8')
    destination = OUT / name
    with destination.open('xb') as handle:
        handle.write(frozen)
    item = dict(source=str(source), source_sha256=sha256(raw).hexdigest(), source_bytes=len(raw), snapshot=name,
                snapshot_sha256=sha256(frozen).hexdigest(), snapshot_bytes=len(frozen), original_line_range=selected)
    records.append(item)
    print(json.dumps(item, ensure_ascii=False))
manifest = dict(frozen_at_utc=datetime.now(timezone.utc).isoformat(), method='Byte snapshots or declared source-line excerpts; no algebra kernels run.', records=records)
with (OUT / 'source-manifest.json').open('x', encoding='utf-8') as handle:
    json.dump(manifest, handle, ensure_ascii=False, indent=2)
    handle.write('\n')
print('SOURCE_FREEZE_OK')
