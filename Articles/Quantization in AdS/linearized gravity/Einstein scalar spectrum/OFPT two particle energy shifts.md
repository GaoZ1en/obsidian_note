# Two-Particle Energy Shifts from OFPT in Global AdS3

This note recalculates the connected $O(G)$ two-scalar energy shifts in [two particle spectrum.md](two%20particle%20spectrum.md), starting from the canonical Hamiltonian and finite-time old-fashioned perturbation theory (OFPT). The dynamical calculation below solves the gravitational constraints before quantization. It gives an instantaneous four-scalar vertex whose matrix elements can be evaluated without constructing an Einstein response kernel.

The first two primary shifts obtained this way are

$$\begin{aligned}
\gamma_{00}&=\frac{2G\Delta^2(7+2\Delta-8\Delta^2)}{(2\Delta-1)(2\Delta+1)},\\
\gamma_{10}&=-\frac{2G\Delta^2(8\Delta^2+46\Delta+47)}{(2\Delta+1)(2\Delta+3)}.
\end{aligned}$$

The same calculation gives an exact finite-sum procedure for every prescribed radial level. Global-primary projection then recovers the spinning coefficients. The accompanying fresh calculation checks the source's closed expressions for all $n+|\ell|\leq8$, with even $\ell$. Section 9 gives an analytic completion for arbitrary $n,\ell$: normalized primary sources determine the annihilation channel, and a crossed-Casimir equation determines the remaining low-spin coefficients once the stress-exchange high-spin tail is supplied. That tail uses Lorentzian inversion. Thus the all-index completion has an explicit additional analytic input; it is not a direct summation of the OFPT Jacobi–Hahn formula.

The object being reproduced is the connected scalar-primary branch with fixed physical single-particle mass. This is a calculation in constraint-reduced OFPT; it is not an explicit evaluation of every boundary-graviton intermediate state in the unreduced gravity–matter Hilbert space. The relation between these two organizations, and the restrictions on interpreting the answer as a complete physical spectrum, are stated below.

## 1. Conventions and the free states

Take unit AdS radius, signature $(-,+,+)$, and $\kappa^2=16\pi G>0$. The action, including the timelike boundary term, is

$$\begin{aligned}
S_R={}&\frac1{\kappa^2}\int_{M_R}d^3x\sqrt{-g}(R+2)
+\frac2{\kappa^2}\int_{\Gamma_R}d^2x\sqrt{-\gamma}(K-1)\\
&-\frac12\int_{M_R}d^3x\sqrt{-g}
\left((\nabla\phi)^2+m^2\phi^2\right).
\end{aligned}$$

The center is smooth; the metric satisfies Brown–Henneaux falloffs; boundary time is fixed. The real scalar satisfies source-free standard boundary conditions, $\phi=O(r^{-\Delta})$, with $\Delta>1$. There is no additional independent $O(G)$ four-scalar coupling. Use the physical mass prescription

$$\begin{aligned}
E^{(1)}_{00}=\Delta,\qquad m_{\mathrm R}^2=\Delta(\Delta-2).
\end{aligned}$$

All energies below are measured above the vacuum. Vacuum and one-particle contributions are removed using this prescription; they are not independently calculated bare self-energies. Write $m^2=\Delta(\Delta-2)$ in the leading interaction.

For $f=1+r^2$, the background and normalized free modes are

$$\begin{aligned}
ds_0^2&=-f\,dt^2+\frac{dr^2}{f}+r^2d\varphi^2,\\
u_{nj}&=\sqrt{\frac{n!\Gamma(n+\Delta+|j|)}
{2\pi\Gamma(n+\Delta)\Gamma(n+1+|j|)}}
e^{-i\omega_{nj}t+ij\varphi}
r^{|j|}f^{-(\Delta+|j|)/2}
P_n^{(\Delta-1,|j|)}\!\left(\frac{r^2-1}{r^2+1}\right),\\
\omega_{nj}&=\Delta+2n+|j|.
\end{aligned}$$

Their normalization is the free CPS/Klein–Gordon normalization

$$\begin{aligned}
i\int_0^\infty dr\int_0^{2\pi}d\varphi\,
\frac r f\left(u_I^*\partial_tu_J-(\partial_tu_I^*)u_J\right)=\delta_{IJ}.
\end{aligned}$$

Thus

$$\begin{aligned}
\phi^{(0)}&=\sum_I(b_Iu_I+b_I^\dagger u_I^*),&
[b_I,b_J^\dagger]&=\delta_{IJ},\\
H_0&=\sum_I\omega_I b_I^\dagger b_I,&
|IJ\rangle&=\frac{b_I^\dagger b_J^\dagger|0\rangle}{\sqrt{1+\delta_{IJ}}}.
\end{aligned}$$

Here $I=(n_I,j_I)$, $\delta_{IJ}=\delta_{n_In_J}\delta_{j_Ij_J}$, and $IJ$ is an unordered pair. Throughout this note $H_4$ has its factor $\kappa^2$ stripped off, whereas $\gamma_{n\ell}$ and every energy-shift matrix $V$ include it.

## 2. Where the OFPT denominators enter

Following [the perturbation formalism](../../perturbation/formalism.md), start with finite-time evolution rather than an AdS in/out S-matrix. In an unreduced description write

$$\begin{aligned}
H=H_0+\kappa V_1+\kappa^2V_2+\cdots,\qquad
U(T,0)=\mathcal T\exp\left[-i\int_0^Tdt\,V_I(t)\right].
\end{aligned}$$

Let $P$ project onto a complete free degenerate subspace of energy $E_0$ and fixed total angular momentum; set $Q=1-P$. If $PV_1P=0$, its leading effective Hamiltonian is

$$\begin{aligned}
\delta H_P=\kappa^2\left[
PV_2P+PV_1Q\frac1{E_0-QH_0Q}QV_1P\right]_{\mathrm{connected,\ mass\ fixed}}.
\end{aligned}\tag{2.1}$$

The inverse in (2.1) acts only on the nonresonant $Q$ subspace.

Inserting a free state $|a\rangle$ between the two cubic vertices gives

$$\begin{aligned}
(\delta H_P)_{BA}=\kappa^2\left[
\langle B|V_2|A\rangle+
\sum_{a\in Q}\frac{\langle B|V_1|a\rangle\langle a|V_1|A\rangle}
{E_0-E_a^{(0)}}\right]_{\mathrm{connected,\ mass\ fixed}}.
\end{aligned}\tag{2.2}$$

For clarity, the energy denominator follows directly from the ordered time integral. With $\delta E=E_0-E_a^{(0)}\ne0$,

$$\begin{aligned}
\int_0^Tdt\int_0^t ds\,e^{i\delta E(t-s)}
=\frac{iT}{\delta E}+\frac{1-e^{i\delta E T}}{(\delta E)^2}.
\end{aligned}$$

The Dyson prefactor is $(-i\kappa)^2=-\kappa^2$. The first term is therefore $-iT$ times the second term in (2.2); the remaining term is bounded at fixed nonzero $\delta E$. At $\delta E=0$ the integral is $T^2/2$: this signals a resonant state to retain in $P$, not a denominator to omit or assign a principal value. If $PV_1P\ne0$, that first-order matrix must also be diagonalized.

For the $h\phi^2$ vertex, acting on two scalars can produce one graviton with zero, two, or four scalars. The pair-creation ordering is part of the calculation for a real scalar. The familiar identity for a dynamical oscillator of frequency $\Omega>0$ illustrates the two time orderings:

$$\begin{aligned}
\frac1{2\Omega}\left(\frac1{\omega-\Omega}-\frac1{\omega+\Omega}\right)
=\frac1{\omega^2-\Omega^2}.
\end{aligned}$$

Constraint fields are different: they have no independent oscillator states to insert into (2.2). Solving them generates an instantaneous interaction in $V_2$. This is the organization used below. A constraint-mediated exchange already included in that interaction must not be added again as a second exchange term.

## 3. Obtain the interaction from the boundary Hamiltonian

### 3.1 Circular constraints at fixed canonical variables

To compute matrix elements with four circular external scalar modes, use polar areal gauge

