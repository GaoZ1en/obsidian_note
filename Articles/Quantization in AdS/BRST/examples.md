---
title: Maxwell BRST-CPS Mode Example on Global AdS3
date: 2026-07-15
summary: "Constructs the gauge-fixed Maxwell mode complex on global AdS3, derives its graded symplectic form and BRST charge, and identifies its classical and quantum cohomology."
---

# Global AdS$_3$ setup

We use global AdS$_3$ coordinates with unit radius and metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

# Maxwell BRST complex

Consider the gauge-fixed action

$$\begin{align}
S_{\Psi} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{4}F_{\mu \nu}F^{\mu \nu}+B\nabla _{\mu}A^{\mu}+\dfrac{\xi}{2}B^{2}-\bar{c}\nabla ^{2}c\right)
\end{align}$$

The orientation of every integration-by-parts term is fixed by the Maxwell contribution $F^{\mu\nu}\delta A_\nu$ below. We assume that the flux through the radial boundary $\Gamma$ vanishes for the selected boundary conditions. Varying the action gives

$$\begin{align}
\delta S_{\Psi} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }( E^{\nu}\delta A_{\nu}+E_{B}\delta B+E_{\bar{c}}\delta \bar{c}+E_{c}\delta c)+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-\nabla ^{\nu}B\qquad E_{B}=\nabla _{\mu}A^{\mu}+\xi B \\
E_{\bar{c}} & =-\nabla ^{2}c\qquad\qquad\qquad E_{c}  =-\nabla ^{2}\bar{c} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}-B\delta A^{\mu}+\bar{c}\nabla ^{\mu}\delta c-\delta c\nabla ^{\mu}\bar{c}\right) \\
\implies \omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\mu \nu}\wedge \delta A_{\nu}-\delta B\wedge \delta A^{\mu}+\delta \bar{c}\wedge \nabla ^{\mu}\delta c+\delta c\wedge \nabla ^{\mu}\delta \bar{c}\right)
\end{align}$$

## Extended solution space

Eliminating $B$ gives

$$\begin{align}
\nabla _{\nu}F^{\nu \mu}+\dfrac{1}{\xi}\nabla ^{\mu}\nabla _{\nu}A^{\nu} & =0
\end{align}$$

For $\xi=1$, the vector equation and the ghost equations are

$$\begin{align}
(\nabla ^{2}+2)A_{\mu} & =0, & \nabla ^{2}c & =\nabla ^{2}\bar{c}=0
\end{align}$$

Taking the divergence of $E^\mu=0$ also gives

$$\begin{align}
\nabla^2B=0.
\end{align}$$

Thus the non-zero $B$, ghost, and proper-gauge sectors are labelled by the same massless scalar harmonics. The complete gauge-fixed solution space contains four kinds of modes:

1. transverse physical modes $A^T$;
2. pure-gauge modes $A^g_\mu=\nabla_\mu\Lambda$ with $B=0$;
3. scalar-polarization modes $(A^s_\mu,B)$ with $B\neq0$;
4. ghost and antighost modes $(c,\bar c)$.

The normalizable physical modes of $A_\mu$ are constructed from the $(1,1)$ primary discussed in [[Articles/Quantization in AdS/electric field/solving modes/highest weight|highest weight]]. Proper pure-gauge modes can be obtained from the $(1,0)$ and $(0,1)$ scalar primaries

$$\begin{align}
\Lambda_{(1,0)}=-\frac{i}{2}\frac r{\sqrt{1+r^2}}e^{-i(t-\phi)},\qquad \Lambda_{(0,1)}=-\frac{i}{2}\frac r{\sqrt{1+r^2}}e^{-i(t+\phi)}
\end{align}$$

by acting once with the opposite lowering generator:

$$\begin{align}
\Lambda ^{g} & \propto\mathcal{L}_{\bar{\xi}_{-1}}\Lambda _{(1,0)}=\mathcal{L}_{\xi _{-1}}\Lambda _{(0,1)} \\
 & := \dfrac{1}{\sqrt{ 2\pi }} \dfrac{e^{-2it}}{1+r^{2}}
\end{align}$$

The normalized proper-gauge primary and its descendants are

$$\begin{align}
\Lambda _{n,\bar{n}}^{g} & := \dfrac{ \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\Lambda ^{g}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }} \\
A^{g}_{n,\bar{n},\mu} & =\nabla _{\mu}\Lambda _{n,\bar{n}}^{g}
\end{align}$$

