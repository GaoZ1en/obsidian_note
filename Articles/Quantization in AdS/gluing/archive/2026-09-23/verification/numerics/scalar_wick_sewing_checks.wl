(* Free scalar Wick sewing: exact identities and explicitly labelled numerical diagnostics. *)
ClearAll["Global`*"];

ClearAll[gD,hP,ks,sh,cn,xx,yy,cc,op,wp];
gD[a_,u_,v_]:=Sinh[k u]Sinh[k(a-v)]/(k Sinh[k a]);
hP[a_,u_]:=Sinh[k u]/Sinh[k a];
ks=Sinh[k a]Sinh[k b]/(k Sinh[k(a+b)]);
sh[z_]:=FullSimplify[TrigToExp[z],Assumptions->{k>0,a>0,b>0}];
green=<|"same-region"->sh[gD[a,u,v]+hP[a,u]ks hP[a,v]-gD[a+b,u,v]],"cross-region"->sh[hP[a,u]ks hP[b,v]-gD[a+b,u,a+b-v]],"history"->sh[ks-gD[a+b,a,a]]|>;
xx={x0,x1,x2};yy={y0,y1,y2};cc=Array[c,{3,3}];weights={m^2,1,1};
op[p_]:=Sum[cc[[i,j]]D[p,xx[[i]],yy[[j]]],{i,3},{j,3}];
wp[f_,g_]:=Expand[f g+hb op[f g]+hb^2 op[op[f g]]/2];
tx=Sum[weights[[i]]xx[[i]]^2/2,{i,3}];ty=Sum[weights[[j]]yy[[j]]^2/2,{j,3}];
vtest=Expand[wp[x0^2,y0^2]-(x0^2 y0^2+4hb c[1,1]x0 y0+2hb^2 c[1,1]^2)];
ttest=Expand[wp[tx,ty]-(tx ty+hb Sum[weights[[i]]weights[[j]]cc[[i,j]]xx[[i]]yy[[j]],{i,3},{j,3}]+hb^2/2 Sum[weights[[i]]weights[[j]]cc[[i,j]]^2,{i,3},{j,3}])];
mixed=Expand[wp[x0^2,ty]-(x0^2 ty+2hb Sum[weights[[j]]cc[[1,j]]x0 yy[[j]],{j,3}]+hb^2 Sum[weights[[j]]cc[[1,j]]^2,{j,3}])];
sqcomm=Expand[2hb^2((re+I ee/2)^2-(re-I ee/2)^2)-4I hb^2 ee re];
ch[z_]:=-Pi/(16len^2)Csc[Pi z/(2len)]^2;
laurent=FullSimplify[Normal[Series[ch[z],{z,0,0}]]+1/(4Pi z^2)+Pi/(48len^2)];
double=FullSimplify[Normal[Series[2hb^2 ch[z]^2,{z,0,-2}]]-hb^2/(8Pi^2 z^4)-hb^2/(48len^2 z^2)];
spectral=FullSimplify[Sum[n(nn-n),{n,1,nn-1}]-nn(nn^2-1)/6,Assumptions->Element[nn,Integers]&&nn>=2];
vfinite=FullSimplify[Limit[Log[Sin[Pi(2x+eps)/(2len)]/Sin[Pi eps/(2len)]]/(2Pi)+Log[mu eps]/(2Pi),eps->0,Direction->"FromAbove"]-Log[2mu len Sin[Pi x/len]/Pi]/(2Pi),Assumptions->{len>0,0<x<len,mu>0}];
checksOne=<|"regional response"->green,"Wick square"->vtest,"Wick stress"->ttest,"Wick mixed"->mixed,"square commutator"->sqcomm,"chiral subtraction"->laurent,"double-contraction Laurent"->double,"spectral central coefficient"->spectral,"local square subtraction"->vfinite|>;

cl[s_,ll_,ep_]:=-Log[1-Exp[-I Pi(s-I ep)/ll]]/(4Pi);
wc[tt_,xx_,yy_,ll_,ep_]:=cl[tt-xx+yy,ll,ep]+cl[tt+xx-yy,ll,ep]-cl[tt-xx-yy,ll,ep]-cl[tt+xx+yy,ll,ep];
dch=FullSimplify[-D[cl[s,len,0],{s,2}]+Pi/(16len^2)Csc[Pi s/(2len)]^2,Assumptions->{len>0,Element[s,Reals]}];
logratio=Log[Sin[5Pi/16]/Sin[Pi/16]];
target=logratio/(4Pi)-I/4;
cross=N[wc[3/4,3/4,5/4,2,10^-45]-target,55];
mode=N[Sum[Sin[n Pi(3/4)/2]Sin[n Pi(5/4)/2]Exp[-I n Pi((3/4)-I/20)/2]/(Pi n),{n,1,1000}]-wc[3/4,3/4,5/4,2,1/20],40];
centralShift=FullSimplify[-Pi/(24len^2)-2(-Pi/(48len^2))];
checksTwo=<|"chiral derivative"->dch,"cross-log residual < 1e-40"->(Abs[cross]<10^-40),"regulated mode/log comparison < 1e-30"->(Abs[mode]<10^-30),"central delta-prime cancellation"->centralShift,"square cross W real and imaginary"->N[{Re[target],Im[target]},16],"square central commutator per i hbar2"->N[-logratio/(2Pi),12],"stress double contraction L4 per hbar2"->N[Pi^2/(128)(3Csc[5Pi/16]^4+Csc[Pi/16]^4),12]|>;

