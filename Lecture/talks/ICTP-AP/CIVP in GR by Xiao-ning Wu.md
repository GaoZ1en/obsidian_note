---
title: CIVP in GR by Xiao-ning Wu
date: 2026-11-03
speaker: Xiaoning Wu
---
IVP in general relativity

$$\begin{align}
\mathcal{L}_{t}h_{ij} & =2NK_{ij}+\mathcal{L}_{\beta}h_{ij} \\
\mathcal{L}_{t}K_{ij} & =-N{}^{3}R_{ij}+2NK_{i}^{~k}K_{jk}-NKK_{ij}+D_{i}D_{j}N+\mathcal{L}_{\beta}K_{ij}
\end{align}$$

and constraint

$$\begin{align}
{}^{3}R-K_{ij}K^{ij}+K^{2} & =0 \\
D_{i}K^{i}_{~j}-D_{j}K & =0
\end{align}$$

hard to solve...

CIVP, characteristic data, Newman-Penrose formlaism. See [[Lecture/conferences/2026 loops/asymptotic symmetry by Xiaoning Wu|asymptotic symmetry by Xiaoning Wu]].

Coordinate and gauge choice...

Torsion-free conditions, structure equations and Bianchi identities...

Scalar+maxwell...

Work by Fridrich and Rendall. Existence of characteristic data, Cauchy-Kovalevskaya theorem.

Advantage: characteristic constraints reduce to transport equations

Half-local existence: Christodoulou-2009/Luk-2011/Li-Zhu-2014/Zhao-Hilditch-Valienti-Kroom-2021/Wu-Zhao-2026/Wu-Zhao-2025

Why half-local existence:
1. trapped surface research
	1. how to impose large angular momentum?
2. violation of 3rd law of blackhole thermodynamics

CIVBP problem in AdS and other cases...

---

## From IVP to CIVP

See [[Note/useful results/ADM formalism|ADM formalism]] for more about the initial value problem in general relativity. After the spacetime foliation into spatial hypersurfaces $\Sigma_t$ with normal $n^\mu$, the coordinates $x^\mu$ are parametrized by the spatial coordinates $x^a$ and the time parameter $t$ as

$$\begin{align}
x^{\mu} & =X^{\mu}(x^{a},t)
\end{align}$$

we decompose

$$\begin{align}
t^{\mu} & =Nn^{\mu}+\beta ^{\mu}
\end{align}$$

vacuum Einstrin equations with zero cosmological constant are

$$\begin{align}
\mathcal{L}_{t}h_{ij} & =2NK_{ij}+\mathcal{L}_{\beta}h_{ij} \\
\mathcal{L}_{t}K_{ij} & =-N{}^{3}R_{ij}+2NK_{i}^{~k}K_{jk}-NKK_{ij}+D_{i}D_{j}N+\mathcal{L}_{\beta}K_{ij}
\end{align}$$

with the constraints

$$\begin{align}
{}^{3}R-K_{ij}K^{ij}+K^{2} & =0 \\
D_{i}K^{i}_{~j}-D_{j}K & =0
\end{align}$$

---

These equations can be derived as follows. The Gauss-Codazzi relations gives

$$\begin{align}
2G_{\mu \nu}n^{\mu}n^{\nu} & =^{3}R-K_{ij}K^{ij}+K^{2}\approx 0 \\
G_{\mu \nu}n^{\mu}h^{\nu}_{~i} & =D_{j}K^{j}_{~i}-D_{i}K\approx 0
\end{align}$$

Ricci equation gives

$$\begin{align}
h^{\mu}_{~i}h^{\nu}_{~j}R_{\mu \nu} & ={}^{3}R_{ij}+KK_{ij}-2K_{i}^{~k}K_{kj}+\dfrac{1}{N}[(\mathcal{L}_{t}-\mathcal{L}_{\beta})K_{ij}-D_{i}D_{j}N] \\
\implies \mathcal{L}_{t}K_{ij} & =-N{}^{3}R_{ij}+2NK_{i}^{~k}K_{jk}-NKK_{ij}+D_{i}D_{j}N+\mathcal{L}_{\beta}K_{ij}
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{t}h_{ij} & =N\mathcal{L}_{n}h_{ij}+\mathcal{L}_{\beta}h_{ij} \\
 & =2NK_{ij}+\mathcal{L}_{\beta}h_{ij}
\end{align}$$

---

Lichnerowicz-York method provides a conformal decomposition of the initial data to solve the constraints. Decompose the initial data $\displaystyle{h_{ij}}$ and $\displaystyle{K_{ij}}$ as

$$\begin{align}
h_{ij} & =\psi ^{4}\tilde{h}_{ij} \\
K^{ij} & =\psi ^{-10}(\tilde{A}^{ij}_{\mathrm{TT}}+(\tilde{L}W)^{ij})+\dfrac{1}{3}Kh^{ij}
\end{align}$$

where $\displaystyle{\psi>0}$ is the conformal factor, and

$$\begin{align}
(\tilde{L}W)^{ij} & =\tilde{D}^{i}W^{j}+\tilde{D}^{j}W^{i}-\dfrac{2}{3}\tilde{h}^{ij}\tilde{D}_{k}W^{k}
\end{align}$$

here $\displaystyle{\tilde{D}}$ is the covariant derivative corresponding to $\displaystyle{\tilde{h}}$. Substituting into the constraint equations gives a coupled elliptic system for $\displaystyle{\psi}$ and $\displaystyle{W^{i}}$.

---

