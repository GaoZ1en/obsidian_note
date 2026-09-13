Clear[q, s, dd, cc, rr, theta, eom1, eom2, sympCoeff, hamCoeff];

dd = Sqrt[1 + 4 q];
cc = (1 + 4 q)^(-1/4);
rr = (dd - 1)/(2 q);
theta = (rr - 1) s;

eom1 = FullSimplify[rr - 1 + q rr^2, q > 0];
eom2 = FullSimplify[1 - rr - q rr^2, q > 0];
sympCoeff = FullSimplify[(1 + 2 q rr) cc^2, q > 0];
hamCoeff = FullSimplify[cc^2 (1 + q rr^2), q > 0];

Print["EOM identity r - 1 + q r^2 = ", eom1];
Print["EOM identity 1 - r - q r^2 = ", eom2];
Print["Symplectic coefficient (1+2 q r)c^2 = ", sympCoeff];
Print["Hamiltonian coefficient c^2(1+q r^2) = ", hamCoeff];
Print["Expected Hamiltonian coefficient r = ", FullSimplify[rr, q > 0]];
Print["Hamiltonian coefficient minus r = ", FullSimplify[hamCoeff - rr, q > 0]];

Print["c(q) through q^6 = ", Series[cc, {q, 0, 6}]];
Print["r(q)=f1/omega through q^7 = ", Series[rr, {q, 0, 7}]];
Print["commutator amplitude c(q)^2 through q^6 = ", Series[cc^2, {q, 0, 6}]];
Print["A(q,s)=c cos((r-1)s) through q^4 = ", Series[cc Cos[theta], {q, 0, 4}]];
Print["B(q,s)=c sin((r-1)s) through q^4 = ", Series[cc Sin[theta], {q, 0, 4}]];
