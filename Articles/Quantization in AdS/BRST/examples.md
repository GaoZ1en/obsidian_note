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

# Maxwell theory

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
B_\alpha&=\phi_\alpha, & \nabla_\nu F^{\nu\mu}[A^s_\alpha]-\nabla^\mu B_\alpha&=0, & \nabla_\mu A^{s\mu}_\alpha+B_\alpha&=0.
\end{align}$$

It pairs with the pure-gauge solution $(\nabla_\mu\Lambda_\alpha,0)$. On shell,

$$\begin{align}
\delta F^{\mu\nu}\wedge\nabla_\nu\delta\Lambda &=\nabla_\nu\left(\delta F^{\mu\nu}\wedge\delta\Lambda\right) +\nabla^\mu\delta B\wedge\delta\Lambda.
\end{align}$$

After discarding the boundary term on $\partial\Sigma$, the mixed scalar-polarization/pure-gauge block becomes

$$\begin{align}
\omega _{B\Lambda} &=\int _{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_\mu \left(\nabla^\mu\delta B\wedge\delta\Lambda +\nabla^\mu\delta\Lambda\wedge\delta B\right).
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
A_{\mu} & =\sum _{n,\bar{n}=0}^{\infty}\left(a_{n,\bar{n}}\psi ^T_{n,\bar{n},\mu}+a^{\dagger}_{n,\bar{n}}\psi ^{T*}_{n,\bar{n},\mu}\right) +\nabla_\mu\Lambda \\
&\quad+\sum _{n,\bar{n}=0}^{\infty}\left(b_{n,\bar{n}}A^s_{n,\bar{n},\mu}+b^{\dagger}_{n,\bar{n}}A^{s*}_{n,\bar{n},\mu}\right).
\end{align}$$

The explicit regular radial formula for $A^s_{n,\bar n,\mu}$ is the remaining global completeness input. The mixed symplectic pairing above follows from the equations of motion without requiring that formula.

The total graded symplectic form is

$$\begin{align}
\omega & =i\sum ^{\infty}_{n,\bar{n}=0}\Big( \delta a^{\dagger}_{n,\bar{n}}\wedge \delta a_{n,\bar{n}} +\delta \lambda ^{\dagger}_{n,\bar{n}}\wedge \delta b_{n,\bar{n}} +\delta b^{\dagger}_{n,\bar{n}}\wedge \delta \lambda _{n,\bar{n}} \\
&\hspace{7em}+\delta c^{\dagger}_{n,\bar{n}}\wedge \delta \bar{c}_{n,\bar{n}} -\delta \bar{c}^{\dagger}_{n,\bar{n}}\wedge \delta c_{n,\bar{n}}
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

The corresponding vector field on the extended configuration space is

$$\begin{align}
\mathcal{X} & =\int \mathrm{d}^{3}x \left( \nabla _{\mu}c \dfrac{\delta}{\delta A_{\mu}}+B \dfrac{\delta}{\delta \bar{c}} \right).
\end{align}$$

Act this vector on the action, we have

$$\begin{align}
\mathcal{X}\cdot \delta S_{\Psi} & =0
\end{align}$$

Therefore the corresponding BRST charge is given by

$$\begin{align}
Q_{\mathrm{BRST}} & =\mathcal{X}\cdot \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(F^{\mu \nu}\nabla _{\nu}c-B\nabla ^{\mu}c) \\
 & =i\sum ^{\infty}_{n,\bar{n}=0}(b^{\dagger}_{n,\bar{n}}c_{n,\bar{n}}-b_{n,\bar{n}}c^{\dagger}_{n,\bar{n}})
\end{align}$$

by Noether theorem, we have

$$\begin{align}
\mathcal{X}\cdot \omega & =-\delta Q_{\mathrm{BRST}}
\end{align}$$

act on each mode coefficients, we have the following standard Poisson brackets

$$\begin{align}
\left\{\lambda _{n,\bar{n}},Q_{\mathrm{BRST}}\right\} & =c_{n,\bar{n}}, & \left\{\lambda ^{\dagger}_{n,\bar{n}},Q_{\mathrm{BRST}}\right\} & =c^{\dagger}_{n,\bar{n}} \\
\left\{\bar{c}_{n,\bar{n}},Q_{\mathrm{BRST}}\right\} & =b_{n,\bar{n}}, & \left\{\bar{c}^{\dagger}_{n,\bar{n}},Q_{\mathrm{BRST}}\right\} & =b^{\dagger}_{n,\bar{n}}
\end{align}$$

and all other brackets vanishes. it follows

$$\begin{align}
\left\{Q_{\mathrm{BRST}},Q_{\mathrm{BRST}}\right\} & =0
\end{align}$$

### Classical quartet cohomology

For each non-zero scalar label $\alpha=(n,\bar n)$, the variables $(\lambda_\alpha,b_\alpha;c_\alpha,\bar c_\alpha)$ and their negative-frequency partners $\displaystyle{(\lambda _{\alpha}^{\dagger},b^{\dagger}_{\alpha};c^{\dagger}_{\alpha},\bar{c}^{\dagger}_{\alpha})}$ form a contractible quartet. On functions of these variables, define the contracting homotopy $\displaystyle{\kappa _{\alpha}}$ using left derivatives for the odd coordinates:

$$\begin{align}
\kappa _{\alpha} & =\lambda _{\alpha} \overleftarrow{\dfrac{\delta}{\delta c_{\alpha}}}+\bar{c}_{\alpha} \dfrac{\delta}{\delta b_{\alpha}}+\lambda ^{\dagger}_{\alpha} \overleftarrow{\dfrac{\delta}{\delta c^{\dagger}_{\alpha}}}+\bar{c}^{\dagger}_{\alpha} \dfrac{\delta}{\delta b^{\dagger}_{\alpha}}
\end{align}$$

together with the modewise BRST generator

$$\begin{align}
s_{\alpha} & = c_{\alpha} \dfrac{\delta}{\delta \lambda _{\alpha}}+b_{\alpha} \overleftarrow{\dfrac{\delta}{\delta \bar{c}_{\alpha}}}+c^{\dagger}_{\alpha} \dfrac{\delta}{\delta \lambda ^{\dagger}_{\alpha}}+b^{\dagger}_{\alpha} \overleftarrow{\dfrac{\delta}{\delta \bar{c}^{\dagger}_{\alpha}}}
\end{align}$$

we have

$$\begin{align}
\Delta _{\alpha} & :=\left\{s_{\alpha},\kappa _{\alpha}\right\} \\
 &  :=\iota _{s_{\alpha}}\cdot \iota _{\kappa _{\alpha}}+\iota _{\kappa _{\alpha}}\cdot \iota _{s_{\alpha}} \\
 & =\lambda _{\alpha} \dfrac{\delta}{\delta \lambda _{\alpha}}+b_{\alpha} \dfrac{\delta}{\delta b_{\alpha}}+c_{\alpha} \dfrac{\delta}{\delta c_{\alpha}}+ \bar{c}_{\alpha} \dfrac{\delta}{\delta \bar{c}_{\alpha}}+ \lambda ^{\dagger}_{\alpha} \dfrac{\delta}{\delta \lambda ^{\dagger}_{\alpha}}+b^{\dagger}_{\alpha} \dfrac{\delta}{\delta b^{\dagger}_{\alpha}}+c^{\dagger}_{\alpha} \dfrac{\delta}{\delta c^{\dagger}_{\alpha}}+\bar{c}^{\dagger}_{\alpha} \dfrac{\delta}{\delta \bar{c}^{\dagger}_{\alpha}}
\end{align}$$

where $\displaystyle{\Delta _{\alpha}}$ counts the total polynomial degree in the quartet coordinates. if $\displaystyle{\iota _{\mathcal{X}}\mathcal{O}=0}$ and $\displaystyle{\iota _{\Delta _{\alpha}}\mathcal{O}=k\mathcal{O}}$ with $\displaystyle{k> 0}$, then

$$\begin{align}
\mathcal{O} & =\iota _{\mathcal{X}}\left(\dfrac{1}{k}\iota _{\kappa _{\alpha}}\mathcal{O}\right)
\end{align}$$

thus the positive-degree quartet complex is acyclic. constants remain, while the non-trivial ghost-number-zero classical observables are generated by the transverse Maxwell variables $\displaystyle{(a_{n,\bar{n}},a^{\dagger}_{n,\bar{n}})}$. subject to completeness of the scalar-polarization lifts,

$$\begin{align}
H^{0}(\iota _{\mathcal{X}},\mathcal{O}_{\mathrm{ext}}) & \simeq \mathcal{O}(\mathcal{P}_{\mathrm{red}}) \\
\omega _{H^{0}} & =i\sum ^{\infty}_{n,\bar{n}=0} \delta a^{\dagger}_{n,\bar{n}}\wedge \delta a_{n,\bar{n}}
\end{align}$$

The induced form agrees with the independently reduced Maxwell covariant phase space.

## Canonical quantization

the transition to the quantum theory is performed before taking cohomology. promote the (graded) Poisson algebra to operators

$$\begin{align}
[F,G]_{\mathrm{gr}} & =i\left\{F,G\right\}
\end{align}$$

then

$$\begin{align}
[a_{\alpha},a^{\dagger}_{\beta}] & =\delta _{\alpha \beta} \\
[\lambda _{\alpha},b^{\dagger}_{\beta}] & =[b_{\alpha},\lambda ^{\dagger}_{\beta}]=\delta _{\alpha \beta} \\
\left\{c_{\alpha},\bar{c}_{\beta}^{\dagger}\right\} & =-\left\{\bar{c}_{\alpha},c^{\dagger}_{\beta}\right\}=\delta _{\alpha \beta}
\end{align}$$

the BRST operator is given by

$$\begin{align}
Q_{\mathrm{BRST}} & =i\sum _{\alpha}\left(b_{\alpha}^{\dagger}c_{\alpha}-b_{\alpha}\bar{c}^{\dagger}_{\alpha}\right)
\end{align}$$

choose the vacuum as

$$\begin{align}
a_{\alpha}\ket{0}=\lambda _{\alpha}\ket{0}=b_{\alpha}\ket{0}=c_{\alpha}\ket{0}=\bar{c}_{\alpha}\ket{0}=0
\end{align}$$

the quartet homotopy lifts to the Fock representation. for every non-zero Faddeev-Popov mode

$$\begin{align}
H^{\bullet}(Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{quartet},\alpha})\simeq \mathbb{C}\ket{0}_{\mathrm{quartet},\alpha}
\end{align}$$

concentrated at ghost number zero. The positive-excitation quartet subcomplex has vanishing cohomology; the full quartet factor retains its vacuum class. The physical state space is therefore

$$\begin{align}
\mathcal{H}_{\mathrm{phys}} & =H^{0}(Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{ext}}) \\
 & \simeq \mathcal{F}\left(\left\{a^{\dagger}_{\alpha}\right\}\right)
