"""Extract SC statements only, without loading prior audit conclusions into review."""
import json
from pathlib import Path
OUT = Path(__file__).resolve().parents[1]
p = OUT / 'sources/ADS3_Master_Research_Package/provenance/claim_register.json'
data = json.loads(p.read_text())
keys = ['id','title','precise_statement','assumptions','main_home','proof_home','proof_method','dependency_ids','limitations']
claims = [{k:c.get(k) for k in keys} for c in data['claims'] if c.get('id','').startswith('SC-')]
out = OUT/'reviews/audit2_sc_claim_statements.json'
assert not out.exists(), 'Do not overwrite prior evidence'
out.write_text(json.dumps(claims, indent=2, ensure_ascii=False)+'\n')
print(out)
print('Claim IDs:', ', '.join(c['id'] for c in claims))
