(* Independent all-parameter checks; no manuscript implementation imported. *)
Block[{$MessageList = {}}, Module[
 {x = {x1,x2,x3}, z = {z1,z2,z3}, vars, bracket, d1,d2,c,e,jac,
  n,d,mu,h,cas,u,a0,a2,den,m,t,U,expected,positive,diagup,spinup,
  report,out},
 vars=Join[x,z];
 bracket[f_,g_] := x.Cross[D[f,#]&/@x,D[g,#]&/@x] +
                   z.Cross[D[f,#]&/@z,D[g,#]&/@z];
 d1=x1^2-z1^2; d2=x2^2-z2^2;
 c=Expand[bracket[d1,d2]]; e=Expand[bracket[d1,c]];
 jac=Factor[Det[Outer[D,{x.x,z.z,d1,d2,c,e},vars]]/.z1->0];
 mu=d(d-2); h=d+n; cas=h(h-1);u=4mu-8cas;
 a0=Together[-u/(2h-1)-2(cas+mu)^2/((2h-3)(2h-1)(2h+1))];
 a2=(n+1)(n+2)(2d+n-1)(2d+n)/((2h-1)(2h+1)(2h+3));
 den=(2h-3)(2h-1)(2h+1);
 U=Expand[Cancel[a0 den]/.{d->t+1,n->m+1}];
 expected=30m^4+120m^3 t+180m^3+160m^2 t^2+540m^2 t+386m^2+
 80m t^3+480m t^2+772m t+348m+8t^4+120t^3+362t^2+348t+98;
 positive[f_]:=PolynomialQ[f,{m,t}]&&And@@((Last[#]>=0)&/@CoefficientRules[f,{m,t}]);
 diagup=Expand[Cancel[(8(d+n)+4-a0)den]/.{d->t+1,n->m+1}];
 spinup=Expand[Cancel[(8(d+n)-a2)(2h-1)(2h+1)(2h+3)]/.{d->t+1,n->m}];
 report=<|
 "assumptions"->"d>1, integer n>=1 diagonal; n>=0 spin two. m=n-1 or n, t=d-1 are nonnegative. Denominators positive.",
 "poisson_c"->ToString[c,InputForm],"poisson_e"->ToString[e,InputForm],
 "jacobian_at_z1_zero"->ToString[jac,InputForm],
 "jacobian_at_point"->ToString[Factor[jac/.{x1->2/3,x2->2/3,x3->1/3,z2->3r/5,z3->4r/5}],InputForm],
 "diagonal_numerator_residual_zero"->(Expand[U-expected]===0),
 "diagonal_lower_positive_coefficient_certificate"->positive[Expand[U-30(m+1)^4]],
 "diagonal_upper_positive_coefficient_certificate"->positive[diagup],
 "spin_two_upper_positive_coefficient_certificate"->positive[spinup],
 "spin_two_lower_numerator_positive_coefficient_certificate"->positive[Expand[((n+1)(n+2)(2d+n-1)(2d+n)-(n+1)^4)/.{d->t+1,n->m}]],
 "exceptional_lower_difference"->ToString[Factor[2d^2(2d+5)/((2d-1)(2d+1))-(2d+5)/2],InputForm],
 "exceptional_upper_difference"->ToString[Factor[(2d+5)-2d^2(2d+5)/((2d-1)(2d+1))],InputForm],
 "N4_angular_integral"->ToString[Integrate[-2-2v^2 Log[v]/(1-v^2),{v,0,1}],InputForm],
 "messages"->(ToString[#,InputForm]&/@$MessageList)|>;
 out="/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_sc_symbolic.json";
 If[FileExistsQ[out], Return["Refused existing output"]];
 Export[out,report,"RawJSON"];
 report
]]