$$\begin{aligned}
ds^2&=-F e^{-2d}dt^2+F^{-1}dr^2+r^2d\varphi^2,\\
F&=f-\kappa^2M,\qquad
\Pi=\frac{e^d}{F}\partial_t\phi,\qquad
X=(\partial_r\phi)^2+\Pi^2.
\end{aligned}$$

The exact radial equations are

$$\begin{aligned}
\partial_rM&=\frac r2\left(FX+m^2\phi^2\right),&M(t,0)&=0,\\
\partial_rd&=-\frac{\kappa^2r}{2}X,&d(t,\infty)&=0,\\
\partial_tM&=rF^2e^{-d}\Pi\partial_r\phi.
\end{aligned}\tag{3.1}$$

They follow from $\mathcal E_{\mu\nu}=\kappa^2T_{\mu\nu}/2$ and are consistent with the scalar equation. The first two equations fix the constraints on each slice; the last propagates the mass data.

The momentum conjugate to the circular scalar is

$$\begin{aligned}
p(r)=2\pi r\Pi(r),\qquad
\theta_\Sigma=\int_0^\infty dr\,p\,\delta\phi,\qquad
[\phi(r),p(s)]=i\delta(r-s).
\end{aligned}\tag{3.2}$$

One can see the gravitational reduction directly in ADM variables. Write $K^\Sigma_{ij}$ for the extrinsic curvature of the spatial slice, distinguished from the timelike-boundary curvature in the action. Here $q_{\varphi\varphi}=r^2$ is fixed, $q_{r\varphi}=0$, and the zero-shift slicing has $K^\Sigma_{\varphi\varphi}=0$. Consequently the radial gravitational momentum, proportional to $(K^\Sigma)^{rr}-q^{rr}K^\Sigma$, vanishes. The remaining gravitational momentum multiplies $\delta q_{\varphi\varphi}=0$. The boundary time and the boundary/corner convention are still retained; this reduction does not discard the boundary Hamiltonian. It also does not quotient physical noncircular Brown–Henneaux modes.

Expand the constraints at fixed $(\phi,p)$, equivalently fixed $(\phi,\Pi)$:

$$\begin{aligned}
M&=M_0+\kappa^2M_2+O(\kappa^4),\\
M_0(r)&=\frac12\int_0^r ds\,s\left[f(s)X(s)+m^2\phi(s)^2\right],\\
M_2(r)&=-\frac12\int_0^r ds\,sX(s)M_0(s).
\end{aligned}\tag{3.3}$$

Holding $\partial_t\phi$ fixed instead would change the canonical expansion, since $\partial_t\phi=Fe^{-d}\Pi$ already contains gravitational corrections.

### 3.2 Keep the surface energy

With the action above, the regulated boundary stress tensor in these conventions is

$$\begin{aligned}
T^{\mathrm{BY}}_{ab}=\frac2{\kappa^2}
\left[-K_{ab}+(K-1)\gamma_{ab}\right].
\end{aligned}$$

Its charge for fixed boundary-time translation is

$$\begin{aligned}
H^{\mathrm{BY}}(R)=\frac{4\pi}{\kappa^2}e^{-d(R)}
\left[R\sqrt{F(R)}-F(R)\right].
\end{aligned}$$

For $F=R^2+1-\kappa^2M_\infty+o(1)$ and $d\to0$, this tends to
$-2\pi/\kappa^2+2\pi M_\infty$. Subtracting the global-AdS vacuum gives

$$\begin{aligned}
\boxed{H=2\pi M_\infty=H_0+\kappa^2H_4+O(\kappa^4),}\\
H_0=\pi\int_0^\infty dr\,r\left(fX+m^2\phi^2\right),\qquad
\boxed{H_4=-\pi\int_0^\infty dr\,rX(r)M_0(r).}
\end{aligned}\tag{3.4}$$

This is the quartic vertex to quantize. Its sign and normalization were obtained from the boundary charge. Notice that $M_2$ occurs at order $\kappa^4$ in the metric $F$, but at order $\kappa^2$ in the energy: the gravitational charge carries $1/\kappa^2$.

There is also a useful exact canonical check. The linear equation for $M$ in (3.1) implies

$$\begin{aligned}
d(r)&=\frac{\kappa^2}{2}\int_r^\infty ds\,sX(s),\\
H&=\pi\int_0^\infty dr\,r\left(fX+m^2\phi^2\right)e^{-d(r)},\\
\delta H&=2\pi\int_0^\infty dr\,r e^{-d}
\left[F\Pi\,\delta\Pi+F\partial_r\phi\,\partial_r\delta\phi
+m^2\phi\,\delta\phi\right].
\end{aligned}$$

Thus $\delta H/\delta p=Fe^{-d}\Pi=\partial_t\phi$, and the other Hamilton equation is the scalar equation. The radial integration-by-parts term is
$[2\pi r e^{-d}F\partial_r\phi\,\delta\phi]_0^\infty$; it vanishes by center regularity and, at infinity, as $O(r^{2-2\Delta})$. This check fixes the canonical interpretation of (3.4) without identifying a time-nonlocal effective Lagrangian with minus a Hamiltonian.

### 3.3 The order of OFPT after reduction

Use free modes in $\kappa^2H_4$ and Wick order the complete quartic expression. Its connected four-leg matrix elements are

$$\begin{aligned}
V_{IJ,KL}=\kappa^2\langle IJ|:H_4:|KL\rangle.
\end{aligned}\tag{3.5}$$

There is no cubic scalar vertex on this reduced branch. The leading Dyson term is consequently a single insertion,

$$\begin{aligned}
\langle IJ|U^{(1)}(T,0)|KL\rangle
=-i V_{IJ,KL}\int_0^Tdt\,
e^{i(\omega_I+\omega_J-\omega_K-\omega_L)t}.
\end{aligned}$$

Inside a degenerate block it equals $-iTV_{IJ,KL}$, so the eigenvalues of $V$ are the leading energy shifts. Two insertions of $\kappa^2H_4$ first contribute at $O(G^2)$. This is why there is no additional $O(G)$ scalar intermediate-state sum after (3.4).

Normal ordering here selects the connected tree four-leg part. It is not a calculation of a regulator-dependent mass counterterm. In an unreduced calculation the vacuum and one-particle parts of (2.2) must be removed by the same mass prescription before comparison.

All four external legs in the circular matrix have $j=0$, so the exchanged bilinear source has zero angular momentum. In three-dimensional Einstein gravity this sourced circular metric is constrained; there is no independent circular bulk-graviton oscillator. This fact makes (3.4) a direct way of computing these connected matrix elements. It does not make the circular two-scalar states a closed quantum subspace: noncircular scalar pairs of the same total energy and angular momentum also exist.

## 4. Lowest pair: a complete integral

Let $b=b_{0,0}$, temporarily treat $b$ and $b^\dagger$ as commuting amplitudes, and take $t=0$:

$$\begin{aligned}
u(r)&=\frac{f^{-\Delta/2}}{\sqrt{2\pi}},&
\phi&=u(b+b^\dagger),&
\Pi&=-\frac{i\Delta u}{f}(b-b^\dagger),\\
X&=\frac{\Delta^2u^2}{f^2}
\left[r^2(b+b^\dagger)^2-(b-b^\dagger)^2\right],\\
M_0(r)&=\frac{\Delta}{4\pi}
\left[2b^\dagger b(1-f^{1-\Delta})
-r^2f^{-\Delta}\left(b^2+(b^\dagger)^2\right)\right].
\end{aligned}$$

This $M_0$ is obtained by integrating (3.3), with $M_0(0)=0$. It is not a fitted potential. Set $x=f^{-1}$ so that $r\,dr=-dx/(2x^2)$. The coefficient of $(b^\dagger)^2b^2$ in $H_4$ is

$$\begin{aligned}
a_0=-\frac{\Delta^3}{16\pi}\int_0^1dx\,x^{\Delta-1}
\left[4(1-x^{\Delta-1})
-2(1-2x)(1-x)x^{\Delta-1}\right].
\end{aligned}\tag{4.1}$$

The first term multiplies the two mixed-frequency bilinears; the second multiplies the same-sign bilinears $bb$ and $b^\dagger b^\dagger$. Their separate values are

