(* Run from any Wolfram kernel; all project file access stays in test_2. *)
Get["/Users/koishi/Documents/Note/Drafts/test_2/null_check.wl"];
cleanResult[aa_Association]:=Map[Function[v,Which[AssociationQ[v],Select[Map[Together,v],#=!=0&],ListQ[v],Map[Together,v,{-1}],True,Together[v]]],aa];
numericResults=cleanResult /@ results;
(* Overall radius scale is immaterial to the rank. 0<w<1 parameterizes
   every positive pair f_plus/f_A, f_minus/f_A on the unit circle. *)
symbolicResults=Table[cleanResult[run[sg[[1]],sg[[2]],1,1+w^2,1-w^2,2w]],{sg,{{1,1},{-1,-1},{1,-1},{-1,1}}}];
summary=KeyTake[#,{"sphere MC signs","null amplitude","F norm squared","dF","dStarF","FwedgeF","KSE curvature and parallel-kernel dimensions","H,U,X projector ranks","H,J8 projector ranks","projector rank,idempotent,flat,parallel","curvature minor size","curvature minor determinant"}]& /@ symbolicResults;
einsteinPass=And@@(AllTrue[Flatten[Lookup[#,"Einstein residual"]],#===0&]& /@ symbolicResults);
(* Generic RowReduce ranks alone would not classify exceptional ratios.
   The explicit parallel projectors and displayed original-curvature minors
   now give matching lower/upper bounds at EVERY 0<w<1: the factored minors
   have no zeros in that interval. Nonzero amplitude B is normalized locally
   by u'=B u, v'=v/B. B=0 must be treated separately and gives 16. *)
{einsteinPass,summary}
