# Einstein–Palatini–Chern–Simons: action, potential, and corner calculation

## Result and scope

**Proved locally, with a specified relative boundary prescription:** three-dimensional Einstein–Palatini gravity and the difference of two Chern–Simons actions are related off shell by an explicit transgression. Their natural bulk symplectic currents agree. On nondegenerate torsion-free coframes, the metric potential differs from the Palatini potential by a spacetime derivative. The corresponding corner shift is essential for equality of regional integrated symplectic forms.

This local matched-prescription result is **not by itself a proof** that independently chosen standard boundary actions and global quotients agree. The subsequent [standard chiral comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>) supplies the independent finite-wall calculation; the [complete-sector theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) closes the classical global quotient for an explicitly geodesically complete geometric domain. None of these statements is an assertion about torsionful matter, singular coframes, moving boundaries, or null corners.

## 1. Conventions

The spacetime dimension is three, signature is $(-++)$, and $\Lambda=-\ell^{-2}$, with $G>0$ and $\ell>0$. Choose a spacetime orientation and orientation-compatible coframe such that

\[
\epsilon=e^0\wedge e^1\wedge e^2,\qquad
\eta_{ab}=\operatorname{diag}(-1,1,1),\qquad \epsilon_{012}=+1.
\]

All displayed wedge products in the action are spacetime products. Field-space antisymmetrization is stated explicitly when needed. We use commuting $d$ and $\delta$, $\delta L=E\delta\phi+d\theta$, and

\[
\Theta_\Sigma=\int_\Sigma\theta-\int_{\partial\Sigma}C,
\qquad \Omega_\Sigma=\delta\Theta_\Sigma,
\qquad \iota_{X_H}\Omega=-\delta H.
\tag{1.1}
\]

This is the integrated convention of the [workspace CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>). In its vector-current notation $\delta L=\cdots-\nabla_\mu\vartheta^\mu\epsilon$, our form potential is $\theta=-\vartheta^\mu\iota_{\partial_\mu}\epsilon$. Pullback to a future Cauchy surface gives the same integrated potential, not its negative.

The $2\times2$ fundamental trace is normalized by

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,
\quad \operatorname{tr}(J_aJ_b)=\tfrac12\eta_{ab},
\quad \operatorname{tr}(J_aJ_bJ_c)=\tfrac14\epsilon_{abc},
\]

with one explicit realization

\[
J_0=\frac12\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
J_1=\frac12\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
J_2=\frac12\begin{pmatrix}1&0\\0&-1\end{pmatrix}.
\]

Set $k=\ell/(4G)$, $\kappa^2=16\pi G$, and $\gamma=1/(16\pi G)$; $\gamma$ is only the gravitational prefactor, not a metric or an Immirzi parameter. To avoid ambiguity with the corner $C$, the classical Virasoro central charge will be denoted $c_{\rm cl}=6k$.

Write $e=e^aJ_a$, $\omega=\omega^aJ_a$,

\[
R=d\omega+\omega\wedge\omega,\qquad
T=de+\omega\wedge e+e\wedge\omega,
\]

and $\omega^{ab}=-\epsilon^{ab}{}_c\omega^c$. In components $T^a=de^a+\epsilon^a{}_{bc}\omega^b\wedge e^c$.

These formulas require a common local Lorentz bundle identification for the two connection factors. Globally, $A-\bar A$ is not a tensor until their bundle data and diagonal reduction are specified. Transgression forms containing $\omega$ can require patch terms; this note proves the identity in a fixed common trivialization, or globally when those representatives are global.

## 2. Exact off-shell transgression

Define

\[
\operatorname{cs}(A)=\operatorname{tr}\left(A\wedge dA+\frac23 A\wedge A\wedge A\right),
\qquad A=\omega+\frac e\ell,\quad \bar A=\omega-\frac e\ell.
\]

**Proposition 2.1 — Proved.** Without imposing torsion, curvature, or nondegeneracy,

\[
\boxed{
\operatorname{cs}(A)-\operatorname{cs}(\bar A)
=\frac4\ell\operatorname{tr}(e\wedge R)
+\frac4{3\ell^3}\operatorname{tr}(e\wedge e\wedge e)
-\frac2\ell d\operatorname{tr}(\omega\wedge e).
}
\tag{2.1}
\]

**Proof.** Put $q=e/\ell$. The derivative terms odd in $q$ are $2\operatorname{tr}(\omega\wedge dq+q\wedge d\omega)$. Since

\[
d\operatorname{tr}(\omega\wedge q)
=\operatorname{tr}(d\omega\wedge q-\omega\wedge dq),
\]

