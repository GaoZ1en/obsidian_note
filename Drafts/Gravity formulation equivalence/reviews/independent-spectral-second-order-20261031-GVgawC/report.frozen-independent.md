# Independent review: odd-symplectic spectral compression through second order

## Primary conclusions

Under a **paired, even projection** and a **fully graded canonical Jacobian**, the compressed map generally loses canonicality at second order, but its full Berezinian has **no second-order discrepancy** from the projected supertrace of the logarithm:

\[
\boxed{N^\ddagger N-1_P=\varepsilon^2PXQXP+O(\varepsilon^3),\qquad
\log\operatorname{Ber}N-\operatorname{Str}_P(P\log M P)=O(\varepsilon^3).}
\]

Here \(N=PMP|_{\operatorname{ran}P}\), \(M=1+\varepsilon X+\varepsilon^2Y+\cdots\), \(Q=1-P\), and \(\ddagger\) is the odd-symplectic adjoint, not the Hilbert Hermitian adjoint. The second assertion is a theorem, not an extrapolation from a ghost-zero example. It follows because \(PXQXP\) is self-adjoint for an odd symplectic pairing and therefore has zero supertrace. Dropping dual antifield blocks or mishandling products of odd coefficients destroys this cancellation.

Neither statement implies an all-orders determinant identity. There are exact finite canonical counterexamples. An explicit full-gravity-map body model on a closed flat torus has a nonzero fourth-order logarithm discrepancy, but is **not an AdS saddle**. Raw action restriction, a canonical transformation constructed after truncation, and Wilsonian BV transfer are three different operations.

**Evidence:** 26 exact/interval Sage checks passed. The complete executable source, actual output, and source hash are archived in [checks.py](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/checks.py>), [actual-output.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/actual-output.txt>), and [actual-results.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/actual-results.json>). No existing project note was edited.

## 1. Inputs, independence, and conventions

The mathematical input is the exact local map in [note 16, §§1–3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L18-L238>) and its [full pointwise density calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L326-L379>). In particular, the coordinate antibracket is equation (4), the BRST differential acts from the left, and component coefficients precede ordinary differential forms. No prospective note 17 or other agents' output files were read. The parent later sent current-algebra witnesses while this report was being prepared; they are **not used anywhere in this independent report**.

Work over characteristic zero, with an ordinary even parameter \(\varepsilon\) and a supercommutative coefficient algebra. A finite exterior algebra suffices for all tests below. Reorder the complete BV coordinate space as

\[
\mathcal H=E\oplus\Pi E^*,\qquad z=(x,\theta),\quad |x|=0,
\quad |\theta|=1.
\]

Thus even ghost antifields belong to \(E\), not to the odd block. In a dual Darboux basis the antibracket obeys

\[
(x^i,\theta_j)=\delta^i{}_j,\quad
(\theta_j,x^i)=-\delta^i{}_j,
\]

with the right/left derivatives of equation (4). Use coefficient-left Jacobians. For an even matrix

\[
T=\begin{pmatrix}a&b\\c&d\end{pmatrix},\qquad
|a|=|d|=0,\quad |b|=|c|=1,
\]

our adjoint convention is

\[
\boxed{T^\ddagger=
\begin{pmatrix}d^t&b^t\\-c^t&a^t\end{pmatrix}.}
\tag{A1}
\]

Here \(t\) is ordinary array transpose, with no complex conjugation. Odd coefficients must still be anticommuted when reversing products: for odd-entry matrices \(b,c\), \((bc)^t=-c^tb^t\). It follows directly that

\[
(TU)^\ddagger=U^\ddagger T^\ddagger,\quad
(T^\ddagger)^\ddagger=T,\quad
\operatorname{Str}T^\ddagger=-\operatorname{Str}T.
\tag{A2}
\]

Equation (4) gives canonicality as \(MM^\ddagger=1\), equivalently \(M^\ddagger M=1\) for invertible \(M\). For example its coordinate conditions are \(ab^t+ba^t=0\), \(cd^t-dc^t=0\), and \(ad^t-bc^t=1\). These fix the signs in (A1); they are not imported from an even symplectic transpose.

