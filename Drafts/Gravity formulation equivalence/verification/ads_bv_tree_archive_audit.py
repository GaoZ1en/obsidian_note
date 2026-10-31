"""Static complete-AdS BV archive audit. No mathematical kernel is run."""
from pathlib import Path
import re, json, hashlib, tempfile

ROOT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
H = ROOT/'verification/ads-bv-hodge-parent.mo_zlba1'
N = ROOT/'verification/ads-bv-tree-normalization.2edo_wza'
A = ROOT/'reviews/cyclic-bv-independent-20261031-TAGvppMY'
B = ROOT/'reviews/quartic-bv-independent-20261031-083249-2d6ad9'
C = ROOT/'reviews/nonlinear-uv-domain-independent-20261031.1LbUTs'
CA = C/'supplied-note18-audit.ye33hb3w'
MAIN = ROOT/'18 Complete AdS BV contraction and tree transfer.md'
DOCS = [ROOT/p for p in ('README.md', '00 Research report.md',
    '04 Comparison and open problems.md',
    '17 Spectral BV compression and master-equation obstruction.md',
    '18 Complete AdS BV contraction and tree transfer.md',
    'verification/README.md', 'reviews/Independent reviews.md')]
DOCS += [H/'README.md', A/'report.md', A/'note18-supplied-text-audit.md',
    B/'independent-derivation.md', B/'supplied-note18-audit.md',
    C/'report.md', C/'FREEZE.md', C/'evidence-label-caveat.md', CA/'audit.md']

def load(p): return json.loads(p.read_text())
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def textsha(s): return hashlib.sha256(s.encode()).hexdigest()
checks, details = [], {}
def record(label, flag, data):
    checks.append({'label': label, 'passed': bool(flag)})
    details[label] = data

errors, occurrences = [], 0
for doc in DOCS:
    for dest in re.findall(r'\]\(<([^>]+)>\)', doc.read_text()):
        if re.match(r'https?://', dest): continue
        target, _, anchor = dest.partition('#')
        p = Path(target) if target.startswith('/') else doc.parent/target
        occurrences += 1
        if not p.exists():
            errors.append({'document': str(doc), 'target': dest, 'error': 'missing'})
            continue
        if anchor.startswith('L') and p.is_file():
            m = re.fullmatch(r'L(\d+)(?:-L?(\d+))?', anchor)
            if not m:
                errors.append({'document': str(doc), 'target': dest, 'error': 'line syntax'})
            else:
                lo, hi = int(m[1]), int(m[2] or m[1])
                if not 1 <= lo <= hi <= len(p.read_text().splitlines()):
                    errors.append({'document': str(doc), 'target': dest, 'error': 'line bounds'})
record('local links and historical line bounds', not errors,
       {'documents': len(DOCS), 'links': occurrences, 'errors': errors})

bm = load(B/'kernel-evidence-manifest.json')
expected = [(Path(v['path']), v['sha256']) for v in bm['frozen_files'].values()]
expected += [(Path(p), h) for p, h in re.findall(
    r'\]\(<([^>]+)>\)\s*\|\s*`([0-9a-f]{64})`', (C/'FREEZE.md').read_text())]
parents = load(H/'copy-manifest.json') + load(N/'copy-manifest.json')
expected += [(Path(e['copy']), e['sha256']) for e in parents]
expected += [
    (ROOT/'verification/ads_bv_hodge_checks.py', '2cb6e8995c638a2832405da4115c0b67883be6e3df92dbd3e302ab17c7a8a270'),
    (ROOT/'verification/ads_bv_tree_normalization_checks.py', 'b5cb8bed9cec89894ea48b0cc45deb13afe49e987260fb7e1cba80eaa60e029c'),
    (A/'report.md', 'ca848706febcbd571fce623d3d2ac2468e89e7fef5f24c7a6200a412c9e258eb'),
    (CA/'note18-snapshot.md', '77ae90273f915f7422aee94227b0817f250cd5973f7886fb8e741c5a437bb054')]
