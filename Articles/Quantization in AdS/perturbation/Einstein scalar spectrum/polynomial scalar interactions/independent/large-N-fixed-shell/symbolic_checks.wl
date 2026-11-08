(* Self-contained Wolfram checks. Delta is delta; k is the contact order. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{integral, overlap, r11, w11, w20, w21, w22, difference, vertex,
   special, coefficient, chiralCoefficient, results},
  integral[poly_, kk_] := Module[{expanded = Expand[poly]},
    Factor[Sum[Coefficient[expanded, x, h]/(kk delta - 1 + h),
      {h, 0, Exponent[expanded, x]}]]];
  overlap[p_, q_, kk_] := Module[{b = Abs[p-q], nu = Min[p,q]},
    Factor[(kk delta-1) Pochhammer[delta+nu,b]/Pochhammer[nu+1,b]
      integral[(1-x)^b JacobiP[nu,delta-1,b,1-2 x]^2,kk]]];
  r11 = overlap[1,1,k];
  w11 = Factor[k r11-1];
  w20 = Factor[k overlap[2,0,k]-1];
  w21 = Factor[k overlap[2,1,k]-1];
  w22 = Factor[2 overlap[2,2,2]-1];
  difference = Factor[w22-2 (w11 /. k->2)];
  vertex = integral[JacobiP[1,delta-1,0,1-2 x]^2
    JacobiP[2,delta-1,0,1-2 x],2];
  special = (Sqrt[13]-1)/2;
  coefficient = Sqrt[2] (2 delta-1) vertex;
  chiralCoefficient = k(k-1)(k delta-1)/2 * delta Sqrt[delta(delta+1)/2]
    * integral[(1-x)^2,k];
  results = <|
    "R11" -> r11,
    "R11_parent_form_exact" -> (Together[r11-(1-2(k-1)(delta+1)/(k(k delta+1)))]===0),
    "omega11" -> w11,
    "omega20" -> w20,
    "omega21" -> w21,
    "omega22_k2" -> w22,
    (* Later collaborative all-grade extension: an irrational exact zero. *)
    "omega22_k3_irrational_zero_exact" -> (Together[3 overlap[2,2,3]-1
      -2(delta^3-4 delta^2-3 delta-2)/((delta+1)(3 delta+1)(3 delta+2))]===0),
    "collision_difference" -> difference,
    "collision_polynomial_exact" -> (Together[difference+(delta^2+delta-3)/((2 delta+1)(2 delta+3))]===0),
    "three_excitation_vertex_over_c" -> vertex,
    "vertex_at_collision" -> FullSimplify[vertex /. delta->special],
    "half_order_coefficient_at_collision" -> FullSimplify[coefficient /. delta->special],
    "half_order_coefficient_exact" -> (FullSimplify[(coefficient /. delta->special)
      - Sqrt[2](Sqrt[13]-2)/(3 Sqrt[13])]===0),
    "chiral_growing_shell_coefficient_exact" -> (FullSimplify[
      chiralCoefficient-(k-1) Sqrt[delta(delta+1)/2]/(k delta+1),
      Assumptions->{delta>1,k>=2}]===0),
    "direct_integral_R11_exact" -> (FullSimplify[
      (k delta-1) Integrate[x^(k delta-2)(delta-(delta+1)x)^2,{x,0,1},
        Assumptions->{delta>1,k>=2}]-r11,
      Assumptions->{delta>1,k>=2}]===0)
    |>;
  Append[results,"Messages"->(ToString[#,InputForm]& /@ $MessageList)]
 ]]