Assume \(P^2=P\), \(|P|=0\), \(P^\ddagger=P\), and finite equal retained even/odd dimensions. The last condition is automatic for a nondegenerate paired subspace. An ordinary Hilbert-orthogonal projector is not enough unless it also pairs the field and antifield cutoffs correctly. The complement \(Q=1-P\) is then symplectically orthogonal to \(P\).

All formulas may be read formally. For analytic operator statements, assume bounded \(M\) near the identity in a shared Hilbert realization, or explicitly provide a common domain on which every displayed composition exists. No full trace-class condition on \(\log M\) is required for a finite-rank sandwich, but a branch of the operator logarithm and its domain are required. If the background derivative is \(L\ne1\), first identify target coordinates by \(L^{-1}\); source and target cutoffs must be intertwined by that fixed canonical identification. Independently cutting two nonintertwined backgrounds is a different question.

## 2. Exact defect identity and second-order canonicality

Let \(N=PMP|_P\) and \(K=QMP:P\to Q\). The full canonical identity gives

\[
\begin{split}
1_P&=PM^\ddagger(P+Q)MP\\
&=N^\ddagger N+K^\ddagger K.
\end{split}
\]

Therefore

\[
\boxed{N^\ddagger N-1_P=-K^\ddagger K.}
\tag{A3}
\]

Equivalently, in the coordinate-antibracket orientation,

\[
NN^\ddagger-1_P=-(PMQ)(PMQ)^\ddagger.
\tag{A4}
\]

Both vanish exactly iff the compression is canonical. Leakage itself need not vanish: an isotropic leakage image can make \(K^\ddagger K=0\).

Expanding full canonicality gives

\[
X^\ddagger=-X,\qquad
Y^\ddagger+Y+X^\ddagger X=0.
\tag{A5}
\]

Because \(K=\varepsilon QXP+O(\varepsilon^2)\), (A3) becomes

\[
\boxed{N^\ddagger N-1_P
=-\varepsilon^2PX^\ddagger QXP+O(\varepsilon^3)
=\varepsilon^2PXQXP+O(\varepsilon^3).}
\tag{A6}
\]

The same leading term appears in (A4). Thus canonicality through this order requires the **operator** \(PXQXP\) to vanish, not merely its supertrace.

## 3. Logarithms and every parity block

For any even \(M\) near the identity, canonical or not,

\[
\begin{split}
\log\operatorname{Ber}N
={}&\varepsilon\operatorname{Str}_P X_{PP}
+\varepsilon^2\operatorname{Str}_P
\left(Y_{PP}-\tfrac12X_{PP}^2\right)+O(\varepsilon^3),\\
\operatorname{Str}_P(P\log M P)
={}&\varepsilon\operatorname{Str}_P X_{PP}
+\varepsilon^2\operatorname{Str}_P
\left(Y_{PP}-\tfrac12(X^2)_{PP}\right)+O(\varepsilon^3).
\end{split}
\]

Hence

\[
\Delta:=\log\operatorname{Ber}N-\operatorname{Str}_P(P\log M P)
=\frac{\varepsilon^2}{2}\operatorname{Str}_P(PXQXP)+O(\varepsilon^3).
\tag{A7}
\]

For canonical \(M\),

\[
(PXQXP)^\ddagger=PX^\ddagger QX^\ddagger P=PXQXP.
\]

By (A2), its supertrace is its own negative, and therefore zero. This proves the cancellation without assuming either an antifield-zero section or a cotangent lift.

To expose the terms that are easy to miss, write the infinitesimal canonical matrix in parity blocks:

\[
X=\begin{pmatrix}a&b\\c&-a^t\end{pmatrix},\qquad
b^t=-b,\quad c^t=c.
\tag{A8}
\]

In paired bases, \(P=\operatorname{diag}(p,p^t)\). Distinguish retained/discarded labels \(P,Q\) from even/odd labels. The supertrace of \(PXQXP\) is

\[
\operatorname{tr}(a_{PQ}a_{QP})
-\operatorname{tr}(d_{PQ}d_{QP})
+\operatorname{tr}(b_{PQ}c_{QP})
-\operatorname{tr}(c_{PQ}b_{QP}).
\tag{A9}
\]

The first two terms cancel using \(d=-a^t\). For the last two,

