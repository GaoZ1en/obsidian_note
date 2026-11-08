# Boundary-anchored gravitational dressing and the neutral four-point tree

## Result and precise claim

The finite-source identification left open in [the radial-exchange report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_graviton_exchange.md>) can be made at the order needed for the connected neutral four-scalar tree. The scalar must be evaluated in **boundary-anchored normal coordinates**, rather than treated as an invariant coordinate field. Its first gravitational dressing supplies a conserved completion of the insertion stress, including radial strings ending on the insertions.

For the regular Euclidean Poincaré inverse, fixed UV frame, the stated conformal contour, and no additional zero-mode/edge distributions, the dressed order-$\kappa^2$ exchange is

$$
\boxed{\mathcal E^{\rm dressed}
=\kappa^2\ell^3\sum_{(ij|kl)}\int\frac{du\,dv}{u^3v^3}\int_p
\widehat B^{ij}_{ab}(u,p)\,\mathscr G_{ab,cd}(u,v;p)\,
\widehat B^{kl}_{cd}(v,-p).}
\tag{1}
$$

Here $B$ is the unhalved cross stress of the normalized canonical scalar insertion lines, and $\mathscr G$ is the explicit ten-component radial kernel of the preceding report. Thus its formerly prescription-defined expression is identified with the **dressed tree source-response bilinear**, not with an unrestricted gravitational path integral.

The IR endpoint mismatch has an explicit resolution:

$$
\boxed{C_{\rm IR}=\frac{3\ell^3}{2}\int_p\mathfrak a(p)\mathfrak a(-p)
=-B_{2,\infty},}
\tag{2}
$$

where $q_{ij}\sim u^2\mathfrak a(p)L_{ij}+O(1)$. This term comes from the second-order metric on the diffeomorphism orbit, or an explicit gauge transition region. Merely moving an IR wall while retaining only the first-order metric does not generate the required cancellation.

The argument first applies with positive external momentum magnitudes and nonzero transfer. A bounded Fourier-cutoff construction then extends the bilinear to arbitrary Schwartz insertion sources; **the individual IR tail moments need not have a pointwise zero-transfer limit**. The resulting dressed four-point tree inherits the previous independent-radius boundary expansion. No assertion about a full Gaussian measure equivalence, global nonlinear normal coordinates, loop-renormalized dressing, or a Lorentzian interacting operator algebra is made.

## 1. Theory and the first dressed insertion

Keep the scalar insertion/source conventions of [the reference](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) and the actual neutral IIB Einstein–scalar restriction established in [the contact calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point.md>):

$$
\bar g_{\mu\nu}=\ell^2u^{-2}\delta_{\mu\nu},\quad m^2=-4/\ell^2,
\quad \kappa^2=4\pi^2\ell^3/N^2,\quad
\mathcal N^2=2\pi^2/\ell,
$$
$$
\lambda_4=-32\kappa^2/(3\ell^2),\qquad
U_a=\mathcal N(a/\ell)^{-2}\phi(a,x),\qquad W=\log[Z[j]/Z[0]].
\tag{3}
$$

The action is Euclidean Einstein–Hilbert with negative sign, Dirichlet GHY and UV counterterms, plus the canonical BF scalar action. The quadratic BF boundary completion and quadratic source subtraction are retained. Its metric variation supplies no additional UV vertex for the normalizable metric representatives used here: $\sqrt\gamma\,\phi^2$ is at most logarithmic and the relative metric variation is $O(u^4)$, with possible logarithms, so their product vanishes at the endpoint. Sources pair with the fixed conformal measure $d^4x$. Begin with smooth radial mollifiers, remove the auxiliary regulators described below, then take the thin-layer and boundary limits. No one-sided on-shell or Wilsonian action is substituted for the insertion functional.

Write

$$
\delta g_{\mu\nu}=2\kappa h_{\mu\nu},\qquad
H_{\mu\nu}=u^2\delta g_{\mu\nu}/\ell^2.
$$

With active convention $\delta_\zeta g=\mathcal L_\zeta\bar g$, $\delta_\zeta\phi=\zeta\cdot\partial\phi$, the relative metric gauge variation is

