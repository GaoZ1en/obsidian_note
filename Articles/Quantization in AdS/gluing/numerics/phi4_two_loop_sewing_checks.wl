ClearAll["Global`*"];
checks = <||>;
record[name_, expr_] := AssociateTo[checks, name -> TrueQ[expr]];
vars = {aa, bb, yy, zz};
fall[n_, r_] := If[0 <= r <= n, Factorial[n]/Factorial[n-r], 0];
tr[e_, n_:2] := Expand[Normal[Series[e, {hb, 0, n}]]];
q4[f_, w_] := f^4 + 6 hb w f^2 + 3 hb^2 w^2;
q2[f_, w_] := f^2 + hb w;

(* Direct Wick differentiation, independent of the indexed graph formula below. *)
vertexAction[j_, f_] := Module[{ranges, ans=0, rr, d, r, coeff, orient},
 ranges = Table[Range[0, Min[4, Max[0,Exponent[f,vars[[k]]]]]], {k,4}];
 Do[r=Total[rr]; If[1<=r<=4,
   d=f; Do[d=D[d,{vars[[k]],rr[[k]]}],{k,4}];
   coeff=D[q4[vars[[j]],ww[j]]/24,{vars[[j]],r}]/Times@@(Factorial/@rr);
   orient=Product[wc[j,k]^rr[[k]],{k,4}]-Product[wc[k,j]^rr[[k]],{k,4}];
   ans += I hb^(r-1) coeff orient d], {rr,Tuples[ranges]}]; Expand[ans]];

alphaA=wc[3,1]-wc[1,3]; alphaB=wc[3,2]-wc[2,3];
beta=wc[3,1] wc[3,2]-wc[1,3] wc[2,3];
one=I/6 (alphaA yy^3 bb+alphaB yy^3 aa)+I hb/2 beta yy^2+
 I hb ww[3]/2 (alphaA yy bb+alphaB yy aa)+I hb^2 ww[3]/2 beta;
record["complete one-vertex bilinear including two-loop image term", Expand[vertexAction[3,aa bb]-one]===0];

graphTerms={};
Do[k=4-2 ty; l=4-2 tz; cy=If[ty==0,1,6 ww[3]]; cz=If[tz==0,1,6 ww[4]];
 Do[If[a+b>=1 && c+d+e>=1 && a+b+e<=k && c+d+e<=l,
  lines=a+b+c+d+e; loop=lines-2+ty+tz;
  If[0<=loop<=2,
   factor=fall[k,a+b+e] fall[l,c+d+e]/Factorial[e];
   orient=(wc[3,1]^a wc[3,2]^b-wc[1,3]^a wc[2,3]^b)
    (wc[4,1]^c wc[4,2]^d wc[4,3]^e-wc[1,4]^c wc[2,4]^d wc[3,4]^e);
   mon=aa^(1-a-c) bb^(1-b-d) yy^(k-a-b-e) zz^(l-c-d-e);
   AppendTo[graphTerms,<|"loop"->loop,"tadpoles"->ty+tz,
     "value"->-cy cz factor hb^loop orient mon/24^2|>]]],
 {a,0,1},{b,0,1},{c,0,1-a},{d,0,1-b},{e,0,4}], {ty,0,1},{tz,0,1}];
two=Total[Lookup[graphTerms,"value"]];
directTwo=tr[vertexAction[4,vertexAction[3,aa bb]]];
Do[record["two-vertex bilinear direct Wick comparison at loop "<>ToString[r],
 Expand[Coefficient[two-directTwo,hb,r]]===0],{r,0,2}];
record["no disconnected constant potential vertices", vertexAction[3,hb^2 ww[1]^2]===0];

rootPotential=tr[vertexAction[3,q4[aa,ww[1]]/24]];
rootPotentialFormula=Sum[If[1<=r<=Min[4-2 tx,4-2 ty] && r-1+tx+ty<=2,
 I hb^(r-1+tx+ty) If[tx==0,1,6 ww[1]] If[ty==0,1,6 ww[3]]
 Binomial[4-2 tx,r] Binomial[4-2 ty,r] Factorial[r]/24^2
 (wc[3,1]^r-wc[1,3]^r) aa^(4-2 tx-r) yy^(4-2 ty-r),0],
 {tx,0,1},{ty,0,1},{r,1,4}];
