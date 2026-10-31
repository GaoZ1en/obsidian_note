"""Static end-of-round archive checks. No mathematical kernel is executed.
Run once: outputs use exclusive creation and preserve the checked snapshot.
"""
from pathlib import Path
from hashlib import sha256
from datetime import datetime
from zoneinfo import ZoneInfo
import json
import re

ROOT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
OUT = Path(__file__).resolve().parent
DOCS = [ROOT / name for name in [
    '21 Low-wheel heat traces and an AdS gravitational tadpole.md',
    'README.md', '00 Research report.md', '04 Comparison and open problems.md',
    'verification/README.md', 'reviews/Independent reviews.md', 'sources/Source evidence.md']]
A = ROOT / 'reviews/low-wheels-followup-20261031.Re9NnFZn'
B = ROOT / 'reviews/independent-linear-wheel-evidence-20261031.dSHi7Q'
C = ROOT / 'reviews/independent-regulated-ward-20261031.N3gA5eMW'
D = ROOT / 'reviews/gravitational-wheels-independent-20261031.HyvDSjvL'

def digest(path):
    return sha256(path.read_bytes()).hexdigest()

def load(path):
    return json.loads(path.read_text())

def exclusive(path, data):
    with path.open('x', encoding='utf-8') as stream:
        stream.write(data)

checks = {}
details = {}
texts = {p: p.read_text() for p in DOCS}
observed = {str(p): digest(p) for p in DOCS}
links, failures = 0, []
for path, text in texts.items():
    for match in re.finditer(r'\]\(<([^>]+)>\)', text):
        target = match.group(1)
        if re.match(r'^[a-zA-Z][\w+.-]*:', target):
            continue
        name, _, anchor = target.partition('#')
        dest = Path(name) if name.startswith('/') else path.parent / name
        links += 1
        if not dest.is_file():
            failures.append({'source': str(path), 'target': target, 'reason': 'missing file'})
            continue
        m = re.fullmatch(r'L(\d+)(?:-L?(\d+))?', anchor)
        if m:
            line_count = len(dest.read_text().splitlines())
            lo, hi = int(m[1]), int(m[2] or m[1])
            if not 1 <= lo <= hi <= line_count:
                failures.append({'source': str(path), 'target': target, 'reason': 'line bounds', 'lines': line_count})
checks['local_link_targets_and_line_bounds'] = not failures
details['links'] = {'occurrences': links, 'failures': failures, 'scope': 'Existence and line bounds only, not historical sentence identity or external URLs.'}

expected = {
    ROOT / '20 One-loop BV transport and complete AdS trace obstructions.md': 'e34cde4d455fae6d8b3e42e3ce22677889fb5ab3d5287608d6816842067eec33',
    A / 'followup.md': '600d18c42c13e45dcd723b43042e7f4b4d8208077bdb5dcc160e74e93d9d8d09',
    C / 'report.md': '16063da2aa754287fa450a34e4a4913cad344a85b67b999c0b2f561373a1d0ca',
    C / 'kv-followup.md': '88f22355cbbda6bff01052e120eab4d2e7934b7c3dd3379376fe17d26c16d008',
    D / 'independent-proof.md': '4cfd6913d71e22ee928be53765a72712e95a7c66ddeb8971b8411c226306d762',
    D / 'cas-failure-input.py': '0fc75f9f344c3d710c68d88e6eb73cca0c3be609624f8e6ff65fb8d4c5462fbc',
    ROOT / 'reviews/low-wheels-main21-audit-20261031.NySd6MWK/supplied-note21.md': 'b92baacd5460a7ee151e0964fffebf2748e3b89b0d50350232baf8baa2f1b847',
    ROOT / 'reviews/supplied-note21-linear-insertion-audit-20261031.owtbomec/note21-supplied-snapshot.md': 'b92baacd5460a7ee151e0964fffebf2748e3b89b0d50350232baf8baa2f1b847',
}
checks['eight_previously_recorded_hashes'] = all(digest(p) == h for p, h in expected.items())
details['expected_hashes'] = {str(p): {'expected': h, 'actual': digest(p)} for p, h in expected.items()}
observed.update({str(p): digest(p) for p in expected})

manifest = load(B / 'evidence_supplement.json')
original = Path(manifest['original_directory'])
checks['tadpole_frozen_files_and_byte_copies'] = (
    all(digest(original / name) == h for name, h in manifest['original_files_sha256_after'].items())
    and all(Path(r['original_envelope_path']).read_bytes() == Path(r['archived_envelope_path']).read_bytes()
            and Path(r['original_source_path']).read_bytes() == Path(r['source_snapshot_path']).read_bytes()
            for r in manifest['runs']))
details['tadpole_provenance'] = {'frozen_files': len(manifest['original_files_sha256_after']), 'original_calls': len(manifest['runs']), 'rerun': False}

