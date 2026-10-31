from pathlib import Path
import json, hashlib
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo')
records=[
 ('gaussian','/Users/koishi/.dsh/research-results/session-ae0221270afb/6626874a07ee-research-result.json','gaussian_checks.py'),
 ('spectral','/Users/koishi/.dsh/research-results/session-ae0221270afb/fe28c2c5b192-research-result.json','spectral_checks.wl'),
 ('free_action','/Users/koishi/.dsh/research-results/session-ae0221270afb/9a72374b9cf7-research-result.json','free_action_checks.py')]
entries=[]
for label,source,code in records:
 raw=Path(source).read_bytes(); data=json.loads(raw)
 dest=OUT/(label+'_actual_tool_return.json')
 if dest.exists(): raise RuntimeError('Refuse to overwrite frozen raw return '+str(dest))
 dest.write_bytes(raw)
 ent={'label':label,'tool':data['tool'],'completeness':data['completeness'],'upstreamTruncated':data['upstreamTruncated'],'source_code':code,'source_sha256':hashlib.sha256((OUT/code).read_bytes()).hexdigest(),'raw_return':dest.name,'raw_return_sha256':hashlib.sha256(raw).hexdigest(),'arguments':data['arguments']}
 if data['tool']=='mcp__sage__sage_run':
  value=data['received']['value']['structuredContent']
  result=json.loads(value['stdout'])
  ent.update({k:value.get(k) for k in ['ok','truncated','stdoutTruncated','stderr','stderrTruncated','warnings','warningsTruncated','error','transportStderr','sageVersion']})
  ent['check_count']=len(result['checks']);ent['failed_checks']=[k for k,v in result['checks'].items() if v is not True]
  ent['reported_failures']=result['failures']
 else:
  text='\n'.join(x.get('text','') for x in data['received']['value']['content'])
  ent['server_output_contains_expected_integral_residuals']='ActualIntegralResiduals -> {0, 0}' in text
  ent['server_output_contains_expected_finite_part_residual']='FinitePartResidual -> 0' in text
  ent['server_output_contains_empty_message_list']='Messages -> {}' in text
  ent['failed_or_aborted_marker_present']=('$Failed' in text or '$Aborted' in text)
 entries.append(ent)
envelope={'scope':'Only exact Gaussian finite-fiber, explicit spectral integrals, and physical-action first-jet checks. Global analytic claims remain in proof.md and free_Q0_addendum.md.', 'runs':entries,'failures_disclosed':'No failure in these three follow-up calls; frozen original tadpole run has a separately disclosed Series order error.'}
path=OUT/'evidence_envelope.json'
if path.exists(): raise RuntimeError('Refuse to overwrite evidence envelope')
path.write_text(json.dumps(envelope,indent=2)+'\n')
print(json.dumps(envelope,indent=2))
