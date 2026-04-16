---
paper id: 2604.13163v1
title: Covariant phase space approach to noncommutativity in tensile and tensionless open strings
authors:
  - Pratik K. Das
  - Sarthak Duary
  - Sourav Maji
publication date: 2026-04-14T18:00
abstract: We study noncommutativity in open strings using the covariant phase space formalism. For tensile open strings in a constant Kalb-Ramond background, we show that the (pre)-symplectic current splits into a bulk kinetic term plus an exact boundary term, recovering the Seiberg-Witten noncommutativity parameter. We then extend the analysis to intrinsically tensionless strings. In the absence of background fields, the reduced phase space is degenerate and carries no intrinsic Poisson structure. In the presence of a constant Kalb-Ramond field, the symplectic current localises entirely on the boundary, so that the physical phase space becomes purely boundary-supported and the endpoint coordinates acquire a noncommutative Poisson algebra. Including a boundary gauge-field coupling similarly leads to a boundary symplectic form governed by the effective Born-Infeld combination on the D-brane. Our results provide a unified description of noncommutativity in both tensile and tensionless open strings.
summary: Using covariant phase space methods, the paper shows that both tensile and tensionless open strings acquire noncommutative endpoint dynamics from boundary-localized symplectic structures in constant Kalb-Ramond or gauge-field backgrounds.
comments: 45 pages, 2 figures
pdf: "[[Attachments/Assets/Covariant phase space approach to noncommutativity in tensile and tensionless open strings (2604.13163v1).pdf]]"
url: https://arxiv.org/abs/2604.13163v1
tags: []
---

## Historical context and motivation

The modern discussion of open-string noncommutativity goes back to the observation that, in a constant Kalb-Ramond $B$-field background, the endpoints of an open string on a D-brane acquire a noncommutative geometry. In the low-energy limit, this is reflected in the appearance of noncommutative gauge theory, making the relation between string boundary conditions and noncommutative spacetime a central theme.

A natural next question is whether this phenomenon is best understood as a result of canonical quantization, constraint analysis, or something more intrinsically geometric. From that perspective, the covariant phase space formalism is attractive because it can isolate the physical symplectic structure without choosing a preferred time slicing, and it can make boundary contributions conceptually transparent.

The motivation of this paper is to revisit open-string noncommutativity in that covariant language and then push the same logic to the intrinsically tensionless regime. The key issue is whether tensionless open strings still carry a meaningful Poisson structure, and if so, whether it is again supported entirely at the boundary in the presence of constant $B$-field or boundary gauge couplings.

## Conclusion and outlook

The paper argues that open-string noncommutativity can be understood directly from the covariant phase space structure rather than only from operator or propagator methods. For ordinary tensile open strings in a constant Kalb-Ramond background, the familiar Seiberg-Witten noncommutativity is recovered in a geometric way: the physically relevant symplectic data responsible for endpoint noncommutativity is encoded in boundary contributions.

For intrinsically tensionless open strings, the picture is sharper. In the absence of background fields, the reduced phase space is degenerate and does not carry a nontrivial Poisson structure. Once a constant Kalb-Ramond field is turned on, however, the symplectic current localizes entirely on the boundary, so that the physical phase space becomes boundary-supported and the endpoint coordinates acquire a noncommutative Poisson algebra.

The outlook is to study more general backgrounds and quantization schemes. In particular, the authors point to non-constant $B$-fields, where bulk and boundary structures may mix, and to deformation quantization of the resulting boundary symplectic form as a possible route to deriving star products directly from the phase space geometry. They also suggest extensions to more general D-brane boundary couplings, higher structures, and related symmetry algebras.

## Tensile open string with constant Kalb-Ramond field

we start from the standard Polyakov action

$$\begin{align}
S_{\text{tensile}} & =-\frac{T}{2}\int _{\Sigma}\mathrm{d}^{2}\sigma\left(\sqrt{ -g }g^{ab}\nabla _{a}X^{\mu}\nabla _{b}X^{\nu}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu}\nabla _{a}X^{\mu}\nabla _{b}X^{\nu}\right)
\end{align}$$