The ghost and antighost use the same $(1,1)$ scalar module:

$$\begin{align}
\phi _{(1,1)} & =\dfrac{1}{\sqrt{ 2\pi }} \dfrac{e^{-2it}}{1+r^{2}} \\
\phi _{n,\bar{n}} & = \dfrac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{(1,1)}}{\sqrt{ n!(n+1)!\bar{n}!(\bar{n}+1)! }}, & n,\bar{n}\geqslant 0
\end{align}$$

The normalization is fixed by the ghost pairing

$$\begin{align}
(\phi,\bar{\phi})_{\mathrm{gh}} & = iX_{\phi}\cdot X_{\bar{\phi}}\cdot \omega=1
\end{align}$$

where

$$\begin{align}
X_{\phi} & =\int \mathrm{d}^{3}x \phi \dfrac{\delta}{\delta c} \\
X_{\bar{\phi}} & =\int \mathrm{d}^{3}x \phi ^{*} \dfrac{\delta}{\delta \bar{c}}
\end{align}$$

Expand the ghosts as

$$\begin{align}
c & =\sum _{n,\bar{n}=0}^{\infty}\left(c_{n,\bar{n}}\phi _{n,\bar{n}}+c^{\dagger}_{n,\bar{n}}\phi ^{*}_{n,\bar{n}}\right), \\
\bar{c} & =\sum _{n,\bar{n}=0}^{\infty}\left(\bar{c}_{n,\bar{n}}\phi _{n,\bar{n}}+\bar{c}^{\dagger}_{n,\bar{n}}\phi ^{*}_{n,\bar{n}}\right).
\end{align}$$

The ghost contribution to the graded symplectic form is

$$\begin{align}
\omega _{\mathrm{gh}} & =i\sum _{n,\bar{n}=0}^{\infty}\left(\delta c^{\dagger}_{n,\bar{n}}\wedge \delta \bar{c}_{n,\bar{n}}-\delta \bar{c}^{\dagger}_{n,\bar{n}}\wedge \delta c_{n,\bar{n}}\right).
\end{align}$$

To complete the bosonic non-physical sector, let $(A^s_{\alpha,\mu},B_\alpha)$ be a regular scalar-polarization solution associated with a non-zero scalar harmonic $\phi_\alpha$, where $\alpha=(n,\bar n)$, such that

$$\begin{align}
B_\alpha&=\phi_\alpha, &
\nabla_\nu F^{\nu\mu}[A^s_\alpha]-\nabla^\mu B_\alpha&=0, &
\nabla_\mu A^{s\mu}_\alpha+B_\alpha&=0.
\end{align}$$

It pairs with the pure-gauge solution $(\nabla_\mu\Lambda_\alpha,0)$. On shell,

$$\begin{align}
\delta F^{\mu\nu}\wedge\nabla_\nu\delta\Lambda
&=\nabla_\nu\left(\delta F^{\mu\nu}\wedge\delta\Lambda\right)
+\nabla^\mu\delta B\wedge\delta\Lambda.
\end{align}$$

After discarding the boundary term on $\partial\Sigma$, the mixed scalar-polarization/pure-gauge block becomes

$$\begin{align}
\omega _{B\Lambda}
&=\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_\mu
\left(\nabla^\mu\delta B\wedge\delta\Lambda
+\nabla^\mu\delta\Lambda\wedge\delta B\right).
\end{align}$$

Expand

$$\begin{align}
B & =\sum _{n,\bar{n}=0}^{\infty}\left(b_{n,\bar{n}}\phi _{n,\bar{n}}+b^{\dagger}_{n,\bar{n}}\phi ^{*}_{n,\bar{n}}\right),
\end{align}$$

together with the pure-gauge parameter

$$\begin{align}
\Lambda & =\sum ^{\infty}_{n,\bar{n}=0}\left(\lambda _{n,\bar{n}}\Lambda _{n,\bar{n}}^{g}+\lambda ^{\dagger}_{n,\bar{n}}\Lambda ^{*g}_{n,\bar{n}}\right) \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\left(\lambda _{n,\bar{n}}\phi _{n,\bar{n}}+\lambda ^{\dagger}_{n,\bar{n}}\phi ^{*}_{n,\bar{n}}\right).
\end{align}$$

The scalar Klein--Gordon normalization then gives

