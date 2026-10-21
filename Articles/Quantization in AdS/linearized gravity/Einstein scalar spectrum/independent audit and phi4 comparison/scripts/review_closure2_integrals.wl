(* Independent Wolfram checks: profiles are derived from the preserved canonical chart. *)
ClearAll[y,n,lap];
Block[{$Messages={},$MessageList={}},
 f=y^2-1; p=(y-1)(y+2)/(y+1); nm=1/Sqrt[48Pi]; h=6/(y+1)^2;
 rr=1/(Sqrt[2Pi]y^2); chi=-2I/(Sqrt[2Pi]y^3);
 rho=(y^2-2)/(Pi y^6); us=-1/(20Pi y^4);
 aa=I/(Pi f)(2/15-1/(3y^3)+1/(5y^5));
 ww=-8nm^2 h^2; uu=-(y+3)/(12Pi(y+1)^3);
 lap[v_]:=-f D[v,{y,2}]-2y D[v,y]+2v;
 dp=2Pi y(-uu chi^2-8us uu-2us ww);
 dq=-32Pi I nm^2 p h aa;
 vy=f(y D[p,y]-p);
 av=vy D[p,y]+4y p^2/f;
 bv=p(f D[vy,y]-y vy);
 de=2Pi nm^2(av rho-bv D[rr,y]^2);
 parts=FullSimplify[Integrate[#, {y,1,Infinity},Assumptions->y>1]]& /@ {dp,dq,de};
 term=27/(Pi(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7));
 spectral=FullSimplify[Sum[term,{n,0,Infinity}]];
 primitive=-(y-1)(78y^5+203y^4+170y^3+47y^2-84y-18)/(180Pi y^5(y+1)^3);
 <|"RawParts_p2_etaP_exchange"->parts,
   "TotalRaw"->FullSimplify[Total[parts]],
   "ExactAllRadialSum"->spectral,
   "SpectralMinusLocalResidual"->FullSimplify[spectral-Last[parts]],
   "n0Contribution"->(term/.n->0),
   "RadialTailAfterN0"->FullSimplify[spectral-(term/.n->0)],
   "ConstraintResiduals"->FullSimplify[{lap[us]-rho/2,lap[uu]-ww/2,D[aa,y]+2y aa/f-chi D[rr,y]/2}],
   "TotalDerivativeResidual"->FullSimplify[dp+dq+de-D[primitive,y]],
   "PrimitiveEndpoints"->{Limit[primitive,y->1],Limit[primitive,y->Infinity]},
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]
