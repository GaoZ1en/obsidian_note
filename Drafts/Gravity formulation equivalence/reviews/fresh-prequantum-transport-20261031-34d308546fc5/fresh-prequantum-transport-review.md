# Fresh derivation: prequantum signs and unitary transport

Date: 2026-10-31 (Asia/Shanghai).

**Status and independence.** This is a scoped fresh derivation from the stated conventions, not an audit of a supplied candidate. No parent candidate or other review was inspected. The derivation and both CAS calls were completed before the parent requested this archival review or reported agreement with its own derivation. The CAS evidence below is copied from those completed calls; **no CAS rerun was performed**. No pre-existing project report was read or modified. No bulk/gravity conclusion is asserted.

## Result and conventions

For smooth real symplectic manifolds \(P_i\) of dimension \(2n\), let
\[
\Omega_i=d\Theta_i,\qquad
\iota_{X_f}\Omega_i=-df,\qquad
\{f,g\}=X_gf,\qquad
\nabla_i=d-\frac{i}{\hbar}\Theta_i,
\]
where \(\hbar\in\mathbb R\setminus\{0\}\), and the displayed connection uses a unitary trivialization of the Hermitian prequantum line bundle. Its curvature is \(-i\Omega_i/\hbar\).

The prequantum operator with the target commutator convention is
\[
\boxed{Q_{\rm pre}(f)=-i\hbar\nabla_{X_f}+f
=-i\hbar X_f+f-\Theta(X_f).}
\]
If an onto symplectomorphism \(\Phi:P_1\to P_2\) obeys
\(\Phi^*\Theta_2=\Theta_1+dF\) with a globally defined real \(F\), the connection-preserving **forward fiber lift** has phase \(e^{+iF/\hbar}\). Its induced **section pullback**, from sections over \(P_2\) to sections over \(P_1\), has phase \(e^{-iF/\hbar}\). With compatible polarization, half-form, pairing, and domain data specified below, this pullback becomes a unitary observable intertwiner.

## 1. Prequantum operator sign

Set \(h=\{f,g\}\). The given definitions imply
\[
X_fg=-h,\qquad
\Omega(X_f,X_g)=-h,\qquad
[X_f,X_g]=-X_h.
\]
The last identity follows from Cartan's formula and \(\mathcal L_{X_f}\Omega=0\). Curvature therefore gives
\[
[\nabla_{X_f},\nabla_{X_g}]
=\nabla_{[X_f,X_g]}-\frac{i}{\hbar}\Omega(X_f,X_g)
=-\nabla_{X_h}+\frac{i}{\hbar}h.
\]
Using \([\nabla_{X_f},g]=X_fg=-h\) and \([f,\nabla_{X_g}]=-X_gf=-h\), one obtains
\[
[Q_{\rm pre}(f),Q_{\rm pre}(g)]
=\hbar^2\nabla_{X_h}+i\hbar h
=i\hbar Q_{\rm pre}(h).
\]
Constants obey \(Q_{\rm pre}(c)=cI\). These are identities on smooth sections, or on a common invariant domain when interpreted as unbounded operators.

## 2. Fiber lift, section direction, and global existence

In the stated trivializations, define
\[
\widetilde\Phi(x,z)=(\Phi x,e^{iF(x)/\hbar}z).
\]
It is fiberwise Hermitian and connection preserving because
\[
\left(d-\frac{i}{\hbar}(\Theta_1+dF)\right)(e^{iF/\hbar}s)
=e^{iF/\hbar}\left(d-\frac{i}{\hbar}\Theta_1\right)s.
\]
Its induced section pullback uses the inverse fiber map:
\[
(Us_2)(x)=\widetilde\Phi_x^{-1}s_2(\Phi x)
=e^{-iF(x)/\hbar}s_2(\Phi x).
\]
The inverse section map is
\[
(U^{-1}s_1)(y)=e^{iF(\Phi^{-1}y)/\hbar}s_1(\Phi^{-1}y).
\]
Connection compatibility and
\(\Phi_*X_{f_2\circ\Phi}=X_{f_2}\circ\Phi\) give
\[
\boxed{Q_1(f_2\circ\Phi)U=UQ_2(f_2).}
\]
The lift is unique up to a constant unit phase on each connected component.