$$\begin{align}
\omega _{B\Lambda} & =i\sum _{n,\bar{n}=0}^{\infty}\left(\delta \lambda ^{\dagger}_{n,\bar{n}}\wedge \delta b_{n,\bar{n}}+\delta b^{\dagger}_{n,\bar{n}}\wedge \delta \lambda _{n,\bar{n}}\right).
\end{align}$$

Writing the normalized transverse modes as $\psi^T_{n,\bar n,\mu}$, the full vector field is

$$\begin{align}
A_{\mu} & =\sum _{n,\bar{n}=0}^{\infty}\left(a_{n,\bar{n}}\psi ^T_{n,\bar{n},\mu}+a^{\dagger}_{n,\bar{n}}\psi ^{T*}_{n,\bar{n},\mu}\right)
+\nabla_\mu\Lambda \\
&\quad+\sum _{n,\bar{n}=0}^{\infty}\left(b_{n,\bar{n}}A^s_{n,\bar{n},\mu}+b^{\dagger}_{n,\bar{n}}A^{s*}_{n,\bar{n},\mu}\right).
\end{align}$$

The explicit regular radial formula for $A^s_{n,\bar n,\mu}$ is the remaining global completeness input. The mixed symplectic pairing above follows from the equations of motion without requiring that formula.

The total graded symplectic form is

$$\begin{align}
\omega & =i\sum ^{\infty}_{n,\bar{n}=0}\Big(
\delta a^{\dagger}_{n,\bar{n}}\wedge \delta a_{n,\bar{n}}
+\delta \lambda ^{\dagger}_{n,\bar{n}}\wedge \delta b_{n,\bar{n}}
+\delta b^{\dagger}_{n,\bar{n}}\wedge \delta \lambda _{n,\bar{n}} \\
&\hspace{7em}+\delta c^{\dagger}_{n,\bar{n}}\wedge \delta \bar{c}_{n,\bar{n}}
-\delta \bar{c}^{\dagger}_{n,\bar{n}}\wedge \delta c_{n,\bar{n}}
\Big).
\end{align}$$

With the Hamiltonian convention $\iota_{X_F}\omega=-\delta F$, its non-zero graded Poisson brackets are

$$\begin{align}
\{a^{\dagger}_{n_{1},\bar{n}_{1}},a_{n_{2},\bar{n}_{2}}\} & =i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}, \\
\{\lambda ^{\dagger}_{n_{1},\bar{n}_{1}},b_{n_{2},\bar{n}_{2}}\} & =\{b^{\dagger}_{n_{1},\bar{n}_{1}},\lambda _{n_{2},\bar{n}_{2}}\}=i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}, \\
\{c^{\dagger}_{n_{1},\bar{n}_{1}},\bar{c}_{n_{2},\bar{n}_{2}}\}_{\mathrm{gr}} & =i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}, \\
\{\bar{c}^{\dagger}_{n_{1},\bar{n}_{1}},c_{n_{2},\bar{n}_{2}}\}_{\mathrm{gr}} & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}.
\end{align}$$

## Classical BRST reduction

The action is invariant under the off-shell BRST transformation

$$\begin{align}
sA_{\mu} & =\nabla _{\mu}c, & sc & =0, & s\bar{c} & =B,  & sB=0.
\end{align}$$

Indeed, $sF_{\mu\nu}=0$, while the two remaining non-trivial variations cancel:

$$\begin{align}
s\left(B\nabla_\mu A^\mu\right)&=B\nabla^2c, &
s\left(-\bar c\nabla^2c\right)&=-B\nabla^2c.
\end{align}$$

The corresponding vector field on the extended configuration space is

$$\begin{align}
\mathcal{X}_{s} & =\int \mathrm{d}^{3}x \left( \nabla _{\mu}c \dfrac{\delta}{\delta A_{\mu}}+B \dfrac{\delta}{\delta \bar{c}} \right).
\end{align}$$

Since $sL_\Psi=0$, the BRST charge is obtained directly from the symplectic potential:

$$\begin{align}
Q_{\mathrm{BRST}} & =\mathcal{X}_{s}\cdot \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\nabla _{\nu}c-B\nabla ^{\mu}c\right) \\
 & =i\sum_{n,\bar{n}=0}^{\infty}\left( b^\dagger_{n,\bar n}c_{n,\bar n} -b_{n,\bar n}c^\dagger_{n,\bar n} \right).
\end{align}$$

When the boundary term on $\partial\Sigma$ vanishes, it obeys the Hamiltonian relation

