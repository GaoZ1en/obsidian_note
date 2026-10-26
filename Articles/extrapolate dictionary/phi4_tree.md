# Interacting extrapolation at one bulk vertex: the scalar four-point function

## Abstract

We construct the order-$\lambda$ tree-level finite-radial four-point function of a scalar with interaction $\lambda\varphi^4/4!$ on fixed Euclidean AdS. Using the source and normalization conventions of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>), we prove convergence to the normalized contact Witten diagram at pairwise distinct boundary points for every standard dimension $\Delta>d/2$. The proof separates the moving bulk singularities from a globally dominated complement. For overlapping sources, the answer is different: the unsubtracted quartic source functional converges for $d/2<\Delta<3d/4$, whereas nonnegative overlapping sources give a divergence when $\Delta\ge3d/4$. We compute the entire finite-radius momentum kernel in a conformally coupled $\mathrm{AdS}_4$ model and prove its distributional boundary limit. A second, resonant $\mathrm{AdS}_3$ model exhibits the necessary logarithmic quartic source counterterm and a finite contact contribution originating in the thin-source layer. These results distinguish the interacting insertion functional from a radial-boundary action without assuming their equality.

## 1. Theory, state and source observable

We retain the reference geometry and its Euclidean sign conventions:

$$
g=\frac{\ell^2}{z^2}(dz^2+dx^idx^i),\qquad
\Omega=z/\ell,\qquad
\epsilon=\Omega^{-d-1}dz\,d^dx,\qquad
\int_k=\int\frac{d^dk}{(2\pi)^d}.
\tag{1.1}
$$

The bulk action is the reference's $S_{E,0}$, including its fast-branch boundary completion, plus

$$
S_{\mathrm{int}}=\frac\lambda{4!}\int_M\epsilon\,\varphi^4.
\tag{1.2}
$$

Coordinates and $\ell$ have length units; with the canonical kinetic normalization, $[\varphi]=L^{-(d-1)/2}$ and $[\lambda]=L^{d-3}$. Take $d\ge1$, $\ell>0$, $\nu=\sqrt{d^2/4+m^2\ell^2}>0$, and $\Delta=d/2+\nu$. Fields obey the source-free fast condition at $z=0$ and the decaying Poincaré-interior condition. We use the Euclidean vacuum selected by these conditions, perturbatively around the free Gaussian theory. Taking $\lambda\ge0$ avoids the elementary instability of a negative quartic potential; no nonperturbative existence claim in arbitrary dimension is needed for the tree coefficient studied here.

At a fixed slice,

$$
\mathcal O_z=\Omega(z)^{-\Delta}\varphi(z,x),\qquad
W_z[j]=\log\left\langle e^{\int d^dx\,j\mathcal O_z}\right\rangle.
\tag{1.3}
$$

The insertion source uses the conformal measure $d^dx$. As in reference (0.7)–(0.12), it is first represented by

$$
J_\eta[j](u,k)=\Omega(u)^{d+1-\Delta}\rho_\eta(u-z)j(k),
\tag{1.4}
$$

where $\rho_\eta(t)=\eta^{-1}\rho(t/\eta)$, $\rho\in C_c^\infty((-1,1))$, $\rho\ge0$, $\int\rho=1$, and $0<\eta<z/2$. The thin-layer limit is taken only after pairing. The free response satisfies $E\varphi=-J$, with

$$
G_+(z,u;k)=\ell^{1-d}(zu)^{d/2}I_\nu(kz_<)K_\nu(kz_>).
\tag{1.5}
$$

No slice oscillators are added. Define the free response to the thin insertion source by

$$
H_z(X;x)=\Omega(z)^{-\Delta}G_+((z,x),X),\qquad
\Phi_z[j](X)=\int d^dx\,H_z(X;x)j(x).
\tag{1.6}
$$

Expanding the normalized Gaussian expectation of $e^{-S_{\rm int}}$ gives