$$\begin{aligned}
a_0^{\mathrm x}&=-\frac{\Delta^2(\Delta-1)}{4\pi(2\Delta-1)},\\
a_0^{\mathrm s}&=-\frac{\Delta^2(2\Delta-3)}{16\pi(4\Delta^2-1)},\\
a_0&=\frac{\Delta^2(7+2\Delta-8\Delta^2)}{16\pi(4\Delta^2-1)}.
\end{aligned}$$

Dropping $bb$ and $b^\dagger b^\dagger$ before constructing the quartic vertex would lose $a_0^{\mathrm s}$. Although each bilinear oscillates, their product is resonant. The two channel coefficients need not separately have the same sign.

Quantizing and retaining the resonant part gives

$$\begin{aligned}
\kappa^2:H_4:_{\mathrm{res}}
=\kappa^2a_0(b^\dagger)^2b^2,\qquad
|00\rangle=\frac{(b^\dagger)^2}{\sqrt2}|0\rangle.
\end{aligned}$$

Since $(b^\dagger)^2b^2=N(N-1)$, its expectation in this state is $2$. Therefore

$$\begin{aligned}
\gamma_{00}=2\kappa^2a_0
=\frac{2G\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1},\qquad
E_{00}^{(2)}=2\Delta+\gamma_{00}+O(G^2).
\end{aligned}\tag{4.2}$$

At $\Delta=2$, $\gamma_{00}/G=-56/5$. The mixed-frequency and same-sign contributions are respectively $-32/3$ and $-8/15$ in units of $G$.

## 5. The first degenerate block

At $E_0=2\Delta+2$, $J=0$, the two scalar states are

$$\begin{aligned}
|A\rangle=b_{0,0}^\dagger b_{1,0}^\dagger|0\rangle,
\qquad |B\rangle=b_{0,1}^\dagger b_{0,-1}^\dagger|0\rangle.
\end{aligned}$$

For the radial entry use

$$\begin{aligned}
u_{1,0}(0,r)=\frac{x^{\Delta/2}}{\sqrt{2\pi}}
\left[\Delta-(\Delta+1)x\right],\qquad
\omega_{1,0}=\Delta+2.
\end{aligned}$$

Substituting $\phi=u_{0,0}(b_0+b_0^\dagger)+u_{1,0}(b_1+b_1^\dagger)$ and
$\Pi=-ix[\Delta u_{0,0}(b_0-b_0^\dagger)+(\Delta+2)u_{1,0}(b_1-b_1^\dagger)]$
into (3.4), the coefficient of $b_0^\dagger b_1^\dagger b_0b_1$ gives