\[
c_{PQ}=c_{QP}^t,\qquad b_{QP}=-b_{PQ}^t,
\]

and the odd-entry transpose identity gives

\[
c_{PQ}b_{QP}=-c_{QP}^tb_{PQ}^t
=(b_{PQ}c_{QP})^t.
\]

Their traces therefore agree. Omitting \(b,c\), or treating their entries as commuting, is not an acceptable proof away from the body.

### First possible nonzero logarithm discrepancy

For completeness, put \(A=X_{PP}, B=X_{PQ}, C=X_{QP}, D=X_{QQ}\); these are **cutoff blocks**, each still graded. One finds for any canonical analytic family

\[
\boxed{\Delta=
\frac{\varepsilon^3}{6}\operatorname{Str}_P
\bigl(BDC-ABC\bigr)+O(\varepsilon^4).}
\tag{A10}
\]

To see that no unspecified \(Y\) has been dropped, write \(\log M=\varepsilon X+\varepsilon^2Z+\cdots\), with \(Z^\ddagger=-Z\). The quadratic leakage terms containing one \(X\) and one \(Z\) are self-adjoint and have zero supertrace. Expanding \(P\exp(\log M)P\) leaves (A10). Equivalently, \(\Delta\) as a formal function of the Lie-algebra variable \(\log M\) is odd under \(\log M\mapsto-\log M\). This does **not** imply odd dependence on a general coordinate parameter \(\varepsilon\).

If \([P,M]=0\), compression commutes with the logarithm and the equality is exact. This is sufficient, not necessary.

## 4. Exact finite tests

### 4.1 All parity blocks present, with odd coefficients

Over \(\mathbb Q(t)\otimes\Lambda(\eta,\zeta)\), take

\[
A(t)=\begin{pmatrix}1+t&t\\t&1\end{pmatrix},\quad
B(t)=t\eta\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
C(t)=t\zeta\begin{pmatrix}1&1\\1&2\end{pmatrix}.
\]

Define the exact even canonical matrix

\[
M(t)=\begin{pmatrix}A&0\\0&A^{-t}\end{pmatrix}
\begin{pmatrix}1&B\\0&1\end{pmatrix}
\begin{pmatrix}1&0\\C&1\end{pmatrix}.
\tag{A11}
\]

Retain the first even coordinate and its first odd dual. The first derivative is

\[
X=\begin{pmatrix}
1&1&0&\eta\\
1&0&-\eta&0\\
\zeta&\zeta&-1&-1\\
\zeta&2\zeta&-1&0
\end{pmatrix}.
\]

All four parity blocks are nonzero. Exact exterior-algebra multiplication gives

\[
PXQXP=\begin{pmatrix}1+\eta\zeta&-2\eta\\0&1+\eta\zeta\end{pmatrix}\ne0,
\qquad \operatorname{Str}_P(PXQXP)=0,
\]

and

\[
\Delta(t)=\left(-\frac13+\frac23\eta\zeta\right)t^3+O(t^4).
\tag{A12}
\]

The same run checked exact full canonicality, the exact compression-defect identity, both canonical jet equations, the individual odd-block cancellation, and (A10). These are computations in the actual exterior algebra, not commuting stand-ins for the ghosts.

### 4.2 A numerical-body counterexample with exact matrices

Take

\[
A=\begin{pmatrix}2&1\\1&1\end{pmatrix},\quad
M=\operatorname{diag}(A,A^{-t}),
\]

and the same paired projection. Then

\[
N=\operatorname{diag}(2,1),\quad
N^\ddagger N-1=1_{1|1},\quad \operatorname{Ber}N=2.
\]

Since \(A\) is positive definite with determinant one,

\[
\log\operatorname{Ber}N=\log2,
\qquad
\operatorname{Str}_P(P\log M P)
=\frac{2}{\sqrt5}\log\frac{3+\sqrt5}{2}.
\tag{A13}
\]

The latter is approximately \(0.8608178819\), while \(\log2\) is approximately \(0.6931471806\). Sage's 200-bit real interval enclosures are disjoint, so the finite inequality is certified, not merely a rounded-decimal observation. This matrix belongs to the real body of the canonical family (A11) at \(t=1\); the family is invertible from \(t=0\) to \(1\).