cl[s_,ll_,ep_]:=-Log[1-Exp[-I Pi(s-I ep)/ll]]/(4Pi);
wc[tt_,xx_,yy_,ll_,ep_]:=cl[tt-xx+yy,ll,ep]+cl[tt+xx-yy,ll,ep]-cl[tt-xx-yy,ll,ep]-cl[tt+xx+yy,ll,ep];
ww=wc[t,x,y,1,ep];
wd={-D[ww,{t,2}],D[ww,t,y],-D[ww,x,t],D[ww,x,y]};
wdd=wd/.Thread[{t,x,y,ep}->N[{3/8,3/8,5/8,10^-45},70]];
ttnum=(Total[wdd^2])/2;
target=Pi^2/(128)(3Csc[5Pi/16]^4+Csc[Pi/16]^4);
wm=-Log[mu^2((x-y)^2-(t-I ep)^2)]/(4Pi);
ren=( -D[ww-wm,{t,2}]+D[ww-wm,x,y])/2;
renNum=ren/.Thread[{t,x,y,ep,mu}->N[{0,37/100,37/100+10^-12,0,1},70]];
checksThree=<|"stress product from full spacetime derivatives"->(Abs[ttnum-N[target,65]]<10^-38),"Casimir point split at separation 1e-12"->(Abs[renNum+N[Pi/24,65]]<10^-22),"Casimir value"->N[Re[renNum],15]|>;

imagePart=-cl[t-x-y,len,ep]-cl[t+x+y,len,ep];
imageCancel=FullSimplify[(-D[imagePart,{t,2}]+D[imagePart,x,y])/2];
energyFinite=FullSimplify[Limit[2ch[z]+1/(2Pi z^2),z->0,Assumptions->len>0]+Pi/(24len^2)];
checksFour=<|"energy image cancellation"->imageCancel,"exact Casimir local limit"->energyFinite|>;