$$
(\mathcal R\zeta)_{uu}=2\partial_u\zeta^u-2\zeta^u/u,\quad
(\mathcal R\zeta)_{ui}=\partial_u\zeta^i+\partial_i\zeta^u,
$$
$$
(\mathcal R\zeta)_{ij}=\partial_i\zeta^j+\partial_j\zeta^i-2\delta_{ij}\zeta^u/u.
\tag{4}
$$

Define the boundary-anchored vector by

$$
\frac{\xi^u[H](u,x)}u=-\frac12\int_0^u\frac{H_{uu}(s,x)}s\,ds,
\qquad
\xi^i[H](u,x)=-\int_0^u[H_{ui}(s,x)+\partial_i\xi^u(s,x)]\,ds.
\tag{5}
$$

The anchoring is $\xi^u/u\to0$, $\xi^i\to0$ at the UV endpoint. It excludes residual boundary Weyl transformations as well as boundary coordinate changes. For normalizable or UV-compact perturbations the integrals converge, and

$$
\mathcal P H=H+\mathcal R\xi[H],\qquad (\mathcal P H)_{u\mu}=0,
\qquad \xi[H+\mathcal R\zeta]=\xi[H]-\zeta
\tag{6}
$$

for gauge parameters obeying the same anchoring. The scalar in these normal coordinates is therefore

$$
\Phi(u,x)=\phi(u,x)+\xi^\mu[H](u,x)\partial_\mu\phi(u,x)+O(H^2).
$$

Its unit insertion is

$$
\boxed{\mathcal U_a=U_a+
\left[\xi^u(\partial_u+2/u)U+\xi^i\partial_iU\right]_{u=a}+O(H^2).}
\tag{7}
$$

The sign is plus in the active convention (4). The $2/u$ term is necessary: the extrapolate prefactor is held at the relational label $a$, not transformed as if it were part of the scalar. Equation (7) is invariant through first order in the metric perturbation under anchored bulk diffeomorphisms. Nonzero boundary symmetry parameters act on the anchors and are not quotiented here.

For $H_{u\mu}=O(u^r)$, $r>0$, the vector satisfies $\xi^u=O(u^{r+1})$ and $\xi^i=O(u^{r+1})+O(u^{r+2})$. For a BF scalar $\phi=u^2[\alpha\log(u/\ell)+\beta+\cdots]$, its unit dressing correction is $O(u^r\log u)$. This is a useful classical boundary check, not a proof that an arbitrary unsmeared quantum composite exists.

## 2. The adjoint projection and the actual insertion contacts

### 2.1 Conserved completion of a tangent source

Use the flat-coordinate weighted pairing, with mixed components counted twice,

$$
\langle Q,H\rangle_w=\int du\,d^4x\,u^{-3}Q_{\mu\nu}H_{\mu\nu}.
$$

For a tangent tensor $J_{ij}$, radial Fubini interchange and tangential integration by parts give $\langle J,\mathcal P H\rangle_w=\langle\mathcal P^\dagger J,H\rangle_w$, where

$$
\boxed{\begin{aligned}
Q_{ij}(u)&=J_{ij}(u),\\
Q_{ui}(u)&=u^3\int_u^\infty ds\,s^{-3}\partial_jJ_{ji}(s),\\
Q_{uu}(u)&=u^2\int_u^\infty ds\,s^{-3}
\left[J_{ii}(s)+\frac{s^2-u^2}{2}\partial_i\partial_jJ_{ij}(s)\right].
\end{aligned}}
\tag{8}
$$

The UV-anchored field map thus has an **IR-integrated adjoint**. Direct component differentiation gives

$$
\nabla^\mu Q_{\mu i}=\frac{u^2}{\ell^2}
[(\partial_u-3/u)Q_{ui}+\partial_jQ_{ji}],
$$
$$
\nabla^\mu Q_{\mu u}=\frac{u^2}{\ell^2}
[(\partial_u-2/u)Q_{uu}+\partial_iQ_{iu}+Q_{ii}/u],
\tag{9}
$$

and both vanish for (8). On a finite interval the upper limit is the IR endpoint and $Q_{u\mu}$ vanishes there. In general a conserved completion is not unique without that endpoint prescription: the homogeneous ambiguity is

$$
\Delta Q_{ui}=u^3c_i(x),\qquad
\Delta Q_{uu}=u^2c_0(x)-\tfrac12u^4\partial_ic_i(x).
\tag{10}
$$

