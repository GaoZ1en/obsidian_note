(* Independent determinant/residue verification of the contact-Jacobi defect.
   Run: wolframscript -file ward_contact_audit.wl
   No project inputs. Euclidean endpoint coordinates, epsilon scaled to 1.
   The same code was run in a fresh Wolfram Engine kernel. *)
ClearAll[con, ll, int, outer, rpair, s];
con[ch_, a_, b_, dir_] := ch I/(2 Pi) (-1)^a (a + b)!/(dir s + ch I)^(a + b + 1);
ll[a_, b_, m_, n_, dir_] := -con[-1, a, m, dir] con[-1, b, n, dir] + con[-1, a, n, dir] con[-1, b, m, dir];
int[expr_] := Module[{e = Cancel[expr]}, FullSimplify[-Pi (Residue[e, {s, I}] - Residue[e, {s, -I}])]];
outer[gen_, la_, lb_, cc_, lm_, ln_, rk_] := gen cc (
  ll[la, lb, lm, ln, 1] (con[1, 1, rk, 1] (s + I/2)^7/7! - con[1, 0, rk, 1] (s + I/2)^6/6!) -
  ll[lm, ln, la, lb, -1] (con[1, rk, 0, -1] (s - I/2)^6/6! - con[1, rk, 1, -1] (s - I/2)^7/7!));
rpair[dir_] := Module[{delta = If[dir == 1, -s - I, s - I]},
  Total[Map[Function[t, With[{a = t[[1]], b = t[[2]], sg = t[[3]], d = t[[4]], e = t[[5]]},
    sg con[1, a, b, dir] (-1)^d delta^(7 - d - e)/(7 - d - e)!]],
    {{0, 0, -1, 1, 1}, {0, 1, 1, 1, 0}, {1, 0, 1, 0, 1}, {1, 1, -1, 0, 0}}]]];
report = Block[{$MessageList = {}}, Module[{xe, ye, ze, x, y, q, z, result},
  xe = outer[-1, 0, 1, -I/2, 0, 2, 1] + outer[-1, 0, 1, -I/4, 0, 3, 0] + outer[-1, 0, 1, -I/4, 1, 2, 0];
  ye = outer[1/4, 0, 2, 2 I, 0, 1, 1] + outer[1/4, 0, 2, I, 0, 2, 0];
  ze = -(ll[0, 1, 0, 2, 1] rpair[1] - ll[0, 2, 0, 1, -1] rpair[-1])/4;
  x = int[xe]; y = int[ye]; q = int[ze]; z = FullSimplify[-2 I q];
  result = {x, y, q, z, FullSimplify[x - y - z]};
  <|"Coefficients_x_y_q_z_J" -> result,
    "OneOverSTails" -> (FullSimplify[Limit[s Cancel[#], s -> Infinity]] & /@ {xe, ye, ze}),
    "ExactChecks" -> Thread[result == {236489/(82575360 Pi^2), -236489/(82575360 Pi^2), 29 I/(10080 Pi^2), 29/(5040 Pi^2), -1079/(41287680 Pi^2)}],
    "Failed" -> !FreeQ[result, $Failed | $Aborted],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
]];
Print[InputForm[report]];