(* A piecewise field with independent value and inward derivative at the cut. *)
left=q1+p1 x+a2 x^2/2;
right=q2-p2 x+b2 x^2/2;
joined=left+(right-left)HeavisideTheta[x];
bulk=-(D[left,{x,2}]+(D[right,{x,2}]-D[left,{x,2}])HeavisideTheta[x]);
raw=Expand[-D[joined,{x,2}]-bulk];
dd=Coefficient[raw,DiracDelta'[x]];
dc=Coefficient[raw,DiracDelta[x]];
jumpCanonical=Expand[(dc/.x->0)-(D[dd,x]/.x->0)]DiracDelta[x]+(dd/.x->0)DiracDelta'[x];
jumpCheck=Expand[jumpCanonical-((p1+p2)DiracDelta[x]+(q1-q2)DiracDelta'[x])];
testCheck=Expand[((dc/.x->0)-(D[dd,x]/.x->0))f0-(dd/.x->0)f1-((p1+p2)f0+(q2-q1)f1)];
(* All frequency maps in this block are scalar. *)
dmat={{1,-1},{d1,d2}};
kr=1/(d1+d2);
lift={{kr d2,kr},{-kr d1,kr}};
liftCheck=FullSimplify[dmat.lift-IdentityMatrix[2]];
(* Regional variables consist of two histories and two fixed-history fluxes. *)
bmat={{1,-1,0,0},{d1,d2,1,1}};
rmat=Join[lift,ConstantArray[0,{2,2}]];
proj=IdentityMatrix[4]-rmat.bmat;
projCheck=FullSimplify[{bmat.rmat-IdentityMatrix[2],proj.proj-proj,bmat.proj,proj.rmat}];
(* Response transmission cancels the fixed-history source flux. *)
qs=-kr(rho1 j1+rho2 j2);
sourceFlux=FullSimplify[rho1 j1+rho2 j2+(d1+d2)qs];
(* A generic Wick pairing supported in the matched directions. *)
ww=Array[w,{4,4}];cs=proj.ww.Transpose[proj];
constraintSlots=FullSimplify[{bmat.cs,cs.Transpose[bmat]}];
(* A finite diagnostic of the polynomial ideal; the note proves arbitrary degree by expansion. *)
z={z1,z2,z3,z4};
fp=z1^3 z3^2+z2^2 z4+z1 z2 z3;
retracted=fp/.Thread[z->proj.z];
decomp=Expand[fp-retracted];
matchedRules={z2->z1,z4->-(d1+d2)z1-z3};
idealDiagnostic=FullSimplify[decomp/.matchedRules];
checksFive=<|"operator jump"->jumpCheck,"smeared operator jump"->testCheck,
 "interface right inverse"->liftCheck,"projection identities"->projCheck,
 "transmitted source flux"->sourceFlux,"two null contraction slots"->constraintSlots,
 "finite polynomial ideal diagnostic"->idealDiagnostic|>;

ClearAll[gd,h1,h2,kk,k,a,b,u,v,y,j1,j2,d1,d2,ga,gb];
gd[len_,lo_,hi_]:=Sinh[k lo]Sinh[k(len-hi)]/(k Sinh[k len]);
h1[y_]:=Sinh[k y]/Sinh[k a];h2[y_]:=Sinh[k y]/Sinh[k b];
kk=Sinh[k a]Sinh[k b]/(k Sinh[k(a+b)]);
ga[y_]:=gd[a,u,y]+h1[y]kk h1[u];
gb[y_]:=h2[y]kk h1[u];
trace1=FullSimplify[TrigToExp[(ga[a]-gb[b])],Assumptions->{k>0,a>0,b>0}];
flux1=FullSimplify[TrigToExp[(D[ga[y],y]/.y->a)+(D[gb[y],y]/.y->b)],Assumptions->{k>0,a>0,b>0}];
source2left[y_]:=h1[y]kk h2[v];
source2right[y_]:=gd[b,v,y]+h2[y]kk h2[v];
trace2=FullSimplify[TrigToExp[source2left[a]-source2right[b]],Assumptions->{k>0,a>0,b>0}];
flux2=FullSimplify[TrigToExp[(D[source2left[y],y]/.y->a)+(D[source2right[y],y]/.y->b)],Assumptions->{k>0,a>0,b>0}];
qcontact=FullSimplify[TrigToExp[(k Coth[k a]+k Coth[k b])kk-1],Assumptions->{k>0,a>0,b>0}];
kubo=FullSimplify[I (-I Sin[om tau]/om)-Sin[om tau]/om];
checksSix=<|"bulk-source continuity"->{trace1,trace2},"bulk-source flux"->{flux1,flux2},"history-source unit contact"->qcontact,"Kubo retarded sign"->kubo|>;


ClearAll[a,b,c];
s={{a,b},{b,c}};
inv1={{1/a+b^2/(a^2(c-b^2/a)),-b/(a(c-b^2/a))},{-b/(a(c-b^2/a)),1/(c-b^2/a)}};
inv2={{1/(a-b^2/c),-b/(c(a-b^2/c))},{-b/(c(a-b^2/c)),1/c+b^2/(c^2(a-b^2/c))}};
checksSeven=<|"two-interface elimination orders"->FullSimplify[{s.inv1-IdentityMatrix[2],s.inv2-IdentityMatrix[2],inv1-inv2}]|>;


ClearAll[xx,yy,ff,gg,ww,op,wp,n,hb,s,t,cc,ww0,bare];
n=3;xx=Array[x,n];yy=Array[y,n];ff=Array[f,n];gg=Array[g,n];ww=Array[w,{n,n}];
op[p_]:=Sum[ww[[i,j]]D[p,xx[[i]],yy[[j]]],{i,n},{j,n}];
fp=Sum[ff[[i]]xx[[i]]^2,{i,n}];gp=Sum[gg[[j]]yy[[j]]^2,{j,n}];
computed=Expand[fp gp+hb op[fp gp]+hb^2 op[op[fp gp]]/2];
expected=fp gp+4hb Sum[ff[[i]]gg[[j]]ww[[i,j]]xx[[i]]yy[[j]],{i,n},{j,n}]+2hb^2 Sum[ff[[i]]gg[[j]]ww[[i,j]]^2,{i,n},{j,n}];
directions=Array[h,{2,n}];
second=Expand[D[fp/.Thread[xx->xx+s directions[[1]]+t directions[[2]]],s,t]/.{s->0,t->0}];
derivativeExpected=2Sum[ff[[i]]directions[[1,i]]directions[[2,i]],{i,n}];
shift=Expand[(bare-hb cc)-(bare-hb ww0+hb(ww0-cc))];
checksEight=<|"smeared-square contraction diagnostic"->Expand[computed-expected],"second derivative normalization diagnostic"->Expand[second-derivativeExpected],"point-split change of subtraction"->shift|>;

diagnosticKeys={"square cross W real and imaginary","square central commutator per i hbar2","stress double contraction L4 per hbar2"};
checks=Join[checksOne,
 KeyDrop[checksTwo,diagnosticKeys],
 KeyDrop[checksThree,{"Casimir value"}],checksFour,checksFive,checksSix,checksSeven,checksEight];
diagnostics=Join[KeyTake[checksTwo,diagnosticKeys],KeyTake[checksThree,{"Casimir value"}]];
checkPassed[a_Association]:=And@@(checkPassed/@Values[a]);
checkPassed[a_List]:=And@@(checkPassed/@a);
checkPassed[v_]:=TrueQ[v===0||v===True];
report=<|"checks"->checks,"diagnostics"->diagnostics,"allChecksPassed"->checkPassed[checks]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"scalar_wick_sewing_results.json"}],report,"RawJSON"];
report
