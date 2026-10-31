from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
import json

OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad').resolve()
names = [
    'REPORT.md', 'EVIDENCE.md', 'source16.md', 'source18.md',
    'source14-boundary-excerpt.md', 'cps-convention-excerpt.md',
    'root-rules.md', 'article-rules.md', 'source-manifest.json',
    'freeze_sources.py', 'freeze.stdout.txt', 'freeze.stderr.txt',
    'freeze_final.py',
]
records = []
for name in names:
    path = OUT / name
    assert path.is_file()
    raw = path.read_bytes()
    record = dict(file=name, sha256=sha256(raw).hexdigest(), bytes=len(raw))
    records.append(record)
    print(json.dumps(record))
manifest = dict(frozen_at_utc=datetime.now(timezone.utc).isoformat(), status='frozen analytic proof and source evidence', records=records)
with (OUT / 'FINAL-FREEZE.json').open('x', encoding='utf-8') as handle:
    json.dump(manifest, handle, indent=2)
    handle.write('\n')
print('FINAL_FREEZE_OK')
