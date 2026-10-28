# Scalar Spectra from Old-Fashioned Perturbation Theory

We compute the connected tree-level order-$G$ two-scalar energy shifts in global AdS$_3$. The free states contain scalar quanta and physical boundary gravitons. The calculation starts from their interaction Hamiltonian: a cubic vertex changes the intermediate Fock state, while the quartic vertices contribute at first order. We evaluate the resulting energy-denominator sums and extract their connected four-scalar part. The one-particle correction and mass renormalization are collected in Appendix H.

AdS symmetry simplifies two parts of this calculation. It organizes the degenerate perturbation matrix into primary representations, and it relates matrix elements and regulated sums at different free levels. The dynamical input remains the contact interaction and cubic matrix elements derived below. We first display the OFPT sums to which these identities will be applied.

## Definition of the Theory

Set the AdS radius to one, use signature $(-,+,+)$, and write $\kappa^2=16\pi G$. The regulated action is

$$\begin{align}
S_R={}&\frac{1}{\kappa^2}\int_{M_R}\mathrm{d}^3x\sqrt{-g}(R+2) +\frac{2}{\kappa^2}\int_{\Gamma_R}\mathrm{d}^2x\sqrt{-\gamma}(K-1)\\
&-\frac12\int_{M_R}\mathrm{d}^3x\sqrt{-g} \left(\nabla_\mu\phi\nabla^\mu\phi+\Delta_0(\Delta_0-2)\phi^2\right).
\tag{1}
\end{align}$$

The reference metric is

$$\begin{align}
\mathrm{d}s_0^2=-f\,\mathrm{d}t^2+\frac{\mathrm{d}r^2}{f} +r^2\mathrm{d}\theta^2, \qquad f=1+r^2, \qquad\theta\sim\theta+2\pi. \tag{2}
\end{align}$$

We impose regularity at $r=0$, Brown–Henneaux metric falloffs, and the source-free fast scalar falloff $\phi=O(r^{-\Delta_0})$, with $\Delta_0>1$.

The normalized free scalar and (TT) boundary graviton ($\displaystyle{g=g^{(0)}+\kappa h+\mathcal{O}(\kappa ^{2})}$ with $\displaystyle{\kappa ^{2}=16\pi G}$) modes are given by

$$\begin{align}
\phi ^{(0)} & =\sum _{n=0}^{\infty}\sum _{j=-\infty}^{\infty}(b_{nj}u_{nj}+b^{\dagger}_{nj}u^{*}_{nj}) \\
u_{nj}(x) & =\sqrt{ \dfrac{1}{2\pi} \dfrac{(\Delta _{0}+n)_{j}}{(1+n)_{j}} }e^{-i\omega _{nj}t+ij\theta} r^{j}(1+r^{2})^{-(\Delta _{0}+j)/2}P_{n}^{(\Delta _{0}-1,j)}\left(\dfrac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{nj} & =\Delta _{0}+2n+|j| \\
h_{\mu \nu} & =\sum ^{\infty}_{m=2}\sum _{\sigma=\pm 1}(a_{m\sigma}h_{m\sigma,\mu \nu}+a^{\dagger}_{m\sigma}h^{*}_{m\sigma,\mu \nu}) \\
h_{m\sigma,\mu \nu} & =\sqrt{ \dfrac{m(m^{2}-1)}{8\pi} }e^{-imt+i\sigma m\theta}r^{m}(1+r^{2})^{-m/2}v_{\mu}^{\sigma}v_{\nu}^{\sigma} \\
v^{\sigma}_{\mu} & =\left(1, \dfrac{i}{r(1+r^{2})},-\sigma\right)
\end{align}$$

the free fock space is constructed by acting with the creation operators $\displaystyle{b^{\dagger}_{nj}}$ and $\displaystyle{a_{m\sigma}^{\dagger}}$ on the vacuum $\displaystyle{\ket{0}}$, with $b_{nj}$ and $a_{m\sigma}$ annihilating it.

With the vacuum energy removed,

$$\begin{align}
H_{0} & =\sum _{n=0}^{\infty}\sum _{j=-\infty}^{\infty}\omega _{nj}b_{nj}^{\dagger}b_{nj}+\sum _{m\geqslant 2}\sum _{\sigma=\pm 1}ma^{\dagger}_{m\sigma}a_{m\sigma}
\end{align}$$

## Interaction Hamiltonian

The Hamiltonian is the CPS Noether charge for $\xi=\partial_t$. The result is

$$\begin{align}
H_{\xi} & =-\dfrac{2}{\kappa ^{2}}\int _{\partial \Sigma}\mathrm{d}\theta \sqrt{ h }\tau ^{a}\xi ^{b}(K_{ab}-K\gamma _{ab}+\gamma _{ab})
\end{align}$$

and we will subtract the vacuum contribution.

Expanding this charge in canonically normalized physical modes gives

$$\begin{align}
H & =H_0+\kappa V_1+\kappa^2V_2+\mathcal{O}(\kappa ^{3})
\end{align}$$

here $\displaystyle{V_{1}}$ and $\displaystyle{V_{2}}$ denote the cubic and quartic interactions, respectively. We have

$$\begin{align}
V_{1} & =V_{g\phi ^{2}}+V_{g^{3}}, & V_{2} & =H_{4}^{\mathrm{con}}+V_{g^{2}\phi ^{2}}+V_{g^{4}}
\end{align}$$

For the connected four-scalar tree-level contribution at order $G$, with no external gravitons, only $V_{g\phi^2}$ and $H_4^{\mathrm{con}}$ are needed. In the maximal-slicing canonical chart used below, their expressions are

$$\begin{align}
V_{g\phi ^{2}} & =\sum _{m\geqslant 2}\sum _{\sigma=\pm 1}(a^{\dagger}_{m\sigma}F_{m\sigma}+F^{\dagger}_{m\sigma}a_{m\sigma}) \\
F_{m\sigma} & =mD_{m\sigma}+[H_{\phi},D_{m\sigma}], & H_{\phi} & =\sum _{n=0}^{\infty}\sum _{j=-\infty}^{\infty}\omega _{nj}b^{\dagger}_{nj}b_{nj} \\
D_{m\sigma} & =\dfrac{1}{\sqrt{ 8\pi m(m^{2}-1) }}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }p_{m}(y)e^{-i\sigma m\theta}:\rho: \\
p_{m}(y) & =z^{m}(y+m), & y & =\sqrt{ 1+r^{2} }, & z & =\dfrac{r}{1+y} \\
H_{4}^{\mathrm{con}} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }y[t^{ij}t_{ij}-u\chi ^{2}+\Delta _{0}(\Delta _{0}-2)u\phi ^{2}-4u^{2}]
\end{align}$$

The background spatial metric and scalar variables are

$$\begin{align}
\sigma ^{(0)}_{ij}\mathrm{d}x^{i}\mathrm{d}x^{j} & =\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\theta ^{2}, \\
\pi _{\phi} & =\dfrac{\sqrt{ \sigma }}{N}(\partial _{t}\phi-N^{i}\partial _{i}\phi), & \chi & =\dfrac{\pi _{\phi}}{\sqrt{ \sigma ^{(0)} }} \\
\rho & =\dfrac{1}{2}[\chi ^{2}+\sigma ^{(0)ij}\partial _{i}\phi \partial _{j}\phi+\Delta _{0}(\Delta _{0}-2)\phi ^{2}]
\end{align}$$

The colons denote normal ordering in the free scalar vacuum. The quantities $u$ and $t^{ij}$ are the metric and gravitational-momentum responses sourced by the scalar Cauchy data, determined by

$$\begin{align}
(-\Delta ^{(0)}+2)u & =\dfrac{\rho}{2}, & \Delta ^{(0)} & =D^{(0)}_{i}D^{(0)i} \\
D^{(0)}_{j}t^{j}_{~i} & =\dfrac{1}{2}\chi \partial _{i}\phi & t^{ij} & =t^{ji},\quad \sigma ^{(0)}_{ij}t^{ij}=0
\end{align}$$

the derivative $\displaystyle{D^{(0)}}$ and all spatial index contractions use $\displaystyle{\sigma ^{(0)}}$.

## 2-Particle Correction

We now evaluate the connected two-particle tree-level correction. We express the result in terms of the physical 1-particle dimension $\displaystyle{\Delta}$ and compute the connected 2-particle energy shift, with the vacuum and 1-particle contributions subtracted.

Let $\displaystyle{P=P_{E,J}}$ project onto the complete free eigenspace with energy $\displaystyle{E}$ and angular momentum $\displaystyle{J}$, and let $\displaystyle{Q=1-P}$. The order-$\displaystyle{\kappa ^{2}}$ correction matrix, with the overall factor $\displaystyle{\kappa ^{2}}$ suppressed, is

$$\begin{align}
W_{E,J} & =PV_{2}P+PV_{1}Q(E-QH_{0}Q)^{-1}QV_{1}P \\
\implies(W_{E,J})_{AB} & =\braket{ A|V_{2}|B }+\sum _{\alpha \in Q} \dfrac{\braket{ A|V_{1}|\alpha } \braket{ \alpha|V_{1}|B }}{E-E_{\alpha}}
\end{align}$$

Only the connected four-scalar part of this matrix is retained below.

There are three types of intermediate sectors to consider:

![[Attachments/ofpt_channels.pdf]]

We first consider the three diagrams that exchanges a graviton between the two scalars, which is the second part of the correction:

$$\begin{align}
(W^{\mathrm{ex}}_{EJ})_{AB} & =\sum _{m\geqslant 2}\sum _{\sigma=\pm1}\sum'_{\beta} \dfrac{\braket{ A|F^{\dagger}_{m\sigma}|\beta } \braket{ \beta|F_{m\sigma}|B } }{E-\epsilon _{\beta}-m}
\end{align}$$

where $\displaystyle{\beta}$ runs over normalized zero, two and four scalar states with $\displaystyle{H_{\phi}\ket{\beta}=\epsilon _{\beta}\ket{\beta}}$.

$$\begin{align}
\braket{ \beta|F_{m\sigma}|A }  & =(m+\epsilon _{\beta}-E)\braket{ \beta|D_{m\sigma}|A }  \\
\implies (W^{\mathrm{ex}}_{E,J})_{AB} & =-\sum_{m\geqslant 2}\sum _{\sigma=\pm1}\sum'_{\beta}(m+\epsilon _{\beta}-E)\braket{ A|D^{\dagger}_{m\sigma}|\beta } \braket{ \beta|D_{m\sigma}|B } \\
 & =-\dfrac{1}{2}\sum _{m\geqslant 2}\sum _{\sigma=\pm 1}\braket{ A|D^{\dagger}_{m\sigma}F_{m\sigma}+F^{\dagger}_{m\sigma}D_{m\sigma}|B } \\
\implies W^{\mathrm{ex}}_{E,J} & =-\dfrac{1}{2}\sum _{m\geqslant 2}\sum _{\sigma=\pm 1}D^{\dagger}_{m\sigma}F_{m\sigma}+F^{\dagger}_{m\sigma}D_{m\sigma} \\
 & =-\sum _{m\geqslant 2}m\left\{D^{\dagger}_{m},D_{m}\right\}-\dfrac{1}{2}\sum _{m\geqslant 2}[D^{\dagger}_{m},[H_{\phi},D_{m}]]+[D_{m},[H_{\phi},D^{\dagger}_{m}]]
\end{align}$$

here $\displaystyle{D_{m}:= D_{m,+}}$, and $\displaystyle{\left\{\cdot,\cdot\right\}}$ is the anticommutator. After normal ordering, the first term contains a connected four-scalar part together with quadratic and constant terms, while the second is at most quadratic. The lower-degree terms are treated together with the remaining contact and conterterm contributions. Using the vacuum-subtracted 1-particle spectrum, we retain here only the connected four-scalar part.

Define

$$\begin{align}
\mathcal{K}_{4} & =H_{4}^{\mathrm{con}}-\sum _{m\geqslant 2}m\left\{D^{\dagger}_{m},D_{m}\right\}
\end{align}$$

at fixed physical $\displaystyle{\Delta}$, the $\displaystyle{\mathcal{O}(\kappa ^{2})}$ 2-particle energy shifts are exactly the eigenvalues of the connected four-scalar part of $\mathcal{K}_{4}$, projected onto the corresponding degenerate two-particle subspace.

**By symmetry**, 2-scalar states do not mix with other denegerate sectors at order $\displaystyle{\mathcal{O}(\kappa ^{2})}$. The connected correction is diagonal in the 2-particle primary-descendant basis, with the same energy shift for a primary and all its descendants.

---

To perform the following calculations, we organize the 2-particle states into irreducible representations of $\displaystyle{\mathfrak{sl}(2,\mathbb{R})\oplus \mathfrak{sl}(2,\mathbb{R})}$. We first relabel the creation and annihilation operators $\displaystyle{b^{\dagger}_{nj},b_{nj}}$ as $\displaystyle{b^{\dagger}_{p,q},b_{p,q}}$, with

$$\begin{align}
p & =n+\max(j,0), & q & =n+\max(-j,0)
\end{align}$$

the normalized 2-particle primary states are labelled by non-negative integers $\displaystyle{k,l}$ with $\displaystyle{k+l}$ even

$$\begin{align}
\ket{P_{k,l}}  & =\dfrac{1}{\sqrt{ 2 }}\sum ^{k}_{p=0}\sum ^{l}_{q=0} v_{p}^{(k)}v_{q}^{(l)}b^{\dagger}_{p,q}b^{\dagger}_{k-p,l-q}\ket{0}  \\
v_{p}^{(k)} & =\dfrac{c_{p}^{(k)}}{\sqrt{ \mathcal{N}_{k} }} \sqrt{ \dfrac{(\Delta)_{p}(\Delta)_{k-p}}{p!(k-p)!} } \\
c_{p}^{(k)} & =(-1)^{p} \dfrac{(\Delta)_{k}}{(\Delta)_{p}(\Delta)_{k-p}},\quad \mathcal{N}_{k} =\dfrac{(2\Delta+k-1)_{k}}{k!}
\end{align}$$

where $\displaystyle{(a)_{r}}$ denotes the rising Pochhammer symbol. We introduce the radial and spin labels

$$\begin{align}
n & =\min(k,l), & \ell=k-l
\end{align}$$

and we have

$$\begin{align}
E^{(0)}_{n,\ell} & =2\Delta+2n+|\ell|
\end{align}$$

---