they equal $4\operatorname{tr}(q\wedge d\omega)-2d\operatorname{tr}(\omega\wedge q)$. Graded cyclicity of the trace makes the cubic terms odd in $q$ equal to $4\operatorname{tr}(q\wedge\omega\wedge\omega)+\frac43\operatorname{tr}(q^3)$. This proves (2.1). $\square$

Consequently

\[
L_{\rm CS}:=\frac{k}{4\pi}\bigl(\operatorname{cs}(A)-\operatorname{cs}(\bar A)\bigr)
=L_{\rm P}+dB,
\tag{2.2}
\]

where

\[
\begin{split}
L_{\rm P}
&=\frac1{8\pi G}\left(e_a\wedge R^a+\frac1{6\ell^2}\epsilon_{abc}e^a\wedge e^b\wedge e^c\right)\\
&=\gamma\epsilon_{abc}\left(e^a\wedge R^{bc}+\frac1{3\ell^2}e^a\wedge e^b\wedge e^c\right),\\
B&=-\frac{k}{2\pi\ell}\operatorname{tr}(\omega\wedge e)
=-\gamma\omega_a\wedge e^a=\gamma e_a\wedge\omega^a.
\end{split}
\tag{2.3}
\]

On an oriented nondegenerate coframe with its torsion-free connection, $L_{\rm P}=\gamma(R[g]+2/\ell^2)\epsilon$. This last equality uses the torsion-free embedding into Palatini field space; (2.1) does not.

## 3. Variation and bulk symplectic currents

The variation of a single CS form is

\[
\delta\operatorname{cs}(A)=2\operatorname{tr}(\delta A\wedge F_A)-d\operatorname{tr}(A\wedge\delta A).
\tag{3.1}
\]

Thus natural representatives are

\[
\begin{split}
\theta_{\rm CS}
&=-\frac{k}{4\pi}\operatorname{tr}(A\wedge\delta A-\bar A\wedge\delta\bar A)\\
&=-\gamma(\omega_a\wedge\delta e^a+e_a\wedge\delta\omega^a),\\
\theta_{\rm P}&=-\frac{k}{\pi\ell}\operatorname{tr}(e\wedge\delta\omega)
=-2\gamma e_a\wedge\delta\omega^a,\\
\boxed{\theta_{\rm CS}=\theta_{\rm P}+\delta B.}
\end{split}
\tag{3.2}
\]

For completeness, direct variation gives

\[
\delta L_{\rm P}
=2\gamma\,\delta e_a\wedge\left(R^a+\frac1{2\ell^2}\epsilon^a{}_{bc}e^b\wedge e^c\right)
+2\gamma T_a\wedge\delta\omega^a+d\theta_{\rm P}.
\tag{3.3}
\]

For commuting tangent variations,

\[
\begin{split}
\omega_{\rm CS}(\delta_1,\delta_2)
&=-\frac{k}{2\pi}\operatorname{tr}(\delta_1A\wedge\delta_2A-\delta_1\bar A\wedge\delta_2\bar A),\\
\omega_{\rm P}(\delta_1,\delta_2)
&=-\frac{k}{\pi\ell}\operatorname{tr}(\delta_1e\wedge\delta_2\omega-\delta_2e\wedge\delta_1\omega),\\
\omega_{\rm CS}&=\omega_{\rm P}.
\end{split}
\tag{3.4}
\]

The equality follows either from (3.2) and $\delta^2B=0$ or by substituting $A,\bar A$ into (3.4). The field-space-exact term changes the potential and endpoint action, but not the bulk current.

## 4. The metric–coframe corner form

Here and only here restrict to $\omega=\omega(e)$, $\det e\ne0$, and variations tangent to the torsion-free locus. Einstein's equation is not required.

For $h_{\mu\nu}=\delta g_{\mu\nu}$, the metric potential is

\[
\theta_g(h)=\gamma(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)\,\iota_{\partial_\mu}\epsilon.
\tag{4.1}
\]

Define the internal variation matrix and its antisymmetric part by

\[
\beta^{ab}=\delta e^a{}_{\mu}e^{b\mu},\qquad
\lambda^{ab}=\beta^{[ab]},\qquad
\alpha(e,\delta e)=\gamma\epsilon_{abc}e^a\lambda^{bc}
=\gamma * (e_a\wedge\delta e^a).
\tag{4.2}
\]

Our Lorentzian Hodge star obeys $*^2=-1$ on one- and two-forms. In particular $*(e^0\wedge e^1)=-e^2$.

**Proposition 4.1 — Proved on the torsion-free nondegenerate locus.**

\[
\boxed{\theta_g=\theta_{\rm P}+d\alpha,\qquad
\omega_g=\omega_{\rm P}+d\delta\alpha.}
\tag{4.3}
\]