bad = [{'path': str(p), 'expected': h, 'actual': sha(p)} for p, h in expected if sha(p) != h]
record('frozen hashes and current parent mathematical sources', not bad,
       {'comparisons': len(expected), 'mismatches': bad})

copies = [{'source': e['source'], 'copy': e['copy'],
           'passed': Path(e['source']).read_bytes() == Path(e['copy']).read_bytes()} for e in parents]
for r in bm['runs']:
    p, q = Path(r['original_envelope']['path']), Path(r['preserved_envelope']['path'])
    copies.append({'source': str(p), 'copy': str(q), 'passed': p.read_bytes() == q.read_bytes()})
record('archived original byte copies', all(e['passed'] for e in copies), copies)

labels = []
for p, n in ((H/'result.json', 31), (N/'result.json', 6),
             (B/'checks.json', 41), (B/'torus-checks.json', 29), (C/'sage-checks.json', 11)):
    fields = load(p)['checks']
    flags = [x['passed'] for x in fields] if isinstance(fields, list) else list(fields.values())
    labels.append({'path': str(p), 'expected': n, 'actual': len(flags),
                   'passed': len(flags) == n and all(f is True for f in flags)})
for p, n in ((A/'algebra-preview-corrected.txt', 13), (C/'wall-checks.txt', 7)):
    text = p.read_text()
    block = text.split('"Checks" -> <|', 1)[1].split('|>', 1)[0]
    count = len(re.findall(r'->\s*True', block))
    good = count == n and not re.search(r'->\s*False', block)
    good = good and bool(re.search(r'"Failed"\s*->\s*False', text))
    good = good and bool(re.search(r'"Messages"\s*->\s*\{\}', text))
    labels.append({'path': str(p), 'expected': n, 'actual': count, 'passed': good})
record('saved mathematical result labels with declared scope', all(x['passed'] for x in labels), labels)

raw = [H/'actual-server-return.json', N/'actual-server-return.json',
       B/'kernel-heisenberg-success-envelope.json', B/'kernel-torus-success-envelope.json',
       B/'kernel-control-success-envelope.json', C/'sage-server-return.json']
diags = []
for p in raw:
    env = load(p); d = env['received']['value']['structuredContent']
    clean = (env['upstreamTruncated'] is False and d['ok'] is True and d['error'] is None
             and d['stderr'] == '' and d['warnings'] == [] and d['transportStderr'] == []
             and all(d[k] is False for k in ('truncated', 'stdoutTruncated', 'stderrTruncated', 'warningsTruncated')))
    digests = (textsha(d['stdout']) == d['stdoutSha256'] and textsha(d['stderr']) == d['stderrSha256']
               and textsha(env['arguments']['code']) == d['codeSha256'])
    diags.append({'path': str(p), 'passed': clean and digests,
                  'elapsedMs': d['elapsedMs'], 'version': d['sageVersion'],
                  'ok': d['ok'], 'error': d['error'], 'warnings': d['warnings'],
                  'stderr': d['stderr'], 'transportStderr': d['transportStderr']})
record('actual Sage diagnostics and returned string hashes', all(d['passed'] for d in diags), diags)

bindings = []
for r in bm['runs']:
    env = load(Path(r['preserved_envelope']['path']))
    out = env['received']['value']['structuredContent']['stdout']
    saved = Path(r['saved_output']['path']).read_text()
    exact = Path(r['stdout_file']['path']).read_text()
    bindings.append({'fixture': r['fixture'], 'passed': out == exact and out.startswith(saved),
                     'extra_stdout': out[len(saved):]})
for src, envelope in ((C/'finite-graded-check.py', C/'sage-server-return.json'),
                      (C/'wall-first-variation.wl', C/'wall-server-return.json')):
    submitted = load(envelope)['arguments']['code']; archived = src.read_text()
    bindings.append({'source': str(src), 'passed': archived in (submitted, submitted+'\n'),
                     'archival_extra_LF': archived == submitted+'\n'})