CIVP begins with two smooth null hypersurfaces $\displaystyle{\mathcal{N}}$ and $\displaystyle{\mathcal{N}'}$ intersecting transversely in a spacelike codimension-2 surface

$$\begin{align}
S & =\mathcal{N}\cap \mathcal{N}'
\end{align}$$

in this note we take $\displaystyle{S}$ to be a sphere (while non-compact cases, such as AdS-Rindler, remain under investigation). There are actually two steps of construction:

- introduce data on the $\displaystyle{\mathcal{N}}$, $\displaystyle{\mathcal{N}'}$ and $\displaystyle{S}$, and then solve the constraint equations on $\displaystyle{\mathcal{N}}$ and $\displaystyle{\mathcal{N}'}$ to obtain a complete and consistent set of characteristic data
- from the characteristic data on $\displaystyle{\mathcal{N}}$ and $\displaystyle{\mathcal{N}'}$, solve the evolution equations to obtain the spacetime metric.

In 4-dimensional spacetime, it is convenient to introduce Newman-Penrose frame for CIVP. On $\displaystyle{S=\mathcal{N}\cap \mathcal{N}'}$ we choose two future-directed null normals $\displaystyle{\ell ^{\mu}}$ and $\displaystyle{n^{\mu}}$ normalized as

$$\begin{align}
\ell ^{2}=n^{2} & =0, & \ell \cdot n & =-1
\end{align}$$

here $\displaystyle{\ell|_{S}}$ generates $\displaystyle{\mathcal{N}}$, and $\displaystyle{n|_{S}}$ generates $\displaystyle{\mathcal{N}'}$. in addition, on a local patch of $\displaystyle{S}$, we choose an orthonormal frame $\displaystyle{e_{1}^{\mu},e_{2}^{\mu}}$ tangent to $\displaystyle{S}$, and define

$$\begin{align}
m^{\mu} & =\dfrac{e_{1}^{\mu}+ie_{2}^{\mu}}{\sqrt{ 2 }}, & \bar{m}^{\mu} & =\dfrac{e_{1}^{\mu}-ie_{2}^{\mu}}{\sqrt{ 2 }}
\end{align}$$

which satisfies

$$\begin{align}
m\cdot m=\bar{m}\cdot \bar{m} & =0, & m\cdot \bar{m} & =1 \\
\ell \cdot m=n\cdot m & =0
\end{align}$$

the metric can be reconstructed as

$$\begin{align}
g^{\mu \nu} & =-2\ell ^{(\mu}n^{\nu)}+2m^{(\mu}\bar{m}^{\nu)}
\end{align}$$

the Newman-Penrose frame has the following residual spin-boost freedom preserving the above geometric decomposition

$$\begin{align}
\ell & \mapsto e^{\lambda}\ell, & n & \mapsto e^{-\lambda}n, & m & \mapsto e^{i\chi}m
\end{align}$$

we extend $\displaystyle{\ell}$ and $\displaystyle{n}$ from $\displaystyle{S}$ along the null generators of $\displaystyle{\mathcal{N}}$ and $\displaystyle{\mathcal{N}'}$, respectively, choosing affine parameterizations such that

$$\begin{align}
\nabla _{\ell}\ell|_{\mathcal{N}} & =0, & \nabla _{n}n|_{\mathcal{N}'} & =0
\end{align}$$

and further extend the complex dyad $\displaystyle{(m,\bar{m})}$ by parallel transport along the corresponding null generators,

$$\begin{align}
\nabla _{\ell}m|_{\mathcal{N}} & 0, & \nabla _{n}m|_{\mathcal{N}'} & =-\tau n
\end{align}$$

the same conditions hold for $\displaystyle{\bar{m}}$ by complex conjugation.

We introduce the following four directional derivatvies for future convenience

$$\begin{align}
D & =\ell ^{\mu}\nabla _{\mu}, & D' & =n^{\mu}\nabla _{\mu}, & \delta & =m^{\mu}\nabla_{\mu}, & \bar{\delta} & =\bar{m}^{\mu}\nabla_{\mu}
\end{align}$$

we first consider the following tensor

$$\begin{align}
B_{AB} & =e^{\mu}_{A}e^{\nu}_{B}\nabla _{\mu}\ell _{\nu}
\end{align}$$

which can be uniquely decomposed into expansion, shear and twist as

$$\begin{align}
B_{AB} & =\sigma_{AB}+\frac{1}{2}\theta q_{AB}+\omega_{AB} \\
\theta & =q^{AB}B_{AB} \\
\sigma _{AB} & =B_{(AB)}-\dfrac{1}{2}\theta q_{AB} \\
\omega _{AB} & =B_{[AB]}
\end{align}$$

the twist $\displaystyle{\omega _{AB}}$ vanishes, since $\displaystyle{\ell}$ is the null normal of $\displaystyle{\mathcal{N}}$, which means $\displaystyle{\ell}$ can be locally written as

$$\begin{align}
\ell _{\mu} & =f\nabla _{\mu}u, & \mathcal{N}=\left\{u=0\right\}
\end{align}$$

then

$$\begin{align}
\omega _{AB} & =e^{\mu}_{A}e^{\nu}_{B}\nabla _{[\mu}\ell _{\nu]} \\
 & =e^{\mu}_{A}e^{\nu}_{B}(\nabla _{[\mu}f)\nabla _{\nu]}u \\
 & =0  & (e^{\nu}_{A}\nabla _{\nu}u=0)
\end{align}$$

temporally denote $\displaystyle{K_{\mu \nu}=\nabla _{\mu}\ell _{\nu}}$, since $\displaystyle{\ell}$ is affinely parameterized null geodesic congruence

$$\begin{align}
0 & =\nabla _{\mu}(\ell ^{\rho}\nabla _{\rho}\ell _{\nu}) \\
 & =\nabla _{\mu}\ell ^{\rho}\nabla _{\rho}\ell _{\nu}+\ell ^{\rho}\nabla _{\mu}\nabla _{\rho}\ell _{\nu} \\
 & =K_{\mu}^{~\rho}K_{\rho \nu}+\ell ^{\rho}\nabla _{\rho}K_{\mu \nu}-R_{\mu\rho\sigma\nu}\ell^{\rho}\ell^{\sigma} \\
\implies DK_{\mu \nu} & =-K_{\mu}^{~\rho}K_{\rho \nu}-R_{\mu \rho \nu \sigma}\ell ^{\rho}\ell ^{\sigma} \\
\implies DB^{A}_{~B} & =-B^{A}_{~C}B^{C}_{~B}-R^{A}_{~~\ell B\ell}
\end{align}$$

we separate the trace part and the trace-free part of $DB^{A}_{~B}$

$$\begin{align}
D\theta & =-\dfrac{1}{2}\theta ^{2}-\sigma _{AB}\sigma ^{AB} \\
D\sigma ^{A} _{~B} & =-\theta \sigma ^{A}_{~B}-C^{A}_{~~\ell B\ell}
\end{align}$$

here the Ricci term vanishes due to the vacuum Einstein equations. We introduce the NP coefficients and the Weyl scalar

$$\begin{align}
\rho & =-\bar{m}^{\mu}m^{\nu}\nabla _{\mu}\ell _{\nu} \\
\sigma & =-m^{\mu}m^{\nu}\nabla _{\mu}\ell _{\nu} \\
\Psi_{0} & =C_{m\ell m\ell}
\end{align}$$

which are related to the expansion and the shear. The Raychaudhuri equations can be rewritten as

$$\begin{align}
D\rho & =\rho ^{2}+|\sigma|^{2} \\
D\sigma & =2\rho \sigma+\Psi_{0}
\end{align}$$

on $\displaystyle{\mathcal{N}'}$, we write

$$\begin{align}
B'_{AB} & =e^{\mu}_{A}e^{\nu}_{B}\nabla _{\mu}n_{\nu} \\
 & =\sigma'_{AB}+\dfrac{1}{2}\theta'q_{AB}
\end{align}$$

and

$$\begin{align}
D'B'^{A}_{~B} & =-B'^{A}_{~C}B'^{C}_{~B}-R^{A}_{~nBn} \\
\implies D'\theta' & =-\dfrac{1}{2}\theta'^{2}-\sigma _{AB}'\sigma'^{AB} \\
D'\sigma'^{A}_{~B} & =-\theta'\sigma'^{A}_{~B}-C^{A}_{~~nBn}
\end{align}$$

again we introduce the NP coefficients

$$\begin{align}
\mu & =m^{\alpha}\bar{m}^{\beta}\nabla _{\alpha}n_{\beta} \\
\lambda & =\bar{m}^{\alpha}\bar{m}^{\beta}\nabla _{\alpha}n_{\beta} \\
\Psi_{4} & =C_{n\bar{m}n\bar{m}}
\end{align}$$

and the corresponding Raychaudhuri equations read

$$\begin{align}
D'\mu & =-\mu ^{2}-|\lambda|^{2} \\
D'\lambda & =-2\mu \lambda-\Psi_{4}
\end{align}$$

Similarly, the remaining Neuman-Penrose spin coefficients are defined by the components of the Levi-Civita connection in the null tetrad. Denoting the metric inner product by $\displaystyle{\braket{ \cdot,\cdot }}$, we have

$$
\begin{array}{c|cccc}
 & \braket{ m,\nabla _{X}\ell }  & \braket{ n,\nabla _{X}\ell }  & \braket{ \bar{m},\nabla _{X}m }  & \braket{ \bar{m},\nabla _{X}n }  \\
\hline
X=\ell & -\kappa & -(\epsilon+\bar{\epsilon}) & \epsilon-\bar{\epsilon} & \pi \\
X=n & -\tau & -(\gamma+\bar{\gamma}) & \gamma-\bar{\gamma} & \nu \\
X=m & -\sigma & -(\bar{\alpha}+\beta) & -\bar{\alpha}+\beta & \mu \\
X=\bar{m} & -\rho & -(\alpha+\bar{\beta}) & \alpha-\bar{\beta} & \lambda
\end{array}
$$

The Weyl tensor is similarly represented by five complex scalars,

$$\begin{aligned}
\Psi_0&=C_{\ell m\ell m},& \Psi_1&=C_{\ell n\ell m},\\
\Psi_2&=C_{\ell m\bar m n},& \Psi_3&=C_{\ell n\bar m n},\\
\Psi_4&=C_{n\bar m n\bar m},
\end{aligned}$$

in adittion, the Ricci tensor is represented by four real scalars and six complex scalars

$$\begin{align}
\Phi _{00} & =\dfrac{1}{2}R_{\ell}, & R_{11} & =\dfrac{1}{4}(R_{\ell n}+R_{m\bar{m}}), & R_{22} & =\dfrac{1}{2}R_{nn}, & \Lambda=\dfrac{R}{24} \\
\Phi _{01} & =\dfrac{1}{2}R_{\ell m}, & \Phi _{02} & =\dfrac{1}{2}R_{mm}, & \Phi_{12} & =\dfrac{1}{2}R_{mn}, \\
\Phi _{ij} & =\bar{\Phi}_{ji}, \quad i \neq j
\end{align}$$

---

Torsion-free condition $\displaystyle{T(X,Y)=\nabla _{X}Y-\nabla _{Y}X-[X,Y]=0}$ gives

$$\begin{align}
[D',D] & =(\gamma+\bar{\gamma})D+(\epsilon+\bar{\epsilon})D'-(\pi+\bar{\tau})\delta-(\bar{\pi}+\tau)\bar{\delta} \\
[\delta,D] & =(\bar{\alpha}+\beta-\bar{\pi})D+\kappa D'-(\bar{\rho}+\epsilon-\bar{\epsilon})\delta-\sigma \bar{\delta} \\
[\delta,D'] & =-\bar{\nu}D+(\tau-\bar{\alpha}-\beta)D'+(\mu-\gamma+\bar{\gamma})\delta+\bar{\lambda}\bar{\delta} \\
[\bar{\delta},\delta] & =(\bar{\mu}-\mu)D+(\bar{\rho}-\rho)D'+(\alpha-\bar{\beta})\delta-(\bar{\alpha}-\beta)\bar{\delta}
\end{align}$$

Ricci identities $\displaystyle{R(X,Y)Z=\nabla _{X}\nabla _{Y}Z-\nabla _{Y}\nabla _{X}Z-\nabla _{[X,Y]}Z}$ gives

$$\begin{align}
D\rho-\bar{\delta}\kappa & =\rho ^{2}+\sigma \bar{\sigma}+(\epsilon+\bar{\epsilon})\rho-\bar{\kappa}\tau-\kappa(3\alpha+\bar{\beta}-\pi)+\Phi _{00} \\
D\sigma-\delta \kappa & =(\rho+\bar{\rho})\sigma+(3\epsilon-\bar{\epsilon})\sigma-(\tau-\bar{\pi}+\bar{\alpha}+3\beta)\kappa+\Psi_{0} \\
D \tau-D'\kappa & =(\tau+\bar{\pi})\rho+(\bar{\tau}+\pi)\sigma+(\epsilon-\bar{\epsilon})\tau-(3\gamma+\bar{\gamma})\kappa+\Psi_{1}+\Phi _{01} \\
D\alpha-\bar{\delta}\epsilon & =(\rho+\bar{\epsilon}-2\epsilon)\alpha+\beta \bar{\sigma}-\bar{\beta}\epsilon-\kappa \lambda-\bar{\kappa}\gamma+(\epsilon+\rho)\pi +\Phi _{10} \\
D\beta-\delta \epsilon & =(\alpha+\pi)\sigma+(\bar{\rho}-\bar{\epsilon})\beta-(\mu+\gamma)\kappa-(\bar{\alpha}-\bar{\pi})\epsilon+\Psi_{1} \\
D\gamma-D'\epsilon & =(\tau+\bar{\pi})\alpha+(\bar{\tau}+\pi)\beta-(\epsilon+\bar{\epsilon})\gamma-(\gamma+\bar{\gamma})\epsilon+\tau \pi-\nu \kappa+\Psi_{2}+\Phi _{11}-\Lambda \\
D\lambda-\bar{\delta}\pi & =\rho \lambda+\bar{\sigma}\mu+\pi ^{2}(\alpha-\bar{\beta})\pi-\nu \bar{\kappa}-(3\epsilon-\bar{\epsilon})\lambda+\Phi _{20} \\
D\mu-\delta \pi & =\bar{\rho}\mu+\sigma \lambda+\pi \bar{\pi}-(\epsilon+\bar{\epsilon})\mu-(\bar{\alpha}-\beta)\pi-\nu \kappa+\Psi_{2}+2\Lambda \\
D\nu-D'\pi & =(\pi+\bar{\tau})\mu+(\bar{\pi}+\tau)\lambda+(\gamma-\bar{\gamma})\pi-(3\epsilon+\bar{\epsilon})\nu+\Psi_{3}+\Phi _{21} \\
D'\lambda-\bar{\delta}\nu & =-(\mu+\bar{\mu})\lambda-(3\gamma-\bar{\gamma})\lambda+(3\alpha+\bar{\beta}+\pi-\bar{\tau})\nu-\Psi_{4} \\
\delta \rho-\bar{\delta}\sigma & =\rho(\bar{\alpha}+\beta)-\sigma(3\alpha-\bar{\beta})+(\rho-\bar{\rho})\tau+(\mu-\bar{\mu})\kappa-\Psi_{1}+\Phi _{01} \\
\delta \alpha-\bar{\delta}\beta & =\mu \rho-\lambda \sigma+\alpha \bar{\alpha}+\beta \bar{\beta}-2\alpha \beta+\gamma(\rho-\bar{\rho})+\epsilon(\mu-\bar{\mu})-\Psi_{2}+\Phi _{11}+\Lambda \\
\delta \lambda-\bar{\delta}\mu & =(\rho-\bar{\rho})\nu+(\mu-\bar{\mu})\pi+(\alpha+\bar{\beta}\mu)+(\bar{\alpha}-3\beta)\lambda-\Psi_{3}+\Phi _{21} \\
\delta \nu-D'\mu & =\mu ^{2}+\lambda \bar{\lambda}+(\gamma+\bar{\gamma})\mu-\bar{\nu}\pi+(\tau-3\beta-\bar{\alpha})\nu+\Phi _{22} \\
\delta \gamma-D'\beta & =(\tau-\bar{\alpha}-\beta)\gamma+\mu \tau-\sigma \nu-\epsilon \bar{\nu}-(\gamma-\bar{\gamma}-\mu)\beta+\alpha \bar{\lambda}+\Phi _{12} \\
\delta \tau-D'\sigma & =\mu \sigma+\bar{\lambda}\rho+(\tau+\beta-\bar{\alpha})\tau-(3\gamma-\bar{\gamma})\sigma-\kappa \bar{\nu}+\Phi _{02} \\
D'\rho-\bar{\delta}\tau & =-(\rho \bar{\mu}+\sigma \lambda)+(\bar{\beta}-\alpha-\bar{\tau})\tau+(\gamma+\bar{\gamma})\rho+\nu \kappa-\Psi_{2}-2\Lambda \\
D'\alpha-\bar{\delta}\gamma & =(\rho+\epsilon)\nu-(\tau+\beta)\lambda+(\bar{\gamma}-\bar{\mu})\alpha+(\bar{\beta}-\bar{\tau})\gamma-\Psi_{3}
\end{align}$$

Bianchi identities gives

$$\begin{align}
\bar{\delta}\Psi_{0}-D\Psi_{1} & =(4\alpha-\pi)\Psi_{0}-2(2\rho+\epsilon)\Psi_{1}+3\kappa \Psi_{2} \\
D\Psi_{2}-\bar{\delta}\Psi_{1} & =-\lambda \Psi_{0}+2(\pi-\alpha)\Psi_{1}+3\rho \Psi_{2}-2\kappa \Psi_{3} \\
D\Psi_{3}-\bar{\delta}\Psi_{2} & =-\kappa \Psi_{4}+2(\rho-\epsilon)\Psi_{3}+3\pi \Psi_{2}-2\lambda \Psi_{1} \\
\bar{\delta}\Psi_{3}-D\Psi_{4} & =(4\epsilon-\rho)\Psi_{4}-2(2\pi+\alpha)\Psi_{3}+3\lambda \Psi_{2} \\
D'\Psi_{0}-\delta \Psi_{1} & =(4\gamma-\mu)\Psi_{0}-2(2\tau+\beta)\Psi_{1}+3\sigma \Psi_{2} \\
D'\Psi_{1}-\delta \Psi_{2} & =\nu \Psi_{0}+2(\gamma-\mu)\Psi_{1}-3\tau \Psi_{2}+2\sigma \Psi_{3} \\
D'\Psi_{2}-\delta \Psi_{3} & =\sigma \Psi_{4}+2(\beta-\tau)\Psi_{3}-3\mu \Psi_{2}+2\nu \Psi_{1} \\
D'\Psi_{3}-\delta \Psi_{4} & =(4\beta-\tau)\Psi_{4}-2(2\mu+\gamma)\Psi_{3}+3\nu \Psi_{2}
\end{align}$$

in vacuum, the Einstein equations imply

$$\begin{align}
\Phi _{ij} & =0.
\end{align}$$

And our choice of affine parameterization and parallel transport gives

$$\begin{align}
\mathcal{N}: &  & \kappa=\epsilon=\pi & =0, & \rho & =\bar{\rho} \\
\mathcal{N'}: & &  \nu=\gamma=\tau & =0, & \mu & =\bar{\mu}
\end{align}$$

---

In the presence of matter fields, the Einstein equations coupled to the corresponding matter stress. In particular, we consider a charged complex scalar $\displaystyle{\varphi}$ interacting with a Maxwell field $\displaystyle{F}$. In the Newman-Penrose formalism, we introduce the NP components of fields and derivatives

$$\begin{align}
\Phi _{0} & =F_{\ell m}, & \Phi _{1} & =\dfrac{1}{2}(F_{\ell n}+F_{\bar{m}m}), & \Phi _{2} & =F_{\bar{m}n} \\
\varphi _{0} & =D\varphi, & \varphi _{2} & =D'\varphi, & \varphi _{1} & =\delta \varphi, & \bar{\varphi}_{1} & =\bar{\delta}\varphi \\
A_{0} & =A_{\ell}, & A_{1} & =A_{m}, & A_{2} & =A_{n}, & \bar{A}_{1}  & =A_{\bar{m}}
\end{align}$$

and the gauge-covariant derivatives

$$\begin{align}
\mathscr{D}_{\ell} & =D-ieA_{0} \\
\mathscr{D}_{n} & =D'-ieA_{2} \\
\mathscr{D}_{m} & =\delta-ieA_{1} \\
\mathscr{D}_{\bar{m}} & =\bar{\delta}-ie\bar{A}_{1}
\end{align}$$

and $\displaystyle{\mathscr{\bar{D}}_{X}=\nabla _{X}+ieA_{X}}$. For simplicity we define the current

$$\begin{align}
j_{X} & =ie(\bar{\varphi}\mathscr{D}_{X}\varphi-\varphi \mathscr{\bar{D}}_{X}\bar{\varphi})
\end{align}$$

the Maxwell equations take the form

$$\begin{align}
D\Phi _{1}-\bar{\delta}\Phi _{0} & =(\pi-2\alpha)\Phi _{0}+2\rho \Phi _{1}-\kappa \Phi _{2}+\dfrac{1}{2}j_{\ell} \\
D\Phi _{2}-\bar{\delta}\Phi _{1} & =-\lambda \Phi _{0}+2\pi \Phi _{1}+(\rho-2\epsilon)\Phi _{2}+\dfrac{1}{2}j_{\bar{m}} \\
D'\Phi _{0}-\delta \Phi _{1} & =(2\gamma-\mu)\Phi _{0}-2\tau \Phi _{1}+\sigma \Phi _{2}-\dfrac{1}{2}j_{m} \\
D'\Phi _{1}-\delta \Phi _{2} & =\nu \Phi _{0}-2\mu \Phi _{1}+(2\beta-\tau)\Phi _{2}-\dfrac{1}{2}j_{n}
\end{align}$$

and the eom for scalar

$$\begin{align}
0 & =-(\mathscr{D}_{\ell}\mathscr{D}_{n}+\mathscr{D}_{n}\mathscr{D}_{\ell})\varphi+(\mathscr{D}_{m}\mathscr{D}_{\bar{m}}+\mathscr{D}_{\bar{m}}\mathscr{D}_{m})\varphi \\
 & +(\gamma+\bar{\gamma}-\mu-\bar{\mu})\mathscr{D}_{\ell}\varphi+(\rho+\bar{\rho}-\epsilon-\bar{\epsilon})\mathscr{D}_{n}\varphi \\
 & +(\pi+\bar{\beta}-\alpha-\bar{\tau})\mathscr{D}_{m}\varphi+(\beta+\bar{\pi}-\tau-\bar{\alpha})\mathscr{D}_{\bar{m}}\varphi
\end{align}$$

---

We return to the vacuum equations and retain the parallel-transport conditions

$$\begin{aligned}
\nabla_\ell\ell=\nabla_\ell m&=0 &&\text{on }\mathcal N,\\
\nabla_n n=\nabla_n m&=0 &&\text{on }\mathcal N'.
\end{aligned}$$

Metric compatibility then determines the transport of the remaining tetrad vectors. In particular, the whole tetrad is parallel along the generators of each initial hypersurface. Thus

$$\begin{aligned}
\kappa=\epsilon=\pi&=0 &&\text{on }\mathcal N,\\
\nu=\gamma=\tau&=0 &&\text{on }\mathcal N'.
\end{aligned}$$

The reality conditions are $\rho=\bar\rho$ on $\mathcal N$ and $\mu=\bar\mu$ on $\mathcal N'$. On the opposite initial hypersurface, each coefficient is determined by its complex transport equation.

To specify the transverse frame derivatives as well, extend the same $\ell$-parallel prescription into a neighbourhood: start with the tetrad on $\mathcal N'$, follow the affinely parametrized $\ell$-geodesics issuing from it, and parallel transport the tetrad along them. This gives

$$\begin{align}
\kappa=\epsilon=\pi=0
\end{align}$$

throughout that neighbourhood. Its restriction to $\mathcal N$ is the original transport choice. This extension also fixes transverse derivatives such as $D'\epsilon$ and $D'\pi$ when they occur in the initial equations.

### Data at the Intersection

Fix the initial null normalization and a local dyad patch on $S$. The freely prescribed vacuum data are

$$\begin{aligned}
&\Psi_0\quad\text{on }\mathcal N, \qquad \Psi_4\quad\text{on }\mathcal N',\\
&\left.m,\ \rho,\ \sigma,\ \mu,\ \lambda,\ \alpha+\bar\beta\right|_S.
\end{aligned}$$

Here $\rho|_S$ and $\mu|_S$ are real, while $\sigma|_S$, $\lambda|_S$, and $(\alpha+\bar\beta)|_S$ are complex. All data are smooth, and the real and imaginary parts of $m|_S$ are linearly independent. On overlapping dyad patches, the data are related by the spin transformations of their defining tetrad contractions.

There is a direct way to recover $\alpha$ and $\beta$. The dyad determines the positive metric on $S$ through

$$\begin{align}
q^{-1}=m\otimes\bar m+\bar m\otimes m.
\end{align}$$

At $S$, the commutator equation reduces to

$$\begin{align}
[\bar m,m] =(\alpha-\bar\beta)m-(\bar\alpha-\beta)\bar m.
\end{align}$$

Consequently,

$$\begin{align}
\alpha-\bar\beta =\langle\bar m,[\bar m,m]\rangle.
\end{align}$$

The right-hand side is calculated by differentiating the given vector fields within $S$ and using the metric determined by them. Together with the prescribed sum $\alpha+\bar\beta$, it gives

$$\begin{aligned}
\alpha\big|_S &=\frac12\left[ (\alpha+\bar\beta) +\langle\bar m,[\bar m,m]\rangle \right]_S,\\
\bar\beta\big|_S &=\frac12\left[ (\alpha+\bar\beta) -\langle\bar m,[\bar m,m]\rangle \right]_S.
\end{aligned}$$

This calculation supplies the two combinations of connection coefficients that enter the angular NP equations. In particular, the prescribed sum has the explicit interpretation

$$\begin{align}
\alpha+\bar\beta =-\langle n,\nabla_{\bar m}\ell\rangle.
\end{align}$$

At the same intersection, the three angular Ricci identities give

$$\begin{aligned}
\Psi_1 &=\rho(\bar\alpha+\beta) -\sigma(3\alpha-\bar\beta) -\delta\rho+\bar\delta\sigma,\\
\Psi_2 &=\rho\mu-\sigma\lambda +\alpha\bar\alpha+\beta\bar\beta-2\alpha\beta -\delta\alpha+\bar\delta\beta,\\
\Psi_3 &=\mu(\alpha+\bar\beta) +\lambda(\bar\alpha-3\beta) -\delta\lambda+\bar\delta\mu.
\end{aligned}$$

Every quantity on the right is now determined on $S$. The values of $\Psi_0$ and $\Psi_4$ there are the restrictions of the prescribed radiation fields. All spin coefficients and Weyl scalars therefore have common initial values at the intersection.

### Reconstruction on $\mathcal N'$

Choose an affine parameter $u$ along $n$, with $u=0$ on $S$, and carry the initial generator labels along $n$. Thus $D'=\partial_u$ on scalar functions on $\mathcal N'$. The given field is $\Psi_4(u,\cdot)$.

First solve the optical equations

$$\begin{aligned}
D'\mu&=-\mu^2-|\lambda|^2,\\
D'\lambda&=-2\mu\lambda-\Psi_4.
\end{aligned}$$

These are a closed nonlinear ODE system on each generator, with initial values $\mu|_S$ and $\lambda|_S$. The first equation preserves the reality of $\mu$.

Next recover the dyad, $\alpha,\beta$, and $\Psi_3$ together:

$$\begin{aligned}
[n,m] &=(\bar\alpha+\beta)n-\mu m-\bar\lambda\bar m,\\
D'\alpha&=-\mu\alpha-\lambda\beta-\Psi_3,\\
D'\beta&=-\mu\beta-\bar\lambda\alpha,\\
D'\Psi_3&=\delta\Psi_4+4\beta\Psi_4-4\mu\Psi_3.
\end{aligned}$$

The frame equation follows directly from the definitions:

$$\begin{aligned}
\nabla_n m&=0,\\
\nabla_m n&=-(\bar\alpha+\beta)n+\mu m+\bar\lambda\bar m,
\end{aligned}$$

and hence $[n,m]=\nabla_n m-\nabla_m n$.

Since $n=\partial_u$, the Lie bracket in the first equation differentiates the coordinate components of $m$ along a generator. The term $\delta\Psi_4=m(\Psi_4)$ is linear in those components: the coordinate derivatives of the prescribed function $\Psi_4$ are already known. This block, together with its complex conjugate, is therefore a linear ODE system with coefficients determined by the optical solution and the prescribed radiation. It determines $m,\alpha,\beta,\Psi_3$ simultaneously.

The longitudinal term $(\bar\alpha+\beta)n$ in $[n,m]$ is part of this reconstruction. It allows $m$ to remain parallel as a spacetime vector while remaining tangent to $\mathcal N'$. Accordingly, $\delta$ acts as a derivative within $\mathcal N'$, including its component along the generators.

The next block is

$$\begin{aligned}
D'\sigma&=-\mu\sigma-\bar\lambda\rho,\\
D'\rho&=-\mu\rho-\lambda\sigma-\Psi_2,\\
D'\Psi_2&=\delta\Psi_3+\sigma\Psi_4 +2\beta\Psi_3-3\mu\Psi_2.
\end{aligned}$$

Here $m$ and $\Psi_3$ have already been reconstructed, so $\delta\Psi_3$ is known. This is a linear system for $\sigma,\rho,\Psi_2$ along each generator. Smooth dependence of the preceding ODE solutions on the generator labels supplies the angular derivatives entering its source.

Finally,

$$\begin{aligned}
D'\Psi_1&=\delta\Psi_2-2\mu\Psi_1+2\sigma\Psi_3,\\
D'\Psi_0&=\delta\Psi_1-\mu\Psi_0 -2\beta\Psi_1+3\sigma\Psi_2.
\end{aligned}$$

The first equation determines $\Psi_1$; its derivatives then supply the source for the second. For example, along a fixed generator,

$$\begin{aligned}
\Psi_1(u) ={}&e^{-2\int_0^u\mu(s)\,ds} \left[ \Psi_1(0) +\int_0^u e^{2\int_0^s\mu(t)\,dt} \bigl(\delta\Psi_2+2\sigma\Psi_3\bigr)(s)\,ds \right].
\end{aligned}$$

All integration values are the corner values found above. The remaining spin coefficients vanish on $\mathcal N'$ by the frame prescription. Also $[n,\ell]=0$ there, since both $\nabla_n\ell$ and $\nabla_\ell n$ vanish. Thus the transverse frame vector is fixed consistently with the same extension prescription.

### Reconstruction on $\mathcal N$

Let $v$ be the affine parameter along $\ell$, with $v=0$ on $S$. The prescribed field is now $\Psi_0(v,\cdot)$. The optical equations are

$$\begin{aligned}
D\rho&=\rho^2+|\sigma|^2,\\
D\sigma&=2\rho\sigma+\Psi_0.
\end{aligned}$$

The coupled frame and connection block is

$$\begin{aligned}
[\ell,m]&=-(\bar\alpha+\beta)\ell+\rho m+\sigma\bar m,\\
D\alpha&=\rho\alpha+\bar\sigma\beta,\\
D\beta&=\sigma\alpha+\rho\beta+\Psi_1,\\
D\Psi_1&=\bar\delta\Psi_0-4\alpha\Psi_0+4\rho\Psi_1.
\end{aligned}$$

As on $\mathcal N'$, these equations form a linear system for the coordinate components of $m$ and the listed scalar fields once the optical solution is known. The dyad remains tangent to $\mathcal N$, with its longitudinal component determined by the first equation.

Next solve

$$\begin{aligned}
D\lambda&=\rho\lambda+\bar\sigma\mu,\\
D\mu&=\rho\mu+\sigma\lambda+\Psi_2,\\
D\Psi_2&=\bar\delta\Psi_1-\lambda\Psi_0 -2\alpha\Psi_1+3\rho\Psi_2,
\end{aligned}$$

followed by

$$\begin{aligned}
D\Psi_3&=\bar\delta\Psi_2+2\rho\Psi_3-2\lambda\Psi_1,\\
D\Psi_4&=\bar\delta\Psi_3+\rho\Psi_4 +2\alpha\Psi_3-3\lambda\Psi_2.
\end{aligned}$$

The coefficients involving differentiation along the transverse vector $n$ are fixed by the neighbourhood extension of the frame. Because $\kappa,\epsilon,\pi$ vanish throughout that extension, their $D'$ derivatives vanish as well. The remaining Ricci identities consequently give

$$\begin{aligned}
D\tau&=\rho\tau+\sigma\bar\tau+\Psi_1,\\
D\gamma&=\alpha\tau+\beta\bar\tau+\Psi_2,\\
D\nu&=\mu\bar\tau+\lambda\tau+\Psi_3,
\end{aligned}$$

with $\tau=\gamma=\nu=0$ at $S$. These equations determine $\tau$, then $\gamma$ and $\nu$. The transverse frame vector is recovered through

$$\begin{align}
[\ell,n]=-(\gamma+\bar\gamma)\ell +\bar\tau m+\tau\bar m.
\end{align}$$

Together with the prescribed generator $\ell$, this determines the tetrad on $\mathcal N$. The metric is then recovered from the tetrad formula already given above.

### Propagation of the Angular Constraints

The transport equations were obtained from curvature components containing the generator. The angular equations imposed at $S$ must also hold on the reconstructed hypersurfaces. Their propagation follows from the two Cartan identities; it can be displayed using the torsion $T$ and curvature $R$ already defined above.

During this verification, regard $R$ as the curvature computed from the reconstructed connection coefficients, and regard $C$ as the algebraic Weyl tensor specified by the reconstructed $\Psi_i$. The reconstruction on $\mathcal N'$ imposes

$$\begin{aligned}
T(n,m)=T(n,\bar m)&=0,\\
(R-C)(n,m)=(R-C)(n,\bar m)&=0.
\end{aligned}$$

Here a curvature tensor with two vector arguments is regarded as an endomorphism of the tetrad space. The remaining tangential torsion and curvature are $T(m,\bar m)$ and $(R-C)(m,\bar m)$.

The first Cartan identity, together with the algebraic Bianchi identity of $C$, gives

$$\begin{align}
D'\bigl(T(m,\bar m)\bigr) =-2\mu\,T(m,\bar m)+(R-C)(m,\bar m)n.
\end{align}$$

The second Cartan identity and the tangential Weyl Bianchi equations give

$$\begin{align}
D'\bigl((R-C)(m,\bar m)\bigr) =-2\mu\,(R-C)(m,\bar m) -C\bigl(T(m,\bar m),n\bigr).
\end{align}$$

These are derivatives of the displayed vector and endomorphism. The tetrad is parallel along $n$, so their component derivatives are ordinary $u$ derivatives. The factor $-2\mu$ comes from the two transverse terms in $[n,m]$ and $[n,\bar m]$. The last term in the curvature equation accounts for the difference between the actual bracket $[m,\bar m]$ and the bracket specified by the connection coefficients.

This is a homogeneous linear system for the angular torsion and curvature discrepancies. Both vanish at $S$: the dyad commutator fixes the first, and the three corner Weyl equations fix the second. ODE uniqueness therefore gives

$$\begin{align}
T(m,\bar m)=0, \qquad (R-C)(m,\bar m)=0
\end{align}$$

throughout the reconstructed part of $\mathcal N'$. On $\mathcal N$, the same calculation has generator $\ell$ and coefficient $2\rho$ in place of $-2\mu$, and proves the corresponding statement there.

Thus the reconstructed connection satisfies the tangential torsion-free conditions and all tangential vacuum curvature equations. The two hypersurfaces share the same corner fields. Higher tangential derivatives follow by differentiating the displayed equations, while the equations with a transverse derivative supply the compatible transverse jets required in the characteristic existence problem.

For smooth reduced data, each optical ODE has a local solution. Every subsequent block is linear in its unknowns, with smooth coefficients and sources supplied by preceding blocks. This proves local reconstruction and uniqueness in the chosen frame and generator parametrizations. The construction continues along a prescribed segment as long as the optical solution remains regular and the induced geometry stays nondegenerate. It constructs full characteristic initial data; the spacetime development is the next step.

## Local and Semi-Local Existence

### Development Near $S$

For smooth compatible characteristic data on two transversely intersecting null hypersurfaces, Rendall’s theorem supplies a smooth vacuum development in a sufficiently small future neighbourhood of their intersection. The geometric solution is unique up to diffeomorphisms preserving the identification of the initial data. The tetrad on that solution is fixed by the parallel-transport prescription above. [ArXiv](https://arxiv.org/html/1107.0898v1)

For analytic data, the field equations recursively determine transverse derivatives from the characteristic traces. At $S$, repeated differentiation produces the mixed derivatives needed for a local power-series solution. Friedrich’s characteristic reduction provides the convergence argument in the analytic setting. For smooth data, a hyperbolic existence theorem replaces the power-series argument. [ArXiv](https://arxiv.org/pdf/1911.00047)

The reduction retains a set of evolution equations and treats the remaining Einstein equations as constraints. The Bianchi identities give homogeneous equations for the constraint discrepancies. Their vanishing on the initial hypersurfaces then propagates into the development. This is the interior counterpart of the constraint-propagation calculation above. [数字对象标识符](https://doi.org/10.1007/s10714-020-02747-2?utm_source=chatgpt.com)

### A Neighbourhood of an Entire Initial Segment

Suppose the reconstructed data are regular on a fixed segment of $\mathcal N$ and on a transverse segment of $\mathcal N'$. Describe the development with double-null labels $u,v$, with the initial hypersurfaces at $u=0$ and $v=0$. These labels describe the existence region; the transported tetrad continues to satisfy the frame conditions fixed above.

The improved local theorem gives a width $\varepsilon>0$ such that the solution exists for

$$\begin{align}
0\leq u\leq\varepsilon, \qquad 0\leq v\leq I,
\end{align}$$

where the initial length $I$ is fixed in advance. Interchanging the roles of the initial hypersurfaces gives the other thin rectangle. The width is controlled by initial norms and by nondegeneracy of the initial cut geometry. This is the sense in which the result is semi-local: one direction covers the prescribed initial segment, and the transverse direction is short. Luk proves this using the null structure of the vacuum equations; Hilditch, Valiente Kroon and Zhao give an NP treatment in their chosen frame. [ArXiv](https://arxiv.org/html/1107.0898v1)

### Transport and Curvature Estimates

The short direction supplies small factors in integrated transport equations. For example, the already derived equation for $\lambda$ gives, on an affine generator of $\mathcal N'$,

$$\begin{align}
\lambda(u)-\lambda(0) =-\int_0^u\bigl(2\mu\lambda+\Psi_4\bigr)(s)\,ds.
\end{align}$$

Hence

$$\begin{aligned}
|\lambda(u)-\lambda(0)| \leq{}& 2u\,\|\mu\|_{L^\infty(0,u)} \|\lambda\|_{L^\infty(0,u)} +u^{1/2}\|\Psi_4\|_{L^2(0,u)}.
\end{aligned}$$

This exhibits both the direct smallness of an integrated quadratic term and the square-root gain accompanying an $L^2$ curvature bound.

Curvature estimates come from pairs of Bianchi equations. In the $\ell$-parallel extension used here, one such pair is

$$\begin{aligned}
D\Psi_2-\bar\delta\Psi_1 &=-\lambda\Psi_0-2\alpha\Psi_1+3\rho\Psi_2,\\
D'\Psi_1-\delta\Psi_2 &=\nu\Psi_0+2(\gamma-\mu)\Psi_1 -3\tau\Psi_2+2\sigma\Psi_3.
\end{aligned}$$

Multiply these equations by $\bar\Psi_2$ and $\bar\Psi_1$, respectively, add the complex conjugates, and use the frame divergences obtained from the connection table. The result is the exact identity

$$\begin{aligned}
&\nabla_a\left( |\Psi_2|^2\ell^a+|\Psi_1|^2n^a -\Psi_2\bar\Psi_1m^a -\bar\Psi_2\Psi_1\bar m^a \right)\\
&\quad=2\operatorname{Re}\Bigl[ 2\rho|\Psi_2|^2+(\gamma-\mu)|\Psi_1|^2 -(\bar\alpha+\beta+2\tau)\Psi_2\bar\Psi_1\\
&\hspace{41mm} -\lambda\Psi_0\bar\Psi_2 +\nu\Psi_0\bar\Psi_1 +2\sigma\Psi_3\bar\Psi_1 \Bigr].
\end{aligned}$$

The vector inside the divergence is future-directed null wherever it is nonzero: its squared norm is

$$\begin{align}
-2|\Psi_1|^2|\Psi_2|^2 +2|\Psi_1\Psi_2|^2=0.
\end{align}$$

It therefore gives nonnegative future fluxes across the null faces, with the usual outward-orientation signs in Stokes’ theorem. Every bulk term on the right is a spin coefficient times two Weyl components. The other neighbouring pairs of Bianchi equations provide the remaining curvature fluxes.

To close the nonlinear estimates, commute the equations with tangential derivatives, control the induced geometry and the Sobolev constants of the cuts, and use the transport estimates to bound the connection coefficients in the curvature identities. The long direction requires the specific null structure of the equations; the short direction supplies the factors needed to improve provisional bounds. The improved bounds and the local theorem then extend the solution through the prescribed thin region. The cited semi-local existence theorems establish this full high-order closure. [ArXiv](https://arxiv.org/html/1107.0898v1)

## Applications

### Formation of Trapped Surfaces

A closed spacelike two-surface is future trapped when both future null expansions are negative. The vacuum optical equation gives the focusing mechanism directly:

$$\begin{align}
D\theta=-\frac12\theta^2-2|\sigma|^2.
\end{align}$$

Along an affine segment that remains regular,

$$\begin{align}
\theta(v) =\theta(0) -\int_0^v\left( \frac12\theta(s)^2+2|\sigma(s)|^2 \right)ds.
\end{align}$$

In particular, a sufficient condition for the expansion along that segment to become negative is

$$\begin{align}
2\int_0^v|\sigma(s)|^2\,ds>\theta(0).
\end{align}$$

The corresponding shear is determined by

$$\begin{align}
D\sigma=2\rho\sigma+\Psi_0,
\end{align}$$

so the freely prescribed radiation influences focusing through an explicitly reconstructed quantity. Formation of a trapped surface requires this control across a whole closed cut, together with control of the expansion associated with its other future null normal and existence of the spacetime up to that cut.

Christodoulou’s short-pulse construction achieves this in vacuum, with general nonsymmetric gravitational radiation. The characteristic setting permits radiation to be concentrated on a short initial segment, while the nonlinear estimates control its propagation to a surface on which both expansions have the required sign. This is an application of the initial-data freedom together with quantitative evolution estimates. [ArXiv](https://arxiv.org/abs/0805.3880)

### Characteristic Gluing

In characteristic gluing, the geometry is prescribed near two end cuts of a null segment. The radiation between the cuts is selected so that the transport solution reaches the required final data. In the present variables, changing the freely chosen Weyl component changes the optical solution, then the remaining connection coefficients and Weyl components. Gluing asks for simultaneous matching of those terminal values and the transverse derivatives required by the chosen regularity.

For the vacuum equations, Aretakis, Czimek and Rodnianski identify a ten-dimensional obstruction space in their perturbative near-Minkowski characteristic gluing problem. The associated conserved quantities are related to energy, momentum, angular momentum and centre of mass. Their construction matches these quantities by selecting an appropriate Kerr target. [ArXiv](https://arxiv.org/abs/2107.02441)

The lecture also discussed Kehle and Unger’s nonlinear application to the Einstein–Maxwell–charged-scalar system. They choose scalar pulses in a characteristic gluing region and obtain regular one-ended asymptotically flat collapse data whose event horizon becomes exactly extremal Reissner–Nordström after a finite advanced time; an earlier portion of the apparent horizon is Schwarzschild. Their construction achieves any prescribed finite differentiability order and provides a counterexample to the corresponding finite-time unattainability formulation of the third law. This example extends the gluing mechanism to a matter-coupled system. [ArXiv](https://arxiv.org/abs/2211.15742)

## Further Directions

For pure gravity, one extension is to a complete initial null hypersurface. Li and Zhu prove that suitable decay along a complete initial cone gives a uniform neighbourhood containing a segment of future null infinity. The additional input is decay sufficient to control the transport and curvature estimates along an unbounded generator interval. [ArXiv](https://arxiv.org/abs/1406.0048)

For a negative cosmological constant, another extension concerns a characteristic hypersurface that reaches the timelike conformal boundary of an asymptotically AdS region. The initial radiation, the boundary prescription and their compatibility at the intersection must then be treated together. For an AdS–Rindler application, the relevant next task is to formulate this characteristic initial-boundary problem with the actual boundary geometry and asymptotic conditions.

Finally, the reconstructed vacuum fields provide a concrete parametrization for a covariant-phase-space calculation. Varying the reduced NP data and differentiating the reconstruction equations gives the associated linearized fields. One can then evaluate the gravitational symplectic current on the two null hypersurfaces, including the common corner and any lateral boundary contributions required by the action. In the Harlow–Wu framework, the action and allowed boundary variations determine these contributions. Establishing the resulting symplectic pairing and its degeneracies is a further calculation on the characteristic solution space.
