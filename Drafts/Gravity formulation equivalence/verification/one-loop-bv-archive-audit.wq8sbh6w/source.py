"""Static evidence audit only: no Sage/Wolfram run and no frozen-file edits.
Every invocation creates a fresh result directory next to this source.
"""
from pathlib import Path
import hashlib
import json
import re
import tempfile

ROOT = Path(__file__).resolve().parent.parent
V = ROOT / 'verification'
R = ROOT / 'reviews'
PARENT = V / 'one-loop-bv-parent.5wC0a3'
FINITE = R / 'one-loop-independent-20261031-c1e402a19f'
NARROW = R / 'supplied-note20-audit-20261031-88393300bd'
DIV = R / 'quantum-divergence-independent-20261031.u48DhIxA'
DIV_AUDIT = R / 'quantum-note20-supplied-audit-20261031.SnCnWtBT'
HESS = R / 'independent-stationary-hessian-20261031.lUZZWYDx'
NOTE = ROOT / '20 One-loop BV transport and complete AdS trace obstructions.md'
RAW_ROOT = Path('/Users/koishi/.dsh/research-results/session-ec7666ab9ad4')
CRAW = [RAW_ROOT / 'dbdd3bbda769-research-result.json',
        RAW_ROOT / '4f0b6ec92fc1-research-result.json']

observed = {}
groups = []

def data(path):
    path = Path(path).resolve()
    raw = path.read_bytes()
    observed[str(path)] = {'sha256': hashlib.sha256(raw).hexdigest(), 'bytes': len(raw)}
    return raw

def text(path):
    return data(path).decode('utf-8')

def load(path):
    return json.loads(text(path))

def require(condition, detail):
    if condition is not True:
        raise AssertionError(detail)

def done(label, detail):
    groups.append({'label': label, 'passed': True, 'detail': detail})

# The original reports are immutable evidence, not a target for repair.
expected_parent = 'e6e6633018c48c054798321b328dd58de39545cbff5ea5932a8638886cb18d3e'
source = data(V / 'one_loop_bv_transport_checks.py')
require(hashlib.sha256(source).hexdigest() == expected_parent, 'parent source hash')
require(data(PARENT / 'source.py') == source, 'parent byte copy')
require(hashlib.sha256(data(PARENT / 'excluded-first-source.py')).hexdigest() ==
        'cd2ac79c1e90e92a213250d9d7cb53c779fcc7b86c389fadb5a0679837ae768f', 'excluded source hash')
pr = load(PARENT / 'result.json')
require(pr['source_sha256'] == expected_parent, 'result/source binding')
done('parent source and excluded attempt bindings', {'successful_source_sha256': expected_parent})

manifest = load(DIV / 'freeze_manifest.json')
for name, entry in manifest['files'].items():
    raw = data(DIV / name)
    require(len(raw) == entry['bytes'] and hashlib.sha256(raw).hexdigest() == entry['sha256'], name)
hess_hashes = re.findall(r'\| \[[^\]]+\]\(<([^>]+)>\) \| `([0-9a-f]{64})` \|',
                         text(HESS / 'evidence-and-diagnostics.md'))
require(len(hess_hashes) == 9, 'nine Hessian authority/artifact hashes')
for filename, expected in hess_hashes:
    require(hashlib.sha256(data(Path(filename))).hexdigest() == expected, filename)
done('previously frozen independent hashes', {'divergence': len(manifest['files']), 'hessian': len(hess_hashes)})

# Exact result-label inventories; these checks do not rerun the mathematics.
fr = load(FINITE / 'exact-results.json')
nr = load(NARROW / 'narrow-check-results.json')
dr = load(DIV / 'sage_result.json')
wr = load(DIV / 'wolfram_checks.json')
for report, count in [(pr, 27), (fr, 1271)]:
    require(len(report['checks']) == count and all(c['passed'] is True for c in report['checks']), 'list checks')
require(pr['all_passed'] is True and fr['checks_failed'] == 0, 'final statuses')
for report, key, count in [(nr, 'checks', 18), (dr, 'checks', 16), (wr, 'Checks', 10)]:
    require(len(report[key]) == count and all(v is True for v in report[key].values()), 'dictionary checks')
