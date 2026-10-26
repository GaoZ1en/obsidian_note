# The neutral four-point extrapolate limit: Einstein exchange, Mellin amplitude and SYM OPE

## 1. Result and scope

The boundary limit of the dressed neutral scalar constructed in [the dressing report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_gravitational_dressing.md>) agrees with the unit-normalized, strong-coupling $\mathcal N=4$ SYM four-point function through connected tree order $N^{-2}$. This is a comparison of the **complete contact-plus-Einstein coefficient**, not just a stress-tensor pole or a fitted contact term.

Set $P_{ij}=|x_i-x_j|^2$ and define the cross ratios

$$
U=\frac{P_{12}P_{34}}{P_{13}P_{24}},\qquad
V=\frac{P_{14}P_{23}}{P_{13}P_{24}},\qquad
G_c(x_i)=\frac{\mathcal G_c(U,V)}{(P_{12}P_{34})^2}.
\tag{1}
$$

Here $U$ is a cross ratio, not the finite-radial field used in earlier reports. The answer is

$$
\boxed{\mathcal G_c(U,V)=\frac{2}{3N^2}
\left[U+\frac U V+\frac{U^2}{V}
-U^2\big(1+U^2+V^2+4U+4V+4UV\big)\bar D_{2422}(U,V)\right].}
\tag{2}
$$

Its **ordinary** Mellin amplitude is

$$
\boxed{M_Y(s,t,u_M)=\frac1{N^2}\left[
\frac13-\frac12\sum_{\rm cyc}\frac{(t-u_M)^2+4/3}{s-2}\right],
\qquad s+t+u_M=8.}
\tag{3}
$$

The subscript on $u_M$ distinguishes it from any radial coordinate. The inverse Mellin integral needs the channel contours specified in §4; the rational function alone is not a complete contour prescription. The equality of full position-space functions is proved separately in §6, including the rational terms in (2).

Two OPE consequences are

$$
a_T=\frac{2}{45N^2},\qquad
\left.\mathcal G_c(U,1)\right|_{U^2\log U}=-\frac4{5N^2}U^2\log U.
\tag{4}
$$

In the unique leading strong-coupling singlet scalar double-trace sector, the latter gives $\gamma_{[O_2O_2]_{\mathbf1}}=-16/N^2$. This individual eigenvalue uses the spectrum and protection conditions in §7; a log coefficient by itself only determines a weighted anomalous-dimension sum.

We retain the Euclidean BF boundary completion, fixed conformal source measure, radial mollifier/thin-layer ordering, fixed UV metric **as a distribution**, regular Poincaré IR, and the absence of extra zero-mode/edge or quartic source sectors. The regime is $N\gg1$, $1\ll\lambda_{\rm tH}\ll N$, at two-derivative tree order. String and quantum corrections are not computed. The existing finite-radius theorem is inherited, not replaced by assuming that an insertion functional is a one-sided on-shell action.

## 2. A closed-form regular Einstein response

### 2.1 Normalization and geometry

Use the actual neutral IIB restriction of [the contact report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point.md>):

$$
Y=\frac{\operatorname{diag}(1,1,1,-1,-1,-1)}{\sqrt6},\quad
\operatorname{Tr}Y^2=1,\quad
m^2=-4/\ell^2,\quad
\kappa^2=\frac{4\pi^2\ell^3}{N^2},\quad
\lambda_4=-\frac{32\kappa^2}{3\ell^2}.
\tag{5}
$$

No retained scalar/vector exchange survives for four identical $Y$ components. Nonlinear consistent truncation, not the vanishing cubic alone, justifies the five-dimensional calculation. It does not remove protected higher-dimensional CFT operators.

The canonical boundary insertion line is

$$
K_i=c_K A_i^2,\qquad
A_i=\frac{z}{z^2+|x-x_i|^2},\qquad
c_K=\frac1{\sqrt2\pi\ell^{3/2}}.
\tag{6}
$$

