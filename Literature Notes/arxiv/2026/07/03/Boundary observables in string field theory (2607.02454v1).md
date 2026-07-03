---
paper id: 2607.02454v1
title: Boundary observables in string field theory
authors:
  - Klaus Kaja
  - Carlo Maccaferri
  - Ulisses Portugal
  - Jakub Vošmera
publication date: 2026-07-02T00:00
abstract: |-
  Starting from the gauge invariant action for free string field theory with boundary recently constructed in 2506.05969, the paper defines new gauge invariant observables analogous to Brown-York charges in general relativity. These observables originate from a boundary tadpole and are associated with isometries of the SFT gauge group around a given background. Their construction only requires the background equation of motion to hold at the boundary, so bulk sources are allowed. In open SFT examples the observables reproduce electromagnetic flux for constant field-strength solutions and the Coulomb charge of a point source. In closed SFT the same construction detects the infinite stringy charges of two-dimensional black-hole solutions, and the paper proposes an interacting SFT charge one-form built from the shifted BRST operator.
comments: "32 pages, 2 appendices, no figures"
url: https://arxiv.org/abs/2607.02454v1
summary: "This paper gives a Brown-York-like surface-charge construction in string field theory, with boundary tadpoles and BRST-closed isometries replacing the gravitational stress tensor and boundary Killing fields."
tags: []
---

Back to [[2026_07_03_overview]].

# how to read this long paper

The essential line is Sections 2, 3, and 5: Brown-York charges are recast as a boundary-tadpole construction, then the same mechanism is written in free SFT as

$$
q(\Xi,\Psi_*)=\omega(\Xi,B_\Sigma B_{\partial M}\Psi_*),
$$

and finally generalized to interacting SFT through a closed charge one-form

$$
\eta(\Xi_\Psi,\Psi)=\omega(\Xi_\Psi,B^\Psi_\Sigma B^\Psi_{\partial M}\delta\Psi).
$$

Section 4 is the testbed section. It shows that the abstract formula reproduces electric flux, Coulomb charge, and the stringy hair charges of the $c=1$ two-dimensional black hole. Appendix A is important because it explicitly builds the first nontrivial higher stringy isometry. Appendix B is a technical proof that the interacting charge one-form is closed under the stated homological assumptions.

# source structure

- Section 1 introduces the analogy: in Maxwell theory and GR, on-shell bulk equations leave a boundary tadpole. In GR the tadpole is the Brown-York stress tensor; in SFT the tadpole is a boundary-localized state.
- Section 2 reviews Brown-York charges in the form needed for SFT. Gauge invariance gives $D_aT^{ab}=0$ for the boundary tadpole, and an improper parameter $\lambda^a=\xi^a\Theta_-$ localizes the charge on $\partial M\cap\Sigma$.
- Section 3 constructs the free SFT observable. The boundary operator $B_{\partial M}=[\Theta_M,Q]$ extracts the boundary tadpole, and the Cauchy-surface operator $B_\Sigma=[\Theta_-,Q]$ cuts it to a codimension-two surface.
- Section 4 evaluates the construction in massless open SFT and in noncritical closed SFT. The open examples reproduce Maxwell flux and source charge; the closed example detects the mass and stringy hair of the two-dimensional black hole.
- Section 5 proposes the interacting version using the shifted BRST operator $Q_\Psi$, an isometry vector $\Xi_\Psi$, and a closed charge one-form on pre-phase space.
- Appendix A constructs the second nontrivial ghost-number-one isometry of the $c=1$ string and computes a nonzero overlap with the $\lambda_2$ black-hole hair.
- Appendix B proves the closedness of the interacting isometry transport form and the charge one-form using the Hodge-Kodaira decomposition, cyclicity, and the vanishing of the cohomological obstruction.

# Brown-York boundary tadpoles

The GR reference point is the Einstein-Hilbert plus Gibbons-Hawking-York action

$$
S_{\rm GR}=\int_M d^D x\sqrt{-g}\,R
+2\int_{\partial M}d^{D-1}y\sqrt{-\gamma}\,K .
$$

On a bulk solution $g_*$ the variation leaves the boundary tadpole

$$
\delta S_{\rm GR}\big|_{\rm on-shell}
=\int_{\partial M}d^{D-1}y\sqrt{-\gamma_*}\,
\delta\gamma_{ab}\,(\gamma_*^{ab}K_*-K_*^{ab}),
$$

so the Brown-York tensor in the paper's convention is

$$
T^{ab}=\gamma_*^{ab}K_*-K_*^{ab}.
$$

Gauge invariance under a boundary-preserving diffeomorphism gives