$$
W_z[j]=W_{0,z}[j]
-\frac\lambda{4!}\int_M\epsilon\,
 \bigl[\Phi_z[j]^4+6G_+(X,X)\Phi_z[j]^2\bigr]
+O(\lambda^2).
\tag{1.7}
$$

The coincident kernel in the second term requires a bulk regulator and renormalization; it is the one-loop tadpole, not part of the tree calculation. The vacuum term has canceled in the normalized ratio. Our notation below is

$$
W_{z,\mathrm{tree}}^{[4]}[j]=-\frac\lambda{4!}\int_M\epsilon\,\Phi_z[j]^4,
\qquad
G_{z,c,\mathrm{tree}}^{(4)}=-\lambda\int_M\epsilon\prod_{i=1}^4H_z(X;x_i).
\tag{1.8}
$$

The superscript $[4]$ means quartic in $j$. Thus this report does not identify the tree functional with the complete order-$\lambda$ quantum functional. The $4!$ contractions remove the vertex factorial in the connected four-point function; its sign is negative for positive $\lambda$.

## 2. Normalization of the external leg

Let $X=(u,y)$ and set

$$
q=\frac{2zu}{z^2+u^2+|x-y|^2},\qquad
A_\Delta=\frac{\Gamma(\Delta)}{2\pi^{d/2}\Gamma(1+\nu)}.
\tag{2.1}
$$

The invariant form matching (1.5) is

$$
G_+((z,x),X)=
\ell^{1-d}\frac{\Gamma(\Delta)}{2^{\Delta+1}\pi^{d/2}\Gamma(1+\nu)}
q^\Delta\,{}_2F_1\left(\frac\Delta2,\frac{\Delta+1}2;1+\nu;q^2\right).
\tag{2.2}
$$

One way to verify the identification, without assuming a quoted normalization, is to substitute it into the invariant equation

$$
q^2(1-q^2)F''+[(1-d)q-2q^3]F'-\Delta(\Delta-d)F=0.
\tag{2.3}
$$

The hypergeometric equation gives zero. Its $q\downarrow0$ branch is fast. At coincidence the gamma duplication identity fixes the local fundamental singularity to

$$
G_+\sim\frac{\Gamma((d-1)/2)}{4\pi^{(d+1)/2}}\rho_{\rm phys}^{1-d}
\quad(d>1),\qquad
G_+\sim-\frac1{2\pi}\log(\rho_{\rm phys}/\ell)\quad(d=1).
\tag{2.4}
$$

It therefore has the same metric-delta normalization as the derivative jump of (1.5). The selected endpoint problem has a unique inverse for $\nu>0$, so the two expressions agree. The hypergeometric power series is positive on $0<q<1$.

Taking the external boundary limit gives

$$
\boxed{
K_{\rm ext}(u,y;x)=\ell^{\Delta+1-d}A_\Delta
 \left(\frac{u}{u^2+|y-x|^2}\right)^\Delta.
}
\tag{2.5}
$$

Equivalently, its Fourier kernel is

$$
K_{\rm ext}(u;k)=\ell^{\Delta+1-d}
 \frac{(k/2)^\nu}{\Gamma(1+\nu)}u^{d/2}K_\nu(ku).
\tag{2.6}
$$

For comparison, if $K_D$ denotes the usual Poisson kernel normalized to leading unscaled Dirichlet data $u^{d-\Delta}\alpha$, then

$$
K_D=\frac{\Gamma(\Delta)}{\pi^{d/2}\Gamma(\nu)}
\left(\frac{u}{u^2+|y-x|^2}\right)^\Delta,
\qquad
K_{\rm ext}=\frac{\ell^{\Delta+1-d}}{2\nu}K_D.
\tag{2.7}
$$

Thus replacing an extrapolated external leg by a unit-source Poisson kernel without the displayed factor would change every four-point normalization.

## 3. A separated-point limit theorem

**Theorem 1.** For pairwise distinct $x_1,\ldots,x_4\in\mathbb R^d$, $d\ge1$ and $\Delta>d/2$, the order-$\lambda$ contact contribution obeys