\end{align}$$

This is the same one-polarization Maxwell Fock space obtained by direct presymplectic reduction in three dimensions. The physical descendants carry

$$\begin{align}
\omega _{n,\bar{n}} & =2+n+\bar{n}, & m_{n,\bar{n}} & =n-\bar{n}
\end{align}$$

$$\begin{align}
H_{\mathrm{phys}} & =\sum ^{\infty}_{n,\bar{n}=0}(2+n+\bar{n})a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}} \\
J_{\mathrm{phys}} & =\sum ^{\infty}_{n,\bar{n}=0}(n-\bar{n})a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}}
\end{align}$$

Modewise quartet cancellation also supplies the canonical starting point for a one-loop determinant or a free causal-propagator construction. Faddeev-Popov zero modes and charge-carrying boundary modes must be separated before taking determinants or defining the physical algebra.

# linearized gravity

we then consider the linearized gravity case as a stress test. for simplicity, we will drop the $\displaystyle{^{(0)}}$ superscripts in background metric $\displaystyle{g^{(0)}}$, covariant derivatives $\displaystyle{\nabla ^{(0)}}$ and other relevant geometric quantities. for simplicity, we consider only the bulk quadratic action ([[Articles/Quantization in AdS/linearized gravity/linearize|linearize]]) (we now impose $\displaystyle{\kappa ^{2}=16\pi G}$)

