---
title: Maxwell Benchmark for BRST-CPS Canonical Quantization
date: 2026-07-12
summary: "Tests the BRST-CPS formalism on free Maxwell theory, including the complete quartet, global-AdS3 boundary conditions, and agreement with reduced CPS quantization."
---

# Maxwell Benchmark

Maxwell theory supplies the propagating benchmark. In three spacetime dimensions the reduced bulk theory has one physical polarization, while the gauge-fixed extended theory also contains a gauge coordinate, a scalar gauge-fixing polarization, a ghost, and an antighost. The benchmark succeeds only if the last four variables form a contractible symplectic quartet whose positive-excitation subcomplex is acyclic.

## 1. Off-shell BRST action

Use

$$\begin{align}
S_{\Psi}=\int _M\mathrm{d}^{3}x\sqrt{-g}\left[ -\frac{1}{4}F_{\mu\nu}F^{\mu\nu} +B\nabla _{\mu}A^{\mu} +\frac{\xi}{2}B^{2} -\bar c\nabla ^2c \right].
\end{align}$$

The transformations

$$\begin{align}
sA_{\mu}&=\nabla _{\mu}c, & sc&=0, & s\bar c&=B, & sB&=0
\end{align}$$

are off-shell nilpotent. The equations for $A_{\mu}$ and $B$ are

$$\begin{align}
\nabla _{\nu}F^{\nu\mu}-\nabla ^{\mu}B&=0, &\nabla _{\mu}A^{\mu}+\xi B&=0.
\end{align}$$

Eliminating $B$ gives

$$\begin{align}
\nabla _{\nu}F^{\nu\mu} +\frac{1}{\xi}\nabla ^{\mu}\nabla _{\nu}A^{\nu}=0.
\end{align}$$

For $\xi=1$ on unit-radius AdS$_3$, where $R_{\mu\nu}=-2g_{\mu\nu}$, this becomes

$$\begin{align}
(\nabla ^2+2)A_{\mu}=0, \qquad \nabla ^2c=\nabla ^2\bar c=0.
\end{align}$$

The curvature shift follows from the checked identity

$$\begin{align}
\nabla ^{\nu}F_{\nu\mu}+\nabla _{\mu}\nabla _{\nu}A^{\nu} =\nabla ^2A_{\mu}-R_{\mu\nu}A^{\nu}.
\end{align}$$

## 2. Complete mode complex

For each non-zero scalar Faddeev-Popov mode $\phi _{\alpha}$, the gauge-fixed vector solution space must contain all of the following:

1. a physical transverse solution $A^{T}_{\alpha}$ when such a solution exists;
2. a pure-gauge solution $\nabla _{\mu}\phi _{\alpha}$;
3. a scalar-polarization solution whose divergence, equivalently its $B$ field, has the profile $\phi _{\alpha}$;
4. ghost and antighost solutions with the same scalar label.

Let $\lambda _{\alpha}$ be the pure-gauge coordinate and $b_{\alpha}$ the $B$ or scalar-polarization coordinate. After a mode-dependent canonical normalization, the non-physical sector takes the form

$$\begin{align}
\Omega _{\mathrm{unphys},\alpha} &=\delta b_{\alpha}\wedge\delta\lambda _{\alpha} +\delta\bar c_{\alpha}\wedge\delta c_{\alpha},\\
s\lambda _{\alpha}&=c_{\alpha}, &s\bar c_{\alpha}&=b_{\alpha}, &sc_{\alpha}&=sb_{\alpha}=0.
\end{align}$$

With the canonical convention of the main formalism, the modewise BRST charge is

$$\begin{align}
Q_{\alpha}=b_{\alpha}c_{\alpha}, \qquad \iota _s\Omega _{\mathrm{unphys},\alpha}=-\delta Q_{\alpha}, \qquad \mathcal{L}_s\Omega _{\mathrm{unphys},\alpha}=0.
\end{align}$$

The pure-gauge vector is not required to pair with itself. It pairs with the scalar polarization, while the ghost pairs with the antighost. The quartet is non-degenerate as a graded symplectic system, while every non-zero quartet excitation is BRST exact.

## 3. Plane-wave normal form

The local structure is explicit in flat spacetime. For a null momentum $k^{\mu}$ choose $\bar k^{\mu}$ and a transverse vector $e^{\mu}$ satisfying

