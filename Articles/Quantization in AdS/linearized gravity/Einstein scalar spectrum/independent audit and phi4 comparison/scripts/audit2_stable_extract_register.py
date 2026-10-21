"""Extract assigned claim definitions without inheriting previous audit verdicts."""
import json
from pathlib import Path
OUT = Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
src = OUT/'sources/ADS3_Master_Research_Package/provenance/claim_register.json'
data = json.loads(src.read_text())
keys = ('id','title','precise_statement','assumptions','limitations','main_home','proof_home','dependency_ids')
claims = [{k: c.get(k) for k in keys} for c in data['claims'] if c['id'].startswith(('ST-','UN-','EX-'))]
dest = OUT/'results/audit2_stable_claim_definitions.json'
dest.write_text(json.dumps(claims, indent=2, ensure_ascii=False)+'\n')
print(f'{len(claims)} claims -> {dest}')
