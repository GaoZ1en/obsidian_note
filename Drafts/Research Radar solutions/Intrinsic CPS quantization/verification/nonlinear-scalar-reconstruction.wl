ClearAll["Global`*"];

lag=pt^2/2-px^2/2-mass^2 p^2/2-lam p^4/24;
el=D[lag,p]-ptt D[lag,pt,pt]-pxx D[lag,px,px];
ell=-ptt+pxx-mass^2 p-lam p^3/6;
lin=Coefficient[Expand[(ell/.{p->p+ee v,ptt->ptt+ee vtt,pxx->pxx+ee vxx})],ee,1];
en=pt ptt+px pxt+mass^2 p pt+lam p^3 pt/6;
fluxdiv=pxt px+pt pxx;
wtd=(vtt w-wtt v);wxd=(vxx w-wxx v);
curr=Expand[wtd-wxd+((-vtt+vxx-(mass^2+lam p^2/2)v)w-(-wtt+wxx-(mass^2+lam p^2/2)w)v)];
cubic=Expand[(p+v)^3-p^3-Integrate[3(p+s v)^2 v,{s,0,1}]];
jac=Expand[(af rg-rf ag)(rh-ah)+(ag rh-rg ah)(rf-af)+(ah rf-rh af)(rg-ag)];
omega= xp vq-vp xq;
hamres=Expand[(omega/.{xq->fp,xp->-fq})+fq vq+fp vp];
<|"Euler_Lagrange_residual"->Expand[el-ell],"linearized_operator"->lin,"energy_balance_residual"->Expand[en-fluxdiv+pt ell],"symplectic_current_residual"->curr,"nonlinear_Hadamard_cubic_residual"->cubic,"propagator_Jacobi_term"->jac,"Hamiltonian_sign_residual"->hamres,"cutoff_source"->-chiTT vv-2chiT vvT|>

