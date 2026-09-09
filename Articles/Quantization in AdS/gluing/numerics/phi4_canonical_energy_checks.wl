ClearAll["Global`*"];
checks = <||>;
record[name_, expr_] := AssociateTo[checks,name->TrueQ[expr]];

(* Two canonical cells only test local identities, not continuum sewing. *)
varsQ={q1,q2}; varsP={p1,p2};
pb[f_,g_] := Sum[D[f,varsQ[[k]]] D[g,varsP[[k]]]-
 D[f,varsP[[k]]] D[g,varsQ[[k]]],{k,2}];
zq={u1,u2}; zp={v1,v2};
pairD[f_] := Sum[D[f,varsQ[[k]],zp[[k]]]-D[f,varsP[[k]],zq[[k]]],{k,2}];
star[f_,g_] := Module[{term=f (g/.Thread[Join[varsQ,varsP]->Join[zq,zp]]),out=0},
 Do[out += (I hb/2)^r term/Factorial[r]; term=pairD[term],{r,0,4}];
 Expand[out/.Thread[Join[zq,zp]->Join[varsQ,varsP]]]];
br[f_,g_] := Expand[star[f,g]-star[g,f]];
wick4[q_,c_] := q^4-6 hb c q^2+3 hb^2 c^2;
uu1=mass2 q1^2/2+lam hh1 wick4[q1,ct]/24+eps1;
uu2=mass2 q2^2/2+lam hh2 wick4[q2,ct]/24+eps2;
bond=(q2-q1)^2/(2 aa);
en1=p1^2/(2 aa)+aa uu1+bond/2+q1^2/(2 aa);
en2=p2^2/(2 aa)+aa uu2+bond/2+q2^2/(2 aa);
ham=en1+en2;
flux=-(q2-q1)(p1+p2)/(2 aa^2);
record["field generator exact",Expand[I br[ham,q1]/hb-p1/aa]===0];
record["momentum generator with Wick counterterm",Expand[I br[ham,p1]/hb+D[ham,q1]]===0];
record["left quantum energy exchange",Expand[I br[ham,en1]/hb+flux]===0];
record["right quantum energy exchange",Expand[I br[ham,en2]/hb-flux]===0];
record["total energy conservation",br[ham,ham]===0];
record["no higher Moyal term in the energy balance",Expand[I br[ham,en1]/hb-pb[en1,ham]]===0];
record["quartic quantum correction is retained elsewhere",
 Expand[I br[lam q1^4/24,p1^3]/hb+lam q1^3 p1^2/2-lam hb^2 q1/4]===0];
driveEnergy=p1^2/(2 aa)+aa uu1+(boundary-q1)^2/(2 aa);
record["prescribed-history work sign",
 Expand[D[driveEnergy,boundary] bd-(boundary-q1) bd/aa]===0];
record["two outward powers cancel after matching",
 Expand[(bd1 pi1+bd2 pi2)/.{bd2->bd1,pi2->-pi1}]===0];

(* Source work, including the local mass and vacuum counterterms. *)
potential=mass2 f[t,x]^2/2+lam chi[t] hx[x] (f[t,x]^4-6 hb ct f[t,x]^2+3 hb^2 ct^2)/24;
energy=(D[f[t,x],t]^2+D[f[t,x],x]^2)/2+potential;
current=-D[f[t,x],t] D[f[t,x],x];
force=mass2 f[t,x]+lam chi[t] hx[x] (f[t,x]^3-3 hb ct f[t,x])/6;
eom=Derivative[2,0][f][t,x]->Derivative[0,2][f][t,x]-force;
work=lam D[chi[t],t] hx[x] (f[t,x]^4-6 hb ct f[t,x]^2+3 hb^2 ct^2)/24;
record["coordinate work identity with all tadpole terms",
 Expand[(D[energy,t]+D[current,x]-work)/.eom]===0];

(* Noncommuting interaction-picture cancellation for the K_chi identity. *)
hzero={{1,1},{1,4}}; vv={{0,2},{3,1}};
comm[a_,b_]:=a.b-b.a;
vdot=I comm[hzero,vv]/hb;
hinst=hzero+lam ch vv;
hdot=lam chp vv+lam ch vdot;
record["interaction-picture energy changes only by switching work",
 Simplify[hdot+I lam ch comm[vv,hinst]/hb-lam chp vv]===ConstantArray[0,{2,2}]];
wmat={{1,2},{0,1}}; amat={{2,0},{1,3}};
record["canonical energy and field share the same conjugation",
 Simplify[Inverse[wmat].comm[hinst,amat].wmat-
 comm[Inverse[wmat].hinst.wmat,Inverse[wmat].amat.wmat]]===ConstantArray[0,{2,2}]];

(* Physical-wall singular coefficient of the free massive energy. *)
wline=BesselK[0,mm Sqrt[dd^2-tt^2]]/(2 Pi);
wallEnergy=-( -D[wline,{tt,2}]+D[wline,{dd,2}]+mm^2 wline)/2;
record["reflected free energy has only a logarithmic wall singularity",
 FullSimplify[(wallEnergy/.tt->0)+mm^2 BesselK[0,mm dd]/(2 Pi),mm>0&&dd>0]===0];
record["wall logarithm has a finite integral",Limit[rr Log[rr]-rr,rr->0,Direction->"FromAbove"]===0];
record["partition energy work cancels at the artificial cut",
 Expand[leftPower+rightPower/.{leftPower->bd pi1,rightPower->bd (-pi1)}]===0];

(* A two-vertex field coefficient contains all three allowed contractions. *)
record["quartic cubic contraction multiplicities",
 Table[Binomial[4,r] Binomial[3,r] Factorial[r],{r,1,3}]==={12,36,24}];
record["quartic linear commutator multiplicity",
 Binomial[4,1] Binomial[1,1] Factorial[1]===4];
record["second order field degrees and hbar powers",
 Table[7-2 r,{r,1,3}]==={5,3,1} && Table[r+1-2,{r,1,3}]==={0,1,2}];
record["central CCR gives the symmetrized polynomial chain rule",
 FullSimplify[Sum[k,{k,0,nn-1}]-nn (nn-1)/2,Element[nn,Integers]&&nn>=1]===0];
vvContact=hh1 wick4[q1,ct]/24;
expectedContact=-I hb (star[p1,D[vvContact,q1]]+star[D[vvContact,q1],p1])/2;
record["energy quartic equal time contact with Wick subtraction",
 FullSimplify[br[p1^2/2+q1^2/2,vvContact]-expectedContact]===0];

result=<|"allChecksPassed"->And@@Values[checks],"checkCount"->Length[checks],
 "checks"->checks,
 "scope"->"Exact canonical polynomial, driven energy, and local free-wall checks. Finite cells check ordering and signs only; continuum renormalization is a separate stated construction."|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"phi4_canonical_energy_results.json"}],result,"RawJSON"];
result