To evaluate the connected matrix for arbitrary external labels, we use an equivalent representation of $\displaystyle{\mathcal{K}_{4}}$ in terms of scalar stress tensors and their linearized gravitational responses. A detailed derivation of this equivalence remains to be supplied.

For two free scalar solutions $\displaystyle{a,c}$, define the polarized stress tensor

$$\begin{align}
T_{\mu \nu}[a,c] & =\nabla _{(\mu}a\nabla _{\nu)}c-\dfrac{1}{2}g_{\mu \nu}(\nabla _{\rho}a\nabla ^{\rho}c+\Delta(\Delta-2)ac)
\end{align}$$

let $\displaystyle{k[T]}$ satisfy $\displaystyle{\mathcal{E}^{(1)}k[T] =\dfrac{1}{2}T}$, with the boundary conditions specified above, regularity at the center, and no independent homogeneous graviton excitation. Eliminating $\displaystyle{k}$ gives the following effective quartic expression for the connection equal-energy matrix elements:

$$\begin{align}
H^{(4)}_{\mathrm{\text{eff}}} & =-\dfrac{\kappa ^{2}}{4}\braket{ T[\phi],k[T[\phi]] } _{\mathrm{res}} \\
 & =-\dfrac{\kappa ^{2}}{4}\left[\int _{0}^{\infty}r\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\theta T[\phi]^{\mu \nu}k[T[\phi]]_{\mu \nu}\right]_{\text{frequency zero}}
\end{align}$$

expanding this expression in the external scalar modes gives the crossed and annihilation pairings:

$$\begin{align}
\mathcal{X}[a,b;c,d] & =-2\kappa ^{2}\braket{ T[a,c],k[T[b,d]] }_{\mathrm{res}} & \text{crossed pairing} \\
\gamma ^{\mathrm{s}} & =-\dfrac{\kappa ^{2}}{2}\int _{0}^{\infty}r\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\theta \tau ^{*\mu \nu}k[\tau]_{\mu \nu},\quad \tau=\braket{0|:T:|P  }  & \text{annihilation pairing}
\end{align}$$

then we will evaluate these pairings explicitly. We first evaluate the crossed pairing $\mathcal{X}[a,b;c,d]$.

Using the radial response method described in [earlier calculation](https://github.com/GaoZ1en/obsidian_note/blob/3ea676ef5a43cd11a18f551b0adcac222abc8b9a/Articles/Quantization%20in%20AdS/linearized%20gravity/gravity%20scalar%20one%20and%20two%20particle%20spectrum.md?plain=1#L86-L206), we evaluate the crossed energy shift of the product state $\displaystyle{(0,0)\otimes(0,J)}$ and obtain

$$\begin{align}
\mathscr{D}_{J} & =-4\Delta ^{2}+\dfrac{4\Delta ^{2}}{2\Delta-1} \dfrac{(\Delta)_{J}}{(2\Delta)_{J}}
\end{align}$$

where $\displaystyle{\mathscr{D}_{J}}$ denotes the energy shift divided by $\displaystyle{G}$. Let $\displaystyle{x_{kl}}$ denote the crossed primary eigenvalue in units of $G$. Decomposing the product state $\displaystyle{(0,0)\otimes(0,J)}$ into desendants gives

$$\begin{align}
\mathscr{D}_{J} & =\sum ^{J}_{k=0}w_{Jk}x_{k0}, & w_{Jk} & =\binom{J}{k} \dfrac{(\Delta)_{J}}{(2\Delta+k-1)_{k}(2\Delta+2k)_{J-k}} \\
\implies x_{00} & =-4\Delta ^{2} \dfrac{2\Delta-2}{2\Delta-1}, & x_{k 0} & =-4\Delta ^{2},\quad k\geqslant 1
\end{align}$$

the remaining crossed contributions $\displaystyle{x_{k,j> 0}}$ can be reconstructed from the Einstein equation. Expressing the linearized Einstein operator $\displaystyle{\mathcal{E}^{(1)}}$ in terms of the tensor Casimir and using stress-tensor conservation gives

$$\begin{align}
(\mathcal{C}_{\mathrm{cross}}-2)\mathcal{X}[a,b;c,d] & =\kappa ^{2}\braket{ T_{\mu \nu}[a,c]T^{\mu \nu}[b,d]-T^{\mu}_{~\mu}[a,c]T^{\nu}_{~\nu}[b,d] }
\end{align}$$

thus the gravitational response is replaced by a local stress-tensor pairing

In the free two-particle primary basis, the crossed Casimir acts as a three term difference operator, define

$$\begin{align}
(\mathcal{L}f)_{k} & =a_{k}f_{k+1}+b_{k}f_{k}+c_{k}f_{k-1}
\end{align}$$

where

$$\begin{align}
a_{k} & =\dfrac{(k+1)(\Delta+k)(2\Delta+k-1)}{2(2\Delta+2k-1)} \\
c_{k} & =\dfrac{k(\Delta+k-1)(2\Delta+k-2)}{2(2\Delta+2k-1)} \\
b_{k} & =-a_{k}-c_{k}
\end{align}$$

the crossed energy shifts then obey

$$\begin{align}
(\mathcal{L}_{k}+\mathcal{L}_{l}-2)x_{kl} & =S_{kl}
\end{align}$$

evaluation of the local source gives

$$\begin{align}
S_{nn} & =\dfrac{4(C_{n}-\mu)(2C_{n}+\mu)}{2h_{n}-1} \\
S_{n+1,n}=S_{n,n+1} & =\dfrac{4h_{n}(n+1)(2\Delta+n-1)(2h^{2}_{n}-\mu)}{(2h_{n}-1)(2h_{n}+1)} \\
S_{kl} & =0, \quad |k-l| \geqslant 2
\end{align}$$

the solution of the recurrence is

$$\begin{align}
u_{n} & =-4[\Delta ^{2}+2n(2\Delta+n-1)] \\
x_{kl} & =u_{\min(k,l)},\quad k\neq l \\
x_{nn} & =u_{n} \dfrac{2\Delta+2n-2}{2\Delta+2n-1}
\end{align}$$

for the annihilation contribution, write

$$\begin{align}
\tau _{n,\ell} & =\braket{ 0|:T:|P_{n,\ell} } , & h & =\Delta+n, & C=h(h-1)
\end{align}$$

the local rank-two primary source has no component with $\displaystyle{|\ell|>2}$. for identical scalars, only the even-spin channels $\displaystyle{\ell=0,\pm 2}$ therefore contribute. solving

$$\begin{align}
\mathcal{E}^{(1)}k[\tau _{n,\ell}] & =\dfrac{1}{2}\tau _{n,\ell}
\end{align}$$

and evaluating the annihilation pairing gives

$$\begin{align}
\dfrac{\gamma ^{\mathrm{s}}_{n,\ell}}{G} & =\begin{cases}
-\dfrac{2[C+\Delta(\Delta-2)]^{2}}{(2h-3)(2h-1)(2h+1)}, & \ell=0 \\
\dfrac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}{(2h-1)(2h+1)(2h+3)}, & |\ell|=2 \\
0, & |\ell| \geqslant 4
\end{cases}
\end{align}$$

combining the crossed and annihilation contributions, the physical two-particle primary energy is

$$\begin{align}
E_{n,\ell} & =2\Delta+2n+|\ell|+Gx_{kl}+\gamma ^{\mathrm{s}}_{n\ell}+\mathcal{O}(G^{2}), & n=\min(k,l),\ell=k-l
\end{align}$$

which agree with the result in [[Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/two particle spectrum|two particle spectrum]]

---

the following appendices are supplementary materials.

## Appendix A Constraint Inverses and Canonical Boundary Data

The appendices use the free mass parameter $\Delta_0$, before the physical-mass replacement in (52).

For an angular harmonic $e^{ik\theta}$ parameterize the mixed traceless momentum by

$$
t^i{}_j=e^{ik\theta}
\begin{pmatrix}A&ryB\\B/(ry)&-A\end{pmatrix}.
$$

Equation (8) gives

$$\begin{align}
A'+\frac{2A}r+\frac{ikB}{ry}=j_r, \qquad B'+\frac{2B}r-\frac{ikA}{ry}=\frac{j_\theta}{ry}.
\end{align}$$

For $C_\pm=A\pm iB$, the integrating factors are $r^2z^{\pm k}$, so

$$\begin{align}
C_\pm(r)=\frac{z^{\mp k}}{r^2} \int_0^r \mathrm{d}s\,s^2z(s)^{\pm k} \left(j_r(s)\pm\frac{ij_\theta(s)}{s\sqrt{1+s^2}}\right) +C_\pm^{\rm hom}(r). \tag{A1}
\end{align}$$

For $k\ge2$, $C_-^{\rm hom}=cz^k/r^2$ is regular; for $k\le-2$ the corresponding regular freedom is in $C_+$. Restoring a boundary spatial embedding gives

$$\begin{align}
\int_\Sigma\pi^{ij}\mathcal L_{\delta\xi}\sigma_{ij} =2\oint n_i\pi^{ij}\delta\xi_j -\int_\Sigma\pi_\phi\delta\xi^i\partial_i\phi.
\end{align}$$

The scalar pullback cancels the last term. Thus zero independent boundary momentum requires equality of the asymptotic coefficients of $r^2C_+$ and $r^2C_-$, which is precisely (11). Center regularity alone would not fix this choice.

For the scalar constraint, let $m=|k|$ and

$$\begin{align}
L_m=-(y^2-1)\partial_y^2-2y\partial_y+\frac{m^2}{y^2-1}+2.
\end{align}$$

For $m\ge2$ the regular and decaying homogeneous solutions are

$$\begin{align}
p_m=z^m(y+m), \qquad q_m=\frac{z^m(y+m)-z^{-m}(y-m)}{2m(m^2-1)}.
\end{align}$$

They obey $q_m\sim1/(3y^2)$ and $p_mq_m'-p_m'q_m=-1/(y^2-1)$. The two exceptional pairs are

$$\begin{aligned}
p_0&=y,&q_0&=\frac y2\log\frac{y+1}{y-1}-1,\\
p_1&=\sqrt{y^2-1},&q_1&=\frac{y}{2\sqrt{y^2-1}} -\frac{\sqrt{y^2-1}}4\log\frac{y+1}{y-1}.
\end{aligned}$$

Therefore the inverse used throughout is

$$\begin{align}
u_k(y)=q_m(y)\int_1^yp_m(s)\frac{\rho_k(s)}2\,\mathrm{d}s +p_m(y)\int_y^\infty q_m(s)\frac{\rho_k(s)}2\,\mathrm{d}s. \tag{A2}
\end{align}$$

For a finite Jacobi source $\rho_k=r^mR(y)$, the products

$$\begin{align}
p_mr^m=(y-1)^m(y+m), \qquad q_mr^m=\frac{(y-1)^m(y+m)-(y+1)^m(y-m)}{2m(m^2-1)}
\end{align}$$

are polynomials, the latter of degree $m-2$. This gives a finite power-integral evaluation even when $\Delta_0$ is not an integer. A useful differential check is

$$\begin{align}
L_m[r^my^{-s}] =r^m\left([2-(s-m)(s-m-1)]y^{-s}+s(s+1)y^{-s-2}\right). \tag{A3}
\end{align}$$

Finally, the cubic boundary contribution follows from the scalar density continuity equation

$$\begin{align}
\partial_t\rho=\frac2{N_0}\bar D_i(N_0^2j^i).
\end{align}$$

Integrating the cross term between the free gravitational momentum and the matter momentum twice by parts converts it to $\partial_t\int\sqrt{\sigma^{(0)}}\,p_m\rho$. The radial term vanishes for $\Delta_0>1$ and the angular flux vanishes by (11). The boundary embedding contributes the remaining $m$ term, giving the factor $m-\Omega$ in (13).

## Appendix B One Body Contact Cancellation and Common Regulators

Restore the independent gravitational momentum by $t=\tau_g/\kappa+t_\phi$. With $Lu_\phi=\rho/2$ and $Lu_{\tau_g}=\tau_g:\tau_g/2$, the part of the quartic contact with two scalar and two gravitational fields is

$$\begin{align}
V_{p^2\phi^2}=\int_\Sigma N_0\sqrt{\sigma^{(0)}} \left(-u_{\tau_g}\chi^2+\Delta_0(\Delta_0-2) u_{\tau_g}\phi^2 -8u_\phi u_{\tau_g}-2u_\phi\tau_g:\tau_g\right). \tag{B1}
\end{align}$$

The $-2u_\phi\tau_g:\tau_g$ term comes from expanding the momentum factor $e^{-2\Psi}$ in (8). Let $0<\alpha<1$ regulate each gravitational contraction and set $t=z^2$ only in the following formulas. The executed sums are

$$
\begin{aligned}
W_\alpha(t)&=\langle\tau_g:\tau_g\rangle_\alpha
=\frac{3\alpha^2(1-t)^4}{8\pi(1-\alpha t)^4},\\
U_\alpha&=\langle u_{\tau_g}\rangle_\alpha,\qquad LU_\alpha=W_\alpha/2,\\
U_\alpha&=\frac1{32\pi}\left[
\frac{2+\alpha-2(-1+\alpha+3\alpha^2)t+\alpha(-3+2\alpha+4\alpha^2)t^2}{(1-\alpha t)^2}
-\frac{2(\alpha^2-1)(1+t)}{\alpha(t-1)}\log\frac{1-\alpha t}{1-\alpha}
\right],\\
\alpha_{\rm emb}&=-\langle\eta\eta''\rangle_\alpha
=\frac{-(\alpha+\alpha^{-1})\log(1-\alpha)/2-1/2-\alpha/4}{4\pi}.
\end{aligned}
\tag{B2}
$$

The embedding term contributes $\alpha_{\rm emb}H_0$. Symmetric mixed displacement-momentum contractions vanish in Weyl ordering.

For an external mode write $\rho_I=\rho_{II}^{+,-}$ and $Lu_I=\rho_I/2$. With the radial normalization in (3),

$$\begin{align}
\int_1^\infty y\rho_I\,\mathrm{d}y=\frac{\omega_I}{2}, \qquad u_I=\frac{\omega_I}{12y^2}+o(y^{-2}).
\end{align}$$

The full regulated contact is

$$\begin{align}
\frac{s_I^{\rm grav}(\alpha)}{16\pi} =2\int_1^\infty \mathrm{d}y\,y\left[ U_\alpha\left(-\frac{\omega_I^2}{y^2}+\Delta_0(\Delta_0-2)\right)R_I^2 -u_I(8U_\alpha+2W_\alpha)\right] +\alpha_{\rm emb}\omega_I. \tag{B3}
\end{align}$$

