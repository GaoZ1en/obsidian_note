(* ::Package:: *)

(*
  Exact algebraic covariance checks for time-dependent endpoint traces and
  fixed-anchor projections.  U_t f(phi)=f(phi-t) is the left-moving boundary
  evolution of the chosen Brown-Henneaux phase convention.
*)

ClearAll["Global`*"];

a = Pi/4;
profile = 3 Cos[2 phi] + 5 Sin[2 phi] +
   7 Cos[3 phi] + 11 Sin[3 phi];
timeOne = Pi/6;
timeTwo = Pi/4;

evolve[f_, time_] := TrigExpand[f /. phi -> phi - time];

qPlus[f_] := FullSimplify[f /. phi -> a];
qMinus[f_] := FullSimplify[f /. phi -> -a];
pPlus[f_] := FullSimplify[
   (-D[f, {phi, 2}] - f + D[f, phi])/6 /. phi -> a];
pMinus[f_] := FullSimplify[
   (-D[f, {phi, 2}] - f - D[f, phi])/6 /. phi -> -a];

projectA[f_] := FullSimplify[
   f + (qPlus[f] + qMinus[f])/2 Cos[4 phi] -
    (qPlus[f] - qMinus[f])/2 Sin[2 phi]];

projectAtTime[f_, time_] := FullSimplify[
   evolve[projectA[evolve[f, time]], -time]];

qTime[f_, time_] := {qPlus[evolve[f, time]], qMinus[evolve[f, time]]};
pTime[f_, time_] := {pPlus[evolve[f, time]], pMinus[evolve[f, time]]};

anomaly[f_] := FullSimplify[-qPlus[f] pPlus[f] - qMinus[f] pMinus[f]];
anomalyAtTime[f_, time_] := anomaly[evolve[f, time]];

testConditions = {
   FullSimplify[evolve[evolve[profile, timeOne], timeTwo] -
      evolve[profile, timeOne + timeTwo]] === 0,
   FullSimplify[projectAtTime[
       projectAtTime[profile, timeOne], timeOne] -
      projectAtTime[profile, timeOne]] === 0,
   FullSimplify[qTime[
      projectAtTime[profile, timeOne], timeOne]] === {0, 0},
   FullSimplify[projectAtTime[profile, 0] - projectA[profile]] === 0,
   FullSimplify[
     projectAtTime[profile, timeOne + timeTwo] -
      evolve[projectAtTime[
        evolve[profile, timeTwo], timeOne], -timeTwo]] === 0,
   FullSimplify[anomalyAtTime[profile, timeOne] +
      qTime[profile, timeOne].pTime[profile, timeOne]] === 0,
   FullSimplify[qTime[profile, timeOne] -
      {profile /. phi -> a - timeOne,
       profile /. phi -> -a - timeOne}] === {0, 0}
   };

testIDs = {
   "boundary time evolution composes",
   "time-dependent fixed-anchor projection is idempotent",
   "projected data have zero endpoints on the time-t cut",
   "time-zero projection reduces to P_A",
   "time-dependent projections obey conjugation covariance",
   "time-dependent anomaly retains the q-p factorization",
   "time-dependent endpoint coordinates are transported evaluations"
   };

Print[<|
  "TimeDependentEndpoints" -> qTime[profile, timeOne],
  "TimeDependentMomenta" -> pTime[profile, timeOne],
  "ProjectedEndpoints" ->
   qTime[projectAtTime[profile, timeOne], timeOne]
  |>];

timeCovariantAnchorReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