## 5. Connection to the exact gravity map, and the torus limitation

At ghosts and antifields zero, differentiate **the full exact map before evaluating the section**. The physical field derivative is the identity. The odd ghost derivative is

\[
G(e,\omega)=\begin{pmatrix}1&\omega\\0&e\end{pmatrix}
\]

on \((\lambda,\xi)\), while the even ghost-antifield derivative is \(G^{-t}\); physical antifields have identity derivative. Cross derivatives vanish on this section, but their absence here is not an assertion about nonzero ghosts or antifields. At a background \(\bar G\), the identified ghost block is \(H=\bar G^{-1}G\), and its even dual block is \(H^{-t}\).

There are 18 even physical components, 6 odd ghost components, 18 odd physical antifields, and 6 even ghost antifields: the complete minimal BV fiber is \(24|24\). Keeping only \(\xi\) or only the physical fields is not the full Berezinian problem.

For a completely explicit **closed-torus model**, let \(M=T^3\), coordinates of period \(2\pi\), \(\bar e^a{}_\mu=\delta^a_\mu\), \(\bar\omega=0\), and

\[
e=f\bar e,\quad \omega=0,\quad
f=1+\varepsilon\cos x^1,\quad |\varepsilon|<1.
\]

Use frozen background norms and mutually dual Fourier bases; retain the constant mode in every BV component. The nontrivial derivative blocks are multiplication by \(f\) on three odd translation ghosts and by \(f^{-1}\) on their three even antifields. All remaining blocks are identities. Writing \(\langle\cdot\rangle\) for the normalized torus mean,

\[
\langle f\rangle=1,\quad
\langle f^{-1}\rangle=(1-\varepsilon^2)^{-1/2},\quad
\langle\log f\rangle=
\log\frac{1+\sqrt{1-\varepsilon^2}}2.
\]

The first integral follows by \(u=\tan(x/2)\). Differentiating the logarithmic integral gives
\(\partial_\varepsilon\langle\log f\rangle
=(1-\langle f^{-1}\rangle)/\varepsilon\), and the value at zero fixes its integration constant. Thus

\[
\boxed{
\begin{aligned}
\log\operatorname{Ber}(PMP)
&=-\tfrac32\log(1-\varepsilon^2),\\
\operatorname{Str}_P(P\log M P)
&=-6\log\frac{1+\sqrt{1-\varepsilon^2}}2,\\
\Delta&=\tfrac3{16}\varepsilon^4+O(\varepsilon^6).
\end{aligned}}
\tag{A14}
\]

Each nontrivial paired block has canonical defect
\((1-\varepsilon^2)^{-1/2}-1=\varepsilon^2/2+O(\varepsilon^4)\).
At \(\varepsilon=1/2\), the exact logarithm gap is positive, about \(0.0155043235\), certified by interval arithmetic.

The pointwise full Berezinian is \(f^{-6}\), in agreement with \((\det e)^{-2}\) in note 16. The finite compressed determinant is different; no local nilpotent Schur factor was reintroduced to obtain it.

**This background is not AdS.** It has \(\bar R=0\), whereas note 16's unit-radius AdS equation is \(\bar R=\tfrac12[\bar e,\bar e]\). The local off-shell canonical map exists on this torus, and the torus is closed, so no collar contract is violated. The calculation is an exact algebraic/spectral model, not a genuine AdS one-loop or nonlinear cutoff computation.

The abstract second-order theorem applies on a genuine AdS realization only after its paired operator domains, background identification, and cutoff are supplied. On noncompact AdS, a simple spectral threshold generally has infinite rank. With a wall, elliptic eigenmodes generally do not satisfy the requirement of vanishing in an open collar. On a closed hyperbolic quotient one can seek a discrete paired cutoff, but no such specific gravitational regulator or its higher-order coefficients were constructed here.

## 6. Three inequivalent finite operations

### 6.1 Raw restriction of a CME action

Split the antibracket into paired retained and discarded sectors. For
\(S_P(x)=S(x,y=0)\), full CME gives only

\[
\boxed{(S_P,S_P)_P=-\left.(S,S)_Q\right|_{y=0}.}
\tag{A15}
\]