$$\begin{align}
S_{h} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\mathcal{L}_{h} \\
\mathcal{L}_{h} & =\dfrac{1}{2}h^{2}-h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla _{\mu}\nabla _{\nu}h-\dfrac{1}{4}\nabla _{\mu}h\nabla ^{\mu}h-\nabla _{\mu}h^{\mu \nu}\nabla _{\rho}h_{\nu}^{~\rho} \\
 & +\nabla ^{\mu}h\nabla _{\nu}h_{\mu}^{~\nu}-h^{\mu \nu}\nabla _{\nu}\nabla _{\rho}h_{\mu}^{~\rho}-h^{\mu \nu}\nabla _{\rho}\nabla _{\nu}h_{\mu}^{~\rho}+\dfrac{1}{2}h\nabla _{\mu}\nabla _{\nu}h^{\mu \nu} \\
 & +h^{\mu \nu}\nabla ^{2}h_{\mu \nu}-\dfrac{1}{2}h\nabla ^{2}h-\dfrac{1}{2}\nabla _{\mu}h_{\nu \rho}\nabla ^{\rho}h^{\mu \nu}+\dfrac{3}{4}\nabla _{\rho}h_{\mu \nu}\nabla ^{\rho}h^{\mu \nu}
\end{align}$$

this action is invariant under the following gauge transformation