For the response calculation set the AdS radius to one, $g=z^{-2}\delta$, and strip $c_K$ from the scalar lines. Define

$$
a_i=d\log A_i,\quad \chi_{ij}=P_{ij}A_iA_j,\quad
W=\frac{A_1A_2}{P_{12}},\quad F=A_1^2A_2^2,
\quad p=a_1+a_2,\quad q=a_1-a_2.
\tag{7}
$$

All contractions and covariant derivatives in this section use the unit-radius metric. The useful identities are

$$
a_i^2=1,\quad a_i\cdot a_j=1-2\chi_{ij},\quad
\nabla a_i=a_i\otimes a_i-g,\quad 0\le\chi_{ij}\le1,
$$
$$
\nabla W=Wp,\quad p\cdot q=0,\quad p^2=4(1-\chi_{12}),\quad q^2=4\chi_{12},
$$
$$
\nabla p=-2g+\tfrac12(pp+qq),\qquad
\nabla q=\tfrac12(pq+qp),\qquad W\chi_{12}=F.
\tag{8}
$$

The unhalved cross stress and linearized Einstein operator are

$$
B^{12}=4F(a_1a_2+a_2a_1)+8\chi_{12}Fg,
\qquad E_{\mu\nu}=G_{\mu\nu}-6g_{\mu\nu}.
\tag{9}
$$

The following particularly simple representative solves the full sourced equations:

$$
\boxed{\mathfrak h^{12}_{\mu\nu}=-\frac W3q_\mu q_\nu,
\qquad \delta E[\mathfrak h^{12}]=B^{12}.}
\tag{10}
$$

This $\mathfrak h$ is a unit-radius response, not the canonical graviton $h$ of $\delta g=2\kappa h$. Restoring dimensions gives $\delta g^{12}=\kappa^2c_K^2\ell^2\mathfrak h^{12}$ for the two scalar lines.

For an analytic verification, let $H=Wqq$. Equations (8) imply

$$
\operatorname{tr}H=4F,\quad \nabla\cdot H=dF,\quad
\Box F=-16\chi_{12}F,\quad
\nabla\nabla F=F(5pp+qq-4g),
$$
$$
\Box H=-(2+14\chi_{12})H+2Fpp,\qquad
\delta R[H]=16F(1+3\chi_{12}).
\tag{11}
$$

The constant-curvature linearized Einstein formula then gives

$$
\delta E[H]=-6Fpp+6Fqq-24\chi_{12}Fg=-3B^{12},
\tag{12}
$$

which proves (10), not just its tangential or TT part.

### 2.2 Admissibility and a useful absolute bound

For distinct finite anchors, $z^2\mathfrak h=O(z^4)$ away from the anchors and the response decays in the IR. Pointwise behavior away from anchors alone is insufficient: a homogeneous bulk-to-boundary metric kernel can hide a delta-function UV source. The fixed frame must be imposed distributionally.

Here there is a stronger, explicit test. The Frobenius norms satisfy

$$
\boxed{|\mathfrak h^{12}|_g=\frac43F,\qquad
|B^{34}|_g^2=64(A_3^2A_4^2)^2(1+3\chi_{34}^2),}
$$
$$
\boxed{|\mathfrak h^{12}:B^{34}|\le\frac{64}{3}\prod_{i=1}^4 A_i^2.}
\tag{13}
$$

Moreover, for every fixed $m$, $|\nabla^m\mathfrak h^{12}|\le C_m F$: derivatives of $q$ always contain a factor of $q$ by (8), and derivatives of $W$ are bounded by constants times $W$. This remains useful as the anchors approach each other even though $W$ alone has a $P_{12}^{-1}$ singularity.

