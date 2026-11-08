"""Fail-closed certificate semantics; this is not an all-index theorem prover.

The retained audit supplied the required-task and exact-inertia logic. This
integration makes every default task mandatory and rejects optimized Python.
Reference reports specify structural coverage and assertion booleans only;
they are inherited records, not results of the present execution.
"""
from fractions import Fraction as F
from pathlib import Path
import copy, hashlib, json, os, sys

EXPECTED=['independent_flags','coherent_bounds','boundary_layer','universal_chiral',
 'partition_hierarchy','fixed_q_exchange','bose_clusters','soft_inertia_P16Q8',
 'soft_inertia_P32Q16','oriented_comparator','finite_comparator_smoke']

def require(ok,message):
    if not ok:
        raise ValueError(message)

def no_optimization():
    require(sys.flags.optimize==0,'Python optimization is forbidden: assertions are required.')
    require(os.environ.get('PYTHONOPTIMIZE','') in ('','0'),
            'PYTHONOPTIMIZE must be unset or zero.')

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()

def compare_schema(actual,reference,path):
    if isinstance(reference,bool):
        require(type(actual) is bool and actual==reference,path+' expected assertion boolean')
    elif isinstance(reference,dict):
        require(isinstance(actual,dict),path+' dictionary')
        for k,v in reference.items():
            require(k in actual,path+'.'+k+' required field')
            if k=='status':
                require(actual[k]==v,path+'.status expected success/diagnostic status')
            compare_schema(actual[k],v,path+'.'+k)
    elif isinstance(reference,list):
        require(isinstance(actual,list) and len(actual)==len(reference),path+' exact list coverage')
        for i,(x,y) in enumerate(zip(actual,reference)):
            compare_schema(x,y,path+f'[{i}]')

def scan_statuses(value,path):
    if isinstance(value,dict):
        for k,v in value.items():
            if k=='status':
                require(v in ('passed','all_passed',
                    'finite numerical check of proved exact block decomposition'),path+' unexpected status '+str(v))
            scan_statuses(v,path+'.'+k)
    elif isinstance(value,list):
        for i,v in enumerate(value): scan_statuses(v,path+f'[{i}]')