in the conformal gauge, we have

$$\begin{align}
S_{\text{tensile}} & =-\frac{T}{2}\int _{\Sigma}\mathrm{d}^{2}\sigma\left(\eta ^{ab}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu}\right)\partial _{a}X^{\mu}\partial _{b}X^{\nu}
\end{align}$$

take a variation of the action with respect to $\displaystyle{X^{\mu}}$, we get

$$\begin{align}
\delta S_{\text{tensile}} & =-T\int\mathrm{d}^{2}\sigma(\eta ^{ab}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu})\partial _{a}X^{\mu}\partial _{b}\delta X^{\nu} \\
 & =T \int \mathrm{d}^{2}\sigma \eta_{\mu \nu}\partial ^{2}X^{\mu}\delta X^{\nu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}x\tau _{a}(\eta ^{ab}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu})\partial _{b}X^{\mu}\delta X^{\nu} \\
 & =\int \mathrm{d}^{2}\sigma E_{\nu}\delta X^{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}$$

we can read out the equations of motion and the symplectic potential as

$$\begin{align}
E_{\nu} & =T\eta_{\mu \nu}\partial ^{2}X^{\mu} \\
\theta & =T\int _{\Sigma}\mathrm{d}x\tau _{a}(\eta ^{ab}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu})\partial _{b}X^{\mu}\delta X^{\nu} \\
\implies \omega & =\delta \theta \\
 & =T\int _{\Sigma}\mathrm{d}x\tau _{a}(\eta ^{ab}\eta_{\mu \nu}+\epsilon ^{ab}B_{\mu \nu})\partial _{b}\delta X^{\mu}\wedge \delta X^{\nu} \\
 & =T\int _{\Sigma}\mathrm{d}x\tau _{a}\eta ^{ab}\eta_{\mu \nu}\partial _{b}\delta X^{\mu}\wedge \delta X^{\nu} \\
 & +\frac{T}{2}\tau _{a}n_{b}\epsilon ^{ab}B_{\mu \nu}\delta X^{\mu}\wedge \delta X^{\nu}|_{\partial \Sigma} \\
\end{align}$$

here we have imposed the boundary condition

$$\begin{align}
n_{a}(\eta ^{ab}\eta _{\mu \nu}+\epsilon ^{ab}B_{\mu \nu})\partial _{b}X^{\nu}|_{\partial \Sigma} & =0
\end{align}$$

to eliminate the spatial boundary contrinution. rescaling the Kalb-Ramond field $\displaystyle{B_{\mu \nu}}$ as