$$\begin{aligned}
V_{AA}=-\frac{\kappa^2\Delta^2(8\Delta^3+26\Delta^2+7\Delta-17)}
{4\pi(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\end{aligned}\tag{5.1}$$

The finite-moment formula in the next section specifies every integral in this substitution. A single diagonal matrix element is not yet an energy shift. In the free global representation,

$$\begin{aligned}
|D\rangle=\frac{|A\rangle+|B\rangle}{\sqrt2},\qquad
|P_{10}\rangle=\frac{|A\rangle-|B\rangle}{\sqrt2}.
\end{aligned}$$

The first vector is the normalized $L_{-1}\bar L_{-1}$ descendant of $|00\rangle$; the second is annihilated by both total lowering operators. On the scalar-primary branch, $|D\rangle$ inherits $\gamma_{00}$. Hence

$$\begin{aligned}
V_{E_0,J=0}=\frac12
\begin{pmatrix}
\gamma_{00}+\gamma_{10}&\gamma_{00}-\gamma_{10}\\
\gamma_{00}-\gamma_{10}&\gamma_{00}+\gamma_{10}
\end{pmatrix},\qquad
\gamma_{10}=2V_{AA}-\gamma_{00}.
\end{aligned}\tag{5.2}$$

The matrix has no extra $\kappa^2$ prefactor because the $\gamma$'s already include it. Combining (4.2) and (5.1) gives the stated $\gamma_{10}$. At $\Delta=2$,

$$\begin{aligned}
\frac VG=\frac1{35}
\begin{pmatrix}-880&488\\488&-880\end{pmatrix},\qquad
\frac{\gamma_{10}}G=-\frac{1368}{35}.
\end{aligned}$$

Here $V_{AA}$ is calculated directly from the reduced Hamiltonian; $V_{AB}$ and $V_{BB}$ are reconstructed by global symmetry. They are not additional direct noncircular integrations in this calculation.

## 6. An explicit finite formula for every circular matrix element

At total free energy $2\Delta+2N$, define

$$\begin{aligned}
|r;N\rangle=\frac{b_{r,0}^\dagger b_{N-r,0}^\dagger|0\rangle}
{\sqrt{1+\delta_{2r,N}}},\qquad
r=0,\ldots,\lfloor N/2\rfloor,\\
\mathsf R^{(N)}_{rs}=\kappa^2\langle r;N|:H_4:|s;N\rangle.
\end{aligned}$$

The label $r$ in $|r;N\rangle$ is an integer radial-mode index. The radial integration coordinate has already been replaced by $x=(1+r_{\mathrm{coordinate}}^2)^{-1}$.

To calculate one entry, attach four independent bookkeeping variables to its legs:

$$\begin{aligned}
(n_1,n_2,n_3,n_4)&=(r,N-r,s,N-s),&
(\sigma_1,\sigma_2,\sigma_3,\sigma_4)&=(-1,-1,+1,+1),\\
P_n(x)&=P_n^{(\Delta-1,0)}(1-2x),&\omega_n&=\Delta+2n,\\
\Phi(x;z)&=\sum_{a=1}^4z_aP_{n_a}(x),&
\mathcal P(x;z)&=\sum_{a=1}^4\sigma_a\omega_{n_a}z_aP_{n_a}(x).
\end{aligned}$$

The negative signs designate creation legs. The corresponding test fields at $t=0$ are

$$\begin{aligned}
\phi=\frac{x^{\Delta/2}}{\sqrt{2\pi}}\Phi,
\qquad \Pi=-\frac{i x^{\Delta/2+1}}{\sqrt{2\pi}}\mathcal P.
\end{aligned}$$

Define the following polynomials, all of finite degree:

$$\begin{aligned}
\mathcal X(x;z)
&=4(1-x)\left(\frac\Delta2\Phi+x\partial_x\Phi\right)^2
-x\mathcal P^2,\\
\mathcal B(x;z)&=\mathcal X+\Delta(\Delta-2)\Phi^2
=\sum_j B_j(z)x^j,\\
\mathcal I(x;z)&=\sum_j\frac{B_j(z)x^j}{\Delta-1+j}.
\end{aligned}$$

These are just the constraint ingredients with the universal powers of $x$ removed:

$$\begin{aligned}
X&=\frac{x^{\Delta+1}}{2\pi}\mathcal X,\qquad
M_0=\frac1{8\pi}\left[\mathcal I(1;z)-x^{\Delta-1}\mathcal I(x;z)\right].
\end{aligned}$$

For any polynomial $A(x)=\sum_jA_jx^j$, its radial moment is

$$\begin{aligned}
\mathcal M_\beta[A]=\int_0^1dx\,x^{\beta-1}A(x)
=\sum_j\frac{A_j}{\beta+j}.
\end{aligned}$$

Inserting these expressions into (3.4) gives the exact answer

$$\begin{aligned}
\boxed{\frac{\mathsf R^{(N)}_{rs}}G=
-\frac{
\left[\mathcal M_\Delta[\mathcal X\mathcal I(1)]
-\mathcal M_{2\Delta-1}[\mathcal X\mathcal I(x)]\right]_{z_1z_2z_3z_4}}
{2\sqrt{(1+\delta_{2r,N})(1+\delta_{2s,N})}}.}
\end{aligned}\tag{6.1}$$

The subscript means coefficient extraction. Using four distinct $z_a$ is essential even when two mode indices coincide: it automatically differentiates repeated creation/annihilation factors the correct number of times. The denominator then converts the result to normalized Fock states. At $N=0$, the underlying matrix element of $H_4$ is $2a_0$ rather than $a_0$, giving $\mathsf R^{(0)}=2\kappa^2a_0$.

Equation (6.1) contains only polynomial multiplication and finite sums. Its integral denominators are $\Delta-1+j$, $\Delta+j$, and $2\Delta-1+j$, all positive for $\Delta>1$ and $j\geq0$. There is no infinite intermediate-mode cutoff in this circular tree calculation. The formula keeps both mixed-frequency and same-sign terms until the final resonant coefficient is selected.

## 7. Recover primaries instead of diagonalizing a compression

### 7.1 Global representation data

A single scalar mode has left and right levels

$$\begin{aligned}
p=n+\max(j,0),\qquad q=n+\max(-j,0),\qquad
(h,\bar h)=\left(\frac\Delta2+p,\frac\Delta2+q\right).
\end{aligned}$$

Coupling two single-particle representations gives two-particle primaries labelled by $k,l\geq0$:

$$\begin{aligned}
(h_P,\bar h_P)&=(\Delta+k,\Delta+l),\\
n&=\min(k,l),& \ell&=k-l,&E_P^{(0)}&=2\Delta+k+l.
\end{aligned}$$

Identical scalars retain $k+l$ even. In the free two-scalar tensor product each such global representation occurs once. At total left and right levels $(N,N)$, the descendant of $(k,l)$ exists whenever $k,l\leq N$.

For one chirality use normalized product states $|p,N-p\rangle$ and write

$$\begin{aligned}
|k;N\rangle_L=\sum_{p=0}^NU^{(N)}_{pk}|p,N-p\rangle.
\end{aligned}$$

The single-particle ladders are

$$\begin{aligned}
L_1|p\rangle&=\sqrt{p(\Delta+p-1)}|p-1\rangle,\\
L_{-1}|p\rangle&=\sqrt{(p+1)(\Delta+p)}|p+1\rangle.
\end{aligned}$$

Construct the level-$k$ primary with coefficients $c_p$, $c_0>0$. The lowering condition gives

$$\begin{aligned}
\frac{c_{p+1}}{c_p}=-\sqrt{\frac{(k-p)(\Delta+k-p-1)}{(p+1)(\Delta+p)}},
\qquad \sum_{p=0}^kc_p^2=1.
\end{aligned}$$

Raise it to level $N$:

$$\begin{aligned}
|k;N\rangle_L=
\frac{(L_{-1}^{(1)}+L_{-1}^{(2)})^{N-k}}
{\sqrt{(N-k)!(2\Delta+2k)_{N-k}}}|k;k\rangle_L.
\end{aligned}\tag{7.1}$$

This defines $U$ without any interaction input. Equivalently, the following finite Hahn formula evaluates it directly:

$$\begin{aligned}
Q_k(p)&=\sum_{j=0}^{\min(k,p)}
\frac{(-k)_j(k+2\Delta-1)_j(-p)_j}{(\Delta)_j(-N)_j j!},\\
w_p&=\frac{\binom Np(\Delta)_p(\Delta)_{N-p}}{(2\Delta)_N},\qquad
\mathcal N_k=\sum_{p=0}^N w_p Q_k(p)^2,\\
U^{(N)}_{pk}&=\sqrt{\frac{w_p}{\mathcal N_k}}\,Q_k(p).
\end{aligned}\tag{7.2}$$

Here $(a)_j$ is the rising factorial, including $(a)_0=1$. The series terminates before $(-N)_j$ can vanish. These coefficients obey $U^TU=1$ and $U_{N-p,k}=(-1)^kU_{pk}$. Thus the combined left/right exchange parity is $(-1)^{k+l}$.

### 7.2 Why descendant shifts can be used

Use the connected scalar-primary Hamiltonian in a global-AdS-covariant form after nonresonant dressing. Its eigenvalue on a primary is inherited by that primary's global descendants. One way to see the perturbative statement is to expand $[H,L_{-1}]=L_{-1}$. Between free states whose energies differ by one, the contribution $[H_0,\delta L_{-1}]-\delta L_{-1}$ vanishes. The remaining resonant relation intertwines the energy-shift matrix with the free raising operator. The right chirality works identically.

This argument uses the identified scalar-primary branch and its AdS symmetry. Multiplicity one in the free two-scalar product alone is not a statement about the complete gravity–matter Hilbert space.

The overlap between a circular pair and a primary descendant at $(N,N)$ is

$$\begin{aligned}
s_r=\sqrt{\frac2{1+\delta_{2r,N}}},\qquad
C_{r;kl}=s_r U^{(N)}_{rk}U^{(N)}_{rl}.
\end{aligned}$$

Consequently the dynamical matrix calculated in (6.1) satisfies

$$\begin{aligned}
\mathsf R^{(N)}_{rs}=
\sum_{\substack{0\leq k,l\leq N\\ k+l\ \mathrm{even}}}
C_{r;kl}C_{s;kl}\,\gamma_{\min(k,l),|k-l|}.
\end{aligned}\tag{7.3}$$

This equation reconstructs the spectrum from compressed matrix elements. Diagonalizing $\mathsf R^{(N)}$ by itself would give the eigenvalues of a compression, which are generally different from the physical primary shifts.

### 7.3 A finite inversion

At level $N$, subtract all already determined terms with $k,l<N$ and call the remainder $\mathsf R^{(N)}_{\mathrm{new}}$. Define

$$\begin{aligned}
\mathsf D_N&=\operatorname{diag}_{r=0}^{\lfloor N/2\rfloor}(U^{(N)}_{rN}),\\
(\mathsf O_N)_{rk}&=s_rU^{(N)}_{rk},\qquad k=N,N-2,\ldots.
\end{aligned}$$

The surviving contributions in (7.3) factorize:

$$\begin{aligned}
\mathsf R^{(N)}_{\mathrm{new}}
=\mathsf D_N\mathsf O_N\operatorname{diag}_{k=N,N-2,\ldots}
\left[(2-\delta_{kN})\gamma_{k,N-k}\right]
\mathsf O_N^T\mathsf D_N.
\end{aligned}$$

The factor two combines opposite spins when $k<N$. Exchange parity and full-range orthogonality imply $\mathsf O_N^T\mathsf O_N=1$. Also,

$$\begin{aligned}
U^{(N)}_{rN}&\propto
(-1)^r\sqrt{\binom Nr\frac{(\Delta+N-r)_r}{(\Delta)_r}},
\end{aligned}$$

so every diagonal entry of $\mathsf D_N$ is nonzero for $\Delta>1$. Therefore

$$\begin{aligned}
\boxed{\mathsf O_N^T\mathsf D_N^{-1}
\mathsf R^{(N)}_{\mathrm{new}}\mathsf D_N^{-1}\mathsf O_N
=\operatorname{diag}_{k=N,N-2,\ldots}
\left[(2-\delta_{kN})\gamma_{k,N-k}\right].}
\end{aligned}\tag{7.4}$$

The diagonal entries give the new shifts. Every off-diagonal entry must vanish; these entries are retained as consistency checks. For a primary $(n,|\ell|)$ the required circular level is $N=n+|\ell|$. Equations (6.1) and (7.4) form an explicit finite calculation for any specified primary, under the branch assumptions above.

For example, at $N=2$, $\Delta=2$, the fresh Hamiltonian calculation gives

$$\begin{aligned}
\frac{\mathsf R^{(2)}}G=
\begin{pmatrix}-32&-264\sqrt2/35\\-264\sqrt2/35&-1376/35\end{pmatrix},\\
\mathsf D_2=\operatorname{diag}(1/\sqrt5,-\sqrt{3/5}),\qquad
\mathsf O_2=\begin{pmatrix}\sqrt{2/5}&\sqrt{3/5}\\
-\sqrt{3/5}&\sqrt{2/5}\end{pmatrix}.
\end{aligned}$$

After subtracting $\gamma_{00}C_{;00}C_{;00}^T+\gamma_{10}C_{;11}C_{;11}^T$, the transformed matrix is

$$\begin{aligned}
\frac1G\mathsf O_2^T\mathsf D_2^{-1}
\mathsf R^{(2)}_{\mathrm{new}}\mathsf D_2^{-1}\mathsf O_2
=\operatorname{diag}\left(-\frac{416}{5},-\frac{1104}{35}\right)
=\frac1G\operatorname{diag}(\gamma_{20},2\gamma_{02}).
\end{aligned}$$

This recovers the first spinning primary even though the directly integrated external modes were all circular.

## 8. Comparison with the closed spectrum

Let $h=\Delta+n$ be the smaller chiral weight of the two-particle primary and define the common high-spin contribution

$$\begin{aligned}
U_n=-4G\left[\Delta^2+2n(2\Delta+n-1)\right].
\end{aligned}$$

The closed expressions in the source note are

$$\begin{aligned}
\gamma_{n0}&=U_n\frac{2h-2}{2h-1}
-\frac{2G\left[h(h-1)+\Delta(\Delta-2)\right]^2}
{(2h-3)(2h-1)(2h+1)},\\
\gamma_{n2}&=U_n+
\frac{G(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h-1)(2h+1)(2h+3)},\\
\gamma_{n|\ell|}&=U_n,\qquad |\ell|=4,6,\ldots.
\end{aligned}\tag{8.1}$$

The fresh computation does not insert (8.1) into (6.1) or (7.4). It first calculates the matrices from the canonical vertex and extracts each $\gamma$; only then does it subtract (8.1). All 25 differences with $n+|\ell|\leq8$ vanish identically as rational functions of $\Delta$. The corresponding compression residuals also vanish. Some illustrative values are

| $(n,\lvert\ell\rvert)$ | $\gamma_{n\lvert\ell\rvert}/G$ at $\Delta=2$ |
|---|---:|
| $(0,0)$ | $-56/5$ |
| $(1,0)$ | $-1368/35$ |
| $(2,0)$ | $-416/5$ |
| $(0,2)$ | $-552/35$ |
| $(1,2)$ | $-1000/21$ |
| $(0,4)$ | $-16$ |

At $n=0$, the apparent pole at $\Delta=3/2$ in the first line of (8.1) is removable: simplify the numerator before taking the limit, obtaining $\gamma_{00}=-9G/2$. The finite-moment calculation itself has no pole there.

On the stated branch the primary and global-descendant gaps are

$$\begin{aligned}
E^{(2),\mathrm{primary}}_{n,\ell}
&=2\Delta+2n+|\ell|+\gamma_{n|\ell|}+O(G^2),\\
E^{(2)}_{n,\ell;r_L,r_R}
&=2\Delta+2n+|\ell|+r_L+r_R+\gamma_{n|\ell|}+O(G^2).
\end{aligned}$$

The finite-moment formula and finite inversion give an algorithm at every finite level. Their independent comparison with (8.1) stops at $N=8$; agreement at those levels is not an all-index proof. The following section supplies a separate analytic completion and identifies the extra input used in it. None of its closed coefficients were used to calculate the matrices in sections 6–7.

## 9. Analytic completion for arbitrary radial level and spin

Write

$$\begin{aligned}
\mu=\Delta(\Delta-2),\qquad h=\Delta+n,\qquad C=h(h-1),\qquad
u_n=\frac{U_n}{G}=4\mu-8C.
\end{aligned}$$

Separate the resonant quartic vertex into crossed and annihilation contractions,
$\gamma_{n\ell}=\gamma^{\mathrm x}_{n\ell}+\gamma^{\mathrm s}_{n\ell}$.
These are Wick-contraction channels of the same effective Hamiltonian, not additional interactions to add to (3.4). The general answer is

$$\begin{aligned}
\frac{\gamma^{\mathrm x}_{n0}}G&=u_n\frac{2h-2}{2h-1},
&\frac{\gamma^{\mathrm x}_{n\ell}}G&=u_n\quad (|\ell|\geq1),\\
\frac{\gamma^{\mathrm s}_{n0}}G&=
-\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},\\
\frac{\gamma^{\mathrm s}_{n,\pm2}}G&=
\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h-1)(2h+1)(2h+3)},&
\gamma^{\mathrm s}_{n\ell}&=0\quad (|\ell|>2).
\end{aligned}\tag{9.1}$$