require(wr['AllPassed'] is True and wr['Messages'] == [] and wr['ExcludedFailures'] == [], 'Wolfram diagnostics')
for filename, count in [('symbol-check-result.txt', 14), ('followup-radial-result.txt', 7)]:
    report = text(HESS / filename)
    match = re.search(r'"Checks" -> <\|(.*?)\|>', report, re.S)
    require(match is not None, 'Wolfram checks block')
    flags = re.findall(r'"([^"]+)" -> (True|False)', match.group(1))
    require(len(flags) == count and all(flag == 'True' for _, flag in flags), filename)
    require('"AllPassed" -> True' in report and '"Failed" -> False' in report and '"Messages" -> {}' in report, filename)
done('seven successful mathematical result inventories', [27, 1271, 18, 16, 10, 14, 7])

# Parse the actual returned envelopes, not only local result files.
sage_paths = [PARENT / 'actual-server-return.json', FINITE / 'tool-call-02.raw.json',
              FINITE / 'tool-call-03.raw.json', NARROW / 'tool-response.raw.json',
              DIV / 'sage_actual_tool_return.json']
sage = []
for path in sage_paths:
    env = load(path)
    require(env['completeness'] == 'server-returned' and env['upstreamTruncated'] is False, str(path))
    payload = env['received']['value']['structuredContent']
    require(payload['ok'] is True and payload['error'] is None, str(path))
    for field in ['truncated', 'stdoutTruncated', 'stderrTruncated', 'warningsTruncated']:
        require(payload[field] is False, field)
    require(payload['warnings'] == [] and payload['stderr'] == '' and payload['transportStderr'] == [], str(path))
    for field in ['result', 'stdout', 'stderr']:
        require(hashlib.sha256(payload[field].encode()).hexdigest() == payload[field + 'Sha256'], field)
    require(hashlib.sha256(env['arguments']['code'].encode()).hexdigest() == payload['codeSha256'], 'invocation hash')
    content = env['received']['value']['content']
    require(json.loads(content[0]['text']) == payload, 'structured/text payload match')
    sage.append(payload)
first = load(FINITE / 'tool-call-01.raw.json')
require(first['upstreamTruncated'] is True, 'initial reviewer truncation disclosed')
require('1234 exact checks' in sage[1]['stdout'] and '1271 exact checks' in sage[2]['stdout'], 'run chronology')
require(json.loads(sage[4]['stdout']) == dr, 'divergence stdout equals saved result')
parent_stdout = json.loads(sage[0]['stdout'])
original = Path(parent_stdout['output'])
require(data(original / 'source.py') == source and data(original / 'result.json') == data(PARENT / 'result.json'), 'original kernel exports')
done('five clean Sage envelopes and explicit initial truncation', {'successful_envelopes': 5, 'initial_upstream_truncation': True})

for path, suffix in [(DIV / 'wolfram_actual_tool_return.json', ', True, {}}'),
                     (CRAW[0], ', True, False, {}}'), (CRAW[1], ', True, False, {}}')]:
    env = load(path)
    require(env['completeness'] == 'server-returned' and env['upstreamTruncated'] is False, str(path))
    content = env['received']['value']['content']
    require(len(content) == 1 and content[0]['text'].rstrip().endswith(suffix), 'actual Wolfram success tuple')
    require(content == env['received']['content'], 'returned views agree')
done('three complete Wolfram server returns', {'returns': 3, 'messages': []})

# Nonvacuity from preserved exact values, not from an all-true aggregate alone.
require(pr['exact_expressions']['missing_insertion_residual'] != '0', 'nonzero missing insertion')
require(fr['exact_example']['uncancelled_h2_before_Delta_term'] != '0', 'nonzero higher-loop cancellation')
require(nr['residual_eta_z'] == '-2*A*alpha', 'ordinary transpose negative control')
require(dr['nilpotent_monomials'] == 18 and dr['sector_monomials']['zetaT'] == 1, 'actual gravity sectors')
require('"CS_coexact_symbol_rank_at_t1" -> 16' in text(HESS / 'symbol-check-result.txt'), 'nonzero symbol rank')
done('preserved nonzero counterexample coverage', {'ordinary_transpose_residual': nr['residual_eta_z'], 'nilpotent_monomials': 18})