After smearing with absolute Schwartz sources, let $f_j(z,x)=\int A(z,x;x')^2|j(x')|\,d^4x'$. Uniformly in $x$, $f_j=O(z^2(1+|\log z|))$ at the UV and $O(z^{-2})$ at the IR. The smeared relative metric and its orthonormal derivatives are thus $O(z^4(1+|\log z|)^2)$ and $O(z^{-4})$, respectively. Its UV metric source vanishes as a distribution. Differentiation through the smearing is justified locally in the open bulk by the same bounds.

For completeness, absolute smearing does not require $|j|$ itself to be smooth. Direct convolution bounds give

$$
f_j(z,x)\le C_j\begin{cases}
z^2(1+|\log z|)(1+|x|)^{-4},&0<z\le1,\\
z^2(z^2+|x|^2)^{-2},&z\ge1.
\end{cases}
$$

Consequently $\int d^4x\,z^{-5}\prod_i f_{j_i}$ is $O(z^3(1+|\log z|)^4)$ at zero and $O(z^{-9})$ at infinity. The smeared response and all its covariant derivatives are also in $L^2$. These estimates justify the absolute-source steps without invoking Fourier smoothness of an absolute value.

The usual regular Dirichlet uniqueness now identifies (10), after smearing, with the full conserved-source response underlying the previous boundary exchange. In radial gauge, the TT homogeneous branches are $z^2I_2(|p|z)$ and $z^2K_2(|p|z)$ for the relative metric; IR regularity and distributional zero UV source exclude them. The constraints remove the non-TT homogeneous data. At zero momentum, the relative-metric branches $1,z^4$ are excluded by the fixed UV frame and IR condition, respectively. The excluded extra zero/edge sectors are not silently restored here.

Most importantly, (13) bounds the absolute exchange pairing by the already controlled scalar contact integral. Thus Fubini and the earlier Schwartz contact estimates apply directly to this source-response pairing. This is the bridge to the previously constructed boundary functional, rather than an inference from agreement at separated points alone.

### 2.3 A second representative and an endpoint counterexample

An independent solution convenient for $D$-reduction is

$$
\mathfrak h_1=W\left[\tfrac12(a_1a_2+a_2a_1)-\tfrac13g\right],
\qquad
\mathfrak h_1-\mathfrak h=\tfrac16\nabla\nabla W
=\mathcal L_{\nabla W/12}g.
\tag{14}
$$

The apparent relative $z^2$ term of $\mathfrak h_1$ is pure gauge. For four distinct anchors, the gauge-pairing UV flux vanishes, including neighborhoods of all anchors. Alternatively (10) and (13) avoid this endpoint manipulation when defining the smeared pairing.

For contrast, with $X=(z,x-x_1)$, $R^2=X\cdot X$, traceless constant $e_{ij}$, and $J_{\mu i}=\delta_{\mu i}-2X_\mu X_i/R^2$, the homogeneous response

$$
k_{\mu\nu}=\frac{z^2}{R^8}J_{\mu i}J_{\nu j}e_{ij}
\quad\hbox{obeys}\quad
z^2k_{ij}\longrightarrow\frac{\pi^2}{10}e_{ij}\delta^{(4)}(x-x_1).
\tag{15}
$$

It is IR regular and looks normalizable away from $x_1$, but violates the distributional fixed-frame condition. This is a concrete reason not to weaken that condition in the uniqueness argument.

## 3. Evaluated exchange and its contact polynomial

Define the unnormalized unit-radius contact integrals

$$
D_{\Delta_1\Delta_2\Delta_3\Delta_4}
=\int_0^\infty\frac{dz\,d^4x}{z^5}\prod_i A_i^{\Delta_i}.
\tag{16}
$$

One pairing in $W=\log(Z[j]/Z[0])$ is

$$
G_{\rm grav,s}=\frac{\kappa^2c_K^4\ell^3}{2}
\int\sqrt{g_{\ell=1}}\,\mathfrak h^{12}:B^{34}
=\frac1{2\pi^2N^2}\int\sqrt{g_{\ell=1}}\,\mathfrak h^{12}:B^{34}.
\tag{17}
$$