$$\begin{align}
\iota_s\omega=-\delta Q_{\mathrm{BRST}}, &\qquad \mathcal{L}_s\omega=0.
\end{align}$$

The mode coefficients therefore transform as

$$\begin{align}
sa_{n,\bar n}&=sa^\dagger_{n,\bar n}=0, \\
s\lambda _{n,\bar{n}}&=c_{n,\bar{n}}, &
s\lambda _{n,\bar{n}}^{\dagger}&=c^{\dagger}_{n,\bar{n}}, \\
s\bar{c}_{n,\bar{n}}&=b_{n,\bar{n}}, &
s\bar{c}^{\dagger}_{n,\bar{n}}&=b^{\dagger}_{n,\bar{n}}, \\
sc_{n,\bar n}&=sb_{n,\bar n}=sc^\dagger_{n,\bar n}=sb^\dagger_{n,\bar n}=0.
\end{align}$$

Equivalently, these transformations are generated by the right graded bracket $sF=\{F,Q_{\mathrm{BRST}}\}_{\mathrm{gr}}$. In particular,

$$\begin{align}
\left\{Q_{\mathrm{BRST}},Q_{\mathrm{BRST}}\right\}_{\mathrm{gr}}=0.
\end{align}$$

### Classical quartet cohomology

For each non-zero scalar label $\alpha=(n,\bar n)$, the variables $(\lambda_\alpha,b_\alpha;c_\alpha,\bar c_\alpha)$ and their negative-frequency partners form a contractible quartet. On functions of these variables, define the contracting homotopy using left derivatives for the odd coordinates:

$$\begin{align}
\kappa_\alpha
&=\lambda_\alpha\frac{\partial}{\partial c_\alpha}
+\bar c_\alpha\frac{\partial}{\partial b_\alpha}
+\lambda^\dagger_\alpha\frac{\partial}{\partial c^\dagger_\alpha}
+\bar c^\dagger_\alpha\frac{\partial}{\partial b^\dagger_\alpha}.
\end{align}$$

It satisfies

$$\begin{align}
\{s,\kappa_\alpha\}=N_{\mathrm{quartet},\alpha},
\end{align}$$

where $N_{\mathrm{quartet},\alpha}$ counts the total polynomial degree in the quartet coordinates. If $s\mathcal{O}=0$ and $N_{\mathrm{quartet},\alpha}\mathcal{O}=k\mathcal{O}$ with $k>0$, then

$$\begin{align}
\mathcal{O}=s\left(\frac{1}{k}\kappa_\alpha\mathcal{O}\right).
\end{align}$$

Thus the positive-degree quartet complex is acyclic. Constants remain, while the non-trivial ghost-number-zero classical observables are generated by the transverse Maxwell variables. Subject to completeness of the scalar-polarization lifts,

$$\begin{align}
H^0\left(s,\mathcal{O}_{\mathrm{ext}}\right)&\simeq\mathcal{O}\left(\mathcal{P}_{\mathrm{red}}\right), \\
\omega_{H^0}&=i\sum_{n,\bar n=0}^{\infty}\delta a^\dagger_{n,\bar n}\wedge\delta a_{n,\bar n}.
\end{align}$$

The induced form agrees with the independently reduced Maxwell covariant phase space.

### Boundary transformations and zero modes

Only proper gauge transformations belong to the bulk ghost domain. For the selected normalizable sector, $\Lambda^g_{n,\bar n}=O(r^{-2})$ and its symplectic pairing with every allowed physical solution vanishes. These modes belong to the bulk quartet.

A constant U(1) parameter satisfies $\mathrm{d}\Lambda=0$. It is a reducibility zero mode of the Faddeev--Popov operator and must be removed from the non-zero-mode quartet and treated through the residual global gauge volume.

An allowed gauge parameter with a non-zero renormalized boundary charge is not a bulk BRST redundancy. It survives as an asymptotic-symmetry or edge degree of freedom, or must be incorporated in a boundary BFV complex. This classification must be repeated if the boundary action or Maxwell falloffs are changed.

## Canonical quantization

The transition to the quantum theory is performed before taking cohomology. Promote the complete extended graded Poisson algebra to operators using $\hbar=1$ and

$$\begin{align}
[\widehat F,\widehat G]_{\mathrm{gr}}
=i\widehat{\{F,G\}_{\mathrm{gr}}}.
\end{align}$$

The non-zero oscillator relations are

