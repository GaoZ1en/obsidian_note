# Free Q0 of the linear antifield smearing: unprojected compact-test identity

## Result

With the stated coefficient-first antibracket \((q,p)=1\), \(Q_0=(S_2,\cdot)\), and the right-action generator convention,

\[
\boxed{Q_0E_a=\kappa\bigl(D_{\omega_0}w-[e_0,f]\bigr)_a.}
\tag{1}
\]

Consequently, as an identity of local densities,

\[
\boxed{Q_0(e_0^a\wedge E_a)
=-\kappa\,d(e_0^a\wedge w_a)
-2\kappa\operatorname{tr}(e_0^{-1}f)\,dV.}
\tag{2}
\]

For compactly supported **unprojected** test fields,

\[
\boxed{Q_0\int e_0^a\wedge E_a
=-2\kappa\int\operatorname{tr}(e_0^{-1}f)\,dV.}
\tag{3}
\]

This is a valid distributional/test-space identity. It is not, by itself, an identity of Hamiltonian functions on the retained L2 BV space, and it does not define a sharp projector acting on the constant smearing \(e_0\).

## Derivation of the antifield sign

The physical free action fixed by [note15:44–75](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L44-L75>) is

\[
I_2=\frac\kappa2\langle(w,f),K(w,f)\rangle,
\qquad K=\begin{pmatrix}T&C\\C&-T\end{pmatrix},\quad C=*D_{\omega_0}.
\]

In form notation,

\[
I_2=\frac\kappa2\int\left[w\wedge[e_0,w]-f\wedge[e_0,f]
+w\wedge D_{\omega_0}f+f\wedge D_{\omega_0}w\right].
\]

Because the physical coordinate f is even, the convention \((f,E)=1\) gives

\[
(S_2,E)=+\frac{\delta S_2}{\delta f}.
\]

It does not give the minus sign that would follow from exchanging the arguments of this antibracket. The free ghost–antifield term has no f-dependence: its G is the fixed background operator. The compact-support variation of the displayed action is

\[
\delta_f I_2=\kappa\int\delta f^a\wedge
\bigl(D_{\omega_0}w-[e_0,f]\bigr)_a,
\]

proving (1). Equivalently \(*Q_0E=\kappa(Cw-Tf)\).

The background is covariantly constant, \(D_{\omega_0}e_0=0\), so

\[
e_0^a\wedge D_{\omega_0}w_a=-d(e_0^a\wedge w_a).
\]

The actual epsilon contraction gives

\[
e_0^a\wedge[e_0,f]_a
=\epsilon_{abc}\epsilon_{abi}f_i^c\,dV
=2\operatorname{tr}(e_0^{-1}f)\,dV.
\]

Together these establish (2), then (3) by compact-support integration by parts.

## Precise distributional versus retained statement

For a compact scalar smearing \(\chi\), define

\[
B_\chi(E)=\int\chi e_0^a\wedge E_a.
\]

Its derivative is an actual compactly supported L2 smearing. The integration-by-parts identity is

\[
\boxed{Q_0B_\chi
=\kappa\int d\chi\wedge e_0^a\wedge w_a
-2\kappa\int\chi\operatorname{tr}(e_0^{-1}f)\,dV.}
\tag{4}
\]

For \(\chi=1\), the derivative of B is the smooth but non-L2 distribution \(e_0\). Equation (3) is well-defined when its arguments are compact test fields, or more generally when the displayed integrals and boundary term exist. Neither term automatically extends to arbitrary retained Sobolev fields.

In particular, the local differential identity \(R_K e_0=4e_0\) is not an L2 eigenvector statement. It does not justify \(P_\Lambda e_0=1_{4\le\Lambda^2}e_0\). A compact-smearing retained calculation can be formulated with \(P_\Lambda(\chi e_0)\), but its \(\chi\to1\) limit needs a separate topology and existence proof. The genuine retained non-L1 trace-antifield example in [the insertion proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/proof.md>) prevents inferring that limit on the whole retained space.

Thus (3) may be used as a **formal unprojected distributional diagnostic** of the sign of the insertion. It must not be promoted to a retained Ward identity.

## Actual exact check

[The Sage first-jet program](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/free_action_checks.py>) constructs the physical quadratic density from the actual T and epsilon-curl tensors in a normal orthonormal frame, with all 18 field components and all 54 first jets independent. It evaluates the nine f Euler–Lagrange derivatives, the trace-T contraction, the curl/divergence identity and the contracted equation of motion. [The actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-generator-insertion-20261031.H2YFLo/free_action_actual_output.json>) has twelve zero residuals and no failures.

The antibracket sign in (1) is derived from the stated canonical convention; the CAS verifies the actual action variation and tensor contractions, not a substitute sign convention. No computation failed in this addendum.