$$
0=\int_{\partial M}d^{D-1}y\sqrt{-\gamma_*}\,
D_{(a}\lambda_{b)}T^{ab}.
$$

For gauge parameters with good falloff this implies

$$
D_aT^{ab}=0.
$$

The charge is obtained by using an inadmissible parameter supported in the past of a Cauchy surface,

$$
\lambda^a=\xi^a\Theta_-(x(y)),\qquad D^{(a}\xi^{b)}=0.
$$

This produces

$$
q^{\rm BY}(\xi,g_*)=
\int_{\partial M\cap\Sigma}d^{D-2}w\,\sqrt{h}\,
\xi^a u^bT_{ab}(g_*).
$$

The later SFT construction copies the logic, not the tensor form: the boundary tadpole is a string-field state, and the isometry is a BRST-closed gauge parameter.

# free SFT boundary action and charge

The free bulk-boundary action is

$$
S_{\rm tot}(\Psi,\chi)=
\frac12\omega\!\left(\Psi,(\Theta_MQ-\delta_{\partial M}\Gamma^*)\Psi\right)
+\omega\!\left(\Psi,\delta_{\partial M}\Gamma^*Q\chi\right)
-\frac12\omega\!\left(Q\chi,\delta_{\partial M}\Gamma^*Q\chi\right).
$$

The distributional boundary operator is defined by

$$
[\Theta_M,Q]=\delta_{\partial M}\Gamma^*_{\partial M}
+\Gamma_{\partial M}\delta_{\partial M}
\equiv B_{\partial M}.
$$

For a free solution $Q\Psi_*=0$, the gauge variation of the on-shell boundary term reduces to

$$
0=\delta_{\rm gauge}S_{\rm tot}\big|_{\rm on-shell}
=-\omega(Q\Lambda,B_{\partial M}\Psi_*).
$$

For admissible $\Lambda$, integration by parts gives

$$
QB_{\partial M}\Psi_*=0,
$$

using $[Q,B_{\partial M}]=0$ and $Q\Psi_*=0$. For an SFT isometry

$$
Q\Xi=0,
$$

the Brown-York-like step is to take the illegal parameter

$$
\Lambda=\Theta_-\Xi.
$$

Since

$$
Q(\Theta_-\Xi)=[Q,\Theta_-]\Xi=-B_\Sigma\Xi,
\qquad
B_\Sigma=[\Theta_-,Q],
$$

the charge is

$$
q(\Xi,\Psi_*)=\omega(\Xi,B_\Sigma B_{\partial M}\Psi_*).
$$

The paper proves the following local properties:

- Gauge invariance follows from $Q\Xi=0$ and $B_{\partial M}B_\Sigma Q=QB_{\partial M}B_\Sigma$ inside the compactly localized pairing.
- The order of $B_\Sigma$ and $B_{\partial M}$ does not matter in the charge because their commutator is $Q$-exact after localization on $\partial M\cap\Sigma$.
- The charge is independent of $\Sigma$ because $B_{\Sigma_2}-B_{\Sigma_1}=[Q,\mathcal E_{12}]$ for the bounded slab between the cuts.
- The charge is independent of transverse deformations of $\partial M$ as long as the boundary does not cross a source.
- If $M\cap\Sigma$ is compact and $Q\Psi_*=0$ everywhere inside, the charge vanishes. A nonzero compact charge requires a bulk source enclosed by the surface.

This is the local CPS dictionary: $B_{\partial M}\Psi_*$ is the boundary tadpole, $B_\Sigma$ cuts it to a corner, and the contraction with $\Xi$ turns a state-valued tadpole into a scalar surface charge.

# open SFT as Maxwell flux and charge

At the massless open-string level,

