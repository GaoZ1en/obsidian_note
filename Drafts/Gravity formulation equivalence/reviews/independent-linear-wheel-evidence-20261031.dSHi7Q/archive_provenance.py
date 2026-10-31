"""Byte-copy existing evidence and hash it. This script executes no mathematical source."""
from pathlib import Path
import hashlib, json
from datetime import datetime, timezone
OUT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-evidence-20261031.dSHi7Q')
OLD=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-linear-wheel-20261031.BVMZaG')
old_names=['fiber_checks.py','fiber_actual_output.json','fiber_actual_output.txt','spectral_checks.wl','spectral_actual_output.wxf','spectral_actual_output.txt','spectral_checks_v2.wl','spectral_actual_output_v2.wxf','spectral_actual_output_v2.txt','proof.md']
def sha(data): return hashlib.sha256(data).hexdigest()
before={name:sha((OLD/name).read_bytes()) for name in old_names}
runs=[
 ('initial_fiber','/Users/koishi/.dsh/research-results/session-ae0221270afb/df91bd0fa727-research-result.json','fiber_checks.py'),
 ('first_spectral_partial_failure','/Users/koishi/.dsh/research-results/session-ae0221270afb/243ee071af97-research-result.json','spectral_checks.wl'),
 ('spectral_v2_success','/Users/koishi/.dsh/research-results/session-ae0221270afb/7d9219b9aff0-research-result.json','spectral_checks_v2.wl')]
entries=[]
for label,rawpath,source in runs:
 raw=Path(rawpath).read_bytes(); data=json.loads(raw)
 dest=OUT/(label+'_original_server_return.json')
 sourcecopy=OUT/(label+'_source_snapshot'+Path(source).suffix)
 for p in (dest,sourcecopy):
  if p.exists(): raise RuntimeError('Refuse to overwrite '+str(p))
 dest.write_bytes(raw); sourcebytes=(OLD/source).read_bytes(); sourcecopy.write_bytes(sourcebytes)
 entry={'label':label,'original_envelope_path':rawpath,'archived_envelope_path':str(dest),'raw_envelope_sha256':sha(raw),'byte_copy_verified':dest.read_bytes()==raw,'original_source_path':str(OLD/source),'source_snapshot_path':str(sourcecopy),'source_snapshot_sha256':sha(sourcebytes),'source_snapshot_byte_copy_verified':sourcecopy.read_bytes()==sourcebytes,'source_hash_scope':'Hash of unchanged source file copied at supplement creation; original server arguments and wrapper-code hash are preserved separately, not relabelled as the file hash.','original_tool':data['tool'],'original_callId':data['callId'],'original_sessionId':data['sessionId'],'completeness':data['completeness'],'upstreamTruncated':data['upstreamTruncated'],'original_arguments':data['arguments']}
 if data['tool']=='mcp__sage__sage_run':
  obj=data['received']['value']['structuredContent']; mathematical=json.loads(obj['stdout'])
  entry['original_structured_diagnostics']={k:obj.get(k) for k in ['ok','truncated','stdoutTruncated','stderr','stderrTruncated','warnings','warningsTruncated','error','transportStderr','sageVersion','elapsedMs','codeSha256','stdoutSha256','stderrSha256']}
  entry['mathematical_check_count']=len(mathematical['checks'])
  entry['failed_mathematical_checks']=[k for k,v in mathematical['checks'].items() if v is not True]
  entry['failure_disclosure']='No failed mathematical checks. Original version() DeprecationWarning is preserved, not suppressed.'
 else:
  text='\n'.join(c.get('text','') for c in data['received']['value']['content'])
  entry['observed_output_markers']={'Series::serlim':'Series::serlim' in text,'unevaluated_TailAsymptotic_Series':'TailAsymptotic -> Series[' in text,'evaluated_TailAsymptotic_SeriesData':'TailAsymptotic -> SeriesData[' in text,'empty_message_list':'Messages -> {}' in text,'Failed_or_Aborted':('$Failed' in text or '$Aborted' in text),'zero_integral_residuals':'IntegralResiduals -> {0, 0, 0}' in text,'zero_lowband_primitive_residuals':'LowBandPrimitiveResiduals -> {0, 0, 0}' in text,'zero_a0_a2_a4_residuals':all(k+' -> {0, 0, 0}' in text for k in ['a0Residuals','a2Residuals','a4Residuals'])}
  entry['failure_disclosure']=('Partial mathematical failure: noninteger Series order 5/2 emitted Series::serlim and left the tail asymptotic unevaluated. The original partial result is preserved; this run is not represented as wholly successful.' if 'Series::serlim' in text else 'Corrected original v2 run: evaluated tail asymptotic, zero displayed residuals, empty message list. No rerun was performed for this supplement.')
 entries.append(entry)
after={name:sha((OLD/name).read_bytes()) for name in old_names}
if before!=after: raise RuntimeError('Frozen original content changed during archival')
manifest={'supplement_created_utc':datetime.now(timezone.utc).isoformat(),'operation':'Archive existing original server envelopes and unchanged source snapshots by byte copy; compute SHA256 only. No mathematical code was executed.','original_directory':str(OLD),'original_files_sha256_before':before,'original_files_sha256_after':after,'all_frozen_original_hashes_unchanged':before==after,'runs':entries}
manifestpath=OUT/'evidence_supplement.json'
if manifestpath.exists(): raise RuntimeError('Refuse to overwrite manifest')
manifestpath.write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'supplement':str(manifestpath),'all_frozen_original_hashes_unchanged':before==after,'runs':[{'label':e['label'],'raw_envelope_sha256':e['raw_envelope_sha256'],'source_snapshot_sha256':e['source_snapshot_sha256'],'failure_disclosure':e['failure_disclosure']} for e in entries]},indent=2))