$$\begin{align}
h_{\mu \nu}\to h_{\mu \nu}+\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}
\end{align}$$

introduce a vector ghost $\displaystyle{c_{\mu}}$, antighost $\displaystyle{\bar{c}_{\mu}}$, and Nakanishi-Lautrup field $\displaystyle{B_{\mu}}$, and the gauge-fixing fermion

$$\begin{align}
\Psi & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\bar{c}^{\mu}\left(F_{\mu}[h]+\dfrac{\xi}{2}B_{\mu}\right)
\end{align}$$

with the de Donder gauge

$$\begin{align}
F_{\mu}[h] & =\nabla ^{\nu}h_{\mu \nu}-\dfrac{1}{2}\nabla _{\mu}h
\end{align}$$

the gauge-fixed action is

$$\begin{align}
S_{\Psi} & =S_{h}+s\Psi \\
 & =S_{h}+\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(B_{\mu}\left( \nabla _{\nu}h^{\mu \nu}-\dfrac{1}{2}\nabla ^{\mu}h \right)+\dfrac{\xi}{2}B_{\mu}B^{\mu}-\bar{c}^{\mu}(\nabla ^{2}-2)c_{\mu}\right)
\end{align}$$

take a variation of the action, we have

$$\begin{align}
\delta S_{\Psi} & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\left( -\mathcal{E}_{\mu \nu}[h]-\nabla _{(\mu}B_{\nu)}+\dfrac{1}{2}g_{\mu \nu}\nabla _{\rho}B^{\rho} \right)\delta h^{\mu \nu}+(F_{\mu}[h]+\xi B_{\mu})\delta B^{\mu}-\delta \bar{c}^{\mu}(\nabla ^{2}-2)c_{\mu}-(\nabla ^{2}-2)\bar{c}^{\mu}\delta c_{\mu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\theta _{h}^{\mu}-\left( B_{\nu}\delta h^{\mu \nu}-\dfrac{1}{2}B^{\mu}\delta h \right)+(\bar{c}^{\nu}\nabla ^{\mu}\delta c_{\nu}-\nabla ^{\mu}\bar{c}^{\nu}\delta c_{\nu})\right)
\end{align}$$

where

$$\begin{align}
\mathcal{E}_{\mu \nu} & =-h_{\mu \nu}-\dfrac{1}{2}\nabla ^{2}h_{\mu \nu}-\dfrac{1}{2}g_{\mu \nu}\nabla _{\rho}\nabla _{\sigma}h^{\rho \sigma}+\dfrac{1}{2}g_{\mu \nu}\nabla ^{2}h \\
 & +\dfrac{1}{2}\nabla _{\mu}\nabla _{\rho}h_{\nu}^{~\rho}+\dfrac{1}{2}\nabla _{\nu}\nabla _{\rho}h_{\mu}^{~\rho}-\dfrac{1}{2}\nabla _{\mu}\nabla _{\nu}h \\
\theta ^{\mu}_{h} & =-h^{\mu \nu}\nabla _{\nu}\delta h+\dfrac{1}{2}h\nabla ^{\mu}\delta h-h^{\nu \rho}\nabla ^{\mu}\delta h_{\nu \rho}+h^{\nu \rho}\nabla _{\rho}\delta h^{\mu}_{~\nu}+h^{\mu \nu}\nabla _{\rho}\delta h_{\nu}^{~\rho} \\
 & -\dfrac{1}{2}h\nabla _{\nu}\delta h^{\mu \nu}-\dfrac{1}{2}\nabla ^{\mu}h_{\nu \rho}\delta h^{\nu \rho}-\dfrac{1}{2}\nabla _{\nu}h\delta h^{\mu \nu}+\nabla _{\rho}h^{\nu \rho}\delta h^{\mu}_{~\nu}