$$
\Psi(x)=A_\mu(x)\alpha^\mu_{-1}c_1|0\rangle
-i\sqrt{\frac{\alpha'}{2}}c_0B(x)|0\rangle.
$$

With the boundary modes $\chi^{(k)}$, the action reduces to

$$
S(A_\mu,B,\chi^{(k)})=
\frac{\alpha'}{2}\int_Md^D x\left(\frac12F_{\mu\nu}F^{\mu\nu}+\mathcal K^2\right)
+\frac{\alpha'}{2}\int_{\partial M}d^{D-1}y\,\mathcal R^{(0)}\mathcal R^{(1)},
$$

where

$$
\mathcal K=B-\partial_\mu A^\mu,
$$

$$
\mathcal R^{(0)}=\chi^{(0)}-A_z,
$$

$$
\mathcal R^{(1)}=\chi^{(1)}-\partial^a\partial_a\chi^{(-1)}
+2\partial_aA^a-B.
$$

After eliminating the auxiliary sector one obtains

$$
S^*(A_\mu)=\frac{\alpha'}{4}\int_Md^D x\,F_{\mu\nu}F^{\mu\nu}.
$$

For the constant field-strength background

$$
A_\mu(x)=-\frac12F_{\mu\nu}x^\nu,\qquad
\Psi_*=-\frac12F_{\mu\nu}x^\nu\alpha^\mu_{-1}c_1|0\rangle,
$$

and the open-string isometry

$$
\Xi=\frac{i}{\sqrt{2\alpha'}}|0\rangle,
$$

the charge reduces to the electric flux through the cut,

$$
q(\Xi,\Psi_*)=\alpha'F^{tz}\operatorname{Vol}(\Sigma\cap\partial M).
$$

For a compact cut and no source this vanishes, as expected from Gauss' law. The Coulomb example inserts a source

$$
|{\rm source}\rangle
=e\,\delta(\vec{x})\,\alpha^t_{-1}c_0c_1|0\rangle
$$

and solves

$$
Q\Psi_{\rm v}=|{\rm source}\rangle
$$

by a Siegel-gauge vacuum shift

$$
\Psi_{\rm v}(\epsilon)
=e\int_\epsilon d\vec{k}\,
\frac{e^{i\vec{k}\cdot\vec{x}}}{\vec{k}^2}
\alpha^t_{-1}c_1|0\rangle.
$$

For a compact region containing $\vec{x}=0$,

$$
q\!\left(\frac{i}{\sqrt{2\alpha'}}|0\rangle,\Psi_{\rm v}\right)=e.
$$

The useful lesson is that the SFT charge only needs the equations of motion to hold at the boundary. Interior sources are allowed and are exactly what the compact charge measures.

# closed SFT black-hole hair in the c=1 string

The closed-string example uses the weak-coupling end $\varphi\to-\infty$ of the noncritical $c=1$ string. The perturbative black-hole family is

$$
\Psi_*=\sum_{r>0}\lambda_r
e^{\frac{r+1}{2}V\varphi}
P_r\bar P_r c_1\bar c_1|0\rangle
+O(\lambda^2).
$$

The $r=1$ term is the two-dimensional black hole mass deformation:

$$
\Psi_1=\lambda_1 e^{V\varphi}
\alpha^t_{-1}\bar\alpha^t_{-1}
c_1\bar c_1|0\rangle.
$$

The time-translation isometry is the ghost-number-one state

$$
\Xi_1=\frac{i}{2\sqrt{2\alpha'}}
\left(c_1\alpha^t_{-1}
-\bar c_1\bar\alpha^t_{-1}\right)|0\rangle.
$$

The paper computes

$$
q(\Xi_1,\Psi_1)=\frac{\alpha'}{8}\lambda_1V.
$$

For higher stringy hairs the expected isometries have the form

$$
\Xi_r=(c_1P_r\bar X_r-X_r\bar c_1\bar P_r)
e^{\frac{1-r}{2}V\varphi}|0\rangle,
\qquad Q\Xi_r=0,
$$

and, after choosing appropriate normalization,

$$
q(\Xi_r,\Psi_*)=\lambda_r.
$$

Appendix A explicitly checks the first nontrivial stringy isometry at level 3. The state

$$
\Xi_2=
\frac{i}{\sqrt{2\alpha'}}
\left(\Xi^{(0)}_{2L}\otimes\Xi^{(1)}_{2R}
-\Xi^{(1)}_{2L}\otimes\Xi^{(0)}_{2R}\right)
$$

has a nonzero overlap

$$
\omega(\Xi_2,B_\Sigma B_{\partial M}\Psi_2)
=3\sqrt6\,\alpha'V\lambda_2.
$$

The paper does not explicitly construct all $r>2$ isometries; it records the pattern as plausible from the known ghost-number-zero cohomology.

# interacting SFT charge one-form

In interacting SFT the equation of motion is written in $L_\infty$ form,

$$
Q\Psi+\sum_{n\geq1}\frac1{(n+1)!}l_{n+1}(\Psi^{\wedge n+1})=0.
$$

Around a classical configuration $\Psi$, the shifted BRST operator is

$$
Q_\Psi\Lambda_\Psi
=Q\Lambda_\Psi+\sum_{n\geq1}\frac1{n!}
l_{n+1}(\Psi^{\wedge n},\Lambda_\Psi),
$$

with

$$
Q_\Psi^2=0.
$$

An isometry at $\Psi$ is a string vector field satisfying

$$
Q_\Psi\Xi_\Psi=0.
$$

Along pre-phase space its variation must obey

$$
Q_\Psi\delta\Xi_\Psi
+l_2^\Psi(\delta\Psi,\Xi_\Psi)=0.
$$

Assuming a Hodge-Kodaira decomposition

$$
1=Q_\Psi h_\Psi+h_\Psi Q_\Psi+P_\Psi,
$$

and no cohomological obstruction

$$
P_\Psi l_2^\Psi(\delta\Psi,\Xi_\Psi)=0,
$$

the induced variation can be chosen as

$$
\delta\Xi_\Psi=-h_\Psi l_2^\Psi(\delta\Psi,\Xi_\Psi).
$$

The interacting boundary operators are

$$
B^\Psi_{\partial M}=[\Theta_M,Q_\Psi],
\qquad
B^\Psi_\Sigma=[\Theta_-,Q_\Psi].
$$

The charge one-form is

$$
\eta(\Xi_\Psi,\Psi)
=\omega(\Xi_\Psi,B^\Psi_\Sigma B^\Psi_{\partial M}\delta\Psi).
$$

Under the paper's assumptions it is closed,

$$
\delta\eta=0,
$$

horizontal along gauge directions,

$$
\iota_{\Lambda_\Psi}\eta=0,
$$

and independent of the Cauchy cut and boundary deformation unless a source is crossed. Therefore the charge difference from the perturbative vacuum is

$$
q(\Xi_\Psi,\Psi)
=q(\Xi_0,0)+\int_0^\Psi\eta(\Xi_{\Psi'},\Psi').
$$

The closest CPS translation is the paper's identity

$$
\eta(\Xi_\Psi,\Psi)=\iota_{\Theta_M\Xi_\Psi}\Omega,
$$

where

$$
\Omega=-\frac12\omega(\delta\Psi,B^\Psi_\Sigma\delta\Psi)
$$

is the BEF symplectic form. This makes $\eta$ the SFT analogue of a surface-charge one-form $\delta H_\xi$.

# local project dictionary

- Boundary tadpole: the SFT replacement for the Brown-York stress tensor. It is the state $B_{\partial M}\Psi_*$, not a spacetime tensor.
- Corner operator: $B_\Sigma B_{\partial M}$ localizes the tadpole to $\Sigma\cap\partial M$.
- Isometry: a BRST-closed gauge parameter in the free theory, $Q\Xi=0$, or a shifted-BRST-closed vector field in the interacting theory, $Q_\Psi\Xi_\Psi=0$.
- Proper gauge: an admissible $\Lambda$ with falloff. The charge comes from the improper parameter $\Theta_-\Xi$.
- Edge/boundary modes: the $\chi$ fields restore free boundary gauge invariance. The final free charge drops explicit $\chi$ dependence, just as a physical boundary charge should.
- Source sensitivity: if $Q\Psi_*=0$ throughout the compact region, the compact charge vanishes. A nonzero compact charge measures a source enclosed by the boundary.
- CPS translation: $\eta=\iota_{\Theta_M\Xi_\Psi}\Omega$ is the direct bridge to surface-charge one-forms in covariant phase space.

# verification log

## Checked

- Mathematica checked the index contraction in the flux example. Under antisymmetry $F^{zt}=-F^{tz}$ and $t\neq z$,

$$
\frac12F_{\mu\nu}
(\eta^{\mu t}\eta^{z\nu}-\eta^{\nu t}\eta^{z\mu})
=F^{tz}.
$$

This reproduces the local contraction used in the paper's constant-field-strength charge

$$
q(\Xi,\Psi_*)=\alpha'F^{tz}\operatorname{Vol}(\Sigma\cap\partial M).
$$

- A symbolic nilpotency sanity check confirmed that the $Q$-exact commutator terms vanish once the external conditions $Q\Xi=0$ and $Q\Psi_*=0$ are imposed. This is only a check of the formal residual structure, not a full BRST oscillator calculation.

## Blocked

- The free SFT oscillator overlaps in the flux, Coulomb, and $c=1$ black-hole examples require a custom ghost/oscillator algebra implementation to reproduce every sign and normalization. I did not build that implementation in this run.
- The Brown-York recap could be checked with xAct, but the paper's SFT result does not depend on rederiving the GR boundary variation. I kept the GR recap source-derived.
- The interacting proof of $\delta\eta=0$ depends on abstract cyclic $L_\infty$ products, the assumed Hodge-Kodaira decomposition, and the obstruction condition $P_\Psi l_2^\Psi(\delta\Psi,\Xi_\Psi)=0$. Without a concrete interacting SFT model these are algebraic assumptions rather than computable expressions.
- The paper itself leaves global path issues of the phase-space integral and the existence of all higher $r>2$ black-hole isometries unresolved.

## Failed

- No independent check failed. The unverified parts above are blocked by missing concrete algebraic realizations, not by contradictions found in the source.