The right side need not vanish. A finite counterexample with the antibracket convention of note 16 has even coordinates \(x,y,z\), odd ghosts \(c_1,c_2\), their BV duals, and

\[
S=x^*c_1+y^*c_2+z^*(yc_1+xc_2).
\]

The corresponding classical vector fields
\(V_1=\partial_x+y\partial_z\) and
\(V_2=\partial_y+x\partial_z\) commute; exact computation gives \((S,S)=0\). Discard the paired coordinates \((y,y^*)\), retaining both ghost pairs. Then

\[
S_P=x^*c_1+z^*xc_2,
\qquad
(S_P,S_P)_P=-2z^*c_1c_2\ne0.
\tag{A16}
\]

The missing discarded contribution is \(+2z^*c_1c_2\). Sage verifies the right/left Grassmann derivatives explicitly. This is a general finite CME counterexample, not a claim that these three coordinates form a gravity subcomplex.

### 6.2 Transformation generated after finite truncation

Restrict an odd Hamiltonian generator to a finite odd symplectic space and take its **finite-dimensional Hamiltonian flow**. This yields a canonical finite transformation. A finite type-II generating function gives the same conclusion when its mixed Hessian is invertible and the truncation respects its position/momentum split.

That transformation is generally not \(P\Phi(Pz)\): projecting a continuum solution of the type-II equations is not the same as solving the already projected equations. It preserves a finite CME action only if the starting finite action actually satisfies CME. Canonical covariance cannot turn the nonzero bracket in (A16) into zero.

### 6.3 Wilsonian BV transfer

A BV pushforward integrates a QME integrand over a chosen Lagrangian in the discarded symplectic sector, with a compatible density, propagator/gauge fixing and a valid BV-Stokes statement. Schematically,

\[
e^{iS_{\mathrm{eff}}/\hbar}
=\int_{\mathcal L_Q}e^{iS/\hbar},\qquad
\Delta e^{iS/\hbar}=0
\Longrightarrow
\Delta_Pe^{iS_{\mathrm{eff}}/\hbar}=0.
\]

Under the required contraction/acyclicity assumptions, its tree-level effective action satisfies a transferred CME and includes induced higher vertices. It is not raw restriction. None of the compression identities supplies the propagator, controls a BV boundary term, or proves a continuum QME.

In particular, if a raw finite classical action has a nonzero order-\(\hbar^0\) CME defect, a counterterm beginning at \(\hbar S_1\) cannot cancel it in the QME. A tree-level correction of the action/algebra, a different finite realization, or genuine transfer is required.

## 7. Verification boundary and reproducibility

**Verified analytically:** (A1)–(A10), the finite cotangent-lift example, the torus averages and (A14), the raw-restriction identity, and the distinction between the three operations. The cubic formula is included as an additional consequence, not needed for the second-order theorem.

**Verified in Sage 10.9:** exact canonical matrices with all four parity blocks; Grassmann signs; exact leakage identity; both canonical jet identities; a nonzero matrix defect with zero supertrace; the cubic discrepancy; a rigorous finite real logarithm inequality; exact torus series and a rigorous finite gap; and full versus raw-restricted CME in the independent finite example. All 26 checks passed, with no truncated output. The final source hash is in [actual-results.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/actual-results.json>). The MCP raw return is also preserved by the harness at [the actual Sage response](</Users/koishi/.dsh/research-results/session-8b689b102fbe/a2e07ee2fa5c-research-result.json>).

Two exploratory API mistakes were corrected before the successful archived run: a rational-function object does not implement `.series`, and an exterior-algebra scalar should not be divided by another exterior-algebra scalar via the base-field division interface. Neither failure was a failed mathematical condition; the final run evaluated all conditions successfully.

**Not verified or constructed:** a genuine AdS finite spectral BV action satisfying CME; a specific paired AdS regulator and background intertwiner; the full nonzero-ghost/nonzero-antifield higher-order compressed gravity Berezinian; a Wilsonian gravity transfer; a continuum anomaly/QME calculation; or a boundary CPS/BFV equivalence. No CPS derivation is used in this report. The adjoint and full-parity proof, unlike the explicit torus coefficient, do cover nonzero odd coefficients whenever the stated operator hypotheses hold.