def validate_payloads(summary,payloads,references):
    no_optimization()
    require(summary.get('status')=='passed','runner overall success required')
    require(summary.get('certificate_count')==len(EXPECTED),'all eleven tasks required')
    require([r.get('name') for r in summary.get('checks',[])]==EXPECTED,'exact task set and order')
    require(set(payloads)==set(EXPECTED),'no missing or extra default payload')
    for row in summary['checks']:
        n=row['name']
        require(row.get('exit_code')==0 and row.get('status')=='passed',n+' subprocess success')
        scan_statuses(payloads[n],n)
        compare_schema(payloads[n],references[n],n)
    for n,P,Q,lo,hi in [('soft_inertia_P16Q8',16,8,'1/5','1/3'),
                        ('soft_inertia_P32Q16',32,16,'1/6000','1/5000')]:
        d=payloads[n]
        require((d['P'],d['Q'],d['Delta'])==(P,Q,'2'),n+' input tuple')
        cyc=(1,-1,0)
        dim=((P+1)*(Q+1)+3*(P%2==0 and Q%2==0)+2*cyc[P%3]*cyc[Q%3])//6
        kernel=sum(2*a+3*b==P-12-Q-j for j in range(Q+1)
            for a in range(P//2+1) for b in range(P//3+1))
        rank=dim-kernel
        expected_labels=[[k,l] for l in range(Q+1)
                         for k in range(min(P,l+2)+1) if (k+l)%2==0]
        require(d['labels']==expected_labels,n+' complete bad-channel label list')
        aux=len(expected_labels);az=aux-rank
        require([d['physical_dimension'],d['physical_exact_kernel'],d['physical_positive_rank'],
           d['auxiliary_dimension'],d['auxiliary_zeros_discarded']]==[dim,kernel,rank,aux,az],
           n+' independently enumerated dimensions/kernel/nullity')
        require(len(d['weights'])==len(d['positive_pair_potentials'])==aux,n+' pencil sizes')
        require(all(F(x)>0 for x in d['weights']+d['positive_pair_potentials']),n+' positive congruence')
        rows=d['threshold_certificates']
        require([r['threshold'] for r in rows]==['0',lo,hi],n+' all three exact thresholds')
        for row in rows:
            inertia=row['inertia']
            require(all(type(inertia[k]) is int and inertia[k]>=0 for k in ('positive','negative','zero')),
                    n+' nonnegative integer inertia')
            require(sum(inertia[k] for k in ('positive','negative','zero'))==aux,n+' full inertia accounting')
            require(inertia['pivot_signs'].count(1)==inertia['positive'] and
                    inertia['pivot_signs'].count(-1)==inertia['negative'],n+' pivot-sign accounting')
        zero,lower,upper=rows
        require([zero['inertia'][k] for k in ('positive','negative','zero')]==[rank,0,az],n+' PSD zero pencil')
        for row in (lower,upper):
            require(row['strictly_positive_eigenvalues_below_threshold']==row['inertia']['negative']-az,
                    n+' auxiliary-to-physical negative count')
            require(row['strictly_positive_eigenvalues_equal_threshold']==row['inertia']['zero'],
                    n+' threshold equality count')
        require(lower['strictly_positive_eigenvalues_below_threshold']==0 and
                lower['strictly_positive_eigenvalues_equal_threshold']==0,n+' strict lower endpoint')
        require(upper['strictly_positive_eigenvalues_below_threshold']>=1,n+' strict upper endpoint')
    for row in payloads['bose_clusters']['five_body_Bose_quasimodes']:
        norm,res=F(row['Bose_Gram_scaled_exact']),F(row['normalized_residual_squared_exact'])
        require(norm>0 and res>=0,'positive Bose source norm and residual square')
        require((F(row['Rayleigh_exact'])-F(row['target_cluster_value']))**2<=res,
                'Rayleigh error bounded by actual exact residual')
    require(payloads['boundary_layer']['counts']['exact_cases_checked']==6560,'boundary grid coverage 6560')
    require(len(payloads['oriented_comparator']['checks'])==6,'six oriented characteristic-polynomial tests')
    d=payloads['finite_comparator_smoke']
    require((d['Delta'],d['fixed_Q'],d['internal_left_cutoff_R'])==('2',1,4),'comparator input tuple')
    return {'status':'passed','required_tasks':len(EXPECTED),'scope':
      'Task coverage, payload statuses, assertion fields, exact dimensions, Bose residuals, and strict rational intervals. Not a theorem prover.'}

def load_references(root):
    return {n:json.loads((root/'checks/reference/hierarchy'/(n+'.json')).read_text()) for n in EXPECTED}

def validate_directory(root,out):
    summary=json.loads((out/'reproduction_summary.json').read_text())
    payloads={n:json.loads((out/(n+'.json')).read_text()) for n in EXPECTED}
    result=validate_payloads(summary,payloads,load_references(root))
    for row in summary['checks']:
        n=row['name'];p=out/(n+'.json')
        require(row['certificate']==p.name,n+' expected filename')
        require(sha(p)==row['certificate_sha256'],n+' payload hash')
        require(sha(root/row['source_relative_path'])==row['source_sha256'],n+' source hash')
    return result

def mutation_checks(root,out):
    summary=json.loads((out/'reproduction_summary.json').read_text())
    payloads={n:json.loads((out/(n+'.json')).read_text()) for n in EXPECTED}
    refs=load_references(root)
    cases=[
      ('top_level_failure',lambda s,p:p['coherent_bounds'].update(status='failed')),
      ('false_proof_flag',lambda s,p:p['independent_flags']['cases'][0].update(metric_identity=False)),
      ('wrong_lower_bound',lambda s,p:p['soft_inertia_P32Q16']['threshold_certificates'][1].update(strictly_positive_eigenvalues_below_threshold=1)),
      ('wrong_kernel',lambda s,p:p['soft_inertia_P32Q16'].update(physical_exact_kernel=5)),
      ('missing_task',lambda s,p:s.update(certificate_count=10)),
      ('missing_fixed_q_exchange',lambda s,p:p.pop('fixed_q_exchange')),
      ('forged_interval',lambda s,p:p['soft_inertia_P32Q16']['threshold_certificates'][2].update(strictly_positive_eigenvalues_below_threshold=0)),
      ('skipped_payload',lambda s,p:p['coherent_bounds'].update(status='skipped')),
      ('missing_field',lambda s,p:p['soft_inertia_P16Q8'].pop('physical_dimension')),
    ]
    rows=[]
    for name,mutate in cases:
        ss,pp=copy.deepcopy(summary),copy.deepcopy(payloads)
        mutate(ss,pp)
        try: validate_payloads(ss,pp,refs)
        except (ValueError,KeyError,TypeError) as err:
            rows.append({'mutation':name,'rejected':True,'reason':str(err)})
        else: raise ValueError('Invalid payload accepted: '+name)
    return {'status':'passed','cases':rows,'scope':'Negative tests of the validator, not physics tests.'}

if __name__=='__main__':
    no_optimization()
    import argparse
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('output_dir',type=Path)
    args=parser.parse_args()
    print(json.dumps(validate_directory(Path(__file__).resolve().parents[1],args.output_dir.resolve()),indent=2))
