(* A concrete spatial finite-difference realization of the local V2 insertion.
   L=1, N spins, M=2N Majoranas, a=1/N, d=a/2. NS vacuum.
   This does NOT compute the counterterms for the double iteration of the old
   spatial V1,a; those must be matched in that same lattice regulator.
   Plane Wick contractions, not finite-circle normal ordering, are used.
   Both association/frame representatives are checked separately: inner-pair
   symmetric K33 coefficient -47/(24Pi), whole-composite determinant midpoint
   FP coefficient -35/(24Pi). Their difference is +K33/(2Pi). *)
Block[{$Messages={},$MessageList={}},
 Module[{nn,z,sites=Range[-6,6],delta,dr,dl,cv,pf,vac,vert,qvals,rr,ll,
         rows={},a0=-1/48,c=1/2,wvac,target},
  wvac=(a0^2-a0/6+c/1440)*a0+c/24*(a0/60-c/3024);
  target=128Pi^3 wvac;
  Do[
   delta=N[Table[If[OddQ[j-i],-I/(nn Sin[Pi(j-i)/(2nn)])+2I/(Pi(j-i)),0],{i,sites},{j,sites}],70];
   dr[p_]:=N[Table[Coefficient[Expand[z^6 Sqrt[nn](z^-1+2+z)/4*(nn(z-z^-1))^p],z,j+6],{j,sites}],70];
   dl[p_]:=N[Table[Coefficient[Expand[z^6 Sqrt[nn](-z^-1+2-z)/4*(-nn(z-z^-1))^p],z,j+6],{j,sites}],70];
   cv[f_,g_]:=f.delta.g;
   pf[f_,g_,h_,k_]:=cv[f,g]cv[h,k]-cv[f,h]cv[g,k]+cv[f,k]cv[g,h];
   vac=-7/(6Pi)(pf[dr[0],dr[3],dl[0],dl[1]]+pf[dr[0],dr[1],dl[0],dl[3]])
       -47/(24Pi)pf[dr[0],dr[2],dl[0],dl[2]]
       -I/(180Pi^2)(cv[dr[0],dr[5]]-cv[dl[0],dl[5]]);
   qvals={Pi/(2nn),3Pi/(2nn),Pi-Pi/(2nn),Pi-3Pi/(2nn)};
   rr[p_]:=N[Table[Cos[q/2]^2*(-I*2nn Sin[q])^p,{q,qvals}],50];
   ll[p_]:=N[Table[Sin[q/2]^2*(I*2nn Sin[q])^p,{q,qvals}],50];
   vert=-7/(6Pi)(Det[{rr[0],rr[3],ll[0],ll[1]}]+Det[{rr[0],rr[1],ll[0],ll[3]}])
        -47/(24Pi)Det[{rr[0],rr[2],ll[0],ll[2]}];
   AppendTo[rows,<|"N"->nn,"VacuumInsertion"->N[vac,15],"VacuumError"->N[vac-target,10],
     "FourCreationVertex"->N[vert,15],"VertexError"->N[vert+4Pi^3,10],
      "DeterminantFPVacuumInsertion"->N[vac+pf[dr[0],dr[2],dl[0],dl[2]]/(2Pi),15],
      "DeterminantFPVacuumError"->N[vac+pf[dr[0],dr[2],dl[0],dl[2]]/(2Pi)-target,10],
      "DeterminantFPFourCreationVertex"->N[vert+Det[{rr[0],rr[2],ll[0],ll[2]}]/(2Pi),15],
      "DeterminantFPVertexError"->N[vert+Det[{rr[0],rr[2],ll[0],ll[2]}]/(2Pi)-28Pi^3,10]|>],
   {nn,{16,32,64,128}}];
  <|"LocalVacuumTarget"->FullSimplify[target],"LocalVertexTarget"->-4Pi^3,"DeterminantFPLocalVertexTarget"->28Pi^3,
     "DefaultRowConvention"->"VacuumInsertion and FourCreationVertex refer to inner-pair symmetric frame; determinant FP has separate columns.",
    "Rows"->rows,"Messages"->(ToString[#,InputForm]&/@$MessageList),
    "Scope"->"Only the local second-order insertion and its NS matrix elements; not a fully matched spatial bare V2,a or complete Ward theorem."|>
 ]]