\end{align}$$

take a variation of the symplectic potential, we get the symplectic form

$$\begin{align}
\omega & =\omega _{h}+\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(-\left( \delta B_{\nu}\wedge \delta h^{\mu \nu}-\dfrac{1}{2}\delta B^{\mu}\wedge \delta h \right)+(\delta \bar{c}^{\nu}\wedge \nabla ^{\mu}\delta c_{\nu}-\nabla ^{\mu}\delta \bar{c}^{\nu}\wedge \delta c_{\nu})\right) \\
\omega _{h}^{\mu} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\dfrac{3}{2}\delta h^{\mu \nu}\wedge \nabla _{\nu}\delta h+\dfrac{1}{2}\delta h\wedge \nabla ^{\mu}\delta h-\dfrac{1}{2}\delta h\wedge \nabla _{\nu}\delta h^{\mu \nu}-\dfrac{1}{2}\delta h^{\nu \rho}\nabla ^{\mu}\delta h_{\nu \rho}+\delta h^{\nu \rho}\wedge \nabla _{\rho}\delta h^{\mu}_{~\nu}\right)
\end{align}$$

## extended solution space

we have the following eoms

$$\begin{align}
-\mathcal{E}_{\mu \nu}[h]-\nabla _{(\mu}B_{\nu)}+\dfrac{1}{2}g_{\mu \nu}\nabla _{\rho}B^{\rho} & =0 \\
F_{\mu}[h]+\xi B_{\mu} & =0 \\
(\nabla ^{2}-2)c_{\mu}=0,(\nabla ^{2}-2)\bar{c}_{\mu} & =0
\end{align}$$

the linearized Bianchi identity gives

$$\begin{align}
\nabla ^{\mu}\left( \nabla _{(\mu}B_{\nu)}+\dfrac{1}{2}g_{\mu \nu}\nabla _{\rho}B^{\rho} \right) & =-\dfrac{1}{2}(\nabla ^{2}-2)B_{\nu}
\end{align}$$

thus $\displaystyle{B_{\mu}}$, the proper ghost, and the (anti-)ghost $\displaystyle{c_{\mu},\bar{c}_{\mu}}$ are expanded in the same vector solution space, which can be summarized as $\displaystyle{(2,1)}$ and $\displaystyle{(1,2)}$ modules (we denote the former module as $\displaystyle{+}$ and the latter module as $\displaystyle{-}$ in the subscription of relevant solutions) of the isometry group $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$,