$$
\lim_{z\downarrow0}G_{z,c,\mathrm{tree}}^{(4)}(x_1,\ldots,x_4)
=-\lambda\int_M\epsilon(X)\prod_{i=1}^4K_{\rm ext}(X;x_i).
\tag{3.1}
$$

Both the finite-$z$ and limiting vertex integrals are absolutely convergent. This statement is not yet a claim about arbitrary overlapping source supports.

*Proof.* Write $r_i=|y-x_i|$ and isolate the moving Euclidean half-space balls

$$
D_i(z)=\{(u-z)^2+r_i^2<z^2/4\}.
\tag{3.2}
$$

For sufficiently small $z$, these four balls are disjoint. Outside $D_i(z)$ the invariant variable for the $i$th propagator is uniformly bounded away from one (for example $q_i\le12/13$). The hypergeometric factor in (2.2) is then uniformly bounded, and

$$
0\le H_z(X;x_i)\le C
\frac{u^\Delta}{(z^2+u^2+r_i^2)^\Delta}
\le C\frac{u^\Delta}{(u^2+r_i^2)^\Delta}.
\tag{3.3}
$$

Constants here may depend on the fixed mass, $\ell$ and the external point configuration, but not on $z$.

The product on the right of (3.3), multiplied by the bulk measure, is integrable. Away from the external boundary points its small-$u$ behavior is $u^{4\Delta-d-1}$. In a boundary half-ball around a single $x_i$, polar coordinates $R_i^2=u^2+r_i^2$ give a radial factor $R_i^{2\Delta-1}dR_i$ and an integrable angular factor provided $4\Delta>d$. At infinity, $R^2=u^2+|y|^2$ gives a radial bound $R^{-4\Delta-1}dR$ with the same angular condition. Both conditions hold here.

It remains to control the excluded balls: merely claiming global domination by (3.3) would miss their moving singularities. In $D_i(z)$, $u\asymp z$, and all other external legs obey $H_z(X;x_j)\le Cz^\Delta$. With $\rho^2=(u-z)^2+r_i^2$, (2.4) implies

$$
H_z(X;x_i)\le C z^{d-1-\Delta}\rho^{1-d}
\quad(d>1).
\tag{3.4}
$$

The measure is bounded by $Cz^{-d-1}d^{d+1}X$. Hence

$$
\int_{D_i(z)}\epsilon\prod_jH_z(X;x_j)
\le Cz^{2\Delta-2}\int_0^{z/2}\rho\,d\rho
\le Cz^{2\Delta}.
\tag{3.5}
$$

For $d=1$, replace (3.4) by $Cz^{-\Delta}[1+|\log(\rho/z)|]$; its two-dimensional integral gives the same $O(z^{2\Delta})$ estimate. Thus the moving cores vanish in the limit. On their complement, the integrable majorant (3.3) applies to the product, the indicator tends to one at every interior point, and dominated convergence proves (3.1). ∎

The same estimates establish local uniformity as the external configuration varies in a compact subset of pairwise-distinct configurations. A local bulk singularity involves only one leg in this theorem and is integrable; coinciding external points require a separate distributional extension.

### 3.1 A convergent, explicitly normalized contact integral

Introduce $r_{ij}^2=|x_i-x_j|^2$ and

$$
Q(\alpha)=\sum_{i<j}\alpha_i\alpha_jr_{ij}^2,\qquad
\int_{\mathcal S_3}d^3\alpha:=
\int_{\alpha_i\ge0}\prod_{i=1}^4d\alpha_i\,
\delta\left(1-\sum_i\alpha_i\right).
\tag{3.6}
$$

Applying a Schwinger parameter to each denominator in (2.5), the Gaussian $y$ integral gives $\pi^{d/2}T^{-d/2}$, and the radial integral gives $\frac12\Gamma(2\Delta-d/2)T^{-(2\Delta-d/2)}$. Setting $t_i=T\alpha_i$ then integrates the common scale as $\Gamma(2\Delta)Q^{-2\Delta}$. Consequently