Only even $\ell$ survives for the real scalar. Odd-spin crossed coefficients below belong to an auxiliary distinguishable-particle problem and help close the recursion.

### 9.1 Normalized local sources at arbitrary $n$

In one chirality, the normalized lowest-weight state at relative level $K$ has product-basis coefficients

$$\begin{aligned}
v_p^{(K)}=(-1)^p
\sqrt{\frac{\binom Kp(\Delta)_K^2}
{(\Delta)_p(\Delta)_{K-p}(2\Delta+K-1)_K}},
\qquad 0\leq p\leq K.
\end{aligned}\tag{9.2}$$

The lowering equation fixes the ratio of neighboring coefficients. Their norm follows for every $K$ from the terminating Vandermonde identity

$$\begin{aligned}
\sum_{p=0}^K\frac{\binom Kp}{(\Delta)_p(\Delta)_{K-p}}
=\frac{(2\Delta+K-1)_K}{(\Delta)_K^2}.
\end{aligned}$$

Temporarily distinguish the two scalars. Let $|P_{n,\ell}\rangle$ be their normalized primary, with chiral relative levels $(n+\ell,n)$ for $\ell\geq0$. At the center, a one-particle mode with chiral labels $(q+j,q)$ behaves as

$$\begin{aligned}
u_{q+j,q}=
\frac{(-1)^q}{\sqrt{2\pi}\,j!}
\sqrt{\frac{(q+j)!}{q!}(\Delta+q)_j}\,
r^j e^{ij\varphi}+O(r^{j+2})
\qquad(t=0,\ j\geq0).
\end{aligned}$$

Consequently

$$\begin{aligned}
F_n&:=\langle0|\phi_1\phi_2|P_{n,0}\rangle
=\frac{(-1)^n}{2\pi}e^{-2iht}f^{-h},&
\Box F_n&=4C F_n,\\
F_n^{\mathrm{id}}&:=\langle0|:\phi^2:|P_{n,0}\rangle
=\sqrt2\,F_n.
\end{aligned}\tag{9.3}$$

At $r=0$, the sum giving the first line is just $\sum_p(v_p^{(n)})^2=1$. Its full spacetime dependence is fixed by the two lowest-weight equations. The factor $\sqrt2$ is the identical-particle Fock normalization.

For the vector and spin-two sources, introduce the explicit primary tensors

$$\begin{aligned}
W^{(E,s)}&=e^{-iEt+is\varphi}r^s f^{-E/2}v^{\otimes s},
&v&=dt-d\varphi+\frac{i\,dr}{rf},
\qquad s=1,2.
\end{aligned}$$

They extend smoothly through the center in Cartesian coordinates, and satisfy

$$\begin{aligned}
\nabla\cdot W^{(E,s)}&=0,&
\Box W^{(E,s)}&=[E(E-2)-s]W^{(E,s)},\\
g^{\mu\nu}W^{(E,2)}_{\mu\nu}&=0,&
\mathcal L_{D_\pm}W^{(E,s)}&=0,\\
D_\sigma&=\frac{e^{it-i\sigma\varphi}}2
\left(\frac{ir}{\sqrt f}\partial_t+\sqrt f\,\partial_r
-\frac{i\sigma\sqrt f}{r}\partial_\varphi\right).
\end{aligned}\tag{9.4}$$

Their source-pairing integrals, with indices raised by the Lorentzian AdS metric, are

$$\begin{aligned}
\int_0^\infty r\,dr\int_0^{2\pi}d\varphi\,
W^{(E,s)}\cdot W^{(E,s)*}
=\frac{\pi\,2^s}{E+s-1}.
\end{aligned}\tag{9.5}$$

This contraction is not being defined as a general tensor Hilbert-space norm. For these particular tensors it reduces to $2^s f^{-E-s}$ before integration.

For $J=\phi_1d\phi_2-\phi_2d\phi_1$ and the real-scalar stress tensor,

$$\begin{aligned}
J_n&:=\langle0|J|P_{n,1}\rangle=A_1W^{(2h+1,1)},&
|A_1|^2&=\frac{h(n+1)(2\Delta+n-1)}{2\pi^2(2h-1)},\\
\tau_{n,2}&:=\langle0|:T_{\mu\nu}:|P_{n,2}\rangle
=A_2W^{(2h+2,2)}_{\mu\nu},&
|A_2|^2&=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{8\pi^2(2h-1)(2h+1)}.
\end{aligned}\tag{9.6}$$

These normalization factors can be obtained without a level-by-level sum. Define positive $\rho_1,\rho_2$ by

$$\begin{aligned}
\rho_1^2&=\frac{h(n+1)(2\Delta+n-1)}{2(2h-1)},\\
\rho_2^2&=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{4(2h-1)(2h+1)}.
\end{aligned}$$