$$\begin{align}
f^{\mu}_{+,0,0} & =\sqrt{ \dfrac{3}{2\pi} } \dfrac{e^{-4it}}{(1+r^{2})^{2}}\bar{\xi}_{1}^{\mu} \\
f^{\mu}_{+,n,\bar{n}} & =\sqrt{ \dfrac{1}{n!\bar{n}!(4)_{n}(2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} f_{+,0,0}^{\mu} \\
f^{\mu}_{-,0,0} & =\sqrt{ \dfrac{3}{2\pi} } \dfrac{e^{-4it}}{(1+r^{2})^{2}}\xi _{1}^{\mu} \\
f^{\mu}_{-,n,\bar{n}} & =\sqrt{ \dfrac{1}{n!\bar{n}!(2)_{n}(4)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}f_{-,0,0}^{\mu}
\end{align}$$

for the physical modes, we choose the representative that satisfies the TT gauge [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]]

$$\begin{align}
h & =0, & \nabla ^{\mu}h_{\mu \nu} & =0 & \implies &  & (\nabla ^{2}+2)h_{\mu \nu}=0
\end{align}$$

which can be summarized as $\displaystyle{(2,0)}$ and $\displaystyle{(0,2)}$ modules

$$\begin{align}
h_{+,0}^{\mu \nu} & = \sqrt{ \dfrac{12}{\pi} }\dfrac{e^{-4it}}{(1+r^{2})^{2}} \bar{\xi}_{1}^{\mu}\bar{\xi}_{1}^{\nu} \\
h_{+,n}^{\mu \nu} & =\sqrt{ \dfrac{6}{n!(n+3)!} }\mathcal{L}_{\xi _{-1}}^{n}h_{+,0}^{\mu \nu} \\
h_{-,0}^{\mu \nu} & =\sqrt{ \dfrac{12}{\pi} } \dfrac{e^{-4it}}{(1+r^{2})}\xi _{1}^{\mu}\xi _{1}^{\nu} \\
h_{-,\bar{n}}^{\mu \nu} & =\sqrt{ \dfrac{6}{\bar{n}!(\bar{n}+3)!} }\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}h_{-,0}^{\mu \nu}
\end{align}$$

in addition, proper gauge modes of $\displaystyle{h_{\mu \nu}}$ can be summarized as $\displaystyle{(2,1)}$ and $\displaystyle{(1,2)}$ modules. actually we can use $\displaystyle{V_{\mu}}$ to record these proper gauge modes and write

$$\begin{align}
h^{g}_{\mu \nu} & =\mathcal{L}_{V}g_{\mu \nu}
\end{align}$$

expand (after suitable normalization)

$$\begin{align}
V_{\mu} & =\sum _{\alpha \in \mathcal{I}_{\text{prop}}}(\lambda _{\alpha}f_{\alpha,\mu}+\lambda ^{\dagger}_{\alpha}f^{*}_{\alpha,\mu}) \\
B_{\mu} & =\sum _{\alpha \in \mathcal{I}_{\text{prop}}}(b_{\alpha}f_{\alpha,\mu}+b^{\dagger}_{\alpha}f^{*}_{\alpha,\mu}) \\
c_{\mu} & =\sum _{\alpha \in \mathcal{I}_{\text{prop}}}(c_{\alpha}f_{\alpha,\mu}+c^{\dagger}_{\alpha}f^{*}_{\alpha,\mu}) \\
\bar{c}_{\mu} & =\sum _{\alpha \in \mathcal{I}_{\text{prop}}}(\bar{c}_{\alpha}f_{\alpha,\mu}+\bar{c}^{\dagger}_{\alpha}f^{*}_{\alpha,\mu}) \\
h_{\mu \nu} & =\sum _{\alpha \in \mathcal{I}_{\text{phys}}}(a_{\alpha}h_{\alpha,\mu \nu}+a^{\dagger}_{\alpha}h_{\alpha,\mu \nu})
\end{align}$$

here $\displaystyle{\mathcal{I}_{\text{prop}}=\left\{+,-;n,\bar{n}\in \mathbb{N}\right\}}$ and $\displaystyle{\mathcal{I}_{\text{phys}}=\left\{+,-|n\in \mathbb{N}\right\}}$. consequently, we have the graded symplectic form

$$\begin{align}
\omega & =i\sum _{\alpha \in \mathcal{I}_{\text{phys}}}\delta a^{\dagger}_{\alpha}\wedge \delta a_{\alpha} \\
 & +i\sum _{\alpha \in \mathcal{I}_{\text{prop}}}\delta \lambda ^{\dagger}_{\alpha}\wedge \delta b_{\alpha}+\delta b^{\dagger}_{\alpha}\wedge \delta \lambda _{\alpha}+\delta c^{\dagger}_{\alpha}\wedge \delta \bar{c}_{\alpha}-\delta \bar{c}_{\alpha}^{\dagger}\wedge \delta c_{\alpha}
\end{align}$$

which leads to the standard brackets

$$\begin{align}
\left\{a_{\alpha}^{\dagger},a_{\beta}\right\} & =i\delta _{\alpha \beta} \\
\left\{\lambda ^{\dagger}_{\alpha},b_{\beta}\right\}=\left\{b^{\dagger}_{\alpha},\lambda _{\beta}\right\} & =i\delta _{\alpha \beta} \\
\left\{c^{\dagger}_{\alpha},\bar{c}_{\beta}\right\}=-\left\{\bar{c}^{\dagger}_{\alpha},c_{\beta}\right\} & =i\delta _{\alpha \beta}
\end{align}$$

## classical BRST reduction

the gauge-fixed action is invariant under the off-shell BRST transformation

$$\begin{align}
sh_{\mu \nu} & =\nabla _{\mu}c_{\nu}+\nabla _{\nu}c_{\mu} & sc_{\mu} & =0 \\
s\bar{c}_{\mu} & =B_{\mu} & sB_{\mu} & =0
\end{align}$$

we summarize the transformation on the extended configuration space as

$$\begin{align}
\mathcal{X} & =\int \mathrm{d}^{3}x\left((\nabla _{\mu}c_{\nu}+\nabla _{\nu}c_{\mu}) \dfrac{\delta}{\delta h_{\mu \nu}}+B_{\mu} \dfrac{\delta}{\delta \bar{c}_{\mu}}\right)
\end{align}$$

the corresponding Noether charge can be obtained by standard CPS formalism

$$\begin{align}
Q_{\mathrm{BRST}} & =\mathcal{X}\cdot \theta-\alpha \\
 & =i \sum _{\alpha \in \mathcal{I}_{\text{prop}}}(b^{\dagger}_{\alpha}c_{\alpha}-b_{\alpha}c^{\dagger}_{\alpha})
\end{align}$$

which gives the following non-vanishing brackets

$$\begin{align}
\left\{\lambda _{\alpha},Q_{\mathrm{BRST}}\right\} & =c_{\alpha}, & \left\{\lambda ^{\dagger}_{\alpha},Q_{\mathrm{BRST}}\right\} & =c^{\dagger}_{\alpha} \\
\left\{\bar{c}_{\alpha},Q_{\mathrm{BRST}}\right\} & =b_{\alpha}, & \left\{\bar{c}^{\dagger}_{\alpha},Q_{\mathrm{BRST}}\right\} & =b^{\dagger}_{\alpha}
\end{align}$$

it follows that

$$\begin{align}
\left\{Q_{\mathrm{BRST}},Q_{\mathrm{BRST}}\right\} & =0
\end{align}$$

### classical quartet cohomology

for evert $\displaystyle{\alpha \in \mathcal{I}_{\text{prop}}}$, the variables $\displaystyle{(\lambda _{\alpha},b_{\alpha};c_{\alpha},\bar{c}_{\alpha})}$ and their negative-frequency partners form a contractible quartet. define the modewise contracting homotopy vector and BRST vector

$$\begin{align}
\kappa _{\alpha} & =\lambda _{\alpha} \overleftarrow{\dfrac{\delta}{\delta c_{\alpha}}}+\bar{c}_{\alpha} \dfrac{\delta}{\delta b_{\alpha}}+\lambda ^{\dagger}_{\alpha} \overleftarrow{\dfrac{\delta}{\delta c^{\dagger}_{\alpha}}}+\bar{c}^{\dagger}_{\alpha} \dfrac{\delta}{\delta b^{\dagger}_{\alpha}} \\
s_{\alpha} & = c_{\alpha} \dfrac{\delta}{\delta \lambda _{\alpha}}+b_{\alpha} \overleftarrow{\dfrac{\delta}{\delta \bar{c}_{\alpha}}}+c^{\dagger}_{\alpha} \dfrac{\delta}{\delta \lambda ^{\dagger}_{\alpha}}+b^{\dagger}_{\alpha} \overleftarrow{\dfrac{\delta}{\delta \bar{c}^{\dagger}_{\alpha}}}
\end{align}$$

the following logic is the same as the Maxwell case. we omit them for simplicity.

# finite dofs system

finally we consider a finite dofs system

$$\begin{align}
S & =\int _{t_{i}}^{t_{f}} \dfrac{1}{2}(q_{1}-\dot{q}_{2})^{2}
\end{align}$$

this action allows a gauge transformation

$$\begin{align}
q_{1} & \to q_{1}+\dot{\varepsilon} \\
q_{2} & \to q_{2}+\varepsilon
\end{align}$$

we introduce (anti-)ghost $\displaystyle{c,\bar{c}}$ and Nakanishi-Lautrup field $\displaystyle{B}$, and choose the gauge fixing fermion

$$\begin{align}
\Psi & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\bar{c}\left( q_{2}+\dfrac{\xi}{2}B \right)
\end{align}$$

then the gauge-fixed action is given by

$$\begin{align}
S_{\Psi} & =S+s\Psi \\
 & =\int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\dfrac{1}{2}(q_{1}-\dot{q}_{2})^{2}+Bq_{2}+\dfrac{\xi}{2}B^{2}-\bar{c}c\right)
\end{align}$$

trivial ghost, boring.
