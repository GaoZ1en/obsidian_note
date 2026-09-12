"""Compare the analytic channel formulas with exact radial integrals and Hahn
reconstruction. This is a finite independent check, not the all-level proof.
Usage: python verify_radial.py --level 12 --output radial_report.json
"""
import argparse,json,time
from fractions import Fraction as F
from channel_checks import reconstruct,candidate

def channel_formula(n,ell,d,channel):
    d=F(d);h=d+n;mu=d*(d-2);C=h*(h-1)
    U=4*(mu-2*C)
    cross=U*(2*h-2)/(2*h-1) if ell==0 else U
    if channel=='cross':return cross
    if ell==0:
        # Cancel the removable point before numerical evaluation.
        ann=-2*d*d*(2*d-3)/((2*d-1)*(2*d+1)) if n==0 else -2*(C+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    elif ell==2:
        ann=F((n+1)*(n+2)*(2*d+n-1)*(2*d+n))/((2*h-1)*(2*h+1)*(2*h+3))
    else:ann=F(0)
    return ann if channel=='s' else cross+ann

def run(level=12):
    records=[]
    for delta in [F(21,20),F(3,2),F(2),F(7,3)]:
        channels={}
        for channel in ['all','cross','s']:
            start=time.monotonic()
            data,diagnostics=reconstruct(level,delta,channel)
            for (n,ell),value in data.items():
                assert value==channel_formula(n,ell,delta,channel),(delta,channel,n,ell,value)
            channels[channel]=data
            records.append({'Delta':str(delta),'channel':channel,'N_max':level,'coefficients':len(data),
                'elapsed_seconds':round(time.monotonic()-start,3),'all_residuals_zero':True,
                'values':[{'n':n,'abs_ell':ell,'gamma_over_G':str(v)} for (n,ell),v in sorted(data.items())]})
            print(f'Delta={delta}, {channel}: {len(data)} exact coefficients PASS',flush=True)
        for key,value in channels['all'].items():
            assert value==channels['s'][key]+channels['cross'][key]
            assert value==candidate(*key,delta)
    return {'status':'PASS','max_N':level,'coefficient_comparisons':sum(x['coefficients'] for x in records),'runs':records}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--level',type=int,default=12);ap.add_argument('--output',default='radial_report.json')
    args=ap.parse_args();report=run(args.level)
    with open(args.output,'w') as f:json.dump(report,f,indent=2)
    print(f"PASS: {report['coefficient_comparisons']} exact channel-coefficient comparisons")