**Global qualification.** Symplecticity implies only that
\(\alpha=\Phi^*\Theta_2-\Theta_1\) is closed. Global triviality of the bundles does not make \(\alpha\) exact. Intrinsically, a connection-preserving lift exists exactly when the flat difference between \(L_1\) and \(\Phi^*L_2\) has trivial holonomy. In trivial bundles, periods of \(\alpha\) in \(2\pi\hbar\mathbb Z\) suffice for a circle-valued phase, even without a global real \(F\). For example, on \(T^*S^1\) with \(q\) of period \(2\pi\), \(\Theta=p\,dq\), and \(p\mapsto p+c\), a lift exists iff \(c/\hbar\in\mathbb Z\).

## 3. Sufficient hypotheses for a unitary observable intertwiner

1. **Polarization and admissible observables.** Choose involutive Lagrangian polarizations \(E_i\), with \(\Phi_*E_1=E_2\). Restrict to observables whose Hamiltonian vector fields preserve the polarizations. For uncorrected polarized sections, \(\nabla_Ys=0\) for \(Y\in E_i\), and
   \[
   [\nabla_Y,Q_{\rm pre}(f)]=-i\hbar\nabla_{[Y,X_f]},
   \]
   so the operator preserves polarization. Pullback transports these conditions and all support restrictions. Observables not preserving the polarization require a separately compatible BKS/projection prescription; no claim is made for all classical observables.

2. **Half-forms, when used.** Assume half-form bundles \(\delta_i\) exist with
   \(\delta_i^{\otimes2}=K(E_i)=\Lambda^n E_i^\circ\), and choose a lift of \(\Phi\) compatible with the natural map on \(K(E_i)\). Use the corresponding natural lifted Lie derivative and the corrected operator
   \[
   Q^\delta(f)(s\otimes\nu)
   =\bigl(-i\hbar\nabla_{X_f}s+fs\bigr)\otimes\nu
   -i\hbar s\otimes\mathcal L^\delta_{X_f}\nu.
   \]
   Naturality of the half-form Lie derivative proves the same intertwining for the total pullback. In coordinate coefficients, the half-form map can contribute a Jacobian factor in addition to the prequantum phase. Existence of this lift is an assumption, not a consequence of symplecticity alone.

3. **Positive Hilbert pairing.** Require the total pullback to biject dense polarized test spaces and preserve their positive pairing. This follows, for example, from compatible Hermitian line/half-form pairings and transported integration measures or densities. An isometric bijection of these dense spaces extends to a surjective unitary. In finite-dimensional unpolarized prequantization, Liouville measure \(\Omega^n/n!\) is preserved by \(\Phi\). Real-polarized sections generally need a reduced or distributional pairing, not naive full-phase-space \(L^2\).

4. **Domains and boundary conditions.** Require \(U\mathcal D_2=\mathcal D_1\) on dense invariant common cores, with compositions defined when a commutator is asserted. For real observables, essential self-adjointness on these cores implies intertwining of the self-adjoint closures and their domains. Otherwise, self-adjoint extensions and boundary conditions must be transported explicitly. Equality of differential expressions alone is insufficient. Symmetry additionally requires the appropriate integration-by-parts boundary terms to vanish.

These hypotheses separate the algebraic connection transport from the analytic existence and choice of quantum realizations.

## 4. Canonical sign and phase tests

Choose explicitly
\[
\Theta=p\,dq,\qquad \Omega=dp\wedge dq.
\]
Then
\[
X_p=\partial_q,\qquad X_q=-\partial_p,\qquad \{q,p\}=1,
\]
and
\[
Q_{\rm pre}(p)=-i\hbar\partial_q,\qquad
Q_{\rm pre}(q)=q+i\hbar\partial_p.
\]
The vertical polarization \(E=\operatorname{span}\{\partial_p\}\) reduces these to
\(Qp=-i\hbar\partial_q\) and \(Qq=q\), giving
\([Qq,Qp]=i\hbar I\) on Schwartz space. If one instead chooses \(\Omega=dq\wedge dp\) while retaining the stated Hamiltonian and bracket definitions, then \(\{q,p\}=-1\); that convention must not be silently substituted.