$$
\boxed{
G_{\partial,c,\mathrm{tree}}^{(4)}
=-\lambda\ell^{4\Delta+5-3d}
\frac{\Gamma(2\Delta-d/2)\Gamma(2\Delta)}
 {32\pi^{3d/2}\Gamma(1+\nu)^4}
\int_{\mathcal S_3}d^3\alpha\,
\frac{\prod_i\alpha_i^{\Delta-1}}{Q(\alpha)^{2\Delta}}.
}
\tag{3.7}
$$

For distinct $x_i$, the simplex denominator can vanish only at its vertices. Near a vertex the remaining radial simplex variable $t$ gives $t^{\Delta-1}dt$, which is integrable. The bulk radial integration requires $\Delta>d/4$. Thus the contact expression itself converges under this weaker condition; Theorem 1 concerns the specified standard propagator, not an assertion of alternative boundary conditions for every such dimension. Equation (3.7) is the contact Witten diagram with its external normalization fixed by the reference rather than by an independent CFT convention.

## 4. Overlapping sources and the convergence threshold

A separated-point theorem cannot determine the full generating functional. The following supplies a distinct source-level result.

**Theorem 2.** For $d/2<\Delta<3d/4$ and real Schwartz $j$, the paired thin-layer limit exists at fixed $z$, and

$$
\lim_{z\downarrow0}W_{z,\mathrm{tree}}^{[4]}[j]
=-\frac\lambda{4!}\int_M\epsilon\,
 \left[\int d^dx\,K_{\rm ext}(X;x)j(x)\right]^4.
\tag{4.1}
$$

No quartic source counterterm is needed in this range. The same result holds for the polarized four-linear source functional. The free quadratic source counterterms of the reference are still necessary and are not removed by this statement.

*Proof.* Positivity of the kernel and its exact zero-momentum integral give

$$
\int d^dx\,H_z(u,y;x)=a_\nu
\begin{cases}
u^\Delta z^{-2\nu},&u\le z,\\
u^{d-\Delta},&u\ge z,
\end{cases}
\qquad a_\nu=\frac{\ell^{\Delta+1-d}}{2\nu}.
\tag{4.2}
$$

Young's convolution inequality bounds $\|\Phi_z(u,\cdot)\|_4$ by this integral times $\|j\|_4$. Let $p=3d-4\Delta=d-4\nu>0$ and $z<\delta$. Then the entire small-$u$ part is bounded by

$$
\int_0^\delta du\,\left(\frac\ell u\right)^{d+1}
\|\Phi_z(u)\|_4^4
\le\ell^{d+1}a_\nu^4\|j\|_4^4
\left[\frac{z^p}{4\Delta-d}+\frac{\delta^p-z^p}{p}\right]
\le C\delta^p\|j\|_4^4.
\tag{4.3}
$$