sage_diagnostics = {}
for label, path in [('ward', C / 'sage-actual-server-return.json'), ('fresh_global', D / 'cas-success-server-return.json')]:
    env = load(path)
    v = env['received']['value']['structuredContent']
    sage_diagnostics[label] = {k: v.get(k) for k in ['ok','error','truncated','stdoutTruncated','stderr','stderrTruncated','warnings','warningsTruncated','transportStderr','sageVersion']}
checks['two_successful_sage_envelopes_clean'] = all(
    v['ok'] is True and v['error'] is None and not any(v[k] for k in ['truncated','stdoutTruncated','stderr','stderrTruncated','warnings','warningsTruncated','transportStderr'])
    for v in sage_diagnostics.values())
details['sage_diagnostics'] = sage_diagnostics

fresh_result = load(D / 'cas-success-results.json')
ward_stdout = json.loads(load(C / 'sage-actual-server-return.json')['received']['value']['structuredContent']['stdout'])
checks['saved_sage_result_counts'] = (len(fresh_result['checks']) == 6 and all(v is True for v in fresh_result['checks'].values()) and ward_stdout['check_count'] == 25 and ward_stdout['all_passed'] is True and ward_stdout['failed_labels'] == [])
details['sage_saved_counts'] = {'fresh_global': 6, 'ward': ward_stdout['check_count'], 'scope': 'Validate saved result reports, not new algebra.'}

wolfram = {}
for label in ['wolfram', 'kv']:
    env = load(C / f'{label}-actual-server-return.json')
    text = '\n'.join(item.get('text', '') for item in env['received']['content'])
    wolfram[label] = {'complete': env['completeness'] == 'server-returned', 'untruncated': env['upstreamTruncated'] is False,
                     'all_passed': 'AllPassed -> True' in text, 'empty_failed': 'FailedLabels -> {}' in text, 'empty_messages': 'Messages -> {}' in text}
checks['two_wolfram_success_envelopes'] = all(all(v.values()) for v in wolfram.values())
details['wolfram_diagnostics'] = wolfram

synthesis = texts[DOCS[0]]
tags = re.findall(r'\\tag\{([^}]+)\}', synthesis)
checks['synthesis_rendering_and_required_qualifiers'] = (
    not any(ord(c) < 32 and c not in '\n\t' for c in synthesis)
    and synthesis.count(r'\[') == synthesis.count(r'\]')
    and synthesis.count(r'\(') == synthesis.count(r'\)')
    and len(tags) == len(set(tags))
    and r'(A_j^ne^{-\varepsilon\Delta})' in synthesis
    and r'\tag{17a}' in synthesis
    and 'scalar-principal order-two' in synthesis
    and 'uniform differentiable heat asymptotics' in synthesis
    and 'not a retained Hamiltonian' in texts[ROOT / '04 Comparison and open problems.md'])
details['synthesis'] = {'sha256': digest(DOCS[0]), 'lines': len(synthesis.splitlines()), 'tags': tags}
checks['paused_checkpoint_and_open_quantum_scope'] = (
    'Paused at koishi' in texts[ROOT / 'README.md']
    and 'automatic continuation is disabled' in texts[ROOT / '00 Research report.md']
    and 'Broader quantum equivalence and the overall research objective remain active' not in texts[ROOT / '00 Research report.md']
    and '**Still open:**' in synthesis
    and 'No continuous interacting BV pushforward' in synthesis)

source = load(D / 'cas-success-server-return.json')['arguments']['code']
exclusive(OUT / 'fresh-global-exact-submitted-source.py', source)
exclusive(OUT / 'note21-final-snapshot.md', synthesis)
report = {'created_at': datetime.now(ZoneInfo('Asia/Shanghai')).isoformat(), 'purpose': 'Static closure/provenance only; no mathematical kernel rerun.',
          'checks': checks, 'all_passed': all(checks.values()), 'failed_checks': [k for k,v in checks.items() if not v],
          'details': details, 'observed_hashes': observed, 'auditor_sha256': digest(Path(__file__)),
          'source_extraction': {'origin': str(D / 'cas-success-server-return.json'), 'exact_submitted_source_sha256': sha256(source.encode()).hexdigest(), 'executed': False},
          'limits': ['No new analytic or CAS theorem.', 'External URLs not fetched.', 'Historical line-anchor sentence identity not certified.', 'Static audit index entry may be added later; synthesis snapshot remains exact.']}
exclusive(OUT / 'result.json', json.dumps(report, indent=2, ensure_ascii=False) + '\n')
print(json.dumps({'all_passed': report['all_passed'], 'failed_checks': report['failed_checks'], 'result': str(OUT / 'result.json'), 'synthesis_sha256': report['details']['synthesis']['sha256']}, indent=2))
raise SystemExit(0 if report['all_passed'] else 1)
