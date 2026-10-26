# Independent switching audit: derivative vertex, TT response, and scalar source defect

## Result and scope

**Merely shifting the retarded frequency while retaining the constant-coupling scalar numerator and a real output TT projector is not the response to the switched action.** The scalar vertex has a first derivative of the switch. The graviton variation has no additional local switch derivative, but its output TT projector must act on the switched source. At finite switching these omissions cannot generally cancel among insertions: applying the free scalar operator at the middle insertion kills both outer-insertion contributions and exposes the missing scalar source.

This is an independent derivation for the specified gauge-reduced tree theory, not a proof of its equivalence to switched covariant gravity or of an adiabatic vacuum limit. No existing project files were modified. Conventions were checked against [the main note, §§1–3](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md#L3-L155>) and [the regulator note, §5](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulators.md#L280-L300>). No CPS argument is used.

## 1. Conventions and variation with a compact switch

Set

\[
\eta_{ij}=\operatorname{diag}(-,+,+,+),\quad
D=\partial_z^2+z^{-1}\partial_z+\Box,\quad
L_2=\partial_z^2-3z^{-1}\partial_z+\Box,
\quad C_0=2\pi^2.
\]

Indices are raised with \(\eta\). The scalar is the logfree BF variable \(U\), with free action, up to its fixed BF boundary completion,

\[
S_{U,2}=-\frac1{2C_0}\int dz\,d^4x\,z
\big[(\partial_zU)^2+\eta^{ij}\partial_iU\partial_jU\big].
\]

The free relative graviton is four-dimensional TT:
\(\partial_i\gamma_0^{ij}=0\), \(\eta_{ij}\gamma_0^{ij}=0\).
Let \(\chi\in C_c^\infty(\mathbb R^{1,3})\) and

\[
S_{\mathrm{int},\chi}=\frac1{2C_0}\int dz\,d^4x\,z\chi\gamma^{ij}\partial_iU\partial_jU.
\]

Direct variation gives

\[
\delta_U S_{\mathrm{int},\chi}
=-\frac1{C_0}\int dz\,d^4x\,z\,
\partial_i(\chi\gamma^{ij}\partial_jU)\,\delta U.
\]

Thus, at first order,

\[
\boxed{D U_{1,\chi}=J_\chi
=\partial_i(\chi\gamma_0^{ij}\partial_jU_0)
=\chi\gamma_0^{ij}\partial_i\partial_jU_0
 +(\partial_i\chi)\gamma_0^{ij}\partial_jU_0.}
\tag{1}
\]

There is precisely one explicit derivative of \(\chi\) in this scalar equation, not two. The constant-coupling simplification uses transversality of \(\gamma_0\), not of \(\chi\gamma_0\).

With \(D_X\mathscr R^{\rm ret}(X;Y)=\delta(z-u)\delta^4(x-y)/u\), the response with no incoming first-order homogeneous field is

\[
\boxed{U_{1,\chi}(z,x)=\int_0^\infty u\,du\int d^4y\,
\mathscr R^{\rm ret}(z,x;u,y)\,
\partial_{y^i}[\chi(y)\gamma_0^{ij}(u,y)\partial_{y^j}U_0(u,y)].}
\tag{2}
\]

Equivalently this is minus the same integral with \(\partial_{y^i}\mathscr R^{\rm ret}\) and the undifferentiated bracket. This representation is useful for deriving the answer directly from the derivative vertex; integration by parts is not permission to discard \(\partial\chi\).

The graviton quadratic action is

\[
S_{\gamma,2}=-\frac{\ell^3}{8\kappa^2}\int dz\,d^4x\,z^{-3}(\partial\gamma^{TT})^2.
\]

Varying within the TT sector gives, using \(2\kappa^2/(\ell^3C_0)=4/N^2\),

\[
\boxed{L_2\gamma_{1,\chi,ij}^{TT}
=-\frac4{N^2}z^4\Pi_{ij}{}^{kl}(\partial)
 [\chi:\partial_kU_0\partial_lU_0:].}
\tag{3}
\]

If \(L_{2,X}G_2^{\rm ret}(X;Y)=u^3\delta(z-u)\delta^4(x-y)\),

\[
\boxed{\gamma_{1,\chi,ij}^{TT}(v,x)
=-\frac4{N^2}\int_0^\infty u\,du\int d^4y\,
G_2^{\rm ret}(v,x;u,y)
\Pi_{ij}{}^{kl}(\partial_y)[\chi(y):\partial_kU_0\partial_lU_0:(u,y)].}
\tag{4}
\]

The projector belongs on the **whole switched source**, not on the unswitched stress before multiplication by \(\chi\). Equivalently it acts on the output coordinate after convolution. With \(\alpha=2\sqrt{10}/N\), the nonlinear stress insertion is

\[
\widehat T_{1,\chi,ij}^{TT}
=-\frac\alpha{10}\lim_{v\to0}v^{-4}
 \int_0^\infty u\,du\int d^4y\,
G_2^{\rm ret}(v,x;u,y)
\Pi_{ij}{}^{kl}(\partial_y)[\chi:\partial_kU_0\partial_lU_0:].
\tag{5}
\]

The coefficient and radial measure are unchanged by switching. Equations (2) and (4) require the specified radial domain and retarded distributional prescription; arbitrary products of separately undefined light-cone projector denominators are not being introduced.

## 2. Where every projector switch derivative resides

Write

\[
\theta_{ij}=\eta_{ij}-\frac{\partial_i\partial_j}{\Box},\qquad
\Pi_{ij}{}^{kl}=\tfrac12(\theta_i{}^k\theta_j{}^l+
\theta_i{}^l\theta_j{}^k)-\tfrac13\theta_{ij}\theta^{kl}.
\]

The inverses here inherit the causal prescription of the full TT response. On the corresponding domain, for a symmetric source \(F_{ij}\), define \(F=\eta^{ij}F_{ij}\), \(D_j^F=\partial^kF_{kj}\), \(E^F=\partial^k\partial^lF_{kl}\). Then

\[
\begin{aligned}
(\Pi F)_{ij}={}&F_{ij}-\tfrac13\eta_{ij}F
-\Box^{-1}(\partial_iD_j^F+\partial_jD_i^F)
+\tfrac13\eta_{ij}\Box^{-1}E^F\\
&+\tfrac13\Box^{-1}\partial_i\partial_jF
+\tfrac23\Box^{-2}\partial_i\partial_jE^F.
\end{aligned}
\tag{6}
\]

For \(F_{ij}=\chi S_{ij}\), the ingredients are exactly

\[
D_j^F=\chi\partial^kS_{kj}+(\partial^k\chi)S_{kj},
\quad
E^F=\chi\partial^k\partial^lS_{kl}
+2(\partial^k\chi)\partial^lS_{kl}
+(\partial^k\partial^l\chi)S_{kl}.
\tag{7}
\]

The remaining displayed derivatives in (6) also act on these products. Thus (6)–(7) retain all derivatives, including up to four derivatives of \(\chi\) in the unreduced numerator. The inverse wave operators must not be commuted through \(\chi\). There is no extra local \(\partial\chi\) term from varying \(\gamma\) itself: all these terms arise from enforcing the TT restriction.

## 3. Fourier vertex and literal past exponential

Use

\[
e_r(x)=e^{-ir^0t+i\mathbf r\cdot\mathbf x},\quad
r_i=(-r^0,\mathbf r),\quad\partial_i e_r=i r_i e_r,
\quad n^i=(1,\mathbf0),\quad c_i=\delta_i^0=-n_i.
\]

For a graviton mode \(e^{ij}(l)e_l\), scalar mode \(e_q\), and compact switch momentum \(h=r-l-q\), the scalar-source vertex is

\[
\boxed{\widetilde J_\chi(r)
=-\int d\nu(l)d\nu(q)\,
\widehat\chi(r-l-q)\,r_i\gamma_0^{ij}(l)q_jU_0(q).}
\tag{8}
\]

Since \(l_i\gamma_0^{ij}(l)=0\), the numerator is
\(-e^{ij}q_iq_j-h_i e^{ij}q_j\). This is the explicit momentum correction for a general switch; momentum supplied by \(\chi\) must not be set to zero.

Now take \(\chi(y)=e^{\epsilon y^0}\), \(\epsilon>0\), in each retarded integral. This is a Laplace prescription, not a compactly supported switch. Put \(r=l+q\) and

\[
R^i=r^i+i\epsilon n^i,\quad R_i=r_i-i\epsilon c_i,
\quad s(R)=s(r)+2i\epsilon r^0-\epsilon^2.
\]

For real free modes, the precise scalar response is

\[
\boxed{
U_{1,\epsilon}(z,x)
=e^{\epsilon t}e_r(x)\int_0^\infty u\,du\,
\mathscr R^{\rm ret}_{r+i\epsilon n}(z,u)
\left[-e^{ij}(l)q_iq_j+i\epsilon e^{0j}(l)q_j\right]
\gamma_l(u)U_q(u).
}
\tag{9}
\]

Here the scalar/graviton radial profiles have been separated from the polarization. All free momenta and profiles remain real. In particular, neither the free mode mass nor its TT condition is shifted. The extra vertex is

\[
\boxed{\delta V_U=i\epsilon e^{0j}q_j
=-i\epsilon n_i e^{ij}q_j.}
\tag{10}
\]

For the graviton sourced by two real scalar modes \(q,k\), set \(r=q+k\). The uncontracted response is

\[
\boxed{
\gamma_{1,\epsilon,ij}^{TT}(v,x)
=\frac4{N^2}e^{\epsilon t}e_r(x)
\int_0^\infty u\,du\,G_{2,r+i\epsilon n}^{\rm ret}(v,u)
\Pi_{ij,kl}(r+i\epsilon n)q^k k^l U_q(u)U_k(u),
}
\tag{11}
\]

with integration over the free modes understood. The plus sign is the product of the negative equation-of-motion coefficient and \(i^2=-1\) from the scalar derivatives. Two external scalar Wick contractions produce the symmetric factor of two; it should not be inserted a second time into the uncontracted field formula.

Equation (11) has no extra independent local derivative-switch vertex. Its full switch dependence includes the shifted projector, the shifted retarded radial inverse, and the output prefactor. Precisely,

\[
e^{-\epsilon t}\Pi(\partial)e^{\epsilon t}=\Pi(\partial+\epsilon c),
\quad
e^{-\epsilon t}D e^{\epsilon t}=D-2\epsilon\partial_t-\epsilon^2,
\tag{12}
\]

and likewise for \(L_2\). Equation (12) is an exact compact way of retaining every projector switch derivative in (6)–(7).

### Actual middle and right scalar numerators

For the ordering \(\langle\widehat T_e(x)U(Z)U(y)\rangle\), let \(p,q\in V_+\), \(k=p-q\), and \(e\) be real \(p\)-TT. The middle vertex has free graviton momentum \(-p\), scalar momentum \(q\), and output \(-k+i\epsilon n\). Its numerator is

\[
-Q+i\epsilon e^{0j}q_j,\qquad Q=e^{ij}q_iq_j.
\tag{13}
\]

When the past-transfer right-scalar contraction survives, its free scalar momentum is \(k\), graviton momentum \(-p\), and output \(-q+i\epsilon n\). Its numerator is

\[
-Q+i\epsilon e^{0j}k_j=-Q-i\epsilon e^{0j}q_j.
\tag{14}
\]

The opposite corrections in (13)–(14) do not establish cancellation: the output resolvents, profiles, and insertion positions are different.

## 4. A real external polarization does not remove the shifted projector

For a real \(p\)-TT polarization \(e^{ij}\), let \(P=p+i\epsilon n\), \(P^2=\eta_{ij}P^iP^j\), and \(q+k=p\). Then exactly

\[
\begin{aligned}
e^{ij}\Pi_{ij,ab}(P)k^a q^b
={}&e^{ij}k_iq_j
-\frac{(ePk)(P\cdot q)+(ePq)(P\cdot k)}{P^2}\\
&+\frac{2(ePP)(P\cdot k)(P\cdot q)}{3(P^2)^2}
+\frac{(ePP)(k\cdot q)}{3P^2},
\end{aligned}
\tag{15}
\]

where \(ePk=e^{ij}P_i k_j\), etc. At \(\epsilon=0\), this is \(-Q\). At finite \(\epsilon\), \(ePk=i\epsilon e nk\), \(ePP=-\epsilon^2 e nn\), and it is generically different. Consequently the two-Wick derivative numerator is \(-2e\Pi(P)kq\), not identically \(+2Q\).

A physical noncollinear example is

\[
p=(5,3,0,0),\quad q=(1,0,0,0),\quad k=(4,3,0,0),
\quad v=(3/4,5/4,0,0),\quad w=(0,0,1,0),
\]

\[
e^{ij}=(v^iv^j-w^iw^j)/\sqrt2.
\]

It is unit, traceless and \(p\)-transverse. All three momenta are future timelike, with squared masses \((16,1,7)\). Here

\[
Q=\frac9{16\sqrt2},\qquad
\delta V_U=-\frac{9i\epsilon}{16\sqrt2},
\qquad
-2e\Pi(P)kq=\frac9{8\sqrt2}
+\frac{27i\epsilon}{64\sqrt2}+O(\epsilon^2).
\tag{16}
\]

The corrections vanish in a graviton rest frame when the switching time direction is aligned with that particular graviton. A single laboratory switch is not aligned with every momentum in the spectral integral. Thus spatial-TT intuition cannot justify dropping (10).

## 5. All insertions and the exact scalar source defect

At first order the switched coefficient is the sum

\[
W_\chi=\langle T_{1,\chi}(X)U_0(Z)U_0(Y)\rangle
+\langle T_0(X)U_{1,\chi}(Z)U_0(Y)\rangle
+\langle T_0(X)U_0(Z)U_{1,\chi}(Y)\rangle.
\tag{17}
\]

Keep the prescribed ordering in every free contraction. Define, with tensor contractions and radial arguments understood,

\[
B^i(Z)=\langle T_0(X)\gamma_0^{ij}(Z)\rangle
\partial_{Z^j}\langle U_0(Z)U_0(Y)\rangle,
\qquad J_0(Z)=\partial_{Z^i}B^i(Z).
\]

Both outer terms in (17) are free in the middle scalar coordinate. Therefore the exact identity is

\[
\boxed{D_Z W_\chi=\partial_{Z^i}[\chi(Z)B^i(Z)]
=\chi(Z)J_0(Z)+(\partial_i\chi)(Z)B^i(Z).}
\tag{18}
\]

The source defect relative to the constant-coupling equation is

\[
\boxed{D_Z W_\chi-J_0=(\chi-1)J_0+(\partial_i\chi)B^i.}
\tag{19}
\]

If a shifted-resolvent construction retains only the constant numerator, its corresponding literal switched middle equation has source \(\chi J_0\). The difference from (18) is \((\partial_i\chi)B^i\), nonzero in the example (16). Modifying outer terms cannot repair this middle-scalar PDE mismatch. This establishes non-equivalence at finite switch without assuming any cancellation or absence of edge distributions.

There is a useful conditional limiting statement. For compact switches approaching one in \(C^\infty_{\rm loc}\), or locally for \(e^{\epsilon t}\), the right side of (19) tends to zero as a spacetime distribution whenever the fixed free source distributions are defined. Hence **any existing local distributional limit of the genuine switched coefficient obeys the unswitched scalar equation**. This follows from continuity of multiplication by smooth functions and of \(D_Z\); it is not an estimate proving that the coefficient itself converges. It gives neither global tempered Fourier convergence nor its complete boundary trace.

### Literal switching versus insertion-normalized Abel factors

A literal common switch supplies the factors \(e^{\epsilon t_X}\), \(e^{\epsilon t_Z}\), and \(e^{\epsilon t_Y}\) in the three terms of (17), respectively. The coefficient is not translation invariant at finite \(\epsilon\), and need not be tempered in all external times. Retarded-domain damping is a statement about the vertex integration at fixed output time, not damping of arbitrary external times.

Replacing each factor by \(e^{\epsilon(t_{\rm vertex}-t_{\rm output})}\) defines a useful insertion-normalized Abel family, but it is not one common spacetime switch in the action. Let \(\overline W_{\mathrm{mid},\epsilon}\) denote the middle term with its output exponential removed, and similarly for the outer terms. Then

\[
(D_Z-2\epsilon\partial_{t_Z}-\epsilon^2)
\overline W_{\mathrm{mid},\epsilon}=J_0+\epsilon B^0.
\]

Since the deweighted outer terms remain free in \(Z\), the normalized sum obeys

\[
\boxed{D_Z\overline W_\epsilon-J_0
=2\epsilon\partial_{t_Z}\overline W_{\mathrm{mid},\epsilon}
+\epsilon^2\overline W_{\mathrm{mid},\epsilon}
+\epsilon B^0.}
\tag{20}
\]

The first two terms require response estimates, or separate control of the middle term, before a zero-defect limit can be asserted. Convergence of only the combined sum does not bound a divergent separated middle term. Pointwise \(O(\epsilon)\) corrections in a vertex or projector are not uniform estimates near null or collinear strata.

## 6. Boundary and contact qualifications

1. For compact \(\chi\), integration by parts in the tangential coordinates has no boundary term at spacetime infinity. The cubic vertex contains no radial derivative of \(U\), so this scalar variation adds no radial surface variation. The fixed BF boundary completion and logfree domain are retained. The logfree condition by itself does not set the finite boundary response to zero; the retarded response and the all-insertion sum determine that response.
2. In (2), derivatives act on the entire retarded distribution if moved to its kernel. A scalar second-order retarded kernel has equal-time value zero and normal-time derivative fixed by the delta-function jump. With the normalization used here, \(\partial_{t_x}\mathscr R^{\rm ret}|_{t_x=t_y+}=-\delta(z-u)\delta^3(\mathbf x-\mathbf y)/u\). Thus the first integration by parts produces no extra equal-time field-value term, but differentiated response equations retain the canonical local jump. Ignoring distributional derivatives of causal kernels is not valid.
3. The upper endpoint of a retarded domain is not a new discontinuity of the switch. Do not differentiate an artificial factor \(\Theta(t_{\rm output}-t_{\rm vertex})\) as if it were part of the action switch. A genuine sharp switch-off at a fixed time instead has a delta-function \(\partial_t\chi\) in (1), with the associated impulse and matching condition.
4. Normal ordering removes the free tadpole at this tree order, not the switch-gradient vertex. This derivation does not manufacture extra source contacts or null-supported counterterms. Coincident composite extensions and the prescribed boundary mollifier must retain their established definitions. Pure-trace boundary contacts do not contribute to a physical TT contraction, but that observation does not remove (10) or the finite-\(\epsilon\) projector correction.
5. The boundary operation in (5) is the same regulated radial operation as in the main note. Its existence and an adiabatic interchange at all null intersections are not established by the algebra above.

## 7. Reduced theory is not automatically switched covariant gravity

The variation performed here is of a fixed-background action with a free TT graviton and a prescribed external switch. Multiplying only the cubic matter–gravity vertex by \(\chi\) does not preserve the full gravitational Ward identities. Even for a conserved free covariant scalar stress tensor,

\[
\nabla^a(\chi T^{(0)}_{ab})=(\nabla^a\chi)T^{(0)}_{ab}
\]

is generally nonzero. The Einstein Bianchi identity cannot be satisfied by this as a standalone full source without an additional completion. Treating \(\chi\) as a transforming spurion gives a Ward identity containing its variational derivative; it is not equivalent to conservation at a fixed arbitrary \(\chi(x)\). A dynamical switching sector, compensating exchanges, or a specified noncovariant perturbative construction would have to be supplied.

TT projection defines the reduced response (3), but does not reconstruct the omitted constraint, trace, radial, or longitudinal equations. Therefore (1)–(20) precisely audit the stated reduced theory. They cannot by themselves identify a covariant gravitational vacuum contour.

## 8. Full nonstationary source and boundary-subtracted check

For an independent check of the normalization in a fully nonstationary coefficient, set
\(\Xi=x_1-x_2\), \(Y=x_3-x_2\), \(X=x_2\), and use the Fourier phase
\(e^{ip_i\Xi^i-iq_iY^i+i\Omega_iX^i}\). The middle scalar output momentum is
\(r=\Omega+q-p\); its two free source factors carry \(-p\) and \(q\).
For a boundary right scalar, the full tensor source is

\[
\boxed{\widetilde J_{\chi,ij}(u)
=-\frac{\alpha\pi^6}{80}\widehat\chi(\Omega)
 u^4f_2(au)J_0(bu)
 \left[a^4\Pi_{ij,kl}(p)q^k(q+\Omega)^l\right].}
\tag{21}
\]

The future-cone spectral factors in \(p,q\) are understood. The coefficient follows from
\(\rho_T(p)\rho_O(q)=\pi^6a^4/80\); the minus sign is from the two scalar derivatives. The factor \(a^4\Pi(p)\) removes the projector denominators, so the displayed mixed numerator is polynomial in the real momenta, including at \(s(p)=0\).

Whenever the full logfree boundary trace is defined, the exact subtraction

\[
\mathcal B_\chi(z)=\widetilde W_\chi(z)
-h_{s(r)}(z)\widetilde W_\chi(0),\qquad h_s(z)=J_0(z\sqrt s),
\]

is the finite radial Volterra inverse of (21). All outer insertions cancel in this subtraction because their middle scalar is free with that same momentum \(r\). This cancellation is a consequence of the radial equation and the full Fourier assignment, not a cancellation of switched infinite radial tails assumed term by term. It also shows that no additional canonical contact is required to obtain this non-time-ordered weak scalar equation.

A compact-switch scaling claim faster than every power of the scale needs a plateau (or equivalent flat-jet hypothesis): for \(\chi_R(x)=\chi(x/R)\), require \(\chi=1\) near zero. Mere local convergence \(\chi_R\to1\) does not imply such a rate. Radial-cutoff independence of this subtraction holds when that cutoff is identically one throughout \(0\le u\le z\). Neither observation supplies the missing complete physical corner trace.

## 9. Verification record

**Analytically verified:** scalar variation and signs; graviton normalization and measure; full projector placement; Fourier switch momentum; literal exponential conjugation; middle/right scalar vertex signs; exact all-insertion source identity and its conditional local limiting statement. The constant-switch limit recovers the supplied reduced equations.

**Wolfram verified:** TT trace/transversality of the explicit polarization; exact tensor contraction (15) against its component projector; scalar shifted-output vertex against (10); conjugation of the time kinetic operator; the nonzero physical example (16). All returned algebraic residuals were zero and the message lists were empty. The physical example has \(s(p),s(q),s(k)>0\), rather than relying on unsupported spectral legs. Exact results are recorded in [the first CAS output](</Users/koishi/.dsh/research-results/session-9701da83e679/acf899868d97-research-result.json>) and [the physical-example CAS output](</Users/koishi/.dsh/research-results/session-9701da83e679/d10b5e85c5ca-research-result.json>).

For reproducibility, the component test uses \(\eta=\operatorname{diag}(-1,1,1,1)\), the vectors in (16), \(P=p+i\epsilon n\), \(\theta_{ij}=\eta_{ij}-P_iP_j/P^2\), and directly evaluates
\(e^{ij}(\theta_{ia}\theta_{jb}-\theta_{ij}\theta_{ab}/3)k^a q^b\), subtracting (15). The scalar check evaluates \(-(l+q+i\epsilon n)_i e^{ij}q_j\) with \(l=p\) (or \(-p\)); transversality gives exactly (9)–(10).

**Not verified:** existence of the full adiabatic coefficient; bounds making (20) vanish globally; null-intersection tensor limits; identification with the invariant finite part or the desired vacuum contour; full covariant switching completion. No nested independent reviewer was available to this delegated audit; its derivation is independent of the parent analysis and is supplied for cross-review.