The pointwise limits of $U_\alpha,W_\alpha$ are nonuniform near infinity. Split $u_I=\omega_I/(12y^2)+v_I$ before the limit. The Green identity

$$\begin{align}
\int_1^\infty\frac{U_\alpha}{y}\,\mathrm{d}y =\frac14\int_1^\infty\frac{W_\alpha}{y}\,\mathrm{d}y -\int_1^\infty\frac{U_\alpha}{y^3}\,\mathrm{d}y
\end{align}$$

and $W_\alpha=6\alpha^2/[\pi((1-\alpha)y+1+\alpha)^4]$ execute the tail. The result is

$$
\begin{aligned}
s_I^{\rm grav}
={}&3\int_1^\infty y\left(-\frac{\omega_I^2}{y^2}+\Delta_0(\Delta_0-2)\right)R_I^2\mathrm{d}y
-8\int_1^\infty\rho_I\,\mathrm{d}y\\
&+8\int_1^\infty y\log\frac{y+1}{2}\rho_I\,\mathrm{d}y+4\omega_I.
\end{aligned}
\tag{B4}
$$

For the double commutator, the density generator $E_f=\int\sqrt{\sigma^{(0)}}f\rho$ acts with vector $v^i=N_0\bar D^if-f\bar D^iN_0$. At $f=p_me^{im\theta}$ it is divergence free. Its two summed kernels are

$$\begin{align}
\sum_{m\ge2}N_m^2(v\cdot\bar Df^*) =\frac{y-1+4y\log[(y+1)/2]}{16\pi}, \qquad \sum_{m\ge2}N_m^2p_m[(y^2-1)\partial_yv^y-yv^y] =\frac{3y(y-1)^2}{32\pi}.
\end{align}$$

They give