The factor $1/2$ is for the cross-source response pairing; summing the three distinct pairings adds no further symmetry factor. The sign is the insertion-functional sign, not the sign of the source-included Euclidean on-shell action.

Using (14) gives the explicit result

$$
\begin{aligned}
G_{\rm grav,s}=\frac1{2\pi^2N^2}\Big[&
\frac{16}{3P_{12}}D_{1122}
-\frac8{P_{12}}(P_{13}D_{2132}+P_{14}D_{2123}
+P_{23}D_{1232}+P_{24}D_{1223})\\
&+\frac{16}{P_{12}}(P_{13}P_{24}+P_{14}P_{23}-P_{12}P_{34})D_{2233}\Big].
\end{aligned}
\tag{18}
$$

The independent response (10) instead yields

$$
G_{\rm grav,s}=-\frac{16}{3\pi^2N^2P_{12}}\left[
P_{23}P_{24}D_{1333}+P_{13}P_{14}D_{3133}
+(P_{12}P_{34}-P_{23}P_{14}-P_{13}P_{24})D_{2233}\right].
\tag{19}
$$

They have the same source pairing. The quartic contribution, already fixed by the IIB potential, is

$$
G_{\rm ct}=\frac{32}{3\pi^2N^2}D_{2222}.
\tag{20}
$$

In particular (13) implies $|G_{\rm grav,s}|\le G_{\rm ct}$ pointwise at separated Euclidean points. This bound is used for absolute convergence, not for an assertion that exchange is positive.

## 4. Ordinary Mellin amplitude and contours

Our convention, equivalent to the previous independent-$\delta_{ij}$ measure, is

$$
\mathcal G_c(U,V)=\int\frac{ds\,dt}{(4\pi i)^2}
U^{s/2}V^{t/2-2}
\Gamma^2\!\left(\frac{4-s}{2}\right)
\Gamma^2\!\left(\frac{4-t}{2}\right)
\Gamma^2\!\left(\frac{4-u_M}{2}\right)M(s,t,u_M),
\tag{21}
$$

with $\delta_{12}=\delta_{34}=(4-s)/2$, $\delta_{14}=\delta_{23}=(4-t)/2$. The measure is not $ds\,dt/(2\pi i)^2$.

For $\Sigma=\tfrac12\sum_i\Delta_i$, the contact Mellin prefactor is

$$
\frac{\pi^2\Gamma(\Sigma-2)}{2\prod_i\Gamma(\Delta_i)}.
\tag{22}
$$

The three types in (18) have prefactors $\pi^2/2,\pi^2/4,\pi^2/4$. Multiplication by the displayed $P$ factors shifts the Mellin variables and gamma functions. Put $a=(4-s)/2$, $b=(4-t)/2$, $c=(4-u_M)/2$. The direct reduction gives

$$
M_{\rm grav,s}=\frac1{2N^2}
\left[\frac{8/3-2s+4(b^2+c^2)}{a-1}-4a\right]
=\boxed{\frac1{2N^2}\left[s-6-\frac{(t-u_M)^2+4/3}{s-2}\right]}.
\tag{23}
$$

Thus

$$
M_{\rm grav}=-\frac5{N^2}
-\frac1{2N^2}\sum_{\rm cyc}\frac{(t-u_M)^2+4/3}{s-2},
\qquad M_{\rm ct}=\frac{16}{3N^2}.
\tag{24}
$$

The $1/(3N^2)$ constant in (3) is determined by the actual bulk action and solved response. The stress Ward identity alone would not fix it. At large Mellin variables, one channel has leading dependence $2tu_M/(N^2s)$, as expected from minimal graviton exchange.