$$\begin{align}
\mathcal{B}_{\mu \nu} & =-\frac{1}{2\pi \alpha'}B_{\mu \nu}
\end{align}$$

we have

$$\begin{align}
\dot{X}^{\mu}|_{\partial \Sigma} & =-\frac{1}{2\pi \alpha'}(\mathcal{B}^{-1}\eta)^{\mu}_{~\nu}X'^{\nu} \\
X'^{\mu}|_{\partial \Sigma} & =-2\pi \alpha'(\eta ^{-1}\mathcal{B})^{\mu}_{~\nu}\dot{X}^{\nu}
\end{align}$$

at the boundary, the symplectic form becomes

$$\begin{align}
\omega|_{\partial \Sigma} & = \int-\frac{1}{(2\pi \alpha')^{2}} (\eta \mathcal{B}^{-1}\eta)_{\mu \nu}\delta X^{\mu}\wedge \delta X'^{\nu} \\
 & +\frac{1}{2}\mathcal{B}_{\mu \nu}\delta X^{\mu}\wedge \delta X^{\nu}|_{\partial \Sigma} \\
 & =\frac{1}{2}\left(\mathcal{B}_{\mu \nu}-\frac{1}{(2\pi \alpha')^{2}}(\eta \mathcal{B}^{-1}\eta)_{\mu \nu}\right)\delta X^{\mu}\wedge \delta X^{\nu} \\
 & =\frac{1}{2}\Omega _{\mu \nu}\delta X^{\mu}\wedge \delta X^{\nu}
\end{align}$$

(here the math is a bit not precise...) thus we have

$$\begin{align}
\left\{X^{\mu},X^{\nu}\right\}|_{\partial \Sigma} & =\Omega ^{\mu \nu}
\end{align}$$

which is exactly the Seiberg-Witten noncommutativity parameter. we can write it in a more familar form

$$\begin{align}
\left\{X^{\mu},X^{\nu}\right\}|_{\partial \Sigma} & =\Theta ^{\mu \nu} \\
\Theta & =-(2\pi \alpha')^{2}(\eta+2\pi \alpha'\mathcal{B})^{-1}\mathcal{B}(\eta-2\pi \alpha'\mathcal{B})^{-1}
\end{align}$$

in the tensionless limit $\displaystyle{T=\frac{1}{2\pi \alpha'}\to 0\iff \chi=2\pi\alpha'\to \infty}$, we have

$$\begin{align}
\Theta & =-\chi ^{2}(\eta+\chi \mathcal{B})^{-1}\mathcal{B}(\eta-\chi \mathcal{B})^{-1} \\
 & =\mathcal{B}^{-1}+\mathcal{O}(\chi ^{-1})
\end{align}$$

## Intrinsic tensionless string without background field

the intrinsically tensionless string is described by the Isberg-Lindstrom-Sundborg-Theodoridis (ILST) action

$$\begin{align}
S_{0}[X,V] & =\int \mathrm{d}^{2}\sigma V^{a}V^{b}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\eta _{\mu \nu}
\end{align}$$

where $\displaystyle{V^{a}}$ is a worldsheet vector density. in order to discuss noncommutativity, we need to add a $\displaystyle{\mathcal{B}_{\mu \nu}}$ field to the action as

$$\begin{align}
S_{\text{tensionless}}=\int\mathrm{d}^{2}\sigma\left(V^{a}V^{b}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\eta _{\mu \nu}+\frac{1}{2}\epsilon ^{ab}\mathcal{B}_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\right)
\end{align}$$

take a variation with respect to $\displaystyle{X^{\mu}}$ and $\displaystyle{V^{a}}$, we have

$$\begin{align}
\delta S_{\text{tensionless}} & =\int \mathrm{d}^{2}\sigma\left(2V^{a}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\eta _{\mu \nu}\delta V^{b}-2\partial _{a}\left(V^{a}V^{b}\partial _{b}X^{\mu}\eta _{\mu \nu}\right)\delta X^{\nu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}\sigma \tau _{a}\left(2\eta _{\mu \nu}V^{a}V^{b}+\epsilon ^{ab}\mathcal{B}_{\mu \nu}\right)\partial _{b}X^{\mu}\delta X^{\nu} \\
 & =\int \mathrm{d}^{2}\sigma E_{\mu}\delta X^{\mu}+E_{b}\delta V^{b}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
\implies E_{\nu} & =-2\partial _{a}(V^{a}V^{b}\partial _{b}X^{\mu}\eta _{\mu \nu}) \\
E_{b} & =2V^{a}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\eta _{\mu \nu} \\
\theta & =\int _{\Sigma}\mathrm{d}\sigma \tau _{a}\left(2\eta _{\mu \nu}V^{a}V^{b}+\epsilon ^{ab}\mathcal{B}_{\mu \nu}\right)\partial _{b}X^{\mu}\delta X^{\nu} \\
\implies \omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}\sigma \tau _{a}\left(2\eta _{\mu \nu}V^{a}V^{b}+\epsilon ^{ab}\mathcal{B}_{\mu \nu}\right)\partial _{b}\delta X^{\mu}\wedge \delta X^{\nu} \\
 & =2\int _{\Sigma}\mathrm{d}\sigma \tau _{a}\eta _{\mu \nu}V^{a}V^{b}\partial _{b}\delta X^{\mu}\wedge \delta X^{\nu}+\frac{1}{2}\tau _{a}n_{b}\epsilon ^{ab}\mathcal{B}_{\mu \nu}\delta X^{\mu}\wedge \delta X^{\nu}|_{\partial \Sigma}
\end{align}$$

after choosing the gauge $\displaystyle{V^{a}=\delta ^{a}_{t}}$, the bulk symplectic form vanishes, and the Poisson bracket between the endpoint coordinates is given by

$$\begin{align}
\left\{X^{\mu},X^{\nu}\right\}|_{\partial \Sigma} & =(\mathcal{B}^{-1})^{\mu \nu}
\end{align}$$

which is exactly the tensionless limit of the Seiberg-Witten noncommutativity parameter. 

---

analysis for the ILST action shows that for a worldsheet diffeomorphism

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{2}\sigma \mathcal{L}_{\xi}X^{\mu}\frac{\delta}{\delta X^{\mu}} \\
\end{align}$$

the Noether charge vanishes onshell

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & \propto E_{b}\approx 0
\end{align}$$

thus the free ILST presymplectic form is degenerate, with worldsheet diffeomorphism directions lying in its kernel. In other words, the free bulk sector does not produce a nontrivial reduced Poisson structure. This is why, once the constant background field $\mathcal{B}_{\mu \nu}$ is turned on, the nontrivial contribution to the reduced symplectic structure comes from the exact $\mathcal{B}$-term and localizes on the boundary, rather than from a bulk kinetic term as in the tensile case.

## Boundary gauge field and effective antisymmetric data

we start with the Polyakov action for a bosonic string ending on a $\displaystyle{\mathrm{D}p}$-brane, including the boundary gauge field term

$$\begin{align}
S^{A}_{\text{tensile}} & =-\frac{1}{4\pi \alpha'}\int \mathrm{d}^{2}\sigma\left[\sqrt{ -g }g^{ab}\eta_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}+\epsilon ^{ab}B_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\right]+\frac{1}{2\pi \alpha'}\oint _{\Gamma}\mathrm{d}\tau A_{i}(X)\dot{X}^{i}
\end{align}$$

where $\displaystyle{A_{i},i=0,1,\dots,p}$ is the $\displaystyle{\mathrm{U}(1)}$ gauge field living on the $\displaystyle{\mathrm{D}p}$-brane. take the tensionless limit, we gave

$$\begin{align}
S^{\mathcal{A}}_{\text{tensionless}} & =\int\mathrm{d}^{2}\sigma\left(V^{a}V^{b}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\eta _{\mu \nu}+\frac{1}{2}\epsilon ^{ab}\mathcal{B}_{\mu \nu}\partial _{a}X^{\mu}\partial _{b}X^{\nu}\right)+\frac{1}{2}\oint _{\Gamma}\mathrm{d}\tau \mathcal{A}_{i}(X)\dot{X}^{i}
\end{align}$$

following similar procedure, we have

$$\begin{align}
\Omega|_{\partial \Sigma} & =\frac{1}{2}\mathcal{F}_{\mu \nu}\delta X^{\mu}\wedge \delta X^{\nu} \\
\mathcal{F}_{\mu \nu} & =\mathcal{B}_{\mu \nu}+F_{\mu \nu} \\
 & =\mathcal{B}_{\mu \nu}+\partial _{\mu}\mathcal{A}_{\nu}-\partial _{\nu}\mathcal{A}_{\mu}
\end{align}$$

thus the noncommutativity parameter becomes

$$\begin{align}
\left\{X^{\mu},X^{\nu}\right\}|_{\partial \Sigma} & =(\mathcal{F}^{-1})^{\mu \nu}
\end{align}$$