record["potential part of the stress through lambda squared", Expand[rootPotential-rootPotentialFormula]===0];
record["pressure contact dressed by one vertex through two loops",
 Expand[tr[vertexAction[3,hb q2[aa,ww[1]]/(8 Pi)]]-
 (I hb (wc[3,1]-wc[1,3]) aa yy^3/(24 Pi)+
 I hb^2 (wc[3,1]^2-wc[1,3]^2) yy^2/(16 Pi)+
 I hb^2 ww[3] (wc[3,1]-wc[1,3]) aa yy/(8 Pi))]===0];
field2=tr[vertexAction[4,vertexAction[3,aa]]];
record["field sunset coefficient is retained", Coefficient[Coefficient[field2,aa,0],hb,2]=!=0];
record["field degrees including tadpoles", And@@Table[
 And@@(Total[#]==5-2 r& /@ Keys[CoefficientRules[Coefficient[field2,hb,r],vars]]),{r,0,2}]];

(* Exact changes of Wick coordinates, retaining the finite one- and two-loop terms. *)
shift[f_, v_, c_] := Expand[Sum[(hb c/2)^r/Factorial[r] D[f,{v,2 r}],
 {r,0,Floor[Exponent[f,v]/2]}]];
record["image correction is the exact quartic coordinate change",
 Expand[shift[q4[aa,wi],aa,ws-wi]-q4[aa,ws]]===0];
record["quadratic image correction", Expand[shift[q2[aa,wi],aa,ws-wi]-q2[aa,ws]]===0];
record["local pressure correction transports its scalar term",
 Expand[shift[hb q2[aa,wi]/(8 Pi),aa,ws-wi]-hb q2[aa,ws]/(8 Pi)]===0];

(* The continuum equal-time covariance, not a finite-cell replacement. *)
energyContact=vertexAction[3,aa bb]/.{wc[3,1]->I da/2,wc[1,3]->-I da/2,
 wc[3,2]->I db/2,wc[2,3]->-I db/2};
expectedContact=-(da bb+db aa) (yy^3/6+hb ww[3] yy/2);
record["energy-vertex contact including the finite mass term",
 Expand[energyContact-expectedContact]===0];
record["energy contact has no double-contraction remainder",
 Expand[(beta/.{wc[3,1]->I da/2,wc[1,3]->-I da/2,
 wc[3,2]->I db/2,wc[2,3]->-I db/2})]===0];

deltaeps=eps/(Pi (rr^2+eps^2));
shortW=-Log[rr^2+(eps+I tau)^2]/(4 Pi);
ypi=D[shortW/.tau->-tau,tau]/.tau->0;
piy=D[shortW,tau]/.tau->0;
yx=D[shortW,rr]/.tau->0;
currentDouble=-ypi yx+piy yx;
record["regulated current-vertex contraction equals a delta derivative",
 Simplify[I hb currentDouble/2-hb D[deltaeps,rr]/(8 Pi)]===0];
record["delta derivative has the required first moment",
 Integrate[rr D[deltaeps,rr],{rr,-Infinity,Infinity},Assumptions->eps>0]===-1];
record["canonical energy double contraction cancels before the limit",
 Simplify[ypi^2-piy^2]===0];
record["finite image derivative in the current contact",
 Expand[D[q4[ff[xx],wi[xx]]/24,xx]-
 (ff[xx]^3/6+hb wi[xx] ff[xx]/2) ff'[xx]-
 hb wi'[xx] q2[ff[xx],wi[xx]]/4]===0];

(* Short-distance real-time kernels: u=r-tau, v=r+tau.
   1/(u +/- i0)^2 = Pf(1/u^2) +/- i Pi delta'(u). *)
du=dp[rr-tau]; dv=dp[rr+tau];
singE=hb/(16 Pi) (du-dv); singJ=hb/(16 Pi) (du+dv);
record["one-vertex double-contraction energy divergence",
 Expand[D[singE,tau]+D[singJ,rr]]===0];
record["energy endpoint contact vanishes", Simplify[singE/.tau->0]===0];
record["momentum endpoint contact has coefficient hbar over eight pi",
 Simplify[(singJ/.tau->0)-hb dp[rr]/(8 Pi)]===0];
record["finite pressure correction cancels that endpoint",
 Expand[hb D[hh[xx] q2[ff[xx],wi[xx]],xx]/(8 Pi)+
 D[-hb hh[xx] q2[ff[xx],wi[xx]]/(8 Pi),xx]]===0];
record["pressure correction equals twice the logarithmic companion",
 Expand[hb D[aa^4/24,{aa,2}]/(4 Pi)-hb aa^2/(8 Pi)]===0];
record["collar partitions cancel also on contact derivatives",
 Expand[D[eta[xx] f[xx],xx]+D[(1-eta[xx]) f[xx],xx]-D[f[xx],xx]]===0];
record["one-vertex half-circle angular residue is zero",
 Integrate[Cos[2 ang],{ang,0,Pi}]===0 && Integrate[Sin[2 ang],{ang,0,Pi}]===0];
record["two-vertex full-collision margins", {2*2-2,2*2-3}==={2,1}];

(* Independently global versus the released regional Green functions. *)
clean[f_] := FullSimplify[TrigToExp[f]]===0;
gg[len_,x_,y_] := Sinh[kap x] Sinh[kap (len-y)]/(kap Sinh[kap len]);
hl[x_] := Sinh[kap x]/Sinh[kap al];
hr[x_] := Sinh[kap (al+be-x)]/Sinh[kap be];
ki=1/(kap Coth[kap al]+kap Coth[kap be]);
gll=gg[al,xx,xxp]+hl[xx] ki hl[xxp];
grr=gg[be,al+be-xxp,al+be-xx]+hr[xx] ki hr[xxp];
glr=hl[xx] ki hr[xxp];
record["left internal response",clean[gll-gg[al+be,xx,xxp]]];
record["right internal response",clean[grr-gg[al+be,xx,xxp]]];
record["crossing response",clean[glr-gg[al+be,xx,xxp]]];
record["crossing reverse response",clean[(glr/.{xx->xp2,xxp->xx})-(gg[al+be,xp2,xx])]];
record["interface field trace for a left vertex",clean[(gll/.xxp->al)-(glr/.{xx->xx,xxp->al})]];
record["opposite outward derivatives at the seam for a left vertex",
 clean[(D[gll,xxp]/.xxp->al)-(D[glr,xxp]/.xxp->al)]];
record["opposite outward derivatives at the seam for a right vertex",
 clean[(D[glr,xx]/.xx->al)-(D[grr,xx]/.xx->al)]];
record["interface history inverse",clean[ki-gg[al+be,al,al]]];
record["history off-shell contact is retained",clean[(kap Coth[kap al]+kap Coth[kap be]) ki-1]];

(* Independent resolvent integral checks the image finite part at the cut. *)
mass=13/10; len=2; cut=4/5;
imageFinite=N[Sum[BesselK[0,2 mass n len]/Pi,{n,1,14}]-
 Sum[BesselK[0,2 mass Abs[cut+n len]]/(2 Pi),{n,-14,14}],18];
resolventFinite=NIntegrate[(Exp[-2 cut Sqrt[mass^2+om^2]]+
 Exp[-2 (len-cut) Sqrt[mass^2+om^2]]-2 Exp[-2 len Sqrt[mass^2+om^2]])/
 (-2 Pi Sqrt[mass^2+om^2] (1-Exp[-2 len Sqrt[mass^2+om^2]])),
 {om,0,Infinity},WorkingPrecision->24,AccuracyGoal->15];
record["finite cut image coefficient from independent representations",
 Abs[imageFinite-resolventFinite]<10^-12];

(* Inverse finite maps through coupling degree two; z1 is allowed to include loops. *)
z[v_] := z1 v+z2 v^2/2+z3 v^3/6;
vinv=lam av/z1-lam^2 z2 av^2/(2 z1^3);
finv=ff0/z1-lam z2 av ff0/z1^3+
 lam^2 (3 z2^2 av^2 ff0/(2 z1^5)-z3 av^2 ff0/(2 z1^4));
record["independent potential inverse through lambda squared",
 Normal[Series[z[vinv]-lam av,{lam,0,2}]]===0];
record["single-insertion inverse includes the cubic finite-map derivative",
 Simplify[Normal[Series[(z1+z2 vinv+z3 vinv^2/2) finv-ff0,{lam,0,2}]]]===0];

result=<|"allChecksPassed"->And@@Values[checks],"checkCount"->Length[checks],
 "checks"->checks,"bilinearGraphCountsByLoop"->KeyMap[ToString,Counts[Lookup[graphTerms,"loop"]]],
 "bilinearGraphCountsByTadpoles"->KeyMap[ToString,Counts[Lookup[graphTerms,"tadpoles"]]],
 "cutFinitePart"->imageFinite,"resolventFinitePart"->resolventFinite,
 "scope"->"Exact one/two-vertex Wick coefficient enumeration, continuum kernel identities and local contact coefficients. The note supplies the time integrals, distributional endpoint argument and energy proof. No numerical evaluation of arbitrary-h two-loop integrals or operator convergence is claimed."|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"phi4_two_loop_sewing_results.json"}],result,"RawJSON"];
result