**Contour prescription.** The $s$-channel $D$-sum has a common fundamental strip $\Re s<2$, $\Re t<4$, $\Re u_M<4$, for example $(1,7/2,7/2)$. Crossed channels use the permuted strips; the contact term admits $(8/3,8/3,8/3)$. There is no common straight contour with all three variables to the left of their stress poles, because their sum is eight. Equation (3) therefore denotes the sum of these channelwise inversions, or a deformation that explicitly retains crossed residues. It must not be inverted on an arbitrary common contour and then supplemented by an independently guessed free term.

## 5. Independent SYM projection

The strong-coupling stress-multiplet correlator is taken from [Rastelli–Zhou, §§4.1–4.5 and Appendix C](<https://arxiv.org/html/1710.05923v2#A3>), not obtained by fitting the bulk answer. The relevant equations (111), (168)–(176) were read in HTML math form; no PDF visual audit is being claimed here.

For null auxiliary polarizations $t_i$, let $\sigma=(t_1\cdot t_3)(t_2\cdot t_4)/[(t_1\cdot t_2)(t_3\cdot t_4)]$ and $\tau=(t_1\cdot t_4)(t_2\cdot t_3)/[(t_1\cdot t_2)(t_3\cdot t_4)]$. The standard split is

$$
\mathcal G_{\rm conn}=\mathcal G_{\rm free,conn}+\mathcal R\mathcal H,
\qquad
\mathcal H=-\frac4{N^2}U^2\bar D_{2422},
$$
$$
\mathcal G_{\rm free,conn}=\frac4{N^2}
(\sigma U+\tau U/V+\sigma\tau U^2/V),
$$
$$
\mathcal R=\tau+(1-\sigma-\tau)V+(-\tau-\sigma\tau+\tau^2)U
+(\sigma^2-\sigma-\sigma\tau)UV+\sigma V^2+\sigma\tau U^2.
\tag{25}
$$

This split does not say that an unprotected free four-point function is unchanged at strong coupling, nor that its terms form a separately protected ordinary conformal-block sum.

For each leg apply $\tfrac12Y_{IJ}\partial_{t_I}\partial_{t_J}$ to the full polynomial, including its polarization prefactor. The resulting linear projection is

$$
\mathsf P_Y[1]=\mathsf P_Y[\sigma^2]=\mathsf P_Y[\tau^2]=1,
\qquad
\mathsf P_Y[\sigma]=\mathsf P_Y[\tau]=\mathsf P_Y[\sigma\tau]
=\operatorname{Tr}Y^4=\frac16.
\tag{26}
$$

It cannot be implemented by setting $\sigma$ and $\tau$ to two numbers. It gives $\mathsf P_Y\mathcal R=(1+U^2+V^2+4U+4V+4UV)/6$, and hence (2).

The normalization is independently checked by free Wick contractions. With adjoint color multiplicity $D=N^2-1$, unit-propagator scalars $X_i^a$ and $O_Y=(2D)^{-1/2}Y_{ij}:X_i^aX_j^a:$, each disconnected graph has multiplicity four and two color loops; each connected four-cycle has multiplicity sixteen and one color loop. Thus the connected coefficient is $4/D$ before projection. At classical order this is $4/N^2$; replacing the bulk Newton constant by $N^2-1$ by hand would not compute quantum gravity corrections.

The $D$ normalization needed in (2) is

$$
\boxed{\bar D_{2422}=\frac6{\pi^2}\frac{P_{13}^3P_{24}^4}{P_{14}P_{34}}D_{2422}.}
\tag{27}
$$

For comparison, the **supersymmetric reduced** Mellin seed is

$$
\widetilde M=\frac{32}{N^2(s-2)(t-2)(\widetilde u-2)},
\qquad \widetilde u=4-s-t=u_M-4.
\tag{28}
$$

It is not (3). Its measure has $\Gamma^2((s+t)/2)$ instead of the ordinary third gamma pair. Multiplication by $U^mV^n$ replaces it by $\widetilde M(s-2m,t-2n)$ and multiplies it by

$$
\left(2-\frac s2\right)_m^2
\left(2-\frac t2\right)_n^2
\left(2-\frac{u_M}2\right)_{2-m-n}^2.
\tag{29}
$$

Applying the six terms of the projected polynomial reproduces (3) algebraically. Appendix C of the cited source explains how domain pinching recovers the free rational terms; the next section supplies a direct position-space proof instead of relying on a formal contour shift.

## 6. Direct position-space equality and distributional meaning

Let the finite flat-space box be

$$
\mathcal B(P)=\int_{\mathbb R^4}d^4y\prod_i|y-x_i|^{-2}
=\frac{\pi^2}{P_{13}P_{24}}\Phi(U,V).
\tag{30}
$$

It is not the divergent AdS $D_{1111}$. Treat the six $P_{ij}$ as independent analytic variables before differentiating. For $m\ge1$ derivative edges $e_r$, with vertex degrees $d_i$, the Schwinger representation gives

$$
\partial_{e_1}\cdots\partial_{e_m}\mathcal B
=(-1)^m\frac{2\prod_i d_i!}{\Gamma(m)}D_{1+d_1,\ldots,1+d_4}.
\tag{31}
$$

In particular,

$$
D_{1122}=-\tfrac12\partial_{34}\mathcal B,\quad
D_{2132}=\tfrac14\partial_{13}\partial_{34}\mathcal B,\quad
D_{2233}=-\tfrac14\partial_{13}\partial_{24}\partial_{34}\mathcal B,
$$
$$
D_{2222}=\tfrac12\partial_{12}\partial_{34}\mathcal B,\qquad
D_{2422}=-\tfrac16\partial_{12}\partial_{23}\partial_{24}\mathcal B.
\tag{32}
$$

All terms on both sides of (2) have now become derivatives of one known function. Set $U=\zeta\bar\zeta$, $V=(1-\zeta)(1-\bar\zeta)$, with $\bar\zeta=\zeta^*$ in Euclidean kinematics. The correct branch is

$$
\Phi=\frac{2\operatorname{Li}_2(\zeta)-2\operatorname{Li}_2(\bar\zeta)
+\log(\zeta\bar\zeta)[\log(1-\zeta)-\log(1-\bar\zeta)]}{\zeta-\bar\zeta}.
\tag{33}
$$

The dilogarithms use their principal branch on the standard cut, continued with $\operatorname{Im}\zeta>0$ and $\bar\zeta=\zeta^*$. The logarithms are separate principal logarithms, followed by continuous Euclidean limits. Replacing their difference by the principal logarithm of their quotient is not globally valid. Derivatives are explicitly

$$
\partial_U=\frac{(\zeta-1)\partial_\zeta+(1-\bar\zeta)\partial_{\bar\zeta}}{\zeta-\bar\zeta},\qquad
\partial_V=\frac{-\zeta\partial_\zeta+\bar\zeta\partial_{\bar\zeta}}{\zeta-\bar\zeta}.
\tag{34}
$$

Substitution of (32) into the three versions of (18), plus (20), followed by (33)–(34), gives exactly (2). The [position identity script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_position_checks.wl>) implements this finite differential identity: it differentiates all six distances first, fixes conformal scales only afterwards, and obtains zero symbolic residual. An independent review verified the Schwinger coefficients, conformal Jacobian and branch choice. The apparent $\zeta=\bar\zeta$ denominators are taken by continuous limits, not literal substitution into $0/0$ formulas.

For example, the independently assembled bulk and CFT expressions give

| $(U,V)$ | $N^2\mathcal G_c$ |
|---|---:|
| $(1,1)$ | $0.1951432830642617360\ldots$ |
| $(13/36,25/36)$ | $0.06938337313203098591\ldots$ |
| $(97/144,25/144)$ | $0.4226500278224178333\ldots$ |

These are position-space cross-ratio values, not the earlier momentum-tetrahedron coefficient. Internal high-precision agreement is a numerical check, not a certified numerical error bound; the equality rests on the differential identity.

There is also a controlled contact extension. Each numerator monomial in (18)–(20) is locally integrable. The worst divergence degrees for two, three and four colliding external points are $2,4,8$, below the relative dimensions $4,8,12$. A positive Schwinger sector decomposition checks nested collisions as well: a bulk-containing cluster of $k$ external points has raw degree $\sum_i\Delta_i-2\sum_{i\in S}\Delta_i$ plus the explicit distance-prefactor degree. The convergence margins for $k\ge2$ are at least $2,4,4$; single-anchor clusters obey $\sum\Delta_i-2\Delta_i>0$, and the bulk UV away from anchors obeys $\sum\Delta_i>4$. Pure external clusters only see the integrable explicit inverse distance. Homogeneity and the analogous large-distance bounds give tempered regular distributions.

Thus the position identity extends to their regular-distribution extensions. This by itself would not exclude adding diagonal distributions. The source-smearing proof in §2.2 separately identifies the exchange extension with the already specified insertion functional, while (20) fixes the quartic term. No extra diagonal source counterterms are added to either side. Boundary Ward/contact conventions not fixed by this comparison must still be distinguished from the separated CFT formula.

Combining this result with the previous joint-boundary theorem yields, for arbitrary overlapping Schwartz sources and independent insertion radii $a_i$, $R=\max a_i$,

$$
\mathcal G^{\rm dressed}_{\boldsymbol a}
=\mathcal G^{\rm SYM}_{0}
+\frac14\sum_i a_i^2\mathcal G^{\rm SYM}_{0}(\ldots,-\Delta j_i,\ldots)
+O\!\left(R^4(1+|\log R|)^4\right)
\tag{35}
$$

at the stated connected tree order and common source/contact convention. This is a near-boundary expansion, not a closed CFT reconstruction formula at arbitrary finite radius.

## 7. OPE checks beyond a contact amplitude

### 7.1 Stress tensor

The ordinary Mellin residue is

$$
\operatorname*{Res}_{s=2}M_Y=-\frac2{N^2}
\left[(t-3)^2+\frac13\right].
\tag{36}
$$

Set $q=t/2-1$ in the remaining Mellin integral. Barnes' lemma gives

$$
\int\frac{dq}{2\pi i}\Gamma(q)^2\Gamma(1-q)^2(q)_n=\frac{n!}{n+1}.
\tag{37}
$$

The coefficients of $(1-V)^0$ and $(1-V)^1$ vanish, while the $(1-V)^2$ coefficient is $2/(45N^2)$. The full leading-twist function is

$$
\frac{2}{45N^2}U(1-V)^2\,{}_2F_1(3,3;6;1-V).
\tag{38}
$$

This is the spin-two block with leading radial behavior $r^4C_2^{(1)}(\eta)$. It agrees independently with $A_T^2/(4C_T)$, where $A_T=-4/(3\pi^2)$ and $C_T=10N^2/\pi^4$. The coefficient in the explicitly normalized STF tensor three-point function is four times larger, $8/(45N^2)$; the two conventions must not be conflated.

### 7.2 The first long scalar

An independent route uses the position-space box rather than inserting $s=4$ naively into the compact ordinary Mellin amplitude. Write

$$
\Phi(U,V)=a_0(V)\log U+b_0(V)
+U[a_1(V)\log U+b_1(V)]+\cdots,
$$
$$
a_0(V)=\frac{\log V}{1-V},\qquad
a_1(V)=\frac{2(V-1)-(V+1)\log V}{(V-1)^3}.
\tag{39}
$$

Equations (27), (32) give

$$
\bar D_{2422}=(3+U\partial_U+V\partial_V)\partial_U\partial_V\Phi.
\tag{40}
$$

The coefficient of $U^0\log U$ in $\bar D_{2422}$ is $3a_1'+Va_1''$, whose removable limit at $V=1$ is $1/5$. Since the projected polynomial at $U=0,V=1$ is six, this proves the second result in (4). As a separate Barnes check, the reduced Mellin representation of $U^2\bar D_{2422}$ has an $s=4$ double pole whose log coefficient at $V=1$ is

$$
\int\frac{dq}{2\pi i}\Gamma(2-q)\Gamma(1-q)\Gamma(1+q)\Gamma(2+q)=\frac15.
\tag{41}
$$

The leading $U^{-1}$ coefficient of $\bar D_{2422}$ at $V=1$ is $1/3$. It cancels the apparent order-$U$ scalar contribution of the free split in (2), another check that the free rational part is not a separately protected ordinary-block expansion.

At leading large $N$, the generalized-free scalar strengths in the symmetric product of two $20'$ representations, projected to $YYYY$, are

$$
(a_{\mathbf1},a_{20'},a_{105},a_{84})
=\left(\frac1{10},0,\frac56,\frac{16}{15}\right),\qquad \sum a=2.
\tag{42}
$$

The singlet weight is $2/20$. The $105$ weight follows by taking the rank-four STF part of $Y\otimes Y$, whose norm is $5/12$; the remainder is the $84$. The $105$ and $84$ scalar double-trace sectors at dimension four are protected (half- and quarter-BPS); the projected $20'$ weight is zero. Hence the log coefficient gives

$$
\frac12\sum_{\Delta_0=4,\,l=0}a^{(0)}\gamma
=-\frac4{5N^2},\qquad
\boxed{\gamma_{[O_2O_2]_{\mathbf1}}=-\frac{16}{N^2}.}
\tag{43}
$$

The individual value uses the strong-coupling light spectrum: the singlet scalar double trace is unique at this leading dimension; string single traces such as Konishi are heavy, and $SU(N)$ has no dimension-one single trace that supplies an additional such multitrace. Protected exactly marginal singlet descendants do not supply a logarithmic term. This is not a resolved finite-$N$ mixing matrix and is not a statement about the degenerate weak-coupling spectrum.

Nonzero protected dimension-four OPE content is explicit in (42). It is fully compatible with having only gravity and a scalar contact in the consistent-truncation exchange bookkeeping. Higher-order mixing and extremal operator-basis questions are not decided by the absence of another propagator.

## 8. Evidence and remaining questions

**Verified.** Two independent Einstein calculations produced the gauge-related responses (10), (14), the same channel polynomial and residue. Full-component equations, gauge identities, the distributional endpoint counterexample and norm bounds were checked symbolically. An independent CFT calculation checked Wick multiplicities, six polarization structures, the ordinary/reduced Mellin conversion and OPE normalization. The direct position identity was separately reviewed rather than inferred from meromorphic Mellin agreement.

Reproducible artifacts:

- [Bulk Einstein and Mellin checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_bulk_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_bulk_checks_results.txt>).
- [Independent response audit](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_response_audit.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_response_audit_results.txt>).
- [CFT projection and OPE checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_cft_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_cft_checks_results.txt>).
- [Direct position identity](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_position_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mellin_position_checks_results.txt>).

**Assumptions.** The specified BF vacuum and source normalization, distributional fixed UV frame, standard regular Dirichlet metric sector, no added quartic source/zero-mode/edge distributions, classical two-derivative IIB regime, and the ordinary-block convention in §7. The inherited joint-radius estimate is not re-proved by these finite CAS checks.

**Not verified here.** Full finite-$N$ protected mixing, higher-twist anomalous-dimension matrices, generic $20'$ polarizations, loops or string corrections, a nonlinear finite-radial CFT operator representation, or an interacting Lorentzian Wightman algebra. The strong-coupling CFT expression is an independently normalized known holographic/superconformal result, not a first-principles nonperturbative gauge-theory computation.

The next substantive extension is to turn this Euclidean finite-source comparison into a controlled interacting Lorentzian or finite-radial operator statement, or to extract higher-twist data with explicit mixing. None follows merely from the compact Mellin function (3).