For the symplectic shear
\[
q_2=q,\qquad p_2=p+aq,\qquad F=\frac{a}{2}q^2,
\]
the section pullback on vertically polarized wavefunctions is
\(U\psi=e^{-iaq^2/(2\hbar)}\psi\), and
\[
(-i\hbar\partial_q+aq)U=U(-i\hbar\partial_q).
\]
This explicitly tests the inverse phase in the pullback. The forward fiber phase is separately checked by the connection identity in Section 2.

## 5. Infinite-dimensional scope

The argument is conditional transport, not an existence theorem for infinite-dimensional measures, half-form/determinant bundles, Hamiltonian vector fields, positive Hilbert completions, or unitary implementability in a fixed representation. There is no automatic infinite-dimensional Liouville/Lebesgue measure. Weak symplectic forms need not supply Hamiltonian vector fields for all functions.

Suitable measures and their transformation laws must be supplied separately. If a configuration-space map \(\phi\) satisfies \(\phi^*\mu_2=\rho\mu_1\), then a pullback with amplitude \(\rho^{1/2}\) is isometric; to retain observable intertwining, the half-density realization and operator divergence terms must be compatible with that amplitude. Mutual singularity of \(\mu_1\) and \(\phi^*\mu_2\) obstructs this particular pullback construction. None of these existence or implementability questions is settled by the prequantum phase calculation.

## 6. Executed CAS evidence and complete available diagnostics

The following are archival copies of the **two already completed calls**, not newly executed checks. Each source file contains the exact submitted Wolfram Language string; each result file contains the actual server-returned result. Each raw JSON preserves the full received record, including the source echo, metadata, and returned diagnostics.

| Completed call | Exact submitted source | Actual result | Complete raw return |
| --- | --- | --- | --- |
| General canonical commutator, canonical \(p,q\), forward fiber phase | [Source 1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/01-general-commutator.executed.wl>) | [Result 1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/01-general-commutator.result.txt>) | [Raw record 1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/01-general-commutator.raw.json>) |
| Shear section-pullback intertwiner | [Source 2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/02-shear-intertwiner.executed.wl>) | [Result 2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/02-shear-intertwiner.result.txt>) | [Raw record 2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/02-shear-intertwiner.raw.json>) |

The [archive diagnostics and checksums](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/archive-diagnostics.json>) record original source locations, call IDs, source-echo equality, byte-for-byte raw-copy verification, and SHA-256 hashes. The session identifier inside the server records is preserved as returned; it is not substituted for the archive-directory identifier.

**Returned results.** For arbitrary symbolic smooth functions \(f(q,p),g(q,p),s(q,p)\), the general commutator residual is exactly zero. The canonical bracket is exactly one; the returned \(Qq\) and \(Qp\) agree with Section 4. The canonical commutator residual and positive fiber-phase connection residual are zero. The separate shear intertwining residual is zero.

**Diagnostics.** Both raw records say `completeness: server-returned` and `upstreamTruncated: false`. Both original calls used `Block[{$Messages = {}, $MessageList = {}}, ...]` and returned `Messages -> {}`. All requested residuals evaluated explicitly; no `$Failed` or `$Aborted` appears in either result. The source strings explicitly impose real canonical variables and real nonzero `hh` (representing \(\hbar\)) in their general and phase simplifications, and real shear parameter `aa` where applicable. Separate process exit status, elapsed kernel time, kernel version, and standalone stdout/stderr fields were not returned by the server; this archive does not invent those diagnostics.

**Verified:** the analytic prequantum commutator; connection-lift phase and induced section direction; conditional naturality/intertwining; the canonical bracket and shear special case; the exact executed CAS residuals above.

**Assumptions:** smooth finite-dimensional geometric data for the proof; an onto symplectomorphism; an existing connection-preserving lift; compatible polarizations and any half-form lift; a positive transported pairing; appropriate invariant cores, self-adjointness or transported extensions, and boundary conditions.

**Not verified by CAS or claimed here:** global bundle/half-form existence for a particular project, existence of a chosen Hilbert realization or infinite-dimensional measure, quasi-invariance, essential self-adjointness for project-specific observables, compatibility of a separate BKS prescription, or any bulk/gravity assertion.