$$\begin{align}
[\widehat a_{\alpha},\widehat a^\dagger_{\beta}]&=\delta_{\alpha\beta}, \\
[\widehat\lambda _\alpha,\widehat b^\dagger_\beta]
&=[\widehat b_\alpha,\widehat\lambda ^\dagger_\beta]=\delta_{\alpha\beta}, \\
\{\widehat c_\alpha,\widehat{\bar c}^{\dagger}_\beta\}_{+}&=\delta_{\alpha\beta}, &
\{\widehat{\bar c}_\alpha,\widehat c^{\dagger}_\beta\}_{+}&=-\delta_{\alpha\beta}.
\end{align}$$

At this stage the dagger on a ghost coefficient labels its negative-frequency partner. The extended ghost space is a Krein space rather than a positive-definite Hilbert space. Equivalently, defining $\widetilde c^\dagger_\alpha=-c^\dagger_\alpha$ puts both ghost cross-pairings into the same canonical sign; the compatible adjoint operation is fixed on that canonical basis.

The quantum BRST operator is the normally ordered free bilinear

$$\begin{align}
\widehat Q_{\mathrm{BRST}}
&=i\sum_\alpha\left(\widehat b^\dagger_\alpha\widehat c_\alpha
-\widehat b_\alpha\widehat c^\dagger_\alpha\right) \\
&=i\sum_\alpha\left(\widehat b^\dagger_\alpha\widehat c_\alpha
+\widehat b_\alpha\widehat{\widetilde c}^{\dagger}_\alpha\right), \\
\widehat Q_{\mathrm{BRST}}^2&=0, &
\widehat{s\mathcal{O}}&=\frac{1}{i}[\widehat{\mathcal{O}},\widehat Q_{\mathrm{BRST}}]_{\mathrm{gr}}.
\end{align}$$

Choose the extended vacuum so that

$$\begin{align}
\widehat a_\alpha\lvert0\rangle
=\widehat\lambda_\alpha\lvert0\rangle
=\widehat b_\alpha\lvert0\rangle
=\widehat c_\alpha\lvert0\rangle
=\widehat{\bar c}_\alpha\lvert0\rangle=0.
\end{align}$$

The quartet homotopy lifts to the Fock representation. For every non-zero Faddeev--Popov mode,

$$\begin{align}
H^\bullet\left(\widehat Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{quartet},\alpha}\right)
\simeq\mathbb{C}\lvert0\rangle_{\mathrm{quartet},\alpha},
\end{align}$$

concentrated at ghost number zero. The positive-excitation quartet subcomplex has vanishing cohomology; the full quartet factor retains its vacuum class. The physical state space is therefore

$$\begin{align}
\mathcal{H}_{\mathrm{phys}}
&=H^0\left(\widehat Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{ext}}\right) \\
&\simeq\mathcal{F}\left(\left\{\widehat a^\dagger_{n,\bar n}\right\}\right),
\end{align}$$

again conditional on the completeness of the global scalar-polarization quartet. This is the same one-polarization Maxwell Fock space obtained by direct presymplectic reduction in three dimensions.

The physical descendants carry

$$\begin{align}
\omega_{n,\bar n}&=2+n+\bar n, & m_{n,\bar n}&=n-\bar n.
\end{align}$$

After normal ordering, the Hamiltonian and angular momentum induced on BRST cohomology are

$$\begin{align}
\widehat H_{\mathrm{phys}}
&=\sum_{n,\bar n=0}^{\infty}(2+n+\bar n)\widehat a^\dagger_{n,\bar n}\widehat a_{n,\bar n}, \\
\widehat J_{\mathrm{phys}}
&=\sum_{n,\bar n=0}^{\infty}(n-\bar n)\widehat a^\dagger_{n,\bar n}\widehat a_{n,\bar n}.
\end{align}$$

Modewise quartet cancellation also supplies the canonical starting point for a one-loop determinant or a free causal-propagator construction. Faddeev--Popov zero modes and charge-carrying boundary modes must be separated before taking determinants or defining the physical algebra.

## Remaining global AdS$_3$ check

The local symplectic and cohomological structure is complete. The remaining global calculation is to construct a regular scalar-polarization lift $A^s_{n,\bar n,\mu}$ for every non-zero $\phi_{n,\bar n}$, verify its AdS boundary conditions, and evaluate its pairing with $\nabla_\mu\Lambda^g_{n,\bar n}$ directly. Once this basis is established, the conditional identifications of $\omega_{H^0}$ and $\mathcal{H}_{\mathrm{phys}}$ become unconditional mode-by-mode statements.