If the radial moments converge, $Q_{ui}=u^3A_i+o(u^3)$ and $Q_{uu}=u^2C+o(u^2)$ at the UV end. Its gauge-pairing flux is $2[u^{-3}Q_{u\nu}\zeta^\nu]_{\rm UV}^{\rm IR}$ after spatial integration. Anchoring removes the UV term; a boundary vector with $\zeta^i\to b_i$, $\zeta^u/u\to a_0$ instead gives $-2\int(A_ib_i+Ca_0)$. Interior conservation must not be confused with zero boundary charge/flux.

### 2.2 Scalar sources produce radial strings

Let $\psi_i=\mathcal N(a_i/\ell)^{-2}G(X;X_i)$, smeared with $j_i$ and the radial mollifier, and let $E\psi_i=-J_i$. Define the full unhalved cross stress

$$
B^{ij}_{\mu\nu}=\partial_\mu\psi_i\partial_\nu\psi_j+
\partial_\mu\psi_j\partial_\nu\psi_i
-\bar g_{\mu\nu}(\partial\psi_i\cdot\partial\psi_j-4\psi_i\psi_j/\ell^2).
$$
$$
\nabla^\mu B^{ij}_{\mu\nu}=-I^{ij}_\nu,\qquad
I^{ij}_\nu=J_i\partial_\nu\psi_j+J_j\partial_\nu\psi_i.
\tag{11}
$$

If its IR radial flux vanishes, $\widetilde B=\mathcal P^\dagger B_{ij}=B+R$ with

$$
\boxed{\begin{aligned}
R_{ij}&=0,\\
R_{ui}&=-\ell^2u^3\int_u^\infty ds\,s^{-5}I_i(s),\\
R_{uu}&=-\ell^2u^2\int_u^\infty ds
\left[s^{-4}I_u(s)+\frac{s^2-u^2}{2}s^{-5}\partial_iI_i(s)\right].
\end{aligned}}
\tag{12}
$$

For one point source $J_a=q_a\delta_g(X-X_a)$, put $v_\nu=\partial_\nu\psi_{\rm other}(X_a)$. Its contribution is

$$
R_{ui}=-\frac{q_a}{\ell^3}u^3\Theta(a-u)v_i\delta^4(x-x_a),
$$
$$
R_{uu}=-\frac{q_a}{\ell^3}u^2\Theta(a-u)
\left[av_u\delta^4(x-x_a)+\frac{a^2-u^2}{2}\partial_i(v_i\delta^4(x-x_a))\right].
\tag{13}
$$

The strings extend from the UV anchor to the insertion, not beyond it into the IR. Coincident radial slices are defined by the original mollifiers; separate products of a delta source and a discontinuous radial derivative are not assigned arbitrarily.

At a finite IR endpoint $L$, (12) has additional terms

$$
R_{ui}^{\rm end}=-\frac{u^3}{L^3}B_{ui}(L),\qquad
R_{uu}^{\rm end}=-\frac{u^2}{L^2}B_{uu}(L)
-\frac{u^2(L^2-u^2)}{2L^3}\partial_iB_{ui}(L).
\tag{14}
$$

They explain why conservation alone does not imply $\widetilde B=B$. A decisive counterexample is $\psi_1=\psi_2=u^2$: it is BF-sourceless and has $B_{ij}=B_{ui}=0$, $B_{uu}=8u^2$. Its projected tangent source is zero, not $B$. This mode violates the required IR flux condition. The regular finite-insertion lines and boundary $K_0$ lines with positive momentum do satisfy that condition.

### 2.3 Dressing supplies precisely the missing source

For the cross stress, the exact integration-by-parts identity is

$$
\langle B_{ij},\mathcal P H\rangle_w
=\langle B,H\rangle_w+2\ell^2\int du\,d^4x\,u^{-5}I_\nu\xi^\nu[H]
+2\left[\int d^4x\,u^{-3}B_{u\nu}\xi^\nu\right]_{\rm UV}^{\rm IR}.
\tag{15}
$$

The Euclidean exponent has the bulk metric vertex

$$
b_{ij}[H]=\frac{\ell^3}{2}\langle B^{ij},H\rangle_w
$$

because $\delta S_\phi=-\frac12\int\sqrt{\bar g}\,B^{\mu\nu}\delta g_{\mu\nu}$ in the cross coefficient. The two possible dressed external insertions add

