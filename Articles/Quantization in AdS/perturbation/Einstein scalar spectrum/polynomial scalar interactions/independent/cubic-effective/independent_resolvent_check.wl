(* Independent radial-operator, polynomial-inverse and odd-Delta resonance checks.
   No candidate-result or parent-engine import. Wolfram Language 14.3. *)
ClearAll[x, y, del, ell, q, originalA, transformedA, finiteT, eigpoly];
root = "/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective";
report = Block[{$MessageList = {}},
  originalA[f_] := -4 x (1-x) D[f,{x,2}] - 4 (1-x) D[f,x] + ell^2/x f + del (del-2)/(1-x) f;
  q = q0+q1 x+q2 x^2+q3 x^3;
  f = x^(ell/2) (1-x)^(del/2) q;
  transformedA = x^(ell/2) (1-x)^(del/2) ((ell+del)^2 q - 4 (x (1-x) D[q,{x,2}] + (ell+1-(ell+del+1) x) D[q,x]));
  opResidual = FullSimplify[originalA[f]-transformedA, Assumptions -> (0<x<1 && del>1 && ell>=0)];
  finiteT[n_,poly_] := Expand[del (3 del-2) poly + (1-x) (4 n (n+ell+2 del) poly + 4 (x (1-x) D[poly,{x,2}] + (ell+1-(ell+2 del+1) x) D[poly,x]))];
  eigpoly[n_,a_] := Expand[(1-x)^a JacobiP[n-a,ell,2 del+2 a-1,1-2 x]];
  eigChecks = Flatten[Table[
    FullSimplify[finiteT[n,eigpoly[n,a]] - ((2 del+2 a)(2 del+2 a-2)-del(del-2)) eigpoly[n,a], Assumptions -> (del>1 && ell>=0)],
    {n,0,4},{a,0,n}]];
  jac3 = Expand[JacobiP[3,0,2,2 y-1]];
  exactOddResonance = Integrate[y^4 jac3,{y,0,1}];
  (* Mode sum stripped of common squared vertex factor h^2,
     h=pi/(2 pi)^(3/2)=1/(2 sqrt(2 pi)). *)
  ClearAll[moment];
  moment[n_,s_] := Product[(s-2-k),{k,0,n-1}]/Product[(s+1+k),{k,0,n}];
  coeff = CoefficientList[jac3,y];
  term[n_] := moment[n,5/2] Sum[coeff[[k+1]] moment[n,5/2+k],{k,0,3}] 2 (3+2 n)/(36-(3+2 n)^2);
  partials = Table[{cut,Sum[term[n],{n,0,cut}],N[Sum[term[n],{n,0,cut}],30]},{cut,{0,1,2,3,5,10,20,40}}];
  (* Nontrivial distinct incoming pair at Delta=3: modes (1,0),(0,0),
     outgoing (4,3), and third incoming (0,0). N=0,L=1. *)
  secondOdd = Integrate[x (1-x)^4 JacobiP[3,1,2,1-2 x],{x,0,1}];
  <|"radial_operator_residual"->opResidual,
    "finite_T_eigen_residuals_N_0_through_4"->eigChecks,
    "finite_T_all_zero"->And@@(SameQ[#,0]& /@ eigChecks),
    "Delta3_P3"->jac3,
    "Delta3_ground_1_to_3_overlap"->exactOddResonance,
    "Delta3_nonzero_angular_1_to_3_overlap"->secondOdd,
    "Delta3_ground_exchange_partials_in_units_h_squared"->partials,
    "messages"->(ToString[#,InputForm]& /@ $MessageList)|>
];
Export[FileNameJoin[{root,"independent_resolvent_results.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
report