This controls both sides of the shrinking insertion slice. For $u>2z$, (3.3) holds for every boundary separation; it yields $\|H_z(u,\cdot)\|_4^4\le Cu^{d-4\Delta}$. Using $\|\Phi_z\|_4\le\|H_z\|_4\|j\|_1$, the tail $u>L$ is bounded by $CL^{-4\Delta}\|j\|_1^4$. On $\delta\le u\le L$, the kernels converge in spatial $L^1$, giving convergence of $\Phi_z$ in $L^4$ and hence of the quartic integral. Removing $\delta$ and $L$ proves (4.1). For the paired mollifier limit, keep the slice $z>0$ fixed and let the sampled radii $s$ lie in $[z/2,3z/2]$. Positivity, pointwise kernel continuity away from a measure-zero spatial coincidence, and the continuous exact masses (4.2) imply $H_s(u,\cdot)\to H_z(u,\cdot)$ in spatial $L^1$ (the nonnegative-function form of Scheffé's lemma). At small $u$ the masses are uniformly bounded by $C_z u^\Delta$, at large $u$ the preceding $L^4$ tail bound applies, and the intermediate radial interval has bounded masses. Young's inequality and these radial majorants give convergence of the mollified response in $L^4(M,\epsilon)$, hence of its quartic integral. Polarization gives the mixed-source result. ∎

The threshold is sharp for an unsubtracted statement on all Schwartz sources. For smooth nonnegative $j$ that is positive on a ball,

$$
\Phi_\partial[j](u,y)\sim a_\nu u^{d-\Delta}j(y),
\qquad
\epsilon\,\Phi_\partial^4\sim
\ell^{d+1}a_\nu^4u^{3d-4\Delta-1}du\,d^dy\,j(y)^4.
\tag{4.4}
$$

This is not only a formal diagnostic. For $u\ge2z$, positivity of the hypergeometric series gives a lower bound of the form (3.3) with the inequality reversed and a smaller constant. Integrating external points over $|x-y|<u$ inside the positivity ball gives $\Phi_z\ge C u^{d-\Delta}$. Thus the finite-$z$ quartic integral is bounded below by $C\int_{2z}^{\delta}u^{p-1}du$. It diverges logarithmically if $\Delta=3d/4$ and by a power if $\Delta>3d/4$.

These are interaction-dependent source singularities. A quadratic subtraction cannot remove them. Higher dimensions can require derivative source terms; for sufficiently irrelevant sources further semilocal structures must also be analyzed. We do not posit a universal subtraction list from this power count. The next two examples compute both a convergent case and the first logarithmic case explicitly.

## 5. Exact finite-radius four-point function in $\mathrm{AdS}_4$

Set $d=3$, $m^2\ell^2=-2$, $\nu=1/2$, $\Delta=2$. The conformal field redefinition

$$
\varphi(u,y)=\frac u\ell\chi(u,y)
\tag{5.1}
$$

turns the free fast-branch theory into a massless scalar on the flat half-space with Dirichlet boundary condition. Direct substitution in the action verifies the cancellation of the bulk potential against the conformal cross term; the remaining endpoint term vanishes for the source-free fast branch. Moreover,

$$
S_{\rm int}=\frac\lambda{4!}\int_0^\infty du\int d^3y\,\chi^4,
\qquad
\mathcal O_z=\frac\ell z\chi(z,x).
\tag{5.2}
$$

The insertion is not prescribed Dirichlet data at the finite slice. The Dirichlet half-space covariance is

$$
g_D(z,u;k)=\frac{e^{-k|u-z|}-e^{-k(u+z)}}{2k}
=\frac{\sinh(kz_<)}k e^{-kz_>},\qquad
G_+(z,u;k)=\frac{zu}{\ell^2}g_D(z,u;k).
\tag{5.3}
$$

Define $p_z(u;k)=g_D(z,u;k)/z$ and $\operatorname{sinhc}(t)=\sinh(t)/t$, with value one at zero. For four momenta summing to zero, write $k_i=|\mathbf k_i|$ and $s=\sum_i k_i$. Strip only the momentum-conserving delta function, not the external covariances:

$$
\langle\mathcal O_z(k_1)\cdots\mathcal O_z(k_4)\rangle_{c,\mathrm{tree}}
=(2\pi)^3\delta^{(3)}\left(\sum_i\mathbf k_i\right)\mathcal C_z^{(4)}(k_i),
\qquad
\mathcal C_z^{(4)}=-\lambda\ell^4F_z(k_i),
\tag{5.4}
$$

$$
F_z=\int_0^\infty du\prod_i p_z(u;k_i)
=e^{-sz}\left[
 z\int_0^1dv\,v^4\prod_i\operatorname{sinhc}(k_i zv)
 +\frac1s\prod_i\operatorname{sinhc}(k_i z)
\right].
\tag{5.5}
$$

The expression is continuous when individual $k_i$ vanish, as long as $s>0$. It also has a finite closed sign-sum form. Put $s_\sigma=\sum_i\sigma_i k_i$, $\sigma_i\in\{-1,1\}$, and $E_z(a)=(e^{az}-1)/a$, $E_z(0)=z$. Then

$$
F_z=\frac{e^{-sz}}{z^4\prod_i k_i}
\left[
 \frac1{16}\sum_{\sigma\in\{-1,1\}^4}
    \left(\prod_i\sigma_i\right)E_z(s_\sigma)
 +\frac{\prod_i\sinh(k_i z)}s
\right].
\tag{5.6}
$$

The apparent zero denominators in (5.6) are removable; (5.5) is preferable for stable small-$z$ numerical evaluation.

Expanding the two radial regions separately gives

$$
F_z=\frac1s-\frac45z
+z^2\left[\frac{3s}{10}+\frac{\sum_i k_i^2}{6s}\right]+O(z^3).
\tag{5.7}
$$

Thus the exact boundary momentum correlator is

$$
\boxed{\mathcal C_\partial^{(4)}(k_i)=-\frac{\lambda\ell^4}{\sum_i k_i}.}
\tag{5.8}
$$

Here (2.6) is $K_{\rm ext}(u;k)=u e^{-ku}$; inserting four such legs into the bulk vertex produces exactly $-\lambda\ell^4\int_0^\infty du\,e^{-su}$, independently checking (5.8). The position-space result is (3.7) at $d=3,\Delta=2$, with coefficient $-9\lambda\ell^4/(4\pi^6)$ multiplying $\int_{\mathcal S_3}\prod_i\alpha_i\,Q^{-4}$.

### 5.1 Distributional generating functional, not only a momentum limit

For all $k\ge0$,

$$
0\le p_z(u;k)\le
\begin{cases}
(u/z)e^{-k(z-u)},&u<z,\\
e^{-k(u-z)},&u>z.
\end{cases}
\tag{5.9}
$$

Consequently $0\le F_z\le2/s$. The singularity $1/s$ is locally integrable near simultaneous zero in the nine independent momentum variables after imposing momentum conservation. Schwartz decay controls infinity, including configurations with one momentum zero. Therefore

$$
W_{\partial,\mathrm{tree}}^{[4]}[j]
=-\frac{\lambda\ell^4}{4!}
\int\prod_i\frac{d^3k_i}{(2\pi)^3}
 (2\pi)^3\delta^{(3)}\left(\sum_i\mathbf k_i\right)
\frac{\prod_i j(k_i)}{\sum_i k_i}
\tag{5.10}
$$

is the limit for every real Schwartz source. The bound also proves convergence against general Schwartz four-point momentum tests after imposing the delta function. No quartic local counterterm is necessary. The first correction in (5.7) is local and vanishes as $z\downarrow0$; it is not a divergence to be subtracted.

The full tree source functional through quartic order still requires the free subtraction. At $\nu=1/2$, the reference gives

$$
C_z^{(+)}(k)=\frac{\ell^2(1-e^{-2kz})}{2kz^2},\qquad
P_z^{[2]}=\frac{\ell^2}{z},\qquad
W_{\partial,0}[j]=-\frac{\ell^2}{2}\int_k k|j(k)|^2.
\tag{5.11}
$$

The subtracted quadratic term plus (5.10) defines the boundary tree functional at this perturbative order. As in the reference, it is a renormalized insertion functional, not necessarily a positive Euclidean Gaussian moment functional after local subtractions.

## 6. A logarithmic quartic source term in $\mathrm{AdS}_3$

Now take $d=2$, $m^2\ell^2=-3/4$, $\nu=1/2$, $\Delta=3/2=3d/4$. The conformal transformation is $\varphi=(u/\ell)^{1/2}\chi$. The insertion is again $\mathcal O_z=(\ell/z)\chi$, and the free flat covariance is still (5.3) for $\chi$, but the interaction is now

$$
S_{\rm int}=\frac{\lambda\ell}{4!}\int_0^\infty\frac{du}{u}\int d^2y\,\chi^4.
\tag{6.1}
$$

Thus the delta-stripped connected kernel is $-\lambda\ell^5F_z^{\log}$, where

$$
F_z^{\log}
=e^{-sz}\int_0^1dv\,v^3\prod_i\operatorname{sinhc}(k_i zv)
+\left[\prod_i\operatorname{sinhc}(k_i z)\right]E_1(sz),
\quad E_1(t)=\int_t^\infty\frac{e^{-v}}v\,dv.
\tag{6.2}
$$

For fixed momenta,

$$
F_z^{\log}=-\log(sz)-\gamma_E+\frac14+\frac{3s}{4}z
+O\bigl(z^2[1+|\log(sz)|]\bigr).
\tag{6.3}
$$

The constant $1/4$ comes from the inner region $0<u<z$, not from the limiting Witten integrand. Indeed the latter would give only the regulated integral $E_1(s\varepsilon)$. This is an explicit finite contact mismatch between an insertion-layer regulator and an imposed radial cutoff, even before loops.

To specify a complete scheme, choose an inverse-length scale $\mu>0$ and subtract the momentum-independent quartic multiplier

$$
P_z^{[4]}(\mu)=-\log(\mu z)-\gamma_E+\frac14.
\tag{6.4}
$$

This extends the reference's policy of explicitly fixing finite local terms; the reference itself does not prescribe an interacting quartic scheme. The resulting nonlocal multiplier is

$$
\lim_{z\downarrow0}\bigl[F_z^{\log}-P_z^{[4]}(\mu)\bigr]
=-\log\frac{s}{\mu}.
\tag{6.5}
$$

In terms of the source functional, the subtraction means

$$
W_{z,\mathrm{ren}}^{[4]}[j]
=W_{z,\mathrm{tree}}^{[4]}[j]
+\frac{\lambda\ell^5}{4!}P_z^{[4]}(\mu)\int d^2x\,j(x)^4,
\tag{6.6}
$$

$$
\boxed{
W_{\partial,\mathrm{ren}}^{[4]}[j]
=\frac{\lambda\ell^5}{4!}
\int\prod_i\frac{d^2k_i}{(2\pi)^2}
 (2\pi)^2\delta^{(2)}\left(\sum_i\mathbf k_i\right)
\prod_i j(k_i)\log\frac{\sum_i k_i}{\mu}.
}
\tag{6.7}
$$

The corresponding connected four-point momentum multiplier is $+\lambda\ell^5\log(s/\mu)$. This sign change relative to the negative raw vertex is due to the renormalized finite part of its logarithmically divergent integral, not a change of the Euclidean vertex convention. Differentiating the scale gives the local relation

$$
\mu\partial_\mu W_{\partial,\mathrm{ren}}^{[4]}
=-\frac{\lambda\ell^5}{4!}\int d^2x\,j^4.
\tag{6.8}
$$

An extra finite constant in (6.4) changes only a four-point contact term. At pairwise distinct positions all these choices agree with Theorem 1. The quadratic subtraction is still (5.11), with a two-dimensional momentum measure.

### 6.1 Proof of the subtracted source limit

Write $t=sz$ and $r_i=k_i/s$, so $0\le r_i\le1$ and $\sum r_i=1$. The small-$t$ expansion of (6.2) is uniform on this compact simplex, including zero $r_i$ by the analytic definition of $\operatorname{sinhc}$. Thus $F_z^{\log}+\log t$ is uniformly bounded for $0<t\le1$. For $t\ge1$, (5.9) gives

$$
0\le F_z^{\log}\le\frac14+e^t E_1(t)\le\frac14+\frac1t.
\tag{6.9}
$$

If $0<\mu z\le1$, then in the large-$t$ region $1\le t\le s/\mu$, and $|\log(\mu z)|\le\log(s/\mu)$. Combining both regions proves

$$
\left|F_z^{\log}-P_z^{[4]}(\mu)\right|
\le C\left[1+\left|\log\frac{s}{\mu}\right|\right].
\tag{6.10}
$$

This is integrable against Schwartz momentum tests on the six-dimensional momentum-conservation surface. Dominated convergence establishes (6.7), including overlapping sources, rather than merely giving a pointwise expansion at fixed momenta.

## 7. Extension to one polynomial vertex and limits of the result

The proofs isolate which structures depend on the valence of the vertex. For $S_{\rm int}=\lambda_n\int\epsilon\,\varphi^n/n!$, $n\ge3$, the single-vertex connected correlator is $-\lambda_n\int\epsilon\prod_iH_z$. For standard $\Delta>d/2$ and pairwise distinct insertions:

- The complement of the moving cores is dominated by the limiting contact integrand, whose convergence requires $n\Delta>d$ and $(n-2)\Delta>0$.
- A moving core contributes $O(z^{(n-2)\Delta})$ and hence vanishes.
- The normalized contact result is

$$
-\lambda_n\ell^{n(\Delta+1-d)+d+1}
\frac{\Gamma((n\Delta-d)/2)\Gamma(n\Delta/2)}
 {2^{n+1}\pi^{(n-1)d/2}\Gamma(1+\nu)^n}
\int_{\mathcal S_{n-1}}d^{n-1}\alpha\,
\frac{\prod_i\alpha_i^{\Delta-1}}{Q(\alpha)^{n\Delta/2}}.
\tag{7.1}
$$

For the source functional, the $L^4$ argument becomes an $L^n$ argument. It proves an unsubtracted single-vertex source limit in the range

$$
\frac d2<\Delta<d\left(1-\frac1n\right).
\tag{7.2}
$$

Overlapping nonnegative sources exhibit the logarithmic obstruction at equality and a power obstruction above it. This is a one-vertex statement, not a proof for all multi-vertex trees. An odd polynomial potential may also require treating its perturbative series formally rather than asserting a stable nonperturbative Euclidean measure.

The calculation makes three distinctions concrete. First, replacing external legs by their boundary limits is justified for distinct insertions but does not establish a source-functional limit. Second, interaction-dependent local source counterterms can already appear at tree level; they are not bulk loop counterterms. Third, the finite-source layer has a measurable finite contact contribution which a differently regulated on-shell action need not reproduce without a matching term.

The report establishes no all-order interacting operator algebra or Lorentzian operator-topology theorem. Bulk tadpole and other loop renormalization, multiple vertices, radial evolution involving additional conjugate data, and analytic continuation remain separate problems. In particular the coincident $G_+(X,X)$ term in (1.7) has not been computed or discarded as zero.

## 8. Reproducible checks and evidence

The [Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree_checks.wl>) verifies the conformal action density, the half-order Bessel/image Green function, the invariant propagator in two elementary dimensions, the general local-singularity coefficient, the finite-radius expansion, the logarithmic constants and the contact-parameter normalization. All nine symbolic residuals are zero, with no messages. It compares the sign-sum expression with the radial integral, including a case with vanishing sign-sums, and tests both finite and subtracted limits. The [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/phi4_tree_checks_results.txt>) records residuals, messages and precision.

Two fresh independent derivations were commissioned with the reference geometry and Green function, but without the proposed answers: one for the general separated-point theorem and normalization, and one for the conformal finite-radius calculation. They agree on the normalized external leg, moving-core estimate, source divergence threshold, exact $\mathrm{AdS}_4$ kernel and its $-4z/5$ correction, and the logarithmic $\mathrm{AdS}_3$ term with its inner-layer constant $1/4$. The proofs for overlapping sources and the full subtraction prescription are stated explicitly above; finite tests alone do not establish them.

**Verified analytically:** the single-vertex perturbative coefficient and sign; separated-point boundary interchange; the convergent-window source theorem; the overlapping-source divergence counterexample; exact conformal finite-radius kernels and both distributional limits.

**Assumptions:** fixed Poincaré Euclidean AdS, fast boundary condition, decaying interior endpoint, $\nu>0$, tree level at one local nonderivative vertex, and the explicitly specified source/contact prescriptions.

**Not verified here:** interacting BF endpoint; loop renormalization; general multivertex trees; nonperturbative interacting existence; Lorentzian Wightman limits; a complete boundary CFT or a genuine holographic dual. The boundary comparison in this report is with normalized contact Witten correlators, not an independent dual-CFT computation.