$$
d_{ij}[H]=\int\sqrt{\bar g}\,I^{ij}_\nu\xi^\nu[H].
\tag{16}
$$

Thus $b_{ij}+d_{ij}=b_{ij}\mathcal P$ when the displayed endpoint term vanishes or its prescribed completion is included. Fixed $d^4x\,j\mathcal U$ introduces no extra metric variation of a moving source density.

This also follows directly from the insertion generating functional. At fixed metric perturbation, temporarily omitting the independent quartic vertex, the scalar Gaussian gives $W_H[j]=\tfrac12\langle J_H,G_HJ_H\rangle$, with the dressed source written relative to the fixed background pairing. Its term linear in $H$ and bilinear in external sources is exactly $b+d$. Integrating the free metric then gives half its Gaussian variance. Terms quadratic in $H$ but only quadratic in $j$ contribute two-point/tadpole structures, not this connected-four tree.

Four distinct source derivatives yield

$$
\mathcal G^{\rm grav}_{c,4}=\sum_{(ij|kl)}
\left\langle(b_{ij}+d_{ij})(b_{kl}+d_{kl})\right\rangle_H.
\tag{17}
$$

There are three bulk exchanges, twelve one-dressing/bulk terms, and twelve two-dressing terms. The latter are not local boundary-position contacts; they have no bulk matter vertex. Quadratic-in-$H$ dressings cannot produce a connected four-scalar tree at this order: their contractions either require further powers of $\kappa$ or produce tadpole/disconnected contributions. Hence the linear dressing is sufficient for this connected-four coefficient, although not for a complete operator definition to second order.

## 3. Identification with the regular Einstein response

### 3.1 Full tail, not just its leading power

Recall the stripped radial covariance

$$
\mathscr G=G_p\Pi_2+R_0\Pi_1-\frac{R_0}{3}(P\otimes L+L\otimes P)
+\frac23(R_0+p^2J)L\otimes L,
$$
$$
G_p=(uv)^2I_2(pu_<)K_2(pu_>),\quad R_0=u_<^4/4,\quad
J=u_<^4u_>^2/16-u_<^6/48.
\tag{18}
$$

Here $P=\delta-nn$, $L=nn$, $n=p/|p|$; $\Pi_2$ is transverse traceless and $\Pi_1$ the symmetric mixed projector. The canonical tangent response to $B_{ij}$ is

$$
q_{ij}[B](u,p)=\kappa\int_0^\infty dv\,v^{-3}\mathscr G_{ij,kl}(u,v;p)B_{kl}(v,p).
\tag{19}
$$

Initially take $p>0$ and radial-compact or exponentially decaying sources with derivative control. Define $B_L=L:B$, $B_P=P:B$, $B_{\perp n}=PBn$, and moments

$$
M_L=\int_0^\infty dv\,vB_L,
\quad M_P=\int_0^\infty dv\,vB_P,
\quad M_L^{(3)}=\int_0^\infty dv\,v^3B_L,
\quad M_v=\int_0^\infty dv\,vB_{\perp n}.
$$

The full non-TT polynomial tail is

$$
q^{\rm tail}_{ij}=\mathsf U P_{ij}+\mathsf V L_{ij}
+n_iv_j+n_jv_i+u^2\mathfrak a L_{ij},
$$
$$
\mathsf U=-\frac{\kappa M_L}{12},\quad
\mathsf V=-\frac{\kappa M_P}{12}+\frac{\kappa M_L}{6}
-\frac{\kappa p^2M_L^{(3)}}{72},\quad
v=\frac{\kappa M_v}{4},\quad
\mathfrak a=\frac{\kappa p^2M_L}{24}=-\frac{p^2\mathsf U}{2}.
\tag{20}
$$

The remainder and the derivatives needed for the Einstein tensor decay exponentially for the momentum-regulated scalar sources. The TT part is regular and decaying. The constant transverse trace in (20) is indispensable: keeping only $u^2\mathfrak a L$ would not be a pure-gauge solution.

Indeed $2\kappa q^{\rm tail}=\mathcal R\zeta$ with

$$
\zeta^u=u\sigma,\quad \zeta^i=b^i-\tfrac12u^2\partial_i\sigma,
\quad \sigma=-\kappa\mathsf U,
\quad b_L=\frac{\kappa(\mathsf V-\mathsf U)}{ip},\quad
b_\perp=\frac{2\kappa v}{ip}.
\tag{21}
$$