**Derivation.** Varying the tetrad postulate and splitting $\beta$ into symmetric and antisymmetric parts gives

\[
\delta\omega_\mu{}^{ab}
=\frac12e^{a\rho}e^{b\nu}(\nabla_\nu h_{\mu\rho}-\nabla_\rho h_{\mu\nu})-D_\mu\lambda^{ab}.
\tag{4.4}
\]

Insert this into $\theta_{\rm P}=-\gamma\epsilon_{abc}e^a\wedge\delta\omega^{bc}$. The first term is (4.1). The second is $\gamma\epsilon_{abc}e^a\wedge D\lambda^{bc}=-d\alpha$, using $De^a=0$. Hence (4.3).

A sign diagnostic is a local boost of a flat coframe: $\delta e^0=b e^1$, $\delta e^1=b e^0$, $\delta e^2=0$. Then $\delta g=0$, $\alpha=2\gamma b e^2$, and $\theta_{\rm P}=-2\gamma db\wedge e^2$. Thus $\theta_g=\theta_{\rm P}+d\alpha=0$ as required. This diagnostic tests the sign; the general identity follows from (4.4), not from the example alone.

Combining (3.2) with (4.3),

\[
\boxed{\theta_{\rm CS}-\theta_g=\delta B-d\alpha.}
\tag{4.5}
\]

The two exact terms in this equation are of different kinds and cannot be interchanged.

## 5. A matched Harlow–Wu boundary prescription

Work first on a fixed finite region with timelike wall $\Gamma$, fixed embeddings, and no null boundary. Let the metric variational problem use a boundary density $l_g$ and descent form $C_g$ such that

\[
(\theta_g+\delta l_g)|_\Gamma=dC_g
\tag{5.1}
\]

on allowed variations (or modulo a displayed source term that vanishes on that domain). The counterterm, corner prescription, and limiting procedure are part of this statement.

A standard timelike AdS Dirichlet density is

\[
l_g=2\gamma(K-\ell^{-1})\epsilon_\Gamma,
\qquad \epsilon_\Gamma=\iota_n\epsilon,
\tag{5.2}
\]

with outward unit spacelike normal $n$. Dirichlet at a finite wall means $\delta\gamma_{ij}=0$. Brown–Henneaux conditions instead fix the leading conformal boundary metric and require taking the renormalized limit; these are not identical finite-wall conditions.

A first-order Lorentz-covariant representative reducing to (5.2) is

\[
l_{\rm P}=2\gamma\epsilon_{abc}n^a e^b\wedge Dn^c-\frac{2\gamma}{\ell}\epsilon_\Gamma,
\qquad n_a e^a|_\Gamma=0,\quad n_an^a=1.
\tag{5.3}
\]

For $n^a=(0,0,1)$, the first term is $2\gamma(e^0\wedge Dn^1-e^1\wedge Dn^0)=2\gamma K\epsilon_\Gamma$. Thus (5.3) equals (5.2) on the torsion-free locus. Independent connection variations cancel between $\theta_{\rm P}$ and the connection part of $\delta l_{\rm P}$ on the wall. A full off-shell first-order boundary-source decomposition, including arbitrary normal/frame variations, is not being inferred from that cancellation alone.

On the torsion-free solution space a consistent matched prescription is

\[
\boxed{
l_{\rm P}=l_g,\quad C_{\rm P}=C_g-\alpha|_\Gamma,
\qquad l_{\rm CS}=l_{\rm P}-B|_\Gamma,\quad C_{\rm CS}=C_{\rm P}.
}
\tag{5.4}
\]

Equations (3.2), (4.3), and (5.1) prove the corresponding boundary identities. They also give

\[
\Theta_{\rm P}=\Theta_g,\qquad
\Theta_{\rm CS}=\Theta_g+\delta\int_\Sigma B,
\qquad \boxed{\Omega_{\rm CS}=\Omega_g.}
\tag{5.5}
\]

This is an equality of pulled-back presymplectic structures before the separate global gauge quotient problem is solved. If both definitions instead used the same numerical corner form $C_g$ with their uncorrected bulk potentials, their difference would be

\[
\Omega_{\rm CS}-\Omega_g=-\delta\int_{\partial\Sigma}\alpha,
\tag{5.6}
\]

which is not identically zero for variable boundary frames. A Lorentz transformation invisible in $g$ can therefore have a regional frame charge before the dressing/corner matching. It is not legitimate simply to quotient that transformation while keeping a form on which it is non-null.

### 5.1 An exact on-shell Lorentz corner counterexample

Take Poincaré AdS3 with $z>0$,

\[
e^a=\frac\ell z(dt,dx,dz),\qquad
\omega^a=(dx/z,dt/z,0),
\]