$$
\begin{aligned}
s_I^{\rm cc,E}=\int_1^\infty \mathrm{d}y\bigg[
&-2\left(y-1+4y\log\frac{y+1}{2}\right)\rho_I\\
&+3y(y-1)^2\left((R_I')^2-\frac{j_I^2R_I^2}{(y^2-1)^2}\right)\bigg].
\end{aligned}
\tag{B5}
$$

Adding (B4) and (B5), and using the free normalization, gives (17). The integrated total derivative in its virial proof is

$$\begin{align}
\partial_y\left[(y-1)\left(y(y^2-1)(R_I')^2 -\left(\Delta_0(\Delta_0-2) y+\frac{j_I^2y}{y^2-1}-\frac{\omega_I^2}{y}\right)R_I^2\right)\right].
\end{align}$$

### Absolute Convergence

Expand the quadratic density as

$$\begin{align}
\mathcal E_m=\sum A^m_{KL}b_K^\dagger b_L +\frac12\sum\left(B^m_{KL}b_Kb_L+C^m_{KL}b_K^\dagger b_L^\dagger\right).
\end{align}$$

Vacuum subtraction at finite cutoff gives the individual spectral coefficients

$$
\begin{aligned}
c^E_{I;mJ}=16\pi N_m^2\big[&
(\omega_I-\omega_J)(|A^m_{JI}|^2+|A^m_{IJ}|^2)\\
&-(\omega_I+\omega_J)(|B^m_{IJ}|^2+|C^m_{IJ}|^2)\big],\\
c^F_{I;mJ}&=-16\pi mN_m^2
\left(|A^m_{JI}|^2+|A^m_{IJ}|^2+|B^m_{IJ}|^2+|C^m_{IJ}|^2\right).
\end{aligned}
\tag{B6}
$$

The first is the double-commutator contribution; the second is the density-anticommutator contribution. Pair factors are already included. Angular support implies $m\le|j_I|+|j_J|<\omega_I+\omega_J$.

At fixed $m$, the density generator sends smooth external data to free Cauchy data with asymptotics $\delta\phi=O(y^{-\Delta_0})$ and $\delta\chi=O(y^{-\Delta_0-1})$. They lie in the free-energy form domain because $y^{1-2\Delta_0}$ is integrable. Parseval completeness therefore justifies the internal scalar sum at that fixed $m$.

For the remaining boundary sum the positive kernels are

$$\begin{aligned}
\mathscr A_m&=z^{2m}\left[m(my+1) +\frac{m^2(y+m)(y^2+2my+1)}{y^2-1}\right],\\
\mathscr B_m&=m(m^2-1)y z^{2m}(y+m).
\end{aligned}$$

Their sums are precisely the two positive functions preceding (B5). Multiplying them by $|\rho_I|$ and by $(R_I')^2+j_I^2R_I^2/(y^2-1)^2$ gives an integrable majorant, at worst $y^{1-2\Delta_0}\log y$ at infinity. Only finitely many terms of $c^E$ can be positive, namely the number-preserving terms with $\omega_J<\omega_I$. Convergence of its summed local integral therefore implies

$$\begin{align}
\sum_{m,J}|c^E_{I;mJ}|<\infty.
\end{align}$$

For $\omega_J\ge2\omega_I$, $|c^F_{I;mJ}|\le3|c^E_{I;mJ}|$; the omitted terms form a finite set. Thus the second sum is absolutely convergent as well.

Now let $r_I=e^{-\tau\omega_I/2}$. The difference between regulated completeness and the unregulated local commutator is exactly

$$\begin{align}
\mathcal D_I(\tau,\alpha) =r_I^2\sum_{m,J}\alpha^m(r_J^2-1)c^E_{I;mJ}\longrightarrow0. \tag{B7}
\end{align}$$

The change in the scalar trace from its boundary-oscillator regulator is

$$\begin{align}
\sum_{m,J}(\alpha^m-1)e^{-\tau\omega_J}c^F_{I;mJ}\longrightarrow0.
\tag{B8}
\end{align}$$

Both statements follow by dominated convergence along any path $\tau\downarrow0$, $\alpha\uparrow1$. This is the regulator matching needed for (17)–(18); it does not assign finite parts to a divergent completeness sum.

## Appendix C Local Primary Sources and the Crossed Recurrence

Put $F=ab$, $J=a\,\mathrm{d}b-b\,\mathrm{d}a$, $K_F=\nabla a\cdot\nabla b$, and use tildes for the outgoing pair. Direct contraction of the polarized stresses in (46) gives

$$\begin{align}
\mathcal K=\frac12K_FK_{\widetilde F} -\frac1{16}\mathrm{d}J:\mathrm{d}\widetilde J -\frac{\Delta_0(\Delta_0-2)}4(\mathrm{d}F\cdot \mathrm{d}\widetilde F+J\cdot\widetilde J) -\frac{3\Delta_0^2(\Delta_0-2)^2}{2}F\widetilde F. \tag{C1}
\end{align}$$

For free external modes $K_F=(\Box-2\Delta_0(\Delta_0-2))F/2$. A normalized distinguishable scalar primary at spin zero has

$$\begin{align}
F_n=\frac{(-1)^n}{2\pi}e^{-2iht}f^{-h}, \qquad \Box F_n=4h(h-1)F_n, \qquad \int|F_n|^2=\frac1{4\pi(2h-1)}.
\end{align}$$

At spin one the vector is $J_n=A_1W^{(2h+1,1)}$, with

$$\begin{align}
|A_1|^2=\frac{h(n+1)(2\Delta_0+n-1)}{2\pi^2(2h-1)}. \tag{C2}
\end{align}$$

The scalar center coefficient is $(-1)^n\sum_q(v_q^{(n)})^2/(2\pi)=(-1)^n/(2\pi)$. For the vector, (38) gives

$$\begin{align}
\frac{v_{q+1}^{(n+1)}}{v_q^{(n)}}=-\frac{h}{\sqrt{(q+1)(\Delta_0+q)}}\sqrt{\frac{\mathcal N_n}{\mathcal N_{n+1}}}.
\end{align}$$

Multiplication by the angular-one free-mode center derivative $\sqrt{(q+1)(\Delta_0+q)}$ removes the $q$ dependence. The other leg supplies the opposite sign. Therefore the squared adjacent-level factor is

$$\begin{align}
\rho_1^2=\frac{h(n+1)(2\Delta_0+n-1)}{2(2h-1)}, \qquad |A_1|^2=\rho_1^2/\pi^2.
\end{align}$$

A local analytic primary is fixed by its center value and the two lowest-weight equations. The scalar and vector fibers support center spins zero and one. Hence (C1) has no primary source for $|k-l|\ge2$. The two nonzero bands evaluate to

$$
\begin{aligned}
\int\mathcal K\big|_{\ell=0}
&=(C-\Delta_0(\Delta_0-2))(2C+\Delta_0(\Delta_0-2))\int|F_n|^2,\\
\int\mathcal K\big|_{\ell=1}
&=\frac{2h^2-\Delta_0(\Delta_0-2)}{4}\int J_n\cdot J_n^*.
\end{aligned}
\tag{C3}
$$

The second line uses $\nabla_\mu(\mathrm{d}J)^{\mu\nu}=4h^2J^\nu$ and $\int\mathrm{d}J:\mathrm{d}J^*=-8h^2\int J\cdot J^*$. The boundary terms vanish with the prescribed falloffs.

To extract the secular energy from (46), use the free preparation functions

$$\begin{align}
p_k=\frac{(\Delta_0)_k^2}{k!(2\Delta_0+k-1)_k}, \qquad \mathsf k_h(z)=z^h{}_2F_1(h,h;2h;z).
\end{align}$$

They are determined by the free primary norm, not an interacting boundary spectrum. The crossed chiral generator is

$$\begin{align}
D_t=z(1-z)^2\partial_z^2+(z-1)(2\Delta_0+z-1)\partial_z+\frac{\Delta_0^2}{z}-\Delta_0.
\end{align}$$

Its action is

$$\begin{align}
D_t\mathsf k_h =(\Delta_0-h)^2\mathsf k_{h-1} +\frac{\Delta_0(\Delta_0-2)-h(h-1)}2\mathsf k_h +\frac{h^2(\Delta_0+h-1)^2}{4(2h-1)(2h+1)}\mathsf k_{h+1}. \tag{C4}
\end{align}$$

For an explicit coefficient proof, let $c_m(h)=(h)_m^2/[(2h)_m m!]$. The coefficient of $z^{h+m}$ on the left is

$$\begin{align}
(h+m+1-\Delta_0)^2c_{m+1} +[-2(h+m)^2+2\Delta_0(h+m)-\Delta_0]c_m +(h+m-1)^2c_{m-1}.
\end{align}$$

For $m\ge1$, divide by $c_m(h)$ and use

$$\begin{aligned}
\frac{c_{m+1}(h)}{c_m(h)}&=\frac{(h+m)^2}{(2h+m)(m+1)}, &\frac{c_{m-1}(h)}{c_m(h)}&=\frac{m(2h+m-1)}{(h+m-1)^2},\\
\frac{c_{m+1}(h-1)}{c_m(h)}&=\frac{(h-1)(2h+m-1)}{2(2h-1)(m+1)}, &\frac{c_{m-1}(h+1)}{c_m(h)}&=\frac{2m(2h+1)}{h(2h+m)}.
\end{aligned}$$

Substitution gives (C4) by rational cancellation. The powers $z^{h-1}$ and $z^h$ are checked separately, omitting negative-index coefficients.

A first-order energy shift contributes $-\tau e^{-E\tau}\delta H$ to finite-time Euclidean evolution. With $z\bar z=e^{-2\tau}$, its coefficient is the logarithmic coefficient of the free preparation expansion. Derivatives of the logarithm produce only nonlogarithmic terms and do not change that coefficient. Dividing by $p_kp_l$ in (C4) gives the recurrence (47); for example $a_k=(k+1)^2p_{k+1}/p_k$. Multiplying (C3) by $16\pi$ gives exactly its two source bands.

For completeness, the spin-two center ratio used in (51) is

$$\begin{align}
\rho_2^2=\frac{h(h+1)(n+1)(n+2)(2\Delta_0+n-1)(2\Delta_0+n)}{4(2h-1)(2h+1)}, \qquad |A_2|^2=\rho_2^2/(2\pi^2).
\end{align}$$

Indeed the ratio $v_{q+1}^{(n+2)}/v_q^{(n)}$ multiplied by the two angular-one center derivatives is $-h(h+1)\sqrt{\mathcal N_n/\mathcal N_{n+2}}$, so $\rho_2^2=h^2(h+1)^2\mathcal N_n/\mathcal N_{n+2}$. The tensor identity $\Box W^{(E,s)}=[E(E-2)-s]W^{(E,s)}$ then gives $\mathcal E^{(1)}q=-\frac12(\Box+2)q$ in the transverse traceless spin-two sector, fixing the response in the main text.

## Appendix D Scalar Trace and Local Subtraction

### Partial Trace Identity

For a finite-support internal regulator $R$, global invariance of the connected kernel says

$$\begin{align}
[q_\chi\otimes1+1\otimes q_\chi,\mathcal V]=0.
\end{align}$$

Cyclicity of the finite partial trace gives

$$\begin{align}
[T_R,q_\chi] =-\frac12\operatorname{Tr}_2[(1\otimes[q_\chi,R])\mathcal V]. \tag{D1}
\end{align}$$

Thus a nonzero regulated Ward term is expected even when the tree kernel is invariant. For an Abel weight with an additional sharp excitation cutoff $L$, its left-raising difference is

$$
R_{P,Q}-R_{P+1,Q}=
\begin{cases}
(1-e^{-\tau})e^{-\tau\omega_{P,Q}},&P+Q<L,\\
e^{-\tau\omega_{P,Q}},&P+Q=L,\\
0,&P+Q>L.
\end{cases}
$$

The top shell must be retained until $L\to\infty$ at fixed positive time. The polynomial energy bound obtained from (49)–(51) justifies that limit. It does not justify replacing $R$ by one in the divergent trace.

Applying the adjoint Casimir to (D1) transfers $\mathscr L$ to the internal thermal sequence. Direct substitution of $r_P=e^{-t(\Delta_0/2+P)}$ gives

$$\begin{aligned}
\frac{\mathscr Lr_P}{r_P} &=(P+1)(\Delta_0+P)(e^{-t}-1)+P(\Delta_0+P-1)(e^t-1),\\
\mathscr Lr_P&=\mathscr D_t r_P.
\end{aligned}$$

This proves the two recurrences preceding (24). To solve them, put

$$\begin{align}
A_{p,k}=\frac{\binom pk}{k!(\Delta_0)_k}, \qquad F_k(z)=\prod_{r=0}^{k-1}[z-r(r+1)].
\end{align}$$

Using $zF_k=F_{k+1}+k(k+1)F_k$ reduces the required identity to

$$
\begin{aligned}
&(p+1)(\Delta_0+p)(A_{p+1,k}-A_{p,k})
+p(\Delta_0+p-1)(A_{p-1,k}-A_{p,k})\\
&\hspace{20mm}=A_{p,k-1}+k(k+1)A_{p,k}.
\end{aligned}
\tag{D2}
$$

It follows from the elementary ratios of the binomial and Pochhammer coefficients. The $k=0$ row is zero on both sides, and the top row is $(p+1)(\Delta_0+p)A_{p+1,p+1}=A_{p,p}$. The positive forward coefficient gives uniqueness, proving (24).

### Two Time Exchange Generator

Set $\tau=(t_L+t_R)/2$ and $\eta=(t_L-t_R)/2$, so $\tau>|\eta|$. The beta representation of the coefficient in (25) is

$$\begin{align}
\frac{\Gamma(L-1)}{(2\Delta_0-1)_{L+3}} =\frac{\Gamma(2\Delta_0-1)}{\Gamma(2\Delta_0+3)} \int_0^\infty e^{-(\Delta_0+L)s}[2\sinh(s/2)]^{2\Delta_0+2}\,\mathrm{d}s.
\end{align}$$

Introduce the fully summed free generator

$$\begin{align}
\mathcal G_{\Delta_0}(u,\eta) =[4\sinh((u+\eta)/2)\sinh((u-\eta)/2)]^{-\Delta_0} =\sum_{P,Q\ge0}\frac{(\Delta_0)_P(\Delta_0)_Q}{P!Q!} e^{-(\Delta_0+P+Q)u-(P-Q)\eta}.
\end{align}$$

Remove the two exceptional rows before using the beta integral:

$$\begin{align}
\mathcal J_{\Delta_0}(\tau,\eta)=\int_0^\infty \mathrm{d}s\,[2\sinh(s/2)]^{2\Delta_0+2} \left[\mathcal G_{\Delta_0}(s+\tau,\eta)-e^{-\Delta_0(s+\tau)} -2\Delta_0 e^{-(\Delta_0+1)(s+\tau)}\cosh\eta\right].
\end{align}$$

The lower endpoint is regular at positive times and the upper endpoint decays as $e^{-s}$. Therefore the internal sums and every fixed derivative used here are absolutely convergent. The exact exchange trace is

$$
\begin{aligned}
s^{\rm X}_{00}(t_L,t_R)
={}&X_{0,0}e^{-\Delta_0\tau}+2X_{0,1}e^{-(\Delta_0+1)\tau}\cosh\eta\\
&-\frac{\mathcal P_{\Delta_0}(-\partial_\tau,\partial_\eta)}{(\Delta_0+1)(4\Delta_0^2-1)}
\mathcal J_{\Delta_0}(\tau,\eta).
\end{aligned}
\tag{D3}
$$

There is no remaining internal spectral sum in this formula. Its integral representation is used to establish the joint short-time limit.

Split the $s$ integral at a fixed small $s_0$. The outer part is analytic in $(\tau,\eta)$. In the inner part put $(s,\tau,\eta)=\epsilon(z,t,v)$ with $t>|v|$. The un-subtracted integrand is

$$\begin{align}
\epsilon^3\frac{z^{2\Delta_0+2}}{[(z+t)^2-v^2]^{\Delta_0}} \left[1+\epsilon^2F_2(z,t,v)+\epsilon^4F_4(z,t,v)+\cdots\right]\mathrm{d}z.
\tag{D4}
\end{align}$$

The real powers from numerator and denominator cancel to the integer degree three for every $\Delta_0>1$. Subtracting finitely many large-$z$ terms before integrating separates the outer Taylor coefficients from the endpoint contribution. The latter has degrees $3,5,7,\ldots$, possibly with logarithms. The polynomial $\mathcal P_{\Delta_0}$ uses only derivative orders zero, two and four. Hence the nonanalytic exchange terms have degrees $-1,1,3,\ldots$ and no degree-zero term. The possible degree-three endpoint logarithm has a polynomial degree-three coefficient, whose logarithmic part is annihilated by the fourth derivative; no $(\log\epsilon)/\epsilon$ pole remains.

The finite constant is therefore independent of the direction $v/t$. The isotropic sum (27) fixes it to zero. On homogeneous functions,

$$\begin{align}
\mathscr D_t=D_t^{(0)}+\text{terms raising degree by }2,4,\ldots, \qquad D_t^{(0)}=t^2\partial_t^2+2t\partial_t.
\end{align}$$

A finite polynomial in these operators cannot turn an odd singular degree into degree zero. The Hartree and exchange channels separately satisfy (24): polarize the original four-linear interaction into distinguishable fields to isolate the direct channel, then take its difference from the identical-field kernel. The diagonal momentum current must be retained before setting $t_L=t_R$. This gives (28) for every external label.

### Hartree Finite Part with the Boundary Region Retained

Let $Lu_I=\rho_I/2$ and define the regular decaying test function $F_I$ by

$$\begin{align}
LF_I=\left(\frac{\omega_I^2}{y}-\Delta_0(\Delta_0-2) y\right)R_I^2+8yu_I, \qquad L=-\partial_y[(y^2-1)\partial_y]+2.
\end{align}$$

From the original quartic (10), the isotropic Hartree contraction is

$$\begin{align}
s_I^{\rm H}(b)=-32\pi\int_1^\infty \left[yu_I(C_\chi-\Delta_0(\Delta_0-2) C_\phi)+\frac{F_I}{2}\rho_{\rm vac}\right]\mathrm{d}y. \tag{D5}
\end{align}$$

With $s=by$ and primes on $f_\lambda$ meaning derivatives in $s$, the summed covariances are

$$\begin{aligned}
C_\phi&=f_\lambda(s),\\
C_\chi&=\frac14\left[(1+b^2)f_\lambda''(s)+\frac{b^2}{s}f_\lambda'(s)\right],\\
\rho_{\rm vac}&=\frac14\left[(1+s^2)f_\lambda''(s)+3s f_\lambda'(s)\right].
\end{aligned}$$

Their fixed-radius expansions are

$$
\begin{aligned}
C_\chi-\Delta_0(\Delta_0-2) C_\phi
&=\frac1{16\pi b^3y^3}+\frac1{32\pi by^3}
-\frac{\Delta_0(\Delta_0-2)}{8\pi by}+\frac{\lambda\Delta_0(\Delta_0-2)}{6\pi}+O(b),\\
\rho_{\rm vac}
&=\frac1{16\pi b^3y^3}-\frac1{32\pi by}
-\frac{\lambda\Delta_0(\Delta_0-2)}{12\pi}+O(b).
\end{aligned}
\tag{D6}
$$

The negative powers in (D5) are $-A_I/b^3-B_I/b$, where

$$\begin{align}
A_I=\int_1^\infty\left(\frac{2u_I}{y^2}+\frac{F_I}{y^3}\right)\mathrm{d}y, \qquad B_I=\int_1^\infty\left(\frac{u_I}{y^2}-4\Delta_0(\Delta_0-2) u_I-\frac{F_I}{2y}\right)\mathrm{d}y.
\end{align}$$

Their moments converge. The fixed-radius constant contributes

$$\begin{align}
\frac{4\lambda\Delta_0(\Delta_0-2)}{3}\int_1^\infty(F_I-4yu_I)\,\mathrm{d}y.
\end{align}$$

At infinity, however,

$$\begin{align}
u_I=\frac{\omega_I}{12y^2}+O(y^{-2-\epsilon}), \qquad F_I=\frac{\omega_I}{3y}+O(y^{-1-\epsilon}), \qquad 0<\epsilon<\min(1,2\Delta_0-2).
\end{align}$$

The region $y\sim1/b$ contributes another finite term. Its integral is evaluated by

$$\begin{aligned}
J_\lambda(s)&=\frac{3+2s^2}{4s}f_\lambda''(s) +\frac32f_\lambda'(s)-\frac{\Delta_0(\Delta_0-2)} s f_\lambda(s),\\
\mathcal A_\lambda(s) &=\frac{3+2s^2}{4s}f_\lambda'(s) +\left[\frac12+\frac1{4s^2}+\frac{\lambda\sqrt{1+s^2}}{2s}\right]f_\lambda(s),\\
\mathcal A_\lambda'&=J_\lambda, \qquad \mathcal A_\lambda(\infty)=0,\\
\mathcal A_\lambda(s) &=-\frac1{16\pi s^3}+\frac{2\lambda^2-1}{16\pi s} -\frac{\lambda\Delta_0(\Delta_0-2)}{6\pi}+O(s).
\end{aligned}$$

Thus $\operatorname{FP}\int_0^\infty J_\lambda \mathrm{d}s=\lambda\Delta_0(\Delta_0-2)/(6\pi)$ and the extra Hartree contribution is $-4\omega_I\lambda\Delta_0(\Delta_0-2)/9$. Subleading response tails give $o(1)$ after the power subtraction.

The free radial equation, with its boundary flux kept, gives

$$\begin{align}
\int_1^\infty(F_I-4yu_I)\mathrm{d}y =\frac{\omega_I}{12}-\frac{\Delta_0(\Delta_0-2)}{4\lambda}, \qquad \int_1^\infty yR_I^2\mathrm{d}y=\frac1{2\lambda}.
\end{align}$$

Adding the local and boundary constants produces (30):

$$\begin{align}
\frac{4\lambda\Delta_0(\Delta_0-2)}{3}\left(\frac{\omega_I}{12}-\frac{\Delta_0(\Delta_0-2)}{4\lambda}\right) -\frac{4\omega_I\lambda\Delta_0(\Delta_0-2)}{9} =-\frac{\Delta_0(\Delta_0-2)}3(\lambda\omega_I+\Delta_0(\Delta_0-2)).
\end{align}$$

Because $b=\tau/2+O(\tau^3)$ is odd in $\tau$, converting its inverse odd powers changes the pole coefficients but not this constant.

As a consistency check on the two-time reconstruction, the ground Hartree degree-zero coefficient is

$$\begin{align}
[s_{00}^{\rm H}]_0 =-\frac{\Delta_0^2(\Delta_0-2)(2\Delta_0-3)}3 -\frac{2\Delta_0\lambda\Delta_0(\Delta_0-2)}{3}\frac{\eta^2}{\tau^2-\eta^2}. \tag{D7}
\end{align}$$

It follows by pairing the static ground response with the unequal-time covariance

$$\begin{align}
W(y;\tau,\eta)=f_\lambda\!\left(\sqrt{b^2y^2+c^2}\right), \qquad b^2=\frac{\cosh\tau-\cosh\eta}{2}, \qquad c^2=\frac{\cosh\eta-1}{2}.
\end{align}$$

The two critical moments are $I_1=\int y^{-1}W\,\mathrm{d}y$ and $I_3=\int y^{-3}W\,\mathrm{d}y$. With $A_0=-\lambda/(4\pi)$ and $A_2=-\lambda\Delta_0(\Delta_0-2)/(6\pi)$, their relevant even parts are

$$\begin{align}
(I_1)_0=C_1-A_0\log b, \qquad (I_3)_{\le2}=\frac{A_0}{2}+b^2(C_3-A_2\log b)+\frac{A_2c^2}{2}.
\end{align}$$

In the original ground pairing the critical combination is $4\partial_\tau^2I_3-2\partial_\eta^2I_3-2\Delta_0(\Delta_0-2) I_1$. Its logarithm cancels because $-3A_2+2\Delta_0(\Delta_0-2) A_0=0$; its change relative to $\eta=0$ gives the second term of (D7). Other moments have positive-degree boundary remainders for $\Delta_0>1$.

Using $4\eta^2/(\tau^2-\eta^2)=t_L/t_R+t_R/t_L-2$, $\Pi_p(0)=1$ and $\Pi_p(2)=1+2p/\Delta_0$, equation (24) propagates (D7) to

$$\begin{align}
[T_{p,q}]_0 =-\frac{\Delta_0(\Delta_0-2)}3(\lambda \Delta_0+\Delta_0(\Delta_0-2)) -\frac{\Delta_0\lambda\Delta_0(\Delta_0-2)}{6} \left[\left(1+\frac{2p}{\Delta_0}\right)\frac{t_L}{t_R} +\left(1+\frac{2q}{\Delta_0}\right)\frac{t_R}{t_L}-2\right].
\end{align}$$

At equal times this equals (30), in agreement with the direct all-mode calculation. The remaining exchange finite part is zero.

### Match the Exchange Pole to a Local Insertion

The leading gamma-ratio limit of (25), or the leading endpoint of (D3), gives the ground pole function

$$\begin{align}
\mathcal C_{00}(t_L,t_R) =\frac{4\Delta_0\Gamma(2\Delta_0-1)}{\Gamma(\Delta_0)^2} \int_0^1\frac{x^{\Delta_0-1}(1-x)^{\Delta_0-1}[(\Delta_0-1)-(2\Delta_0-1)(2x-1)^2]} {xt_L+(1-x)t_R}\,\mathrm{d}x. \tag{D8}
\end{align}$$

It is homogeneous of degree $-1$. The endpoint fractions are integrable. Fixed-$P$ or fixed-$Q$ rows decay as the other label to power $-\Delta_0$, so they supply no additional pole for $\Delta_0>1$.

On a degree-$-1$ function, $D_{t_L}^{(0)}=D_{t_R}^{(0)}$. The propagated coefficients consequently obey $\mathscr L_pC_{p,q}=\mathscr L_qC_{p,q}$. To find the complete row $q=0$, set $z=t_L/t_R$ and use

$$\begin{align}
[D_z-k(k+1)]\frac{z^k}{(1-x+xz)^{2k+1}} =-(2k+2)(2k+1)x(1-x)\frac{z^{k+1}}{(1-x+xz)^{2k+3}}.
\end{align}$$

Thus $F_k(D_z)(1-x+xz)^{-1}$ at $z=1$ is $(-1)^k(2k)![x(1-x)]^k$. The beta moments and terminating Vandermonde sum in (24) give

$$\begin{align}
C_{p,0}=\frac{4\Delta_0}{(2\Delta_0-1)(2\Delta_0+1)} \frac{(\Delta_0+1)_p}{(\Delta_0+3/2)_p} \left[\Delta_0(2\Delta_0-3)-\frac{(\Delta_0-1)p}{\Delta_0+p}\right]. \tag{D9}
\end{align}$$

For comparison the free radial moments on that row are

$$\begin{align}
M_{0,p0}=\frac1{2\Delta_0-1}\frac{(\Delta_0)_p}{(\Delta_0+1/2)_p}, \qquad M_{2,p0}=\frac1{2\Delta_0+1}\frac{(\Delta_0)_p}{(\Delta_0+3/2)_p}.
\end{align}$$

Their combination $(4\Delta_0(\Delta_0-2)+2)M_0+2M_2$ equals (D9). To extend this equality to every row, realize the free radial mode as a positive-discrete-series matrix element. Let $K_+$ raise $p$ with coefficient $\sqrt{(p+1)(\Delta_0+p)}$ and $K_-=K_+^\dagger$. For $p\ge q$, with $y=\cosh\rho$,

$$\begin{align}
\langle p|e^{\rho(K_+-K_-)}|q\rangle =\sqrt{\frac{q!\Gamma(\Delta_0+p)}{p!\Gamma(\Delta_0+q)}} (\tanh\rho)^{p-q}y^{-\Delta_0} P_q^{(p-q,\Delta_0-1)}(2y^{-2}-1). \tag{D10}
\end{align}$$

This equals $R_{pq}$ up to a phase; $p<q$ follows by adjunction. The adjoint Casimir commutes with the group action and is self-adjoint on diagonal projectors with counting measure. Transferring it between the two projectors in $|\langle p|U|q\rangle|^2$ proves $\mathscr L_pR_{pq}^2=\mathscr L_qR_{pq}^2$ pointwise. Both convergent radial moments therefore satisfy the same recurrence as $C_{p,q}$. Its positive forward coefficient and the complete initial-row match prove (33), without extrapolating finitely many modes.

At fixed scalar momentum, a free radial integration by parts then gives

$$\begin{align}
4\int_1^\infty\left(\frac{\omega_I^2}{y^2}R_I^2-|\bar D R_I|^2\right)\mathrm{d}y =(4\Delta_0(\Delta_0-2)+2)M_{0,I}+2M_{2,I}.
\end{align}$$

This is precisely the one-particle matrix element of (34). Its scalar boundary variation is $O(G\tau^{-1}y^{1-2\Delta_0})$ and vanishes at fixed positive $\tau$.

### Regulated Stress in the Tadpole Counterterm

For clarity, all coefficient functions in (31) can be written locally. Put $b=\sinh(\tau/2)$ and $F(y)=f_\lambda(by)$, now taking primes in $y$. In an orthonormal time/radial/angular frame,

$$
\begin{aligned}
C_\chi&=\frac{(1+b^2)F''+b^2F'/y}{4b^2},\\
C_r&=\frac{b^2(y^2-1)F''+[b^2(y^2-1)-1]F'/y}{4b^2},
& C_\theta&=-\frac{F'}{4b^2y},\\
\rho_\tau&=\frac12(C_\chi+C_r+C_\theta+\Delta_0(\Delta_0-2) F),\\
p_{r,\tau}&=\frac12(C_\chi+C_r-C_\theta-\Delta_0(\Delta_0-2) F),
& p_{\theta,\tau}&=\frac12(C_\chi-C_r+C_\theta-\Delta_0(\Delta_0-2) F).
\end{aligned}
\tag{D11}
$$

The free covariance equation

$$\begin{align}
(1+b^2y^2)F''+(5b^2y+2/y)F'-4\Delta_0(\Delta_0-2) b^2F=0
\end{align}$$

implies

$$\begin{align}
p_{r,\tau}'+\frac{\rho_\tau+p_{r,\tau}}y +\frac{y}{y^2-1}(p_{r,\tau}-p_{\theta,\tau})=0, \qquad Q_\tau=p_{r,\tau}+p_{\theta,\tau}=C_\chi-\Delta_0(\Delta_0-2) F.
\end{align}$$

Thus the linear counterterm is conserved under proper linearized diffeomorphisms, up to the vanishing boundary flux. Independent lapse and conformal variations give the two cancellations in (32). A subtraction of the vacuum energy as a number would cancel neither of these state-dependent source insertions.

## Appendix E Direct Ground Exchange Calculation

This appendix supplies the algebra behind the ground-external scalar exchange. It uses the original constraint responses, a retained boundary current, and three integrals of free Jacobi polynomials. In particular, the compact answer below is an output of the calculation, not an input to its coefficient matching.

### Original Responses and the Mixed Target

In this appendix $(n,a)$ label the internal scalar mode, and $H=y^2-1$ is a radial function, distinct from the primary weight $h$ in the main text. Write

$$\begin{align}
\Delta_0>1,\quad H=y^2-1,\quad w=\Delta_0+2n+a,\quad a=|j|,
\end{align}$$

and initially take $a>1$. Strip the internal normalization and set

$$\begin{align}
R=y^{-\Delta_0}(1-y^{-2})^{a/2}P_n^{(\Delta_0-1,a)}(1-2y^{-2}),\qquad \mathcal N^2=\frac{(\Delta_0+n)_a}{(n+1)_a}.
\end{align}$$

The free radial equation and scalar constraint operator are

$$\begin{align}
R''=P_RR'+Q_RR,\qquad P_R=-\frac{3y^2-1}{yH},\qquad Q_R=\frac{a^2}{H^2}+\frac{\Delta_0(\Delta_0-2)} H-\frac{w^2}{y^2H}, \qquad L_a=-\partial_y(H\partial_y)+2+\frac{a^2}{H}.
\end{align}$$

Let $U$ be the regular-center, fast-boundary solution of

$$\begin{align}
L_aU=S_0=y^{-\Delta_0}\left(\frac{\Delta_0(\Delta_0-2)}4R-\frac{\Delta_0 H}{4y}R'\right).
\end{align}$$

Put $D=w^2+\Delta_0(\Delta_0+1)$. For external frequency sign $t=\pm1$,

$$\begin{align}
u_t=\gamma_tU+y^{-\Delta_0}f_{s,t}R,\qquad \gamma_t=1-\frac{t(2\Delta_0+1)w}{D},\qquad f_{s,t}=-\frac{t\Delta_0 w}{4D}.
\end{align}$$

Thus

$$\begin{align}
L_au_t=y^{-\Delta_0}(s_{R,t}R+s_DR'),\qquad s_{R,t}=\frac{\Delta_0(\Delta_0-2)}4-\frac{t\Delta_0 w}{4y^2},\qquad s_D=-\frac{\Delta_0 H}{4y}.
\end{align}$$

The plus momentum response is

$$\begin{align}
T^{\rm part}_{t,+}=\alpha_t\left[ \frac{y^2+ay+a^2-1}{H}U-(y+a)U'\right] +y^{-\Delta_0}(f_tR+g_tR').
\end{align}$$

All coefficients are specified by the following short rational formulas:

$$\begin{align}
Z_t=(\Delta_0-2)\Delta_0(\Delta_0+1)t-(2+\Delta_0^2)w-(\Delta_0-1)tw^2+w^3,
\end{align}$$

$$\begin{align}
\alpha_t=-\frac{(\Delta_0^2-w^2)Z_t+ a^2(2\Delta_0-1)[(2\Delta_0+1)w+t(\Delta_0+1-2w^2)]} {a(a^2-1)(2\Delta_0-1)D},
\end{align}$$

$$\begin{aligned}
g_t&=g_{1,t}+yg_{2,t},\\
g_{1,t}&=\frac{\Delta_0}{4(a^2-1)(2\Delta_0-1)D} \bigl\{a^2(2\Delta_0-1)[(\Delta_0+1)t+w]+\Delta_0(\Delta_0+1)(\Delta_0^2-3\Delta_0+1)t\\
&\hspace{31mm}+\Delta_0(-1+\Delta_0-\Delta_0^2)w-(\Delta_0^2-1)tw^2+(\Delta_0+1)w^3\bigr\},\\
g_{2,t}&=\frac{\Delta_0}{4a(a^2-1)(2\Delta_0-1)D} \bigl\{\Delta_0 Z_t+a^2[w(w^2+\Delta_0^2+3\Delta_0-1)\\
&\hspace{44mm}+t((1-\Delta_0)w^2-\Delta_0^3+2\Delta_0^2+2\Delta_0-1)]\bigr\},\\
f_t&=\frac{\Delta_0[-t+\alpha_t(y+a)]}{4y} -g_t'+\left(\frac{\Delta_0} y-P_R-\frac{2y+a}{H}\right)g_t.
\end{aligned}$$

The minus particular solution is obtained by $a\mapsto-a$ in these coefficients, keeping $U,R$ fixed. The physical minus response additionally contains $\alpha_tE_0z^a/H$, where

$$\begin{align}
z=\sqrt{\frac{y-1}{y+1}},\qquad U=\frac{E_0}{6y^2}+o(y^{-2}).
\end{align}$$

Substitution directly verifies the two momentum equations

$$\begin{align}
T_{t,\sigma}'+\frac{2y+\sigma a}{H}T_{t,\sigma} =-\frac{\Delta_0}{4y^{\Delta_0+1}} \left[tR'-\left(\frac wy+\frac{\sigma ta}{H}\right)R\right].
\end{align}$$

The homogeneous addition and its quadratic pairing will be kept until the boundary cancellation below.

After integrating the response squares by parts and transferring derivatives off $U$, the mixed term is $\int U(KR+LR')\mathrm{d}y$. The following five coefficients specify its entire target. Define $\theta_t=t\Delta_0$, $\beta_t=8a\alpha_t/(a^2-1)$, and sum each displayed expression over $t=\pm1$:

$$\begin{aligned}
k_1&=\sum_t\bigl\{32\Delta_0(\Delta_0-2) \Delta_0\gamma_t- \beta_t[(\Delta_0(\Delta_0-2)+3-\Delta_0)\theta_t+\Delta_0(\Delta_0-3)w]\bigr\},\\
k_{-1}&=\sum_t\bigl\{16\gamma_t[a^2\Delta_0-2\Delta_0(\Delta_0-2) \Delta_0+(2-\Delta_0)\theta_tw-\Delta_0 w^2]\\
&\hspace{15mm}-\beta_t[(1-\Delta_0(\Delta_0-2)-\Delta_0+2a^2\Delta_0)\theta_t +\Delta_0(3-2a^2-2\Delta_0)w-\theta_tw^2]\bigr\},\\
k_{-3}&=\sum_t\bigl\{16\gamma_tw[(\Delta_0+2)\theta_t+\Delta_0 w] -\beta_tw[\Delta_0(\Delta_0+2)+\theta_tw]\bigr\},\\
l_0&=\sum_t\bigl\{-16\gamma_t(\Delta_0(\Delta_0-2)+\Delta_0^2) +\beta_t[(\Delta_0-2)\theta_t+\Delta_0 w]\bigr\},\\
l_{-2}&=\sum_t\bigl\{16\gamma_t[\Delta_0(\Delta_0+2)+\theta_tw] -\beta_t[(\Delta_0+2)\theta_t+\Delta_0 w]\bigr\}.
\end{aligned}$$

In these conventions

$$\begin{align}
y^{\Delta_0}K=k_1y+k_{-1}y^{-1}+k_{-3}y^{-3},\qquad \frac{y^{\Delta_0}L}{H}=l_0+l_{-2}y^{-2}.
\end{align}$$

These expressions follow by substitution of the responses into the source pairing. They contain no unknown radial function.

### The Six-Coefficient Current

For any sourced response $L_au=S$, direct differentiation gives

$$\begin{aligned}
\mathscr C_a[u]&=H^2[(y^2-a^2)(u')^2-2yuu'] +[H^2+a^2H+a^2(a^2-1)]u^2,\\
\mathscr C_a[u]'&=2yHSu-2H(y^2-a^2)Su'.
\end{aligned}$$

With

$$\begin{align}
\mathscr F_a[S]=2yHS+2\partial_y[H(y^2-a^2)S],
\end{align}$$

the prescribed response therefore obeys

$$\begin{align}
\int_1^\infty U\mathscr F_a[S_0]\mathrm{d}y=\frac{E_0^2}{4}.
\end{align}$$

The center endpoint is zero and the fast endpoint is $E_0^2/4$. The additional integration-by-parts boundary is $O(y^{2-2\Delta_0})$ at infinity and vanishes at the center.

Seek the local identity

$$\begin{align}
KR+LR'=L_aG+\eta\mathscr F_a[S_0],\qquad G=y^{-\Delta_0}\left[(c_0y^3+c_1y+c_2/y)R+H(b_0y^2+b_1)R'\right].
\end{align}$$

Here is a completely explicit finite certificate for all six coefficients. Define

$$\begin{align}
B_p=2-\Delta_0(\Delta_0-2)-p(p-1),\qquad C_p=w^2+p(p+1),\qquad D_p=2p+1,
\end{align}$$

$$\begin{aligned}
F_1&=\frac{\Delta_0}2{a^2(2\Delta_0^2-6\Delta_0+3)+2\Delta_0^2-7\Delta_0+w^2+6},\\
F_{-1}&=\frac{\Delta_0}2{a^4-a^2(2\Delta_0(\Delta_0-2)+w^2)-w^2},\qquad F_{-3}=\frac{\Delta_0 a^2w^2}{2},\\
G_0&=-\Delta_0(\Delta_0-1)(a^2+\tfrac12),\qquad G_{-2}=\frac{a^2\Delta_0(\Delta_0+2)}2.
\end{aligned}$$

Then

$$
\begin{pmatrix}
1&0&0&-\Delta_0&0&\Delta_0/2\\
C_{\Delta_0-3}&B_{\Delta_0-1}&0&(2\Delta_0-3)(a^2-w^2-\Delta_0(\Delta_0-2))&(2\Delta_0-1)\Delta_0(\Delta_0-2)&F_1\\
0&C_{\Delta_0-1}&B_{\Delta_0+1}&(2\Delta_0-1)w^2&(2\Delta_0+1)(a^2-w^2-\Delta_0(\Delta_0-2))&F_{-1}\\
0&0&C_{\Delta_0+1}&0&(2\Delta_0+3)w^2&F_{-3}\\
0&D_{\Delta_0-1}&0&C_{\Delta_0-1}&B_{\Delta_0+1}&G_0\\
0&0&D_{\Delta_0+1}&0&C_{\Delta_0+1}&G_{-2}
\end{pmatrix}
\begin{pmatrix}c_0\\c_1\\c_2\\b_0\\b_1\\\eta\end{pmatrix}
=\begin{pmatrix}0\\k_1\\k_{-1}\\k_{-3}\\l_0\\l_{-2}\end{pmatrix}.
\tag{E1}
$$

The first row sets the normalized highest coefficient to zero; the remaining rows match the three $R$ powers and two $R'/H$ powers. The apparently additional highest $R$ row is dependent. The determinant is

$$\begin{align}
\frac12a^2(a^2-1)^2\Delta_0(2\Delta_0-3)(2\Delta_0-1)
[w^2-(\Delta_0+2)^2][w^2+\Delta_0(\Delta_0+1)].
\end{align}$$

Solve at generic parameters and cancel rational factors before specializing. For the displayed original target the apparent factors $2\Delta_0-3$ and $w^2-(\Delta_0+2)^2$ cancel from all six answers; there is no physical exception at $\Delta_0=3/2$ or the first non-global shell. Equation (E1), rather than an external coefficient file, defines the certificate by a fixed-size rational linear system.

Self-adjointness now gives

$$\begin{align}
\int U(KR+LR')\mathrm{d}y=\int GS_0\mathrm{d}y+\frac{\eta E_0^2}{4}.
\end{align}$$

Indeed $G=O(r^a)$ at the center and $G=O(y^{3-2\Delta_0})$ at infinity; the Green pairing vanishes for $a>1,\Delta_0>1$. Requiring $G$ itself to be fast would incorrectly exclude this valid current.

### Cancellation of the Retained Endpoint

Let $J_m=\int_1^\infty z^ay^{-m}R\,\mathrm{d}y$, and abbreviate $J=J_{\Delta_0+1}$. The free equation integrated once gives

$$\begin{align}
[m(m-2)-\Delta_0(\Delta_0-2)]J_{m-1}+a(1-2m)J_m+(w^2-m^2)J_{m+1}=0.
\end{align}$$

Consequently

$$\begin{align}
\frac{J_{\Delta_0}}{J}=\frac{w^2-\Delta_0^2}{a(2\Delta_0-1)},\quad \frac{J_{\Delta_0+2}}J= \frac{a(2\Delta_0+1)-(2\Delta_0-1)J_{\Delta_0}/J}{w^2-(\Delta_0+1)^2},\quad \frac{E_0}{J}=\frac{\Delta_0(a^2-1)D}{2[w^2-(\Delta_0+1)^2]}.
\end{align}$$

The original homogeneous momentum, cross, integration-by-parts endpoint and frequency terms are together

$$\begin{align}
\frac{X_{\rm bdry}}{\mathcal N^2}= \frac1{a^2-1}\sum_t\left\{ -4\Delta_0\alpha_tE_0[(w-t(\Delta_0-1))J_{\Delta_0}+2a(w-t\Delta_0)J+(w-t(\Delta_0+1))J_{\Delta_0+2}] +4\alpha_t^2E_0^2-8\gamma_t^2E_0^2\right\}.
\end{align}$$

The same six-row system gives the useful factored identity

$$\begin{align}
\eta=\frac{16}{a^2-1}\sum_t \left[\alpha_t^2+\frac{4(w+t\Delta_0)}a\alpha_t\gamma_t+2\gamma_t^2\right].
\end{align}$$

Substituting the three free moment ratios into the boundary expression gives, identically before evaluating $J$,

$$\begin{align}
\boxed{\frac{X_{\rm bdry}}{\mathcal N^2}+\frac{\eta E_0^2}{4}=0.} \tag{E2}
\end{align}$$

Thus the mixed Green inverse disappears only after its computed endpoint is combined with the physical homogeneous response.

### The Local Polynomial and Its Three Moments

For completeness, the local polynomial can be reconstructed without printing its large expanded numerator. This paragraph gives all its coefficients by differentiation and finite sums.

For each helicity set

$$\begin{align}
f_{t,+}=f_t,\quad g_{t,+}=g_t,\quad f_{t,-}=f_t|_{a\mapsto-a},\quad g_{t,-}=g_t|_{a\mapsto-a},
\end{align}$$

$$\begin{align}
A_\sigma=\frac{4\Delta_0 H(y^2-2\sigma ay+1)}{a^2-1},\quad b_{R,t\sigma}=-\frac w{y^2}-\frac{\sigma ta}{Hy},\quad b_{D,t}=\frac t y.
\end{align}$$

The coefficients of $y^{-2\Delta_0}(V_{20}R^2+V_{11}RR'+V_{02}(R')^2)$ in the local source pairing are

$$\begin{aligned}
V_{20}&=\sum_t\left[-64\Delta_0 H\frac{f_{s,t}}y s_{R,t} +32\left(\frac{\Delta_0 tw}y+\Delta_0(\Delta_0-2) y\right)f_{s,t} +\sum_\sigma A_\sigma f_{t,\sigma}b_{R,t\sigma}\right],\\
V_{11}&=\sum_t\left[64Hf_{s,t}\left(s_{R,t}-\frac{\Delta_0} y s_D\right) +\sum_\sigma A_\sigma(f_{t,\sigma}b_{D,t}+g_{t,\sigma}b_{R,t\sigma})\right],\\
V_{02}&=\sum_t\left[64Hf_{s,t}s_D +\sum_\sigma A_\sigma g_{t,\sigma}b_{D,t}\right].
\end{aligned}$$

Write $\nabla_{\Delta_0} f=f'-2\Delta_0 f/y$. Removing $RR'$ and $(R')^2$ by the free equation gives

$$\begin{align}
\mathcal V(y^{-2})=\frac1y\left[ V_{20}-\frac12\nabla_{\Delta_0}V_{11} +\frac{V_{02}}H\left(\frac{w^2}{y^2}-\frac{a^2}H-\Delta_0(\Delta_0-2)\right) +\frac12\nabla_{\Delta_0}\left(\nabla_{\Delta_0}V_{02}-\frac{2y}{H}V_{02}-\frac{V_{02}}y\right) \right].
\end{align}$$

All apparent center poles cancel, and $\mathcal V(v)$ has degree two. For the current term define

$$\begin{align}
\mathcal T_j(v)=\frac{\Delta_0}8v^j[(j+\Delta_0-1)v-j],
\end{align}$$

$$\begin{align}
\mathcal U_k(v)=\frac{\Delta_0}8v^k\left[ -k(3\Delta_0+2k-4) +(a^2-\Delta_0+2\Delta_0^2-4k+7\Delta_0 k+4k^2-w^2)v -{2(\Delta_0+k)^2-w^2}v^2\right].
\end{align}$$

These follow by applying the same free derivative-square reduction to each monomial of $GS_0$. Hence the complete degree-two weight is explicitly

$$\begin{align}
\mathcal W(v)=\frac{\mathcal V(v)}2+ \frac{c_0\mathcal T_0+c_1\mathcal T_1+c_2\mathcal T_2 +b_0\mathcal U_0+b_1\mathcal U_1}{v} =W_0+W_1v+W_2v^2. \tag{E3}
\end{align}$$

The numerator in the fraction has a factor $v$, so no negative moment occurs. Every quantity on the right is specified above by finite rational arithmetic.

Let

$$\begin{align}
J_j=\int_0^1v^{2\Delta_0-2+j}(1-v)^a [P_n^{(\Delta_0-1,a)}(1-2v)]^2\mathrm{d}v.
\end{align}$$

After (E2), the original exchange is exactly

$$\begin{align}
X_{n,a}=\mathcal N^2(W_0J_0+W_1J_1+W_2J_2).
\end{align}$$

The required moments are evaluated by Rodrigues' formula followed by the terminating balanced Saalschütz sum. More generally,

$$\begin{align}
\int_0^1v^{2\Delta_0-2}(1-v)^aP_nP_m\,\mathrm{d}v =\frac{(-1)^{n+m}\Gamma(\Delta_0+n)\Gamma(\Delta_0+m)\Gamma(2\Delta_0-1)\Gamma(n+m+a+1)} {n!m!\Gamma(\Delta_0+n-m)\Gamma(\Delta_0-n+m)\Gamma(2\Delta_0+n+m+a)}.
\end{align}$$

Reciprocal Gamma functions give the continuous interpretation of apparent exceptional parameters. In particular, putting $D_0=\Delta_0^2-w^2$,

$$\begin{aligned}
J_0&=\frac{(\Delta_0)_n^2\Gamma(2\Delta_0-1)\Gamma(2n+a+1)}{(n!)^2\Gamma(2\Delta_0+2n+a)},\\
\frac{J_1}{J_0}&=\frac{(2\Delta_0-1)(D_0+a^2)}{2\Delta_0 D_0},\\
\frac{J_2}{J_0}&=\frac{(2\Delta_0-1)[(2\Delta_0+1)(D_0+a^2)^2+4\Delta_0(\Delta_0+1)D_0+4\Delta_0(2\Delta_0+1)a^2]} {4\Delta_0(\Delta_0+1)D_0[(\Delta_0+1)^2-w^2]}.
\end{aligned}$$

Substitution of (E1) and (E3) into these three moments gives the exact rational cancellation

$$\begin{align}
W_0+W_1\frac{J_1}{J_0}+W_2\frac{J_2}{J_0} =-\frac{4\Delta_0\,\mathcal P_{\Delta_0}(w,a)}{(w^2-\Delta_0^2)[w^2-(\Delta_0+1)^2]},
\end{align}$$

where

$$\begin{align}
\mathcal P_{\Delta_0}(w,a)=(\Delta_0-1)w^4-2\Delta_0(\Delta_0^2-\Delta_0-1)w^2+\Delta_0^3(\Delta_0-2)(\Delta_0+1) -(2\Delta_0-1)a^2[w^2+\Delta_0(\Delta_0+1)].
\end{align}$$

The remaining normalization factors therefore give

$$\begin{align}
\boxed{X_{n,a}=-\frac{4\Delta_0(\Delta_0)_n(\Delta_0)_{n+a}(2n+a-2)!} {n!(n+a)!(2\Delta_0-1)_{2n+a+3}}\mathcal P_{\Delta_0}(\Delta_0+2n+a,a).} \tag{E4}
\end{align}$$

The energy-denominator factors appearing in the intermediate moment ratios are nonzero for the non-global physical domain $a\ge2$.

### Physical Global Channels and the Abel Sum

No gravity oscillator of angular magnitude zero or one is introduced. In those channels the scalar Green inverse is still regular and fast, while both momentum helicities obey their center conditions separately; the boundary-frequency term is absent.

Here is why (E4) extends to $a=0,1$ for $n\ge1$. Vary $a$ continuously at fixed integer $n$ and $w=\Delta_0+2n+a$. The scalar Green kernel has its regular angular-zero limit

$$\begin{align}
p_+\to y,\qquad q_a\to \frac y2\log\frac{y+1}{y-1}-1.
\end{align}$$

For momentum, let $A_\pm(x,a)$ be the power primitives obtained from the displayed first-order equation by its integrating factor $Hz^{\pm a}$ and the change $x=1/y$. Put $\delta(a)=A_-(1,a)-A_+(1,a)$ and $B(x,a)=A_-(x,a)-A_-(1,a)$. The minus numerators for the non-global and physical center prescriptions are $B+\delta$ and $B$, respectively. For $a>1$, their pairing difference is

$$\begin{align}
2\delta(a)I(a)+\delta(a)^2\frac8{a^2-1}.
\end{align}$$

Here

$$\begin{align}
K_a(x)=32x(1-x)^{a-2}(1+x)^{-a-2},\qquad I(a)=\int_0^1K_a(x)B(x,a)\,\mathrm{d}x.
\end{align}$$

The factor $8/(a^2-1)$ is the meromorphic continuation of the homogeneous-square integral from $a>1$; it is not a separately convergent integral for $0<a\le1$. At zero, $\delta(a)=O(a)$. The actual source fixes

$$\begin{align}
A_-'(1,a)=at\Delta_0\,2^{a-1}P_n^{(\Delta_0-1,a)}(-1).
\end{align}$$

Consequently the leading term of $K_aB$ near $u=1-x=0$ is proportional to $au^{a-1}$. Its Mellin denominator cancels the factor $a$, so the continued $I(a)$ is bounded at zero. The physical square behaves as $a^2u^a+O(au^{a+1})+O(u^{a+2})$, which is uniformly integrable. Hence the assembled difference tends to zero. At one, subtraction of the original sources and one integration by parts gives

$$\begin{align}
\delta(1)=\frac{\Delta_0}2[t(\Delta_0+1)-w]
\int_0^1x^{2\Delta_0-1}(1-x^2)P_n^{(\Delta_0-1,1)}(1-2x^2)\mathrm{d}x=0
\end{align}$$

for $n\ge1$, by Jacobi orthogonality. Thus $\delta(a)=O(a-1)$, the homogeneous square tends to zero, and the cross integral is integrable. The scalar fast charge vanishes in both global limits at $n\ge1$; its boundary-frequency term consequently vanishes too. The remaining integrands have uniform regular-center and fast-boundary bounds. This proves the physical limits of the assembled integral, rather than substituting into a singular individual response.

The two lowest rows are evaluated with their center conditions from the start. For example, define the regular-fast solution

$$\begin{align}
U_p(y)=\frac{y\operatorname{atanh}(1/y)-1-y\int_0^{1/y}t^p(1-t^2)^{-1}\mathrm{d}t}{p-2}, \qquad L_0U_p=y^{-p}.
\end{align}$$

With $U=\Delta_0(\Delta_0-1)U_{2\Delta_0}/2$, their scalar responses are

$$
\begin{array}{c|cc}
(n,a)&u_-&u_+\\\hline
(0,0)&U&-\dfrac{\Delta_0}{4(2\Delta_0+1)}y^{-2\Delta_0}\\[1mm]
(0,1)&-\dfrac{\sqrt H}{2\Delta_0}U'&-\dfrac{\Delta_0}{4(2\Delta_0+1)}\sqrt H\,y^{-2\Delta_0-1}.
\end{array}
$$

The momentum primitives follow directly by multiplying their displayed first-order equation by $Hz^{\sigma a}$ and integrating from the center. Inserting these responses into

$$\begin{align}
\frac{X_{n,a}}{\mathcal N^2}=32\sum_t\int_1^\infty y\left[ \left(\frac{t\Delta_0 w}{y^2}+\Delta_0(\Delta_0-2)\right)y^{-\Delta_0}Ru_t-4u_t^2+ \sum_\sigma T_{t,\sigma}^2\right]\mathrm{d}y
\end{align}$$

gives

$$\begin{align}
X_{0,0}=-\frac{2\Delta_0^2(4\Delta_0^2-5)}{4\Delta_0^2-1},\qquad X_{0,1}=\frac{4\Delta_0^2}{4\Delta_0^2-1}. \tag{E5}
\end{align}$$

For the first row the minus-channel integral reduces by scalar self-adjointness to $-4\Delta_0^2(\Delta_0-1)/(2\Delta_0-1)$, while the plus scalar and momentum terms sum to $-2\Delta_0^2(2\Delta_0-3)/(4\Delta_0^2-1)$. For the second row one may integrate the derivative response by parts and use the same power moments; its internal normalization is $\mathcal N^2=\Delta_0$. These are separate physical rows, not singular substitutions into (E4). There is also a short independent evaluation using the connected coefficients derived independently from OFPT in (49)–(51). The endpoint weights are one at level zero and $1/2,1/2$ at level one. Since the Hartree kernel is half the distinguishable crossed kernel,

$$\begin{align}
X_{0,0}=g_{0,0}^{\rm con}-\frac{x_{00}}2,\qquad X_{0,1}=\frac{g_{0,0}^{\rm con}}2-\frac{x_{00}+x_{10}}4.
\end{align}$$

Substitution gives (E5) directly. This uses the separately computed connected interaction, and supplies no external interacting energy as input.

Finally set $L=2n+a$. The weights $b_k=(\Delta_0)_k(\Delta_0)_{L-k}/[k!(L-k)!]$ obey

$$\begin{align}
\sum_{k=0}^Lb_k=\frac{(2\Delta_0)_L}{L!},\qquad \frac{\sum_{k=0}^L(2k-L)^2b_k}{\sum_{k=0}^Lb_k} =\frac{L(L+2\Delta_0)}{2\Delta_0+1}.
\end{align}$$

They follow by differentiating $(1-qz)^{-\Delta_0}(1-q/z)^{-\Delta_0}$. Inserting (E4), now with its physical global limits, gives

$$\begin{align}
\sum_{2n+a=L}(2-\delta_{a0})X_{n,a} =-\frac{4\Delta_0^2(2\Delta_0-3)}{4\Delta_0^2-1},\qquad L\ge2.
\end{align}$$

The absolute sum in each shell is uniformly bounded: the numerator grows at most as $L^4$, while the summed positive prefactor is $4\Delta_0/[(2\Delta_0-1)L(L-1)(L+2\Delta_0)(L+2\Delta_0+1)]$. Thus regrouping is legitimate at $0<q<1$. Including (E5) yields

$$\begin{align}
s_{00}^{\rm X}(q)=q^{\Delta_0}\left[-\frac{2\Delta_0^2(4\Delta_0^2-5)}{4\Delta_0^2-1} +\frac{8\Delta_0^2q}{4\Delta_0^2-1} -\frac{4\Delta_0^2(2\Delta_0-3)}{4\Delta_0^2-1}\frac{q^2}{1-q}\right].
\end{align}$$

Consequently, with $q=e^{-\tau}$,

$$\begin{align}
\boxed{s_{00}^{\rm X}(e^{-\tau}) =-\frac{4\Delta_0^2(2\Delta_0-3)}{(4\Delta_0^2-1)\tau}+O(\tau),\qquad \operatorname{FP}_{\tau=0}s_{00}^{\rm X}=0.}
\end{align}$$

## Appendix F Quantum Prescription and the Full Degenerate Space

### Absence of a Resonant Cubic

Write a boundary raising or lowering charge as $L=\kappa^{-1}\ell_{-1}+\ell_0+O(\kappa)$, where $[H_0,\ell_{-1}]=s\ell_{-1}$ and $s=\pm m$. Its order-$\kappa^0$ identity is

$$\begin{align}
[H_0,\ell_0]-s\ell_0+[V_1,\ell_{-1}]=0.
\end{align}$$

Projecting between free energies $E$ and $E+s$ removes the first two terms and gives $[\mathcal V_1,\ell_{-1}]=0$, where $\mathcal V_1=\sum_E P_EV_1P_E$. Since the leading charges contain every physical graviton creation and annihilation operator, the resonant cubic symbol is independent of all gravitational oscillators. Scalar parity excludes a scalar-only cubic. Thus $PV_1P=0$. Commutation with a linear oscillator is exact in Weyl quantization; a rotationally invariant linear gravitational remainder is excluded as well. This is the charge argument supplementing the explicit mixed-vertex resonance zero.

### Canonical Representation of the OFPT Sum

The mixed part of the anti-Hermitian generator is

$$\begin{align}
S_{g\phi^2}=\sum_{m,\sigma} \left(a_{m\sigma}^\dagger D_{m\sigma}-D_{m\sigma}^\dagger a_{m\sigma}\right), \qquad V_{g\phi^2}=[H_0,S_{g\phi^2}].
\end{align}$$

Include the pure-gravity cubic in $S$ as well. Its resonant part vanishes by the preceding projection. Therefore $V_1=[H_0,S]$ and

$$
\begin{aligned}
\widetilde H&=e^{\kappa S}He^{-\kappa S}
=H_0+\kappa^2W+\cdots,\\
W&=V_2+V_{\rm ct}+\frac12[S,V_1],\\
(P_EWP_E)_{ac}
&=(V_2+V_{\rm ct})_{ac}
+\sum_{b\ne E}\frac{(V_1)_{ab}(V_1)_{bc}}{E-E_b}.
\end{aligned}
\tag{F1}
$$

Indeed, $S_{ab}=(V_1)_{ab}/(E_a-E_b)$ off resonance. The two terms of the commutator each give half the OFPT denominator. Rotations are conserved, so the angular label on $P_E$ is suppressed. The resonant operator defined in the main text is $\mathcal W=\sum_E P_EWP_E$. This operation keeps every state in a degenerate block; it does not discard resonant states by hand.

### Measure and Ordering

For a finite regulated set of proper first-class constraints $C_A$ and gauge conditions $\chi_A$, let $M_{AB}=\{\chi_A,C_B\}$. On the constraint surface their combined bracket matrix is

$$
\mathbb D=\begin{pmatrix}0&-M^{\mathsf T}\\M&B\end{pmatrix},
\qquad \det\mathbb D=(\det M)^2.
$$

In local canonical gauge pairs $(s^A,\Pi_A)$ and physical pairs $(Q^i,P_i)$, take $s=0$ and $C_A=M_A{}^B(Q,P)\Pi_B+O(\Pi^2,s)$. Then

$$\begin{align}
\delta(C)\delta(s)|\det M|\,\mathrm{d}s\,\mathrm{d}\Pi\,\mathrm{d}Q\,\mathrm{d}P =\delta(\Pi)\delta(s)\,\mathrm{d}s\,\mathrm{d}\Pi\,\mathrm{d}Q\,\mathrm{d}P \longrightarrow \mathrm{d}Q\,\mathrm{d}P. \tag{F2}
\end{align}$$

The two determinants cancel as a paired finite-regulator expression before a functional limit is taken. In this prescription there is no leftover determinant potential. The boundary-flux momenta remain in the physical symplectic form; the stabilizers do not become oscillators. The statement is local in the regular perturbative phase space, not a global gauge-fixing assertion.

For finite complex oscillator coordinates, the Weyl product is

$$\begin{align}
f\star g=f\exp\!\left[\frac12\sum_A \left(\overleftarrow\partial_{z_A}\overrightarrow\partial_{\bar z_A} -\overleftarrow\partial_{\bar z_A}\overrightarrow\partial_{z_A}\right)\right]g.
\end{align}$$

Here $\Lambda$ denotes the bidifferential form in the exponential,

$$\begin{align}
\Lambda(f,g)=\sum_A(\partial_{z_A}f\,\partial_{\bar z_A}g-\partial_{\bar z_A}f\,\partial_{z_A}g).
\end{align}$$

For cubic symbols $S_3,V_3$,

$$\begin{align}
\frac12(S_3\star V_3-V_3\star S_3) =\frac12\Lambda(S_3,V_3)+\frac1{48}\Lambda^3(S_3,V_3). \tag{F3}
\end{align}$$

The first term has degree four; the second is a constant. A quartic generator commuted with $H_0$ has no higher Moyal term because $H_0$ is quadratic, and its Poisson term vanishes upon resonant projection. Therefore the canonical change produces no new scalar quadratic term beyond the actual Wick contractions already calculated. Its constant is removed by the vacuum subtraction. This is a property of the specified Weyl quantization, not an equivalence between arbitrary orderings.

Scalar parity restricts cubic types to $g^3$ and $g\phi^2$, and quartic types to $g^4$, $g^2\phi^2$ and $\phi^4$. A rotationally invariant pure-gravity cubic cannot have a linear Wick trace: contracting a conjugate pair would leave a mode of zero angular weight, whereas each physical graviton has angular momentum $\pm m\ne0$. It therefore creates three gravitons on the gravitational vacuum. A mixed cubic creates one. The two cubic types have no common intermediate gravitational sector in a vacuum-to-vacuum scalar matrix element.

Pure-gravity cubic/cubic and quartic terms are the same on a scalar spectator as on the vacuum; their denominators depend only on the intermediate graviton energy. Vacuum subtraction removes them. The remaining $g^2\phi^2$ contraction is (B1) together with the embedding term, already canceled by (17).

Finally, (21) fixes the complete resonant degree-four symbol to be independent of gravitational oscillators. Commutation with a linear oscillator is exact under Weyl quantization. The lower-degree remainder can contain only quadratic terms and a constant. Scalar parity forbids a mixed $g\phi$ bilinear. Positive free energy excludes two-creation or two-annihilation resonances. A scalar $b_I^\dagger b_K$ term conserving energy and angular momentum has $I=K$, while a pure-gravity number-preserving bilinear annihilates the graviton vacuum. Hence no remaining quadratic operator couples the scalar branches to graviton-excited states.

Together with the vanishing $31$ scalar coefficient, this proves invariance of the one- and two-scalar branches in the full degenerate OFPT problem. It does not require computing every pure-gravity quadratic energy. At finite regulator the canonical transformation is unitary and maps the normal-form eigenvectors back to their dressed representatives. The continuum result is an order-by-order statement at fixed external energy; it does not assert a strong interacting unitary limit on the entire free Fock space.

## Appendix G Relation to the Original Calculation

The calculation above is organized around the Hamiltonian matrix elements and intermediate-state sum. The detailed source is `Unreduced OFPT calculation.md`: §§1–4 fix the action and normalized free states; §16 derives the matched constraint contact and boundary cubic; §§17, 37 and 39 perform and regulate the mixed-cubic/contact cancellation; §§70–71 establish the tree charge identities; §72 evaluates the connected primary matrix; §§40–45 and 73–75 evaluate and renormalize the scalar trace; and §76 closes the measure, ordering and full-degeneracy argument. The direct two-state example is the contact-plus-exchange block of §16.5.

The imported-chart vertices in original §§5–15 are separate diagnostic calculations. Their bulk cubic is not combined with the maximal-slice contact used here. Original §§20–36 and 46–69 retain extensive direct component reductions. The independent all-central residue/source bridge remains without its original direct proof; the present symmetry-assisted calculation does not use it.

The free mass parameter is $\Delta_0$ throughout, and $\Delta$ denotes the physical gap after subtraction. The symbols $g$, $x$, $s$ and $C_I$ are coefficients in units of $G$; $V_1$, $V_2$ and $W$ use the $\kappa$ expansion of (6). The crossed high-spin coefficient is $u_n$.

**Verified:** Fresh Mathematica checks cover the constraint expansion, the finite-time Dyson denominator, the mixed-cubic sum reduction, the free radial virial identity, the crossed recurrence in all three bands, the ground exchange shell sum and zero constant, the fixed-momentum kinetic insertion, the removable spin-zero response, and the two-state diagonalization. The Klein–Gordon and mass-insertion integrals were checked at $n,|j|=0,1,2$ with symbolic $\Delta_0>1$; these finite examples do not replace the general mode identities. The restored polarized stress contraction was checked with xAct/xTras and `FullSimplification[]`; the spin-one and spin-two polarization norm integrals were checked in Mathematica. The mass-parameter expansion and finite counterterm reparameterization were also checked algebraically. Equation references and the TeX syntax of the mathematical fragments were checked separately.

**Assumptions:** Canonical Liouville/Dirac measure and midpoint Weyl ordering; fixed unit-radius AdS background and boundary time; Brown–Henneaux gravity and source-free fast scalar falloff $\Delta_0>1$; the common regulator and local background, kinetic and mass subtractions described above; fixed external labels; no independent order-$G$ four-scalar interaction.

**Not verified:** This rewrite does not rerun every original radial integral or the complete archived verification suite. Its arbitrary-index spectrum retains the displayed analytic Ward, Green-function, recurrence and endpoint arguments of the source calculation. A separate Casimir-free all-index summation, alternate or BF quantization, higher orders, and an interacting unitary limit on the full Fock space are not established here.

## Appendix H One-Particle Correction and Mass Renormalization

### Intermediate States and the Vacuum-Subtracted Gap

The one-particle calculation also needs the following channels, with the same conventions as the main-text table.

| External sector | Cubic action | Intermediate sector | $E-E_\alpha$ |
|---|---|---|---|
| Vacuum | Create a scalar pair and a graviton | $2\phi+1g$ | $-(\omega_K+\omega_L+m)$ |
| One scalar $I$ | Replace the scalar and create a graviton | $1\phi+1g$ | $\omega_I-\omega_K-m$ |
| One scalar $I$ | Create a pair and a graviton | $3\phi+1g$ | $-(\omega_K+\omega_L+m)$ |

For a one-scalar diagonal element, the bare gap is

$$\begin{align}
\frac{\delta E_I^{\rm bare}}{\kappa^2} ={}&\langle I|V_2|I\rangle-\langle0|V_2|0\rangle\\
&+\sum_{m,\sigma}\left[ \sum_{\beta\in\mathcal H_{1\phi}\oplus\mathcal H_{3\phi}}{}' \frac{|\langle\beta|F_{m\sigma}|I\rangle|^2} {\omega_I-\epsilon_\beta-m} -\sum_{\beta\in\mathcal H_{2\phi}} \frac{|\langle\beta|F_{m\sigma}|0\rangle|^2} {-\epsilon_\beta-m}\right].
\end{align}$$

The prime excludes states in $P$. The pure-gravity spectator terms have canceled here. The counterterm contribution is added using the same external-state normalization.

### Gravitational Contact and the Energy Weighted Sum

The $g^2\phi^2$ contact has two origins: the independent gravitational momentum in the constraint and the boundary embedding. We add its vacuum-subtracted one-body matrix element to the double-commutator term in (16). Appendix B evaluates the two sums separately; their cancellation uses the free radial equation.

Let $s_I^{\rm grav}$ and $s_I^{\rm cc,E}$ denote these two vacuum-subtracted coefficients in units of $G$. After the internal scalar completeness sum and the physical graviton sum are performed, their sum is

$$
\begin{aligned}
s_I^{\rm grav}+s_I^{\rm cc,E}
=3\int_1^\infty \mathrm{d}y\bigg[
&(y-1)^2(2y+1)(R_I')^2\\
&+\left(\Delta_0(\Delta_0-2)(2y-1)-\frac{\omega_I^2}{y^2}
+\frac{j_I^2}{(y+1)^2}\right)R_I^2\bigg]=0.
\end{aligned}
\tag{17}
$$

To obtain the zero, multiply the free equation

$$\begin{align}
-\partial_y\!\left[y(y^2-1)R_I'\right] +\left(\Delta_0(\Delta_0-2) y+\frac{j_I^2y}{y^2-1}-\frac{\omega_I^2}{y}\right)R_I=0
\end{align}$$

by $-2(y-1)R_I'$ and integrate. The boundary term is zero at the center and is $O(y^{2-2\Delta_0})$ at infinity. Appendix B gives the separately evaluated terms and the convergence argument needed to use the same scalar and graviton regulators.

### Scalar Self-Energy and Physical Mass

After the contact cancellation (17), the one-particle OFPT sum reduces to the scalar contractions of (18), together with the background and scalar counterterms. We evaluate those contractions before imposing the physical mass condition.

### Weyl Trace and Its Regulator

Let $\delta H_{22}$ be the number-preserving, connected four-leg part of $\kappa^2\mathcal K_4$ after resonant projection and normal ordering. It includes the factor $G$. Its coefficients are fixed by (10), (13) and the sum (16); their diagonalization is not needed to define the trace. Write

$$\begin{align}
\mathcal V_{IJ;KL} =\langle0|b_Jb_I(\delta H_{22}/G)b_K^\dagger b_L^\dagger|0\rangle.
\end{align}$$

The scalar Weyl contraction is

$$\begin{align}
(T_R)_{IK}=\frac12\sum_JR_J\mathcal V_{IJ;KJ}. \tag{22}
\end{align}$$

Equivalently, its diagonal is
$\frac12\sum_JR_J(1+\delta_{IJ})\langle IJ|\delta H_{22}/G|IJ\rangle$.
The factor is one for a repeated pair and one half otherwise. This expression is a bare scalar contribution, not the final energy.

Here $R_J$ without a radial argument is the internal regulator weight. Use chiral labels $p=n+\max(j,0)$, $q=n+\max(-j,0)$ for an external mode and $(P,Q)$ for an internal mode. Keep independent internal chiral times,

$$\begin{align}
R_{P,Q}(t_L,t_R) =e^{-t_L(\Delta_0/2+P)-t_R(\Delta_0/2+Q)}, \qquad t_L,t_R>0. \tag{23}
\end{align}$$

To avoid repeating the full internal sum for every external mode, transfer the tree adjoint Casimir through this partial trace, keeping its action on the regulator. For a diagonal sequence define

$$\begin{aligned}
(\mathscr Lf)_p &=(p+1)(\Delta_0+p)(f_{p+1}-f_p) +p(\Delta_0+p-1)(f_{p-1}-f_p),\\
\mathscr D_t &=2(\cosh t-1)\left(\partial_t^2+\frac{\Delta_0}2\left(1-\frac{\Delta_0}2\right)\right) +2\sinh t\,\partial_t.
\end{aligned}$$

Then $\mathscr L_pT_{p,q}=\mathscr D_{t_L}T_{p,q}$, with the analogous right equation. Solving this three-term recurrence gives a finite differential reconstruction:

$$
\begin{aligned}
\Pi_p(z)&=\sum_{k=0}^p\frac{\binom pk}{k!(\Delta_0)_k}
\prod_{r=0}^{k-1}[z-r(r+1)],\\
T_{p,q}(t_L,t_R)
&=\Pi_p(\mathscr D_{t_L})\Pi_q(\mathscr D_{t_R})T_{0,0}(t_L,t_R).
\end{aligned}
\tag{24}
$$

The $k=0$ product is one. This formula is valid at positive times because the connected coefficients evaluated below grow at most quadratically with free energy, so the exponential weights dominate every fixed number of derivatives. Appendix D derives the transfer and explains why the cutoff contribution cannot simply be dropped at zero time.

### Evaluated Ground Exchange

Split the scalar trace into its vacuum-stress, or Hartree, part and its remaining exchange part: $T=s^{\rm H}+s^{\rm X}$. For the ground external state and internal labels $(P,Q)$ put $L=P+Q$, $w=\Delta_0+L$ and $a=P-Q$. Direct contraction of (18), with the global source channels kept, gives for $L\ge2$

$$
\begin{aligned}
X_{P,Q}&=-\frac{4\Delta_0(\Delta_0)_P(\Delta_0)_Q\Gamma(L-1)}
{P!Q!(2\Delta_0-1)_{L+3}}\,\mathcal P_{\Delta_0}(w,a),\\
\mathcal P_{\Delta_0}(w,a)
&=(\Delta_0-1)w^4-2\Delta_0(\Delta_0^2-\Delta_0-1)w^2+\Delta_0^3(\Delta_0-2)(\Delta_0+1)\\
&\quad-(2\Delta_0-1)a^2[w^2+\Delta_0(\Delta_0+1)].
\end{aligned}
\tag{25}
$$

The two exceptional rows are

$$\begin{align}
X_{0,0}=-\frac{2\Delta_0^2(4\Delta_0^2-5)}{4\Delta_0^2-1}, \qquad X_{1,0}=X_{0,1}=\frac{4\Delta_0^2}{4\Delta_0^2-1}. \tag{26}
\end{align}$$

Appendix E gives the constraint and free-polynomial reduction behind this input. It is important to keep (26) separately; evaluating the beta poles of (25) at $L=0,1$ would give the wrong physical source.

The complete shell sum follows from

$$\begin{align}
\sum_{P+Q=L}\frac{(\Delta_0)_P(\Delta_0)_Q}{P!Q!}=\frac{(2\Delta_0)_L}{L!}, \qquad \frac{\sum_{P+Q=L}(P-Q)^2(\Delta_0)_P(\Delta_0)_Q/(P!Q!)}{(2\Delta_0)_L/L!} =\frac{L(L+2\Delta_0)}{2\Delta_0+1}.
\end{align}$$

For every $L\ge2$ it equals $-4\Delta_0^2(2\Delta_0-3)/(4\Delta_0^2-1)$. Thus, writing $q=e^{-\tau}$,

$$
\begin{aligned}
s^{\rm X}_{00}(\tau,\tau)
&=q^{\Delta_0}\left[-\frac{2\Delta_0^2(4\Delta_0^2-5)}{4\Delta_0^2-1}
+\frac{8\Delta_0^2q}{4\Delta_0^2-1}
-\frac{4\Delta_0^2(2\Delta_0-3)}{4\Delta_0^2-1}\frac{q^2}{1-q}\right]\\
&=-\frac{4\Delta_0^2(2\Delta_0-3)}{(4\Delta_0^2-1)\tau}+O(\tau).
\end{aligned}
\tag{27}
$$

The finite constant is zero after the actual internal sum. To reconstruct arbitrary external labels we also need the two-time kernel, since (24) differentiates away from $t_L=t_R$. Appendix D supplies its convergent integral and joint endpoint expansion. That expansion contains only odd singular degrees and has no directional finite constant. The differential operators in (24) preserve degree parity and do not lower degree. Here $\operatorname{FP}$ denotes the coefficient of $\tau^0$ after subtracting negative powers, with $\Delta_0$ and the external labels fixed. Consequently

$$\begin{align}
\operatorname{FP}_{\tau\downarrow0}s_I^{\rm X}(\tau,\tau)=0 \quad\text{for every fixed }I\text{ and }\Delta_0>1. \tag{28}
\end{align}$$

### Hartree Term and the Background

The free scalar sum is explicit. For separated Euclidean points,

$$
\begin{aligned}
G_\tau(X,Y)&=\sum_Ie^{-\tau\omega_I}
\frac{R_I(y)R_I(y')e^{ij_I(\theta-\theta')}}{2\pi}
=\frac{e^{-(\Delta_0-1)\ell}}{4\pi\sinh\ell},\\
\cosh\ell&=yy'\cosh\tau-\sqrt{y^2-1}\sqrt{y'^2-1}\cos(\theta-\theta').
\end{aligned}
\tag{29}
$$

At equal spatial points write $b=\sinh(\tau/2)$, $\lambda=\Delta_0-1$ and

$$\begin{align}
f_\lambda(s)=\frac{e^{-2\lambda\operatorname{arsinh}s}}{8\pi s\sqrt{1+s^2}}.
\end{align}$$

Differentiating (29) gives the regulated vacuum stress. Pairing it with the external constraint response, including the region $y\sim1/b$, yields

$$\begin{align}
\operatorname{FP}_{\tau\downarrow0}s_I^{\rm H} =-\frac{\Delta_0(\Delta_0-2)}3\left[(\Delta_0-1)\omega_I+\Delta_0(\Delta_0-2)\right]. \tag{30}
\end{align}$$

Appendix D carries out this finite-part calculation. It is generally mode dependent. In particular a ground-only mass subtraction cannot remove it.

Fixing the AdS vacuum requires canceling the vacuum stress before applying the constraint inverse. At finite $\tau$, let $T_\tau^{\mu\nu}$ be the stress obtained from (29). The local linear metric counterterm is

$$\begin{align}
S_{\rm ct,tad}=-\frac12\int \mathrm{d}^3x\sqrt{-\bar g}\, T_\tau^{\mu\nu}(g_{\mu\nu}-\bar g_{\mu\nu}). \tag{31}
\end{align}$$

Its lapse and spatial-conformal variations cancel both sources,

$$\begin{align}
\rho_\tau+\rho_{\rm ct}=0, \qquad Q_\tau+Q_{\rm ct}=0, \qquad Q_\tau=\langle\chi^2-\Delta_0(\Delta_0-2)\phi^2\rangle_\tau. \tag{32}
\end{align}$$

Thus $s_I^{\rm H}+s_I^{\rm ct,tad}=0$ at every positive regulator. Equation (31) fixes the metric first variation needed at this order. It does not assume a nonlinear covariant completion of the regulator functional. The radial cutoff is removed at fixed positive $\tau$, when its stress decays as $y^{-2\Delta_0}$.

### Local Exchange Subtraction

The exchange pole for an arbitrary external mode is

$$\begin{align}
s_I^{\rm X}(\tau,\tau)=-\frac{C_I}{\tau}+o(1), \qquad C_I=(4\Delta_0(\Delta_0-2)+2)M_{0,I}+2M_{2,I}, \qquad M_{\nu,I}=\int_1^\infty y^{-\nu}R_I(y)^2\,\mathrm{d}y. \tag{33}
\end{align}$$

The $R_I$ here again has its angular normalization stripped off as in (3). Appendix D matches the coefficient of the globally summed pole to these local moments for every external mode. The subtraction is therefore one local operator, not a separate fitted subtraction for each state.

With $N_0=y$ the required kinetic insertion is

$$
\begin{aligned}
S_{\rm ct,X}&=-\frac12\int \mathrm{d}^3x\sqrt{-g}\,
Z_\tau(x)g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi,
&Z_\tau&=-\frac{4G}{\tau N_0},\\
H_{\rm ct,X}&=\frac{2G}{\tau}\int_\Sigma\sqrt{\sigma^{(0)}}
\left(\chi^2-|\bar D\phi|^2\right),
&\delta E_I^{\rm ct,X}&=\frac{GC_I}{\tau}.
\end{aligned}
\tag{34}
$$

The sign in the Hamiltonian follows from the Legendre transform at fixed scalar momentum. This regulator-dependent local coefficient uses the fixed boundary-time direction. It need not be isometry invariant separately at finite $\tau$.

Regulate every external and internal scalar leg in the Hamiltonian and counterterms by $e^{-\tau\omega_I/2}$. Combining the terms before taking the limit gives

$$
\begin{aligned}
\frac{\delta E_I^{\rm scalar+ct}(\tau)}G
&=e^{-\tau\omega_I}
\left[s_I^{\rm H}+s_I^{\rm X}-s_I^{\rm H}+\frac{C_I}{\tau}\right]\\
&=e^{-\tau\omega_I}\left[s_I^{\rm X}+\frac{C_I}{\tau}\right]
\longrightarrow0.
\end{aligned}
\tag{35}
$$

Multiplying a divergent bare trace by an external weight can change its finite part. Equation (35) avoids that mismatch by giving the bare insertion and its counterterm identical weights.

### Physical Mass

Parameterize the remaining finite mass insertion by $\Delta_0\mapsto\Delta_0+G\delta\Delta_{\rm fin}$. At this order,

$$\begin{align}
(\Delta_0+G\delta\Delta_{\rm fin})(\Delta_0+G\delta\Delta_{\rm fin}-2) &=\Delta_0(\Delta_0-2)+2G(\Delta_0-1)\delta\Delta_{\rm fin}+O(G^2),\\
S_{\rm ct,m}^{\rm fin} &=-G(\Delta_0-1)\delta\Delta_{\rm fin} \int\mathrm{d}^3x\sqrt{-g}\,\phi^2.
\end{align}$$

Its one-particle matrix element is the same for every mode:

$$\begin{align}
\delta E_I^{\rm ct,m} =2G(\Delta_0-1)\delta\Delta_{\rm fin}\int_1^\infty yR_I^2\,\mathrm{d}y =G\delta\Delta_{\rm fin}.
\end{align}$$

After the calculated cancellations,

$$\begin{align}
E_{nj}^{1\mathrm p}=\Delta_0+2n+|j| +G\delta\Delta_{\rm fin}+O(G^2). \tag{36}
\end{align}$$

Define the physical ground gap by $E_{00}^{1\mathrm p}=\Delta$. Equivalently, in a scheme with the free parameter chosen to equal $\Delta$, set $\delta\Delta_{\rm fin}=0$. Then

$$\begin{align}
E_{nj}^{1\mathrm p}=\Delta+2n+|j|+O(G^2). \tag{37}
\end{align}$$

The mode-independent remaining insertion follows from the evaluated OFPT terms and their common local subtraction. Fixing only the ground energy before this calculation would not establish the cancellation for excited modes.
