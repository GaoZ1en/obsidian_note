"""Plot proved coefficient-kernel counts, not numerically thresholded eigenvalues.
Contact: N=3 balanced rank=P for P>=1. Einstein: residual kernel zero
at P=Q, because P>=Q+12 is necessary. Both are first-order operators.
"""
from pathlib import Path
import json
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
ROOT=Path(__file__).resolve().parents[1]
rows=[]
for p in range(1,37):
    e=int(p%2==0); c=(1,-1,0)[p%3]
    d=((p+1)**2+3*e+2*c*c)//6
    mt=(p+1+3*e+2*c)//6
    ms=(p+1-3*e+2*c)//6
    mv=(p+1-c)//3
    odd=sum(m*(m-1)//2 for m in (mt,ms,mv))
    rows.append(dict(P=p,dimension=d,contact_rank=p,contact_kernel=d-p,
                     contact_odd_kernel=odd,contact_even_kernel=d-p-odd,
                     Einstein_residual_kernel=0))
plt.rcParams.update({'font.size':11,'axes.spines.top':False,'axes.spines.right':False})
fig,ax=plt.subplots(1,2,figsize=(10.4,4.2),layout='constrained')
p=[x['P'] for x in rows]
ax[0].plot(p,[x['contact_kernel']/x['dimension'] for x in rows],color='#167d8d',lw=2,label=r'$\phi^4$: exact kernel fraction')
ax[0].plot(p,[0]*len(p),color='#b64b56',lw=2,ls='--',label='Einstein residual: exact kernel fraction')
ax[0].set(xlabel=r'Balanced degree $P=Q$',ylabel='Exact kernel / physical dimension',ylim=(-.035,1.02),xlim=(1,36))
ax[0].legend(loc='lower right',fontsize=9)
small=rows[:16];ps=[x['P'] for x in small];odd=[x['contact_odd_kernel'] for x in small];even=[x['contact_even_kernel'] for x in small]
ax[1].bar(ps,odd,color='#167d8d',label='Left-right odd zero modes')
ax[1].bar(ps,even,bottom=odd,color='#e4ac5b',label='Additional even zero modes')
ax[1].set(xlabel=r'Balanced degree $P=Q$',ylabel=r'$\phi^4$ exact kernel dimension',xticks=[2,4,6,8,10,12,14,16])
ax[1].legend(loc='upper left',fontsize=9)
fig.suptitle(r'$N=3$, all $\Delta>1$: exact first-order coefficient counts',fontsize=14)
fig.savefig(ROOT/'figures'/'balanced_kernel_comparison.png',dpi=180)
plt.close(fig)
(ROOT/'results'/'kernel_fraction_plot_data.json').write_text(json.dumps({'scope':'proved counts, no numerical zero threshold; Einstein quantity is W-bI, contact is total coefficient','data':rows},indent=2)+'\n')
print(ROOT/'figures'/'balanced_kernel_comparison.png')