and a finite smooth Cauchy domain $\Sigma$ in the $(x,z)$ plane, oriented by $dx\wedge dz$. Let $X_B$ be the local boost $\delta e^0=b e^1$, $\delta e^1=b e^0$, $b=z^2/\ell^2$, and let $X_R$ be the rotation $\delta e^1=e^2$, $\delta e^2=-e^1$. Both are tangent to torsion-free AdS solutions, with $\delta g=0$. They preserve metric boundary data, though not a fixed boundary frame.

Direct computation gives

\[
\omega_{\rm P}(X_B,X_R)=\frac{2\gamma}{\ell}\,dx\wedge dz,
\qquad
(\delta\alpha)(X_B,X_R)=\frac{2\gamma z}{\ell}\,dx,
\qquad
\omega_g=\omega_{\rm P}+d\delta\alpha=0.
\tag{5.7}
\]

The field-space derivative in (5.7) includes the term $-\alpha([X_B,X_R])$; these gauge vector fields do not commute. Hence

\[
\int_\Sigma\omega_{\rm P}(X_B,X_R)
=\frac{2\gamma}{\ell}\operatorname{Area}_{dx\,dz}(\Sigma)\ne0,
\]

whereas the metric pairing is zero. Stokes' theorem makes the $d\delta\alpha$ contribution its exact negative. This is a counterexample to omitting the corner, not a counterexample to the matched prescription (5.4). The [coframe/corner script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/coframe_corner_checks.wl>) verifies torsion, curvature, both metric variations, the noncommuting field-space bracket, and both sides of (5.7).

## 6. Full relative action, endpoints, and what remains to match

With $\partial M=\Sigma_f-\Sigma_i+\Gamma$ as an oriented chain and (5.4), Stokes' theorem gives

\[
S_{\rm CS}[l_{\rm P}-B]
=S_{\rm P}[l_{\rm P}]+\int_{\Sigma_f}B-\int_{\Sigma_i}B.
\tag{6.1}
\]

The cap term is a canonical generating functional. It can be canceled by an explicit cap action, or retained with the corresponding transformation of endpoint wavefunctionals. It must not silently be deleted when comparing quantum kernels.

Any chosen geometric joint/corner action must be pulled back as part of the action data. A field-space variation of a joint functional changes $\Theta$ but not $\Omega$; an independent corner symplectic potential can change $\Omega$. These are distinct operations. The fixed-wall descent (5.4) is not a general derivation of nonorthogonal Hayward joints or moving-cut edge modes.

Constructing (5.4) proves the existence of a matching relative prescription; it does not establish that every familiar prescription is already that one. The subsequent [standard chiral comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>) independently fixes both actions and computes their difference: the Bañados-collar wall defect is $-(k/\pi R^2)\mathcal L_+\mathcal L_-\tau$, while the actual corner defect vanishes on the fixed-normal slice. The asymptotic forms agree there, although finite-wall Dirichlet and chiral variational problems differ. Its generic off-shell metric descent also identifies $C_g-\alpha=2\gamma *_\Gamma(E_a\delta N^a)$.

## Verification and evidence

The [exact Wolfram script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads3_local_checks.wl>) checks (2.1), (3.2), (3.4), flatness/torsion decomposition, trace normalization, and the metric determinant with algebraically independent coframe/connection coefficients and derivatives. The [saved result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads3_local_checks.results.json>) reports 19 passed checks, no messages; some of those checks concern the companion vacuum-orbit report. The metric–coframe identity (4.3) is analytically derived here. The separate [coframe/corner result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/coframe_corner_checks.results.json>) verifies it in generic first-jet component algebra with 63 independent jets, and verifies the exact on-shell counterexample (5.7). Both blocks pass with no messages. This was ordinary component algebra hosted in an xAct-loaded Wolfram kernel, not an additional abstract-index xAct derivation; it is not included in the 19-check count.

An independently initialized reviewer derived the transgression and (4.3) without being supplied a candidate result and obtained the same signs. Full review evidence is retained in the [independent reviews](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>).

The relative boundary prescription agrees with the structural rule in Harlow–Wu, [arXiv:1906.08616v4](https://arxiv.org/abs/1906.08616v4), PDF p. 14 / printed p. 13, (2.20)–(2.21), visually checked. Metric–tetrad surface terms are also studied in De Paoli–Speziale, [arXiv:1804.09685v2](https://arxiv.org/abs/1804.09685v2), and Oliveri–Speziale, [arXiv:1912.01016v2](https://arxiv.org/abs/1912.01016v2); only their abstracts/version records have been checked in this first stage, so their detailed formulas are not used as verification of ours.