This is an explicit residual FG vector, not an inference from a leading asymptotic power.

### 3.2 Constraints, regular representative and pairing

Let $Q=\mathcal P^\dagger B_{ij}$. It is conserved, including the insertion contributions (12). For the metric response $\delta g_{ij}=2\kappa\ell^2u^{-2}q_{ij}$, define

$$
S_{\mu\nu}=\delta(G_{\mu\nu}-6g_{\mu\nu}/\ell^2)-\kappa^2Q_{\mu\nu}.
$$

The tangent inverse gives $S_{ij}=0$. Bianchi and $\nabla Q=0$ then imply

$$
S_{ui}=c_i u^3,\qquad S_{uu}=c_0u^2-\tfrac12(ip\cdot c)u^4.
\tag{22}
$$

The exact pure-gauge tail (21) has zero linearized Einstein tensor; the remainder and $Q$ decay with the necessary derivatives. Therefore the residual decays and all $c$ vanish. This establishes the full sourced Einstein equations even for finite insertions, because their source has now been completed. It would be false for the original nonconserved $B$ alone.

Choose a smooth radial function $\chi$ which is zero in a UV collar and one sufficiently far into the IR, and use $\eta=-\chi\zeta$ to subtract the tail. The zero region may contain every finite insertion slice; the observable then needs normal coordinates only up to those slices, not a global FG chart. The resulting metric is regular in the IR and has the same UV boundary data and the same full Einstein source. It generally has lapse/shift components in the transition region; this is allowed. The linearized Einstein operator annihilates $\mathcal L_\eta\bar g$ for any smooth $\chi$.

For the completed source the change of pairing is exactly a boundary flux:

$$
\frac12\int\sqrt{\bar g}\,Q^{\mu\nu}\mathcal L_\eta\bar g_{\mu\nu}
=\ell^3\left[\int d^4x\,u^{-3}Q_{u\nu}\eta^\nu\right]_{\rm UV}^{\rm IR}=0.
\tag{23}
$$

The UV term is zero because $\eta$ vanishes in a collar. At the IR end $\eta$ is at most polynomial while the regulated source decays exponentially. This is an actual flux estimate, not an assertion that every locally pure gauge tail is a null direction of the gravitational action.

The regular source-free Dirichlet Einstein response is unique modulo anchored gauge in the stated sector. At $p>0$ its TT modes are $u^2I_2(pu)$ and $u^2K_2(pu)$: UV normalizability excludes the second and IR regularity excludes the first. More explicitly, in radial gauge decompose a homogeneous non-TT solution as $x(u)P+y(u)L+n_iv_j+n_jv_i$. The momentum constraint gives $x'=0$ and $v_i'=0$; the Hamiltonian constraint then gives $y'=-p^2u x$. The fixed UV frame sets $x=v_i=y=0$. Thus only the TT possibilities remain, and both have just been excluded. No extra homogeneous/global modes are added.

Consequently the regular representative constructed above is the physical conserved-source response. Its pairing with another completed source equals the radial pairing, since (23) removes the gauge subtraction and $Q_{ij}=B_{ij}$. This proves (1). It does **not** require putting the growing radial representative into the domain of a covariant metric propagator, or declaring the IR-large vector a redundancy of that domain. It is an equality of source-response bilinears. Gaussian integration gives $+\tfrac12 JGJ$ in $W$; the corresponding source-included on-shell Euclidean action has the opposite sign.

### 3.3 Soft momenta and the Schwartz extension

Tail moments in (20) must not be taken termwise to $p=0$. For example, a smeared pair can have $B_{ij}(u,0)=O(u^{-2})$, so $\int uB_{ij}(u,0)du$ can diverge logarithmically even though its exchange quadratic form is finite.

Define the coefficient first with smooth Fourier cutoffs $0\le\chi_\epsilon(|k_i|)\le1$ removing zero external momenta and $0\le\rho_\epsilon(|p|)\le1$ removing zero transfer. Split $\sqrt{\rho_\epsilon}$ between the paired sources. For fixed $\epsilon>0$ the preceding regular-response proof applies with exponentially decaying radial sources.

The earlier source estimate bounds the radial exchange by

$$
C\int du\,dv\,[R_0(u,v)b(u)b(v)+J(u,v)d(u)d(v)],
\tag{24}
$$