For every $0\leq p\leq n$, the coefficients (9.2) obey

$$\begin{aligned}
\frac{v_p^{(n+1)}}{v_p^{(n)}}
\sqrt{(n-p+1)(\Delta+n-p)}&=\rho_1,\\
\frac{v_{p+1}^{(n+1)}}{v_p^{(n)}}
\sqrt{(p+1)(\Delta+p)}&=-\rho_1,\\
\frac{v_{p+1}^{(n+2)}}{v_p^{(n)}}
\sqrt{(p+1)(\Delta+p)(n-p+1)(\Delta+n-p)}&=-\rho_2.
\end{aligned}\tag{9.7}$$

The center matrix elements therefore reduce again to the normalized sum in (9.2). In the smooth coordinate $w=re^{i\varphi}$,

$$\begin{aligned}
J_n\big|_0&=\frac{(-1)^n\rho_1}{\pi}\,dw,&
\tau_{n,2}\big|_0&=\frac{(-1)^{n+1}\rho_2}{\sqrt2\pi}\,(dw)^2,\\
W^{(E,1)}\big|_0&=i\,dw,&W^{(E,2)}\big|_0&=-(dw)^2.
\end{aligned}$$

Matching these values gives (9.6). The new script checks the squared ratios at symbolic $n,p,\Delta$; the displayed signs follow from $(-1)^p$. Overall primary-state phases do not enter the shifts.

There is also an all-index selection rule. A local analytic primary tensor is fixed by its value at the center: the two lowering equations determine its spatial Taylor coefficients, with time dependence already fixed by its energy. A scalar fiber carries rotation spin zero; a vector carries at most spin one; a symmetric rank-two tensor carries at most spin two. If the primary spin exceeds this, its center value and hence its full local form factor vanish. Thus $F$ has only $\ell=0$, $J$ only $\ell=\pm1$ by exchange antisymmetry, and $\tau$ only $\ell=0,\pm2$ by exchange symmetry. This is why the annihilation calculation terminates in spin even though $n$ is arbitrary.

### 9.2 Evaluate the annihilation denominators in the primary basis

For a conserved harmonic source $\tau$, write its forced Einstein response as

$$\begin{aligned}
\mathcal E^{(1)}[q[\tau]]=\frac12\tau.
\end{aligned}$$

Use the regular-center, fixed-boundary-time response with no independent homogeneous excitation. Combining the two cubic time orderings in (2.2), together with the constraint term, is equivalently the inverse of this quadratic Einstein operator on the source. Quadratic elimination then gives the annihilation matrix element

$$\begin{aligned}
\gamma^{\mathrm s}
=-\frac{\kappa^2}{2}
\int_0^\infty r\,dr\int_0^{2\pi}d\varphi\,
q[\tau]_{\mu\nu}\tau^{*\mu\nu}.
\end{aligned}\tag{9.8}$$

The factor includes the two conjugate annihilation/creation contractions. This is a covariant resummation of the effective vertex, not a further exchange to add to $H_4$. Its use assumes the same reciprocal response and boundary prescription as the Hamiltonian; it does not assert that a full unreduced graviton-state sum has been performed.

For spin zero, the stress trace and conserved scalar-generated tensor are

$$\begin{aligned}
\tau^\mu{}_\mu&=-\left(\frac14\Box+\mu\right)F_n^{\mathrm{id}}
=-(C+\mu)F_n^{\mathrm{id}},\\
\mathcal D_{\mu\nu}S&=\nabla_\mu\nabla_\nu S
-g_{\mu\nu}(\Box-2)S,&
\mathcal D^\mu{}_\mu S&=-2(\Box-3)S.
\end{aligned}$$

There is no independent primary transverse-traceless spin-zero tensor at generic $h$. Hence

$$\begin{aligned}
\tau_{n,0}&=\mathcal D S_n,&
S_n&=\frac{C+\mu}{2(4C-3)}F_n^{\mathrm{id}},\\
\mathcal E^{(1)}[g\psi]&=-\frac12\mathcal D\psi,&
q[\tau_{n,0}]&=-gS_n.
\end{aligned}$$

Since $\int r\,dr\,d\varphi\,|F_n^{\mathrm{id}}|^2=1/[2\pi(2h-1)]$, substitution in (9.8) gives precisely the spin-zero annihilation term in (9.1).

For spin two, (9.4) diagonalizes the Einstein operator:

$$\begin{aligned}
\mathcal E^{(1)}[q]&=-\frac12(\Box+2)q
\quad\text{on transverse-traceless tensors},\\
(\Box+2)\tau_{n,2}&=4h(h+1)\tau_{n,2},&
q[\tau_{n,2}]&=-\frac{\tau_{n,2}}{4h(h+1)}.
\end{aligned}$$

Using (9.5)–(9.6) in (9.8) gives the spin-two term in (9.1). These are calculations at arbitrary $n$, not fits to the finite radial data. At $h=3/2$, allowed here only for $n=0,\Delta=3/2$, cancel the common factor in $S_n$ and take its continuous limit; the apparent singularity does not obstruct the energy shift.

### 9.3 A crossed-channel equation derived from the interaction

For the crossed channel use distinguishable scalars, so its primary labels $(k,l)$ include both exchange parities. Set

$$\begin{aligned}
x_{kl}=\frac{\gamma^{\mathrm x}_{\min(k,l),\,k-l}}G,\qquad x_{kl}=x_{lk}.
\end{aligned}$$

The required recurrence follows from an Einstein identity before taking primary matrix elements. For a symmetric tensor $q$, define

$$\begin{aligned}
(\mathcal Pq)_{\mu\nu}&=q_{\mu\nu}-\frac12g_{\mu\nu}q^\alpha{}_\alpha,&
(\mathcal P^{-1}q)_{\mu\nu}&=q_{\mu\nu}-g_{\mu\nu}q^\alpha{}_\alpha,\\
C_\nu[q]&=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu q^\mu{}_\mu,\\
(\mathcal Cq)_{\mu\nu}&=\frac12(\Box+6)q_{\mu\nu}
-g_{\mu\nu}q^\alpha{}_\alpha.
\end{aligned}$$

The operator $\mathcal C$ is the sum of the two global $SL(2)$ Casimirs acting by tensor Lie derivatives. In unit AdS3,

$$\begin{aligned}
\mathcal E^{(1)}[q]=-\mathcal P(\mathcal C-2)q
+\mathcal P\nabla_{(\mu}C_{\nu)}[q].
\end{aligned}\tag{9.9}$$

It is an off-shell identity, not a de Donder-gauge assumption. For scalar solutions $a,b,c,d$, put

$$\begin{aligned}
T_{\mu\nu}[a,c]=\nabla_{(\mu}a\nabla_{\nu)}c
-\frac12g_{\mu\nu}(\nabla a\cdot\nabla c+\mu ac).
\end{aligned}$$

The crossed four-leg vertex is $-2\kappa^2\langle T[a,c],q[T[b,d]]\rangle_{\mathrm{res}}$. Here the resonant pairing means the coefficient of elapsed time in the spacetime pairing, or equivalently its long-time average for fixed finite mode combinations. Applying (9.9) to its response leg gives

$$\begin{aligned}
(\mathcal C_{\mathrm{cross}}-2)\mathcal X
=\kappa^2\langle\mathcal K\rangle_{\mathrm{res}},\qquad
\mathcal K=T[a,c]\cdot T[b,d]
-\operatorname{tr}T[a,c]\operatorname{tr}T[b,d].
\end{aligned}\tag{9.10}$$

Conservation removes the last, gradient term in (9.9) only after accounting for its boundary flux. In an orthonormal frame $T=O(r^{-2\Delta})$ and $q=O(r^{-2})$. The radial Casimir and Einstein Green fluxes behave respectively as $O(r^{-2\Delta})$ and $O(r^{-2})$; the source–gauge flux is $O(r^{2-2\Delta})$. They vanish for the stated $\Delta>1$ boundary conditions. Smoothness removes the center flux, and bounded time-endpoint terms vanish after division by elapsed time. No finite-time scattering boundary condition is introduced.