record('fixture stdout and exact inline-source bindings', all(x['passed'] for x in bindings), bindings)

wrecords = []
for p in (A/'kernel-corrected-return.json', C/'wall-server-return.json'):
    env = load(p)
    returned = env['received']['value']['content'][0]['text'].split('Output:\n', 1)[1]
    compact = re.sub(r'\s+', '', returned)
    good = env['upstreamTruncated'] is False
    good = good and (('AllChecksPassed->True' in compact and 'Failed->False' in compact
                      and 'Messages->{}' in compact) if p.parent == A else ',True,False,{}}' in compact)
    wrecords.append({'path': str(p), 'passed': good, 'actual_returned_output': returned,
                     'scope': 'No separate process-exit/stderr inventory is provided by this server.'})
record('actual Wolfram successful return flags', all(x['passed'] for x in wrecords), wrecords)

sensitivity = []
for name, count in (('', 48), ('torus-', 32)):
    left, right = B/(name+'quartic-master-left.txt'), B/(name+'quartic-master-right.txt')
    result = load(B/(name+'checks.json'))
    good = left.read_bytes() == right.read_bytes() and left.read_text().strip() not in ('', '0')
    good = good and result['counts']['ward_each_side'] == count
    sensitivity.append({'fixture': name or 'heisenberg', 'passed': good, 'ward_terms_per_side': count})
torus = load(B/'torus-checks.json')
cquartic = load(C/'sage-checks.json')['S4']
sensitivity.append({'fixture': 'endpoint-sensitive torus',
    'passed': torus['quartic_profiles'].get('(1, 2, 0, 1)') == 5})
sensitivity.append({'fixture': 'nonlinear native-Sage label caveat',
    'passed': all(v in cquartic for v in ('c0*b122', 'c1*b122'))
              and not re.search(r'\br[012]\b', cquartic) and (C/'evidence-label-caveat.md').is_file(),
    'scope': 'Ghost times physical antifield, not even ghost-antifield dependence.'})
record('nonzero Ward witnesses and explicit endpoint coverage', all(x['passed'] for x in sensitivity), sensitivity)

text = MAIN.read_text(); tags = re.findall(r'\\tag\{([^}]+)\}', text)
syntax = (text.count('\\[') == text.count('\\]') and text.count('\\(') == text.count('\\)')
          and len(tags) == len(set(tags)) and not any(ord(c)<32 and c not in '\n\r\t' for c in text))
required = ['UV exact projection', 'even ghost antifields use symmetric formal powers',
    'weak', 'strongly nondegenerate', 'not a finite-dimensional regularization',
    'before taking any finite part', r'\operatorname{supp}\chi',
    'diffeomorphism-ghost domain contain small compactly supported smooth vector fields independently of the coframe',
    'not a quantum equivalence theorem', 'ghost–physical-antifield terms']
# Bold formatting is immaterial to this scope-presence check.
plain = text.replace('**', '')
missing = [s for s in required if s not in plain]
record('main-note displays and critical qualifications', syntax and not missing,
       {'lines': len(text.splitlines()), 'display_pairs': text.count('\\['),
        'inline_pairs': text.count('\\('), 'tags': tags, 'missing': missing})

result = {'scope': 'Static archive/version/link/diagnostic check only; no math kernels, external URL test, or historical-anchor sentence certification.',
          'all_passed': all(x['passed'] for x in checks), 'checks': checks, 'details': details,
          'snapshots': [{'path': str(p), 'sha256': sha(p)} for p in DOCS],
          'auditor_sha256': sha(Path(__file__))}
out = Path(tempfile.mkdtemp(prefix='ads-bv-tree-audit.', dir=ROOT/'verification'))
(out/'result.json').write_text(json.dumps(result, indent=2)+'\n')
print(json.dumps({'result': str(out/'result.json'), 'all_passed': result['all_passed'],
                  'checks': checks, 'documents': len(DOCS), 'links': occurrences}, indent=2))
if not result['all_passed']: raise SystemExit(1)