$$\begin{align}
k^{2}&=\bar k^{2}=0, & k\cdot\bar k&=1, &e\cdot k&=e\cdot\bar k=0.
\end{align}$$

Decompose a positive-frequency vector mode as

$$\begin{align}
A^{\mu}=a_{T}e^{\mu}+a_{g}k^{\mu}+a_{s}\bar k^{\mu}.
\end{align}$$

The $a_{g}$ mode is pure gauge and

$$\begin{align}
\partial _{\mu}A^{\mu}=i a_{s}, \qquad B=-i a_{s}.
\end{align}$$

After harmless phase redefinitions, $(a_{g},a_{s};c,\bar c)$ is precisely the quartet of the main formalism. The only non-trivial ghost-number-zero one-particle class is represented by $a_{T}^{\dagger}\lvert0\rangle$. In three dimensions this gives one bulk Maxwell polarization.

## 4. Global AdS$_3$ domain

The independently reduced Maxwell notes provide the target phase space. Their physical positive-frequency solutions form the normalizable $(1,1)$ tower and its descendants, with reduced form

$$\begin{align}
\Omega _{\mathrm{red}} =-i\sum _{n=0}^{\infty}\sum _{m\in\mathbb{Z}} \delta a_{nm}\wedge\delta a_{nm}^{*}.
\end{align}$$

The proper null directions are generated mode by mode by harmonic parameters satisfying

$$\begin{align}
\nabla ^2\Lambda _{mN}=0, \qquad \Lambda _{mN}=O(r^{-2})\quad (r\to\infty),
\end{align}$$

for the normalizable non-zero modes. The ghost domain must contain the same profiles. The gauge-fixed scalar-polarization branch must be retained until cohomology is taken; imposing transversality on $A_{\mu}$ before constructing the BRST charge would remove one half of the quartet.

The $n=0$ pure-gauge branches have boundary parameters of order $O(r^{0})$. Under the Maxwell falloffs adopted in the local reduced theory, their surface charge and their pairing with all allowed solutions vanish. They therefore remain in the presymplectic kernel despite their non-zero boundary value. This illustrates why proper gauge transformations must be defined by the renormalized symplectic kernel rather than by boundary value alone.

If a different Maxwell boundary action or phase space gives these transformations a non-zero charge, the corresponding modes must instead be removed from the bulk ghost domain and treated as edge modes.

## 5. Cohomology and comparison

For every non-zero Faddeev-Popov mode the quartet homotopy gives

$$\begin{align}
H^{\bullet}(Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{quartet},\alpha}) \simeq\mathbb{C}\lvert0\rangle _{\mathrm{quartet},\alpha},
\end{align}$$

concentrated at ghost number zero. Equivalently, the subcomplex with positive quartet excitation number has vanishing cohomology.

The constant U(1) ghost satisfies $dc=0$ and is a reducibility zero mode. It is removed from the determinant and treated through the residual global gauge volume rather than as a physical ghost excitation.

Provided the global scalar-polarization modes complete the same canonically normalized quartet blocks, one obtains

$$\begin{align}
H^{0}(Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{ext}}) &\simeq\mathcal{F}\left(\{a_{nm}^{\dagger}\}\right),\\
\Omega _{H^{0}}&=\Omega _{\mathrm{red}}.
\end{align}$$

Under this stated completeness condition, this is the same oscillator Hilbert space and symplectic normalization obtained by direct presymplectic reduction.

## Benchmark verdict

| Gate | Result |
|---|---|
| Off-shell nilpotency | Pass with $B$ retained. |
| Symplectic compatibility | Pass modewise; the selected AdS$_3$ domain has vanishing proper-gauge boundary term. |
| Complete unphysical sector | Structural pass after including the scalar-polarization branch; its explicit global-AdS$_3$ radial basis remains to be constructed. |
| Quartet acyclicity | Pass for every non-zero Faddeev-Popov mode. |
| Reduced degrees of freedom | Pass: one bulk polarization in AdS$_3$. |
| Induced symplectic form | Conditional pass: the physical transverse block agrees with the reduced $(1,1)$ oscillator form, assuming completeness and canonical normalization of the global quartet block. |
| Zero modes | Constant ghost separated as reducibility. |
| Boundary classification | Pass for the stated Maxwell falloffs; it must be recomputed for other boundary actions. |