The local source is calculable without knowing $x_{kl}$. With
$F=ab$, $\widetilde F=cd$,
$J_\mu=a\nabla_\mu b-b\nabla_\mu a$,
$\widetilde J_\mu=c\nabla_\mu d-d\nabla_\mu c$, and
$K_F=\nabla a\cdot\nabla b=(\Box-2\mu)F/2$, it is

$$\begin{aligned}
\mathcal K={}&\frac12K_FK_{\widetilde F}
-\frac1{16}(dJ)\cdot(d\widetilde J)
-\frac{\mu}{4}\bigl(dF\cdot d\widetilde F+J\cdot\widetilde J\bigr)
-\frac{3\mu^2}{2}F\widetilde F.
\end{aligned}\tag{9.11}$$

Here $dJ$ is the exterior derivative, $(dJ)_{\mu\nu}=2\nabla_{[\mu}J_{\nu]}$. In a diagonal primary matrix element the tilded forms are complex conjugates. The local identity (9.11) holds off shell when $K_F=\nabla a\cdot\nabla b$; scalar equations and integration by parts enter only in its primary projection. Equations (9.3)–(9.6) give, with $\int=\int r\,dr\,d\varphi$,

$$\begin{aligned}
\int\mathcal K\big|_{\ell=0}
&=(C-\mu)(2C+\mu)\int|F_n|^2,
&\int|F_n|^2&=\frac1{4\pi(2h-1)},\\
\int\mathcal K\big|_{\ell=1}
&=\frac{2h^2-\mu}{4}\int J_n\cdot J_n^*,
&\int J_n\cdot J_n^*
&=\frac{h(n+1)(2\Delta+n-1)}{\pi(2h-1)(2h+1)}.
\end{aligned}$$

For the second line, the transverse vector obeys
$\nabla_\mu(dJ_n)^{\mu\nu}=4h^2J_n^\nu$; hence
$\int(dJ_n)\cdot(dJ_n^*)=-8h^2\int J_n\cdot J_n^*$.
The primary selection rule makes the source zero for $|k-l|\geq2$.

### 9.4 Convert the Casimir equation into an energy-shift recurrence

This conversion uses the OFPT secular term, rather than identifying an arbitrary four-point coefficient with an energy. Euclidean continuation of finite-time evolution gives, inside a degenerate free subspace,

$$\begin{aligned}
P_E\,\delta e^{-H\tau}P_E=-\tau e^{-E\tau}P_E\delta H P_E.
\end{aligned}$$

For $z=e^{-\tau+i\theta}$ and $\bar z=e^{-\tau-i\theta}$, one has
$-\tau=\tfrac12\log(z\bar z)$. The scalar boundary-prepared states give the free chiral coefficients and blocks

$$\begin{aligned}
p_k&=\frac{(\Delta)_k^2}{k!(2\Delta+k-1)_k},&
\mathsf k_h(z)&=z^h\,{}_2F_1(h,h;2h;z).
\end{aligned}$$

Thus the secular contribution of $Gx_{kl}$ has coefficient
$\frac G2p_kp_lx_{kl}\mathsf k_{\Delta+k}(z)
\mathsf k_{\Delta+l}(\bar z)\log(z\bar z)$.
The crossed chiral Casimir acting on these state-preparation variables is

$$\begin{aligned}
D_t={}&z(1-z)^2\partial_z^2
+(z-1)(2\Delta+z-1)\partial_z+\frac{\Delta^2}{z}-\Delta,\\
D_t\mathsf k_h={}&(\Delta-h)^2\mathsf k_{h-1}
+\frac{\mu-h(h-1)}2\mathsf k_h
+\frac{h^2(\Delta+h-1)^2}{4(2h-1)(2h+1)}\mathsf k_{h+1}.
\end{aligned}\tag{9.12}$$

One proves the second line by substituting the hypergeometric series and matching its arbitrary coefficient, with its first two coefficients treated separately. Derivatives acting on the logarithm give nonlogarithmic terms, so the secular coefficients themselves obey the same three-term action.

After dividing out $p_k$, define

$$\begin{aligned}
(Lf)_k&=a_kf_{k+1}+b_kf_k+c_kf_{k-1},\\
a_k&=\frac{(k+1)(\Delta+k)(2\Delta+k-1)}{2(2\Delta+2k-1)},\\
c_k&=\frac{k(\Delta+k-1)(2\Delta+k-2)}{2(2\Delta+2k-1)},&
b_k&=-a_k-c_k.
\end{aligned}$$

In particular $c_0=0$; no negative-level datum is needed. Equation (9.10) becomes

$$\begin{aligned}
\boxed{(L_k+L_l-2)x_{kl}=S_{kl},}\\
S_{nn}&=\frac{4(C-\mu)(2C+\mu)}{2h-1},\\
S_{n+1,n}=S_{n,n+1}
&=\frac{4h(n+1)(2\Delta+n-1)(2h^2-\mu)}{(2h-1)(2h+1)},\\
S_{kl}&=0\qquad(|k-l|\geq2).
\end{aligned}\tag{9.13}$$

The source is $16\pi$ times the contact integrals above, since $\kappa^2/G=16\pi$. It was derived independently of the proposed energy shifts.

### 9.5 The high-spin input and what it adds to OFPT

Equation (9.13) alone is insufficient. For example,
$e_{kl}=(\Delta+k)(\Delta+k-1)+(\Delta+l)(\Delta+l-1)-\mu$
is a nonzero homogeneous solution. Checking a candidate in (9.13) does not establish uniqueness.

The additional input used here is the high-spin part of the minimal spin-two exchange. With Brown–Henneaux $c_{\mathrm{BH}}=3/(2G)+O(1)$, a scalar of chiral weight $h_0=\Delta/2$ couples to the stress block with coefficient
$2h_0^2/c_{\mathrm{BH}}=\Delta^2/(2c_{\mathrm{BH}})$.
The stress block has

$$\begin{aligned}
\mathsf k_2(1-z)=-12-6\frac{1+z}{1-z}\log z.
\end{aligned}$$

Its arbitrary-level logarithmic coefficients can be obtained directly. Set

$$\begin{aligned}
F(z)=\left(\frac z{1-z}\right)^\Delta
=\sum_{n\geq0}p_n\mathsf k_{\Delta+n}(z),\qquad
D_s=z^2[(1-z)\partial_z^2-\partial_z].
\end{aligned}$$

Since $D_s\mathsf k_h=h(h-1)\mathsf k_h$ and
$D_sF=[\Delta^2/(1-z)-\Delta]F$, one finds the all-index identity

$$\begin{aligned}
\sum_{n\geq0}p_nu_n\mathsf k_{\Delta+n}(z)
=(4\mu-8D_s)F(z)
=-4\Delta^2\frac{1+z}{1-z}F(z).
\end{aligned}\tag{9.14}$$

The Ward-normalized stress logarithm is consequently
$\frac G2\sum_np_nu_n\mathsf k_{\Delta+n}(z)\log z$.

To promote these chiral coefficients to fixed integer spin, use Lorentzian inversion of the spin-two exchange, in its domain $|\ell|>2$ with the required Regge bound. The double pole determines the smaller chiral level; the free residue in the other chirality cancels against its state normalization. It gives

$$\begin{aligned}
x_{kl}=u_{\min(k,l)}\qquad (|k-l|>2).
\end{aligned}\tag{9.15}$$