current_docs = [NOTE, ROOT / 'README.md', ROOT / '00 Research report.md',
                ROOT / '04 Comparison and open problems.md', V / 'README.md',
                R / 'Independent reviews.md', PARENT / 'README.md']
evidence_docs = [PARENT / 'excluded-first-diagnostic.md', FINITE / 'proof.md',
                 FINITE / 'tool-diagnostics.md', NARROW / 'audit.md', DIV / 'report.md',
                 DIV / 'supplied-followup-det2-assessment.md', DIV_AUDIT / 'audit.md',
                 HESS / 'independent-derivation.md', HESS / 'followup.md',
                 HESS / 'evidence-and-diagnostics.md', HESS / 'supplied-note20-sections5-and7-audit.md']
links = []
for path in current_docs + evidence_docs:
    for target in re.findall(r'\]\(<([^>]+)>\)', text(path)):
        if target.startswith(('http:', 'https:')):
            continue
        filename, _, fragment = target.partition('#')
        dest = Path(filename)
        if not dest.is_absolute():
            dest = path.parent / dest
        require(dest.exists(), 'missing link ' + target)
        if re.fullmatch(r'L\d+(?:-L?\d+)?', fragment):
            bounds = [int(n) for n in re.findall(r'\d+', fragment)]
            length = len(dest.read_bytes().splitlines())
            require(min(bounds) >= 1 and max(bounds) <= length and bounds == sorted(bounds), target)
        links.append({'source': str(path), 'target': target})
done('local links and line-bound checks', {'documents': len(current_docs + evidence_docs), 'link_occurrences': len(links), 'historical_sentence_identity_not_checked': True})

# Preserve known control-character errors in frozen reviews; require clean current docs.
controls = []
for path in current_docs + evidence_docs:
    for line, content in enumerate(text(path).split('\n'), 1):
        for col, char in enumerate(content, 1):
            if ord(char) < 32 and char != '\t':
                controls.append({'file': str(path), 'line': line, 'column': col, 'codepoint': f'U+{ord(char):04X}'})
require(not any(entry['file'] in {str(p) for p in current_docs} for entry in controls), 'current document control characters')
nt = text(NOTE)
require(nt.count('\\[') == nt.count('\\]') and nt.count('\\(') == nt.count('\\)'), 'math delimiter balance')
require(nt.count('```') % 2 == 0, 'code fences')
for marker in ['U_0=1', 'K_*=K_0', 'C_\\delta', 'not its initial value',
               'An ordinary matrix transpose is not', 'no finite ordinary trace',
               'does not define a determinant of', 'not an inequality between gravitational partition functions']:
    require(marker in nt, 'scope/notation marker: ' + marker)
require(any(c['file'] == str(DIV_AUDIT / 'audit.md') and c['codepoint'] == 'U+000D' for c in controls), 'frozen carriage-return erratum')
require(any(c['file'] == str(HESS / 'followup.md') and c['codepoint'] == 'U+0008' for c in controls), 'frozen backspace erratum')
done('current rendering, scope markers and frozen errata inventory', {'frozen_controls': controls})

# Snapshot without writing to any previously existing result path.
self_bytes = data(Path(__file__))
out = Path(tempfile.mkdtemp(prefix='one-loop-bv-archive-audit.', dir=V))
(out / 'source.py').write_bytes(self_bytes)
result = {'all_passed': True, 'groups': groups,
          'note_sha256': hashlib.sha256(data(NOTE)).hexdigest(),
          'scope': 'Static archival checks only; no mathematical kernel rerun, no new theorem, and no semantic certification of historical line anchors.',
          'observed_files': observed, 'local_links': links}
(out / 'result.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
print(json.dumps({'output': str(out), 'all_passed': True, 'groups': len(groups),
                  'observed_files': len(observed), 'links': len(links),
                  'note_sha256': result['note_sha256']}, indent=2))