where $b=u^{-1}(1+|\log u|)$ near zero and $u^{-7}$ at infinity, while $d$ has the same UV behavior and $u^{-8}$ at infinity. This is integrable. Its Fourier–Hausdorff–Young proof uses weighted values of $\widehat j_i$, including the integrable logarithmic weight, not derivatives of the momentum cutoffs. Since $|\chi_\epsilon\widehat j_i|\le|\widehat j_i|$, the envelopes are uniform even though some Schwartz seminorms of the cut-off functions themselves diverge. Transfer cutoffs are bounded $L^2$ multipliers and commute with spatial derivatives.

Dominated convergence, strong $L^2$ convergence of the transfer multipliers, and the external Fourier envelopes therefore remove the cutoffs. By the proved equality, the **regular conserved-source bilinear has this same bounded extension**. This defines the Poincaré-vacuum dressed coefficient without adding distributions supported only at zero momentum. Such independent zero-mode sectors would be extra data, not determined by pointwise $p\ne0$ matching. The argument takes the limit of the paired kernels, never of the individual gauge-tail coefficients.

## 4. The explicit IR surface compensation

The radial-only Einstein quadratic action differs from its reduced bulk Hessian by

$$
B_2(L)=3\ell^3\int d^4x\,L^{-4}
\left(\tfrac12(\operatorname{tr}q)^2-q_{ij}q_{ij}\right),\qquad
B_2(\infty)=-\frac{3\ell^3}{2}\int_p\mathfrak a(p)\mathfrak a(-p).
\tag{25}
$$

The integration-by-parts kinetic boundary term is different. For the full tail,