This is the analytic input from the [Lorentzian inversion theorem](https://arxiv.org/abs/1703.00278); its stress-exchange specialization is worked out in [Kraus–Sivaramakrishnan–Snively, section 4.2](https://arxiv.org/html/1810.01439#S4.SS2). Equation (9.14) supplies its arbitrary-$n$ coefficient here. The theorem supplies the continuation to finite spins above the exchange spin and leaves possible low-spin terms to (9.13). Adding two independent chiral shifts would instead change the integer angular momentum and is not this inversion.

Thus this completion uses OFPT for the energy observable and the interaction, together with an inversion theorem for the high-spin boundary data. It does not derive (9.15) by directly summing (6.1) and (7.4), and does not claim an independent all-index calculation confined to those Hamiltonian sums.

### 9.6 Solve the remaining bands and prove uniqueness

The solution of (9.13) with (9.15) is

$$\begin{aligned}
x_{nn}=u_n\frac{2h-2}{2h-1},\qquad
x_{kl}=u_{\min(k,l)}\quad(k\ne l).
\end{aligned}\tag{9.16}$$

For substitution, $L1=0$ and $Lu=2u$. The equations at $k=l$, $|k-l|=1$, and $|k-l|\geq2$ then reduce to three rational identities at arbitrary $n$, checked separately by the new script.

For uniqueness, subtract two solutions. Their symmetric difference $e_{kl}$ is homogeneous and vanishes for $|k-l|\geq3$. Write its only possible nonzero bands as

$$\begin{aligned}
X_n=e_{n+2,n},\qquad Y_n=e_{n+1,n},\qquad Z_n=e_{nn},
\qquad X_{-1}=Y_{-1}=0.
\end{aligned}$$

The equations at gaps three, two, and zero imply

$$\begin{aligned}
X_{n+1}&=-\frac{c_{n+3}}{a_n}X_n,\\
Y_{n+1}&=-\frac{c_{n+2}Y_n+(b_{n+2}+b_n-2)X_n}{a_n},\\
Z_n&=\frac{a_nY_n+c_nY_{n-1}}{1-b_n}.
\end{aligned}\tag{9.17}$$

For $\Delta>1$, these denominators never vanish. Everything is therefore determined by $(Y_0,X_0)$. The still-unused gap-one equations are

$$\begin{aligned}
0={}&c_{n+1}Z_n+a_nZ_{n+1}
+(b_{n+1}+b_n-2)Y_n+a_{n+1}X_n+c_nX_{n-1}.
\end{aligned}$$

At $n=0,1$ they give a homogeneous two-by-two system for $(Y_0,X_0)$. Its determinant is

$$\begin{aligned}
\frac{960(\Delta+1)^2
(3\Delta^5+24\Delta^4+63\Delta^3+68\Delta^2+33\Delta+6)}
{\Delta(2\Delta+3)(2\Delta+5)(3\Delta+2)(5\Delta+4)}>0.
\end{aligned}\tag{9.18}$$

Hence $X_0=Y_0=0$, and induction in (9.17) gives $e=0$ at every level. This proves (9.16) given the high-spin input, without any numerical cutoff or assumption about large-$n$ polynomial growth.

Combining (9.16) with the directly evaluated annihilation channel yields (8.1) for every $n\geq0$ and every allowed even $\ell$. The result is an all-index analytic completion under the stated response, inversion and scalar-primary-branch assumptions. The finite Hamiltonian computation remains an independent check of its normalization and low-level entries.

## 10. Physical scope and reproducible checks

Solving the circular constraints is sufficient for the connected circular four-scalar matrix elements used above. It is not permission to delete nonzero-charge Brown–Henneaux modes from the full theory. For example, at $E_0=2\Delta+2$, $J=2$, the free limits of a Virasoro descendant $L_{-2}|P_{00}\rangle$, the global descendant $L_{-1}^2|P_{00}\rangle$, and a new spin-two scalar primary are degenerate even at generic $\Delta$. An unreduced application of (2.1) must include all resonant physical states, or first justify a projection onto the desired interacting primary branch. This note does not compute the full boundary-graviton mixing/dressing matrix.

Similarly, at exceptional masses additional matter-primary sectors can collide. The numerical value of a connected coefficient at such a mass does not diagonalize the enlarged primary block. The quoted $O(G^2)$ remainder presupposes the selected perturbative branch and the absence of unresolved mixing relevant to its interpretation.

The new [Mathematica script](scripts/ofpt_two_particle_checks.wl) is self-contained: it does not load the old radial-block implementation, saved spectrum data, or response kernels. `OFPTRadialElement` implements coefficient extraction from (3.4); `OFPTReconstruct` extracts the primaries; `OFPTClosed` is used only in comparison checks. From the vault root, run

```sh
rtk proxy wolframscript -code 'Get["Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/scripts/ofpt_two_particle_checks.wl"]; report=OFPTRunChecks[8]; If[!AssociationQ[report] || !TrueQ[report["allPassed"]], Exit[1]];'
```

The report is written to `scripts/ofpt_two_particle_results.json`. The new independent [Sage check](scripts/ofpt_primary_basis_checks.sage) derives the primary coefficients by lowering and raising in an unnormalized product basis and compares them with the Hahn formula. It uses exact rational arithmetic at $\Delta=3/2,2,7/3$, $N=0,\ldots,8$.

The analytic supplement has a separate [all-index Mathematica check](scripts/ofpt_all_index_checks.wl). It loads neither saved coefficients nor the finite radial implementation. It verifies the general primary normalization, center ratios, source integrals, hypergeometric coefficient identity, recurrence, and uniqueness determinant:

~~~sh
rtk proxy wolframscript -file 'Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/scripts/ofpt_all_index_checks.wl'
~~~

The [primary-tensor check](scripts/ofpt_primary_tensor_checks.wl) uses xCoba to verify (9.4) and the local contractions behind (9.5) at arbitrary energy. The existing contact, off-shell Einstein, and tensor-Casimir audit scripts were also rerun for the identities used in section 9. None of these machine checks proves the Lorentzian inversion theorem, its applicability to the selected full gravitational branch, or the missing direct all-index Jacobi–Hahn summation.

Executed on 2026-09-18:

| Check | Result and scope |
|---|---|
| xAct/xCoba, `verificationCase="constraints"` in the existing [constraint script](scripts/gravity_scalar_spectrum_checks.wl) | Exact Einstein $tt,tr,rr$ residuals vanish after substitution of (3.1); xTras loaded; no package errors. |
| xAct spatial momentum contraction | $(s^as^b-q^{ab}s^cs_c)s_as_b=0$ under the full canonical/contraction/xTras pipeline, verifying the radial gravitational momentum cancellation used in (3.2). |
| Mathematica boundary charge, fixed-momentum expansion and lowest-mode integrals | Zero residuals for (3.3)–(3.4), lowest KG norm, mass primitive and quartic coefficient. |
| Mathematica OFPT time integrals and bosonic factors | The secular denominator, two oscillator time orderings and identical-pair factor pass. |
| Fresh symbolic circular calculation and reconstruction | 25 primary coefficients at $N\leq8$; 210 scalar residuals in the complete report, all zero. Includes Hermiticity, transformed off-diagonal entries and the displayed $N=2,\Delta=2$ matrix. |
| Sage primary basis | Six check groups pass at all 27 mass/level pairs: lowering, raising-versus-Hahn, positive orthogonality, exchange parity, half-range orthogonality and nonzero inversion entries. |
| All-index Mathematica supplement | 28 residuals vanish at symbolic indices; the finite-band uniqueness determinant is strictly positive for $\Delta>1$. Includes a nonzero homogeneous solution demonstrating why the high-spin input is necessary. |
| New xAct/xCoba primary tensors | Ten check groups pass at arbitrary real $E>2$: background curvature, transversality, trace, wave equations, both lowering equations and contractions. No package errors. |
| Rerun xAct contact and off-shell Einstein audits | Six tensor identities vanish, including the contact decomposition, conformal response, off-shell Einstein–Casimir relation and both Green currents. |
| Rerun xCoba tensor-Casimir audit | The Casimir Lie-derivative identity holds on all six arbitrary tensor components at symbolic frequency and angular momentum; the source-response checks also pass. |

The Mathematica MCP's 30-second execution limit was too short for the complete run; the successful full run used the same local Mathematica 14.3 engine through `wolframscript`. The tensor checks used the xAct MCP, and the representation checks used the Sage MCP.

- **Verified:** the executed checks above; finite-level reproduction from the canonical OFPT vertex; arbitrary-index primary/source identities; and the crossed recurrence and uniqueness certificate. Section 9 proves the general closed result conditional on its specified high-spin input, rather than extrapolating finite-level agreement.
- **Assumptions:** minimal Einstein–real-scalar action, $\Delta>1$, regular center, fixed boundary time, reflecting standard scalar boundary condition, physical single-particle mass, and the global-AdS-covariant connected scalar-primary branch used in (7.3). The analytic completion additionally uses the reciprocal forced response and the stress-exchange Lorentzian inversion prescription with its Regge bound.
- **Not verified:** a direct all-index summation of the OFPT Jacobi–Hahn formula without that additional input; the complete unreduced boundary-graviton intermediate-state sum and resonant mixing matrix; enlarged matter-primary blocks at special masses; bare self-energies, higher orders in $G$, or infinite-mode convergence.
