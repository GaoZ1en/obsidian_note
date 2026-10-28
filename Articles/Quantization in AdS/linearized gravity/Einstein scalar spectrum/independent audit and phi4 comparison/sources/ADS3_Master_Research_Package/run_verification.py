#!/usr/bin/env python3
"""Reproduce the mandatory audited eleven-task suite; fail on missing semantics."""
from datetime import datetime,timezone
from pathlib import Path
import argparse,hashlib,importlib.metadata,json,os,platform,subprocess,sys,time

ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'checks'))
from semantic_check import EXPECTED,no_optimization,validate_directory,mutation_checks

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def hashes(folder):
    return {str(p.relative_to(ROOT)):sha(p) for p in sorted(folder.rglob('*'))
            if p.is_file() and '__pycache__' not in p.parts}

def main():
    no_optimization()
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output-dir',type=Path,required=True)
    args=ap.parse_args()
    out=args.output_dir.resolve();code=ROOT/'code';research=code/'research'
    if out==code or code in out.parents:ap.error('Output directory must be outside code/.')
    out.mkdir(parents=True,exist_ok=True)
    if (out/'reproduction_summary.json').exists():ap.error('Use a fresh output directory to preserve run provenance.')
    before=hashes(code)
    (out/'code_hashes_before.json').write_text(json.dumps(before,indent=2)+'\n')
    jobs=[
      ('independent_flags','audit/independent_flag_transfer.py',['--extended'],'Independent exact physical Gram and all-pair flag transfer.'),
      ('coherent_bounds','soft/verify_coherent_bounds.py',[],'Exact pair bounds, coherent slot identities and rational tails.'),
      ('boundary_layer','audit/boundary_layer_certificate.py',[],'Finite-group and exact counting boundary certificate.'),
      ('universal_chiral','universality/universal_chiral_defect.py',[],'Generic channel defects and six determining jets; order theorem is proved in the note.'),
      ('partition_hierarchy','cluster/verify_partition_hierarchy.py',[],'Exact partition algebra; marked numerical overlap diagnostics.'),
      ('fixed_q_exchange','cluster/verify_fixed_q_exchange.py',['--workspace',str(code)],'Exact exchange budgets and nonchiral Bose examples.'),
      ('bose_clusters','cluster/verify_partition_hierarchy.py',['--workspace',str(code),'--only-bose','--bose-degrees','12','24'],'Five-body exact Bose norms, Rayleigh quotients and residuals.'),
      ('soft_inertia_P16Q8','soft/exact_soft_inertia.py',['--left','16','--right','8','--thresholds','1/5,1/3'],'Strict finite rational interval and separate nullities.'),
      ('soft_inertia_P32Q16','soft/exact_soft_inertia.py',[],'Strict finite rational interval and separate nullities.'),
      ('oriented_comparator','cluster/five_body_comparator.py',['--verify-oriented-only','--analytic-root',str(code)],'Six exact oriented characteristic-polynomial comparisons.'),
      ('finite_comparator_smoke','cluster/five_body_comparator.py',['--Delta','2','--Q','1','--R','4','--analytic-root',str(code)],'Finite recursive comparator; binary64 roots are diagnostics.')]
    if [j[0] for j in jobs]!=EXPECTED:raise RuntimeError('Internal required task mismatch.')
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['OPENBLAS_NUM_THREADS']='1';env['PYTHONOPTIMIZE']='0'
    rows=[];started=time.perf_counter()
    summary={'schema':'ADS3-master-verification-v1','status':'running',
      'start_utc':datetime.now(timezone.utc).isoformat(),'python':sys.version,'platform':platform.platform(),
      'dependencies':{n:importlib.metadata.version(n) for n in ['sympy','mpmath','python-flint','numpy','scipy']},
      'optimization':sys.flags.optimize,'checks':rows}
    for name,rel,extra,scope in jobs:
        script=research/rel;cert=out/(name+'.json');tick=time.perf_counter()
        if not script.is_file():raise FileNotFoundError('Required task absent: '+str(script))
        print(json.dumps({'stage':'start','task':name}),flush=True)
        cmd=[sys.executable,str(script),*extra,'--output',str(cert)]
        run=subprocess.run(cmd,cwd=ROOT,env=env,capture_output=True,text=True)
        (out/(name+'.stdout.log')).write_text(run.stdout)
        (out/(name+'.stderr.log')).write_text(run.stderr)
        row={'name':name,'command':cmd,'exit_code':run.returncode,'seconds':round(time.perf_counter()-tick,6),
          'source_relative_path':str(script.relative_to(ROOT)),'source_sha256':sha(script),
          'certificate':cert.name,'certificate_sha256':sha(cert) if cert.is_file() else None,
          'status':'passed' if run.returncode==0 and cert.is_file() else 'failed','scope':scope}
        rows.append(row)
        print(json.dumps({'stage':'finished',**{k:row[k] for k in ['name','status','seconds']}}),flush=True)
    summary.update(status='passed' if all(r['status']=='passed' for r in rows) else 'failed',
                   certificate_count=len(rows),elapsed_seconds=round(time.perf_counter()-started,6))
    after=hashes(code)
    (out/'code_hashes_after.json').write_text(json.dumps(after,indent=2)+'\n')
    summary['code_unchanged']=before==after
    if before!=after:summary['status']='failed'
    (out/'reproduction_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    try:
        semantic=validate_directory(ROOT,out)
        if before!=after:raise ValueError('Code changed during verification.')
        mutations=mutation_checks(ROOT,out)
        (out/'checker_mutation_results.json').write_text(json.dumps(mutations,indent=2)+'\n')
        # The rejection must survive invoking the runner with optimization.
        optimized=subprocess.run([sys.executable,'-O',str(ROOT/'run_verification.py'),'--output-dir',str(out/'forbidden_optimized_run')],
                                 env=env,capture_output=True,text=True)
        if optimized.returncode==0 or 'optimization is forbidden' not in optimized.stderr:
            raise ValueError('Optimized invocation was not rejected with the expected reason.')
        semantic['optimized_invocation_rejected']=True
        semantic['negative_payload_mutations_rejected']=len(mutations['cases'])
    except Exception as err:
        semantic={'status':'failed','error':repr(err)}
    (out/'semantic_check.json').write_text(json.dumps(semantic,indent=2)+'\n')
    print(json.dumps(semantic),flush=True)
    if semantic['status']!='passed':raise SystemExit(1)

if __name__=='__main__':main()