$$
\frac{\ell^3}{2}u^{-3}
[\operatorname{tr}(qq')-(\operatorname{tr}q)(\operatorname{tr}q)']\longrightarrow0,
\tag{26}
$$

because the leading $u^3\mathfrak a^2$ contributions cancel. This permits the reduced on-shell bulk quadratic form to equal half its source-response pairing, but it does not remove (25).

### 4.1 Second-order orbit metric

The finite endpoint depends only on the $\sigma$ part of (21). Put $\zeta^u=u\sigma$, $\zeta^i=-u^2\partial_i\sigma/2$, and expand the actual pullback metric as

$$
\varphi_s^*\bar g=\bar g+\ell^2u^{-2}(sH_1+s^2H_2+\cdots),\quad
H_1=\frac{u^2}{\ell^2}\mathcal L_\zeta\bar g,\quad
H_2=\frac{u^2}{2\ell^2}\mathcal L_\zeta^2\bar g.
$$

For $\sigma_i=\partial_i\sigma$ and $\sigma_{ij}=\partial_i\partial_j\sigma$,

$$
(H_1)_{ij}=-2\sigma\delta_{ij}-u^2\sigma_{ij},
$$
$$
(H_2)_{ij}=2\sigma^2\delta_{ij}
+\frac{u^2}{2}(|\partial\sigma|^2\delta_{ij}+2\sigma\sigma_{ij})
+u^4\left(\frac{\sigma_k\sigma_{ijk}}4+\frac{\sigma_{ik}\sigma_{jk}}2\right).
\tag{27}
$$

After spatial integration by parts,

$$
\int\operatorname{tr}H_2=\int[8\sigma^2+u^2|\partial\sigma|^2+u^4(\Delta\sigma)^2/4].
$$

The background action has a nonzero finite-wall first variation. Its evaluation on the second-order orbit metric is

$$
S_1[H_2]_{L}=\frac{3\ell^3}{2\kappa^2}L^{-4}\int\operatorname{tr}H_2
\ \longrightarrow\ \frac{3\ell^3}{8\kappa^2}\int(\Delta\sigma)^2
=\frac{3\ell^3}{2}\int_p\mathfrak a(p)\mathfrak a(-p).
\tag{28}
$$

Here $\mathfrak a(p)=p^2\sigma(p)/(2\kappa)$. This is the compensator (2). The second-order orbit generally has nonzero radial metric components; setting them to zero without a second-order gauge transformation would not be the same orbit. Only the induced tangent variation enters the Dirichlet background boundary term used in (28).

### 4.2 Graph geometry and a transition-region check

A separate calculation of the Einstein plus GHY endpoint at an IR graph $u=\mathcal L(x)$ gives

$$
S_{\rm IR}[\mathcal L]=\frac{\ell^3}{\kappa^2}\int d^4x
\left[3\mathcal L^{-4}+\mathcal L^{-3}\sqrt{1+|\partial\mathcal L|^2}
\,\partial_i\frac{\partial_i\mathcal L}{\sqrt{1+|\partial\mathcal L|^2}}\right].
\tag{29}
$$

For the flow-image graph its quadratic displacement is

$$
\mathcal L=L+sL\sigma+s^2[L\sigma^2/2+L^3|\partial\sigma|^2/4]+\cdots.
$$

Equation (29) has quadratic coefficient $24\ell^3L^{-4}\int\sigma^2/\kappa^2$, which vanishes as $L\to\infty$. Subtracting the orbit-metric first variation (28) leaves the tangent quadratic endpoint

$$
Q(L)=\frac{\ell^3}{\kappa^2}\int
\left[12L^{-4}\sigma^2-\frac32L^{-2}|\partial\sigma|^2
-\frac38(\Delta\sigma)^2\right].
\tag{30}
$$

A smooth vector equal to $\zeta$ near the lower boundary of an annulus $[L,2L]$ and zero near the upper boundary has the opposite oriented tangent quadratic contribution, $-Q(L)$. The result is independent of its interpolation profile: its exact pullback geometry has only the flow-image inner graph and unchanged outer graph, and the second-order metric tadpole is included before extracting the tangent coefficient. The transition contains lapse/shift perturbations, so the radial-only action cannot be used inside it. Its limit is (2).

Terms involving bounded companion tails or derivative-controlled decaying remainders contribute only $O(L^{-2})$ or less to the endpoint tadpole. Thus the finite compensation applies to the sourced asymptotics, not just a single pure-gauge test. The argument is at the level of perturbative coefficients: one does not exchange the IR limit with a finite-amplitude assumption that the radial metric is globally small.

## 5. Two explicit calculations

### 5.1 A fully solved longitudinal probe

Set $\ell=\kappa=p=1$, per normalized boundary Fourier pair, and take

$$
J_{ij}(u,p)=u^4e^{-u}L_{ij}.
$$

Its completed source is

$$
Q_{ui}=ip_i u^3(u+1)e^{-u},\qquad
Q_{uu}=-u^2e^{-u}(u^2+2u+2),\qquad Q_{ij}=J_{ij}.
\tag{31}
$$

Let $r=R_0\,u^{-3}J_L$ and $j=J\,u^{-3}J_L$, with radial integration understood. Explicitly,

$$
r(u)=30-e^{-u}(u^4+5u^3+15u^2+30u+30),
$$
$$
j(u)=\tfrac{15}{2}u^2-105+e^{-u}(u^4+10u^3+45u^2+105u+105).
\tag{32}
$$

The metric is $q=\mathsf U(u)P+\mathsf V(u)L$ with $\mathsf U=-r/3$, $\mathsf V=2(r+j)/3$. All tangent and radial Einstein equations give exactly the source (31). Its IR tail is

$$
\mathsf U\to-10,\qquad \mathsf V=5u^2-50+o(1).
$$

The exact bilinear and quadratic actions are

$$
\int_0^\infty du\,u^{-3}J_L\mathsf V=15,\qquad
S_{2,\rm regular}=\frac{15}{2},\qquad
S_{2,\rm naive\ radial}=-30,\qquad C_{\rm IR}=\frac{75}{2}.
\tag{33}
$$

The finite mismatch is substantial. Adding the transition/orbit compensation, not discarding the trace sector, restores $15/2$.

### 5.2 A nonzero tail generated by actual finite scalar lines

For $|k_1|=|k_2|=k>0$, $p=k_1+k_2\ne0$, strip the common canonical-line factor and put

$$
r_i(u)=u^2 I_0(k\min(u,a_i))K_0(k\max(u,a_i)).
$$

The longitudinal cross stress is

$$
b_L=-r_1'r_2'-k^2r_1r_2+4r_1r_2/u^2.
$$

Using the radial equations with their slice jumps, not homogeneous equations across the slices, gives the exact moment

$$
\boxed{\int_0^\infty du\,u\,b_L(u)
=-\frac{a_1^4+a_2^4}{2}\,I_0(ka_<)K_0(ka_>).}
\tag{34}
$$

Indeed the radial equation of $r_i$ has source $-a_i\delta(u-a_i)$; the averaged integration by parts gives $-[a_1^2r_2(a_1)+a_2^2r_1(a_2)]/2$. The canonical $B_L$ carries the factor $A^2=2\pi^2/\ell^3$. Equations (20) and (34) therefore exhibit an explicit nonzero finite-radius scalar-induced gauge tail and its compensator.

At equal radii this moment is $-a^4I_0(ka)K_0(ka)$; it vanishes as $a^4|\log a|$ in this equal-magnitude example. This is not a universal claim that every boundary exchange has zero IR tail. Direct split-slice integration at $k=1$ gives $-0.0614440193654226\ldots$ for $(a_1,a_2)=(1/2,1/2)$ and $-0.0103379321081455\ldots$ for $(1/5,7/20)$, agreeing with (34). The boundary moment vanishes here using $\int u^4K_0K_1=2/3$, $\int u^5K_0^2=16/15$ and $\int u^5K_1^2=8/5$.

## 6. The resulting extrapolate statement and its limits

Add the neutral quartic contact graph to (1). The dressed connected-four tree, with the cutoff/zero-mode prescription above, is the same continuous quadrilinear functional previously computed from the radial kernel. Consequently, for arbitrary overlapping Schwartz sources and $R=\max_i a_i$,

$$
\boxed{\mathcal G^{\rm dressed}_{\boldsymbol a}
=\mathcal G_{\boldsymbol0}
+\frac14\sum_i a_i^2\mathcal G_{\boldsymbol0}(j_1,\ldots,-\Delta j_i,\ldots,j_4)
+O\!\left(R^4(1+|\log R|)^4\right).}
\tag{35}
$$

The exchange remainder alone has logarithmic power three. Constants are uniform on bounded Schwartz sets and arbitrary radius ratios. This transfers a proved insertion-kernel limit to a specifically dressed tree observable; it does not assume equality of the insertion functional with a radial on-shell action. In particular, the previously checked unit-tetrahedron boundary coefficient remains $N^2\widetilde{\mathcal G}_{c,4}/(16\pi^6)=0.339768802796\ldots$ in units of common momentum one.

Strings vanish at every fixed interior point when their endpoints approach the boundary, but extracting their UV flux first can retain a finite boundary transformation. For separated logfree external data, the unit-source contact has the limiting structure $b^i\partial_i\beta+2a_0\beta$ under nonzero boundary coordinate/Weyl parameters. Thus pointwise disappearance of the strings must not be used to erase the boundary Ward action. Coincident insertions and the BF logarithmic extension still use the established source-renormalization prescription.

The [combined checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_checks.wl>) run the independent [source/Ward checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_source_checks.wl>) and [endpoint/graph checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_endpoint_checks.wl>), plus the complete longitudinal response and finite scalar-tail examples. The [saved output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_dressing_checks_results.txt>) has all tests passed and no messages. Component geometry was evaluated in Mathematica with xAct loaded; this is not a separate CAS implementation. Analytic uniqueness, cutoff convergence and tree counting are arguments in the text, not consequences of a finite collection of CAS tests. Three independent derivations checked the adjoint source, scalar dressing and endpoint compensation. Two additional fresh reviews independently checked the source-response identification, soft-momentum qualifications, general graph/orbit calculation, probe normalization and scope; neither substituted a rerun of old boundary estimates for the new identification proof.

**Verified:** the first boundary-normal scalar dressing; conserved adjoint source and radial insertion strings; the tree source-response identification under the stated Poincaré and cutoff prescription; the second-orbit/transition-region compensation; a full longitudinal Einstein example and the scalar slice-moment identity; transfer of the joint boundary theorem to this dressed connected-four coefficient.

**Assumptions:** the established classical neutral IIB truncation, fixed UV frame and source density, the BF scalar domain, analytic Euclidean conformal contour, regular Poincaré response, and exclusion of added zero-momentum/edge sectors. Regular representatives, not globally small radial representatives, define the physical response. All identifications concern the specified perturbative coefficient.

**Not established:** equality of full gravitational path-integral measures; a global nonlinear geodesic coordinate system; loop/composite renormalization of the dressed operator; interacting Lorentzian locality or positivity; and full neutral-SYM Mellin/OPE matching. The last comparison is now a concrete boundary calculation, rather than resting on an unidentified finite-radius scalar observable.
