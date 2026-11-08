# Full free-block closure: fresh physical audit

**Conclusion: the scalar branch closes at order \(G\), as a fixed-order statement on every complete finite free-energy block, in the specified perturbative canonical quantization.** The complete resonant homogeneous quartic—not merely its gravitational-vacuum compression—commutes with every leading boundary oscillator and its adjoint. The projected non-global classical charge identity proves this. Scalar parity, positive free energy, and the degree bound then establish scalar-vacuum invariance even without a complete renormalized quantum Ward identity for the one-body terms.

A new direct calculation also closes the requested smallest mixed channel:
\[
\boxed{\langle gg|\mathcal W_{2}|ss\rangle=0,
\qquad |ss\rangle=(b_{00}^\dagger)^2|0\rangle/\sqrt2,
\quad |gg\rangle=a_{2,+}^\dagger a_{2,-}^\dagger|0\rangle.}
\]
Here \(H_{\rm eff}=H_0+\kappa^2\mathcal W_2+\cdots\), so the coefficient multiplying \(G\) is \(16\pi\mathcal W_2\). The direct cancellation requires a **nonzero uncontracted embedding–momentum contact**. Its symmetric vacuum contraction being zero is not permission to omit it.

The stronger claim that the **entire quantum** \(\mathcal W_2\), including gravitational quadratic terms, commutes with all boundary oscillators is **not** proved by the classical quartic argument. Nor does closure determine the scalar one-body shifts. Those are distinct quantum questions.

## 1. Inputs, scope, and independence

Conventions are \(L=1\), signature \((-++)\), \(\kappa^2=16\pi G\), one real scalar with \(\Delta>1\) and \(m^2=\Delta(\Delta-2)\), source-free fast falloff, a smooth center, Brown–Henneaux asymptotics with a fixed boundary cylinder and clock, and quotienting of **proper diffeomorphisms only**. We work in the formal perturbative neighborhood of global AdS, not a global gauge chart on all gravitational solutions.

The [CPS anchor](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L83>) was read before deriving. Its integrated potential, physical-mode quotient, \(\Omega=i\,da^*\wedge da\), and \([a,a^\dagger]=1\) agree with the conventions used here. The boundary Hamiltonian, not an imported bulk TT interaction, is the energy observable.

Primary sources read:

- [Physics source](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics.md>), especially §§2–3.
- [Physics appendices](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md>), especially A.1 and B.1; the one-body limit was read for dependency separation, not rerun.
- [Preserved unreduced calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md>), §§16–17 and 70–71.
- [Master PDF](</Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>), title-page version 19 October 2026, metadata creation 20 October 2026, 190 PDF pages. PDF and printed page 16 coincide; the actual page containing (3.12)–(3.13) and PHY-02 was visually checked in the [render](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_closure_pdf_page16.png>).

No previous candidate audit verdict was read before the reasoning or direct mixed-contact reconstruction. After the new coefficient had been derived and communicated, the parent supplied a prior *partial* cubic result for comparison. Section 7 records the resulting correction without changing the old notes.

## 2. What the exact classical charge identity supplies

Write
\[
H_0=\sum_I\omega_I b_I^\dagger b_I+
\sum_{m\ge2,\sigma=\pm}m a_{m\sigma}^\dagger a_{m\sigma},
\qquad \omega_{nj}=\Delta+2n+|j|.
\]
Let \(\mathcal D_{\rm fin}\) be the algebraic direct sum of the finite free-energy eigenspaces. At fixed \(E\), all scalar multiplicities and all boundary occupations belong to \(P_E\): \(N\Delta\le E\) and every occupied graviton has \(m\le E\). A finite external block does not make all off-block OFPT sums finite.

The classical Brown–Henneaux charges are Hamiltonians for the allowed large transformations. With the scalar source zero and \(\Delta>1\), the matter boundary flux vanishes; the boundary stress Ward identities retain conserved chiral stress components on the fixed cylinder. Their Fourier charges, evaluated at a reference time and with the known harmonic time phase stripped, obey
\[
[H,Q_s]_{\rm cl}=sQ_s,\qquad [F,G]_{\rm cl}=i\{F,G\}_{\rm CPS}.
\]
This is the classical Hamiltonian charge identity, not a quantum regulator identity. The fixed boundary clock identifies \(H=L_0+\bar L_0\), up to the fixed vacuum subtraction. No Virasoro central term occurs in its bracket with a nonzero mode. The usual existence/integrability of these charges on this Brown–Henneaux phase space is an action-level structural input; computing every nonlinear coefficient of every charge is not needed for its consequence below.

The leading non-global charge is singular in canonically normalized perturbation theory:
\[
Q_s=\kappa^{-1}Q_{-1,s}+Q_{0,s}+\kappa Q_{1,s}+\cdots,
\]
\[
L_{-m}=\kappa^{-1}c_m a_m^\dagger+\cdots,
\quad L_m=\kappa^{-1}c_m a_m+\cdots,
\quad c_m=\sqrt{2\pi m(m^2-1)}.
\]
There is a second independent barred tower. The normalization follows also from \(c=24\pi/\kappa^2\) and the vacuum-subtracted central term \(c\,m(m^2-1)/12\). Modes \(m=0,1\) are stabilizers, not oscillators; their matter-source harmonics remain in the constraints.

The expansion is an ordinary equal-time functional expansion in a regular local Darboux chart. It does not insert a secular \(tC\) representative into a purported harmonic charge. Such a replacement would add an explicit-time derivative and invalidate the homological equation being used.

## 3. Full normal form and the projection lemma

### 3.1 The full cubic can be removed

Before any normal-form transformation, the leading non-global Ward equation is
\[
(\operatorname{ad}H_0-s)Q_{0,s}+[V_1,Q_{-1,s}]_{\rm cl}=0.
\]
Let \(\mathcal R_s\) retain free energy weight \(s\), and put \(\mathcal R=\mathcal R_0\). Weight projection implies
\[
[\mathcal RV_1,Q_{-1,s}]_{\rm cl}=0.
\]
Applying this to both signs and both towers removes all gravitational variables from the resonant cubic. A scalar-only cubic is forbidden by \(\phi\mapsto-\phi\). Hence \(\mathcal RV_1=0\), including the pure-gravity cubic. This closes the apparent circularity in first assuming complete cubic elimination and only later using a Ward identity.

Choose the full anti-Hermitian cubic generator \(S\) with
\[
V_1=[H_0,S],\qquad
\widetilde H=e^{\kappa S}He^{-\kappa S}
=H_0+\kappa^2W_2+\cdots,
\quad W_2=V_2+\tfrac12[S,V_1].
\]
For the mixed vertex this is explicit:
\[
S_{\rm mix}=\sum_{m,\sigma}(a^\dagger_{m\sigma}D_{m\sigma}-D^\dagger_{m\sigma}a_{m\sigma}),
\quad F_{m\sigma}=mD_{m\sigma}+[H_\phi,D_{m\sigma}].
\]
The full degenerate OFPT identity is
\[
P_EW_2P_E=P_EV_2P_E+
P_EV_1Q_E(E-Q_EH_0Q_E)^{-1}Q_EV_1P_E,
\quad Q_E=1-P_E.
\]
An exactly resonant intermediate state is in \(P_E\); it is not assigned a principal-value denominator.

### 3.2 Transport the charges, not just the Hamiltonian

Set \(\widetilde Q_s=e^{\kappa S}Q_se^{-\kappa S}\). At order \(\kappa\), homogeneous oscillator degree three, the complete classical identity becomes
\[
(\operatorname{ad}H_0-s)\widetilde Q_{1,s}^{[3]}
+[W_2^{[4]},Q_{-1,s}^{[1]}]_{\rm cl}=0.
\tag{1}
\]
All \(g^4\), \(g^2\phi^2\), constraint, embedding, momentum, and cubic-exchange pieces are included in \(W_2^{[4]}\). Nothing here presumes a scalar pair Hamiltonian.

For an arbitrary \(A=\sum_\nu A_\nu\) with \([H_0,A_\nu]=\nu A_\nu\), Jacobi gives
\[
[H_0,[A_\nu,Q_{-1,s}]]=(\nu+s)[A_\nu,Q_{-1,s}].
\]
Consequently
\[
\boxed{\mathcal R_s[A,Q_{-1,s}]=[\mathcal RA,Q_{-1,s}].}
\tag{2}
\]
The weight-\(s\) projection annihilates the first term of (1), giving
\[
[\mathcal RW_2^{[4]},a_{m\sigma}]_{\rm cl}
=[\mathcal RW_2^{[4]},a^*_{m\sigma}]_{\rm cl}=0.
\tag{3}
\]
In the oscillator polynomial algebra these are the derivatives with respect to \(a^*\) and \(a\). Thus the **complete resonant quartic is independent of every gravitational variable**.

This is a cross-energy identity on \(\mathcal D_{\rm fin}\). Compressing the ladder operators to one finite \(E\) block before applying (2) would destroy their oscillator algebra and would not prove (3).

If a Ward defect is retained, the exact replacement is
\[
[\mathcal RW_2^{[4]},Q_{-1,s}]=\mathcal R_s\widetilde{\mathcal A}_{1,s}^{[3]}.
\tag{4}
\]
This identifies the actual possible logical gap: a nonzero **projected degree-three defect**, not the mere absence of a separate component evaluation of \(g^2\phi^2\). The classical boundary-completed theory has no such defect on the stated domain. A finite cutoff need not have this property before its tree-level limit is taken.

## 4. Scalar number, ordering, and the genuinely quantum assumptions

### 4.1 Scalar number is a separate theorem

The transported global Ward identity gives
\([\mathcal RW_2^{[4]},Q_{0,\rm global}]=0\).
Once (3) has removed the gravitational variables, the scalar free global charges are number-preserving bilinears. Their action preserves the separate creation and annihilation degrees of a normally ordered quartic.

The \(b^{\dagger3}b\) part therefore intertwines the one-scalar irreducible lowest-weight module with the three-scalar space. It annihilates the one-particle lowest vector, since an output has energy at least \(3\Delta>\Delta\). Commutation with both raising operators makes it annihilate the entire one-particle module. There is only one annihilation slot, so this kills every symmetrized coefficient; adding spectators cannot revive it. Its adjoint also vanishes. Positive energy excludes the \(40\) and \(04\) parts.

This proof includes the integer masses at which kinematics permits \(1\leftrightarrow3\) collisions. A generic-mass nonresonance argument alone would not suffice. The degree-four bound is essential: arbitrary higher-field intertwiners are not excluded by this argument.

### 4.2 The four-leg quantum coefficient is the classical one

For the minimal action, the order-\(\kappa\) vertices have types \(g^3,g\phi^2\), and the order-\(\kappa^2\) vertices have types \(g^4,g^2\phi^2,\phi^4\). The leading commutator of two cubics has degree four. In Weyl symbols its only further Moyal term has degree zero; for example
\[
[a^3,(a^*)^3]_\star=9a^2(a^*)^2+\tfrac32.
\]
Normal-ordering a quartic creates degree-two and degree-zero contractions but does not change its four-leg coefficient. A commutator with a linear oscillator has no higher Moyal terms at all.

Thus (3) determines the connected quantum four-leg coefficient in the stipulated canonical Liouville/midpoint-Weyl prescription. This does **not** delete its scalar Weyl contractions. The argument excludes arbitrary new quantum four-leg input at this order: in perturbation theory for the specified minimal action, a loop contraction at order \(\kappa^2\) lowers the external field degree. Freely adding an independent finite coupling defines a different prescription/theory. An independent \(G\phi^4\) term would change the scalar pair coefficients, although it would not by itself spoil this boundary-vacuum closure; higher-field terms would invalidate the number-selection degree bound.

### 4.3 What is needed for lower-degree closure, and what is not

After vacuum subtraction, the remaining resonant quantum terms have degree at most two. Assuming the same regulator/counterterms preserve scalar parity, time translation, rotation, and this perturbative degree count:

- a mixed \(ab\) or \(ab^\dagger\) bilinear is scalar-parity odd and absent;
- two creations or two annihilations cannot have zero free energy weight;
- a scalar \(b_I^\dagger b_K\) preserving \(E,J\) has \(I=K\);
- a gravitational number-preserving bilinear annihilates the gravitational vacuum.

Therefore these unknown terms cannot mix the zero-independent-graviton scalar sector with a graviton-occupied state. They preserve scalar number too. **A completed quantum non-global Ward identity is not necessary for this weaker invariance result.**

It would be necessary, or need an alternative explicit proof, to conclude the stronger full-quantum commutant
\([\mathcal W_2,a]=[\mathcal W_2,a^\dagger]=0\).
For example, \(\sum\epsilon_{m\sigma}a^\dagger_{m\sigma}a_{m\sigma}\) preserves the scalar branch but does not commute with a creation operator.

Likewise, closure says nothing about the numbers multiplying \(b_I^\dagger b_I\). A renormalized global Ward identity would make them a common mass shift; alternatively they may be computed in a specified prescription. The source uses the latter explicit one-body/counterterm work in [Appendix B](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L939-L952>). Its common regulator, vacuum-stress subtraction before inversion, external-leg factors, and fixed physical gap are additional quantum inputs/results, not consequences of the quartic Ward projection. No existing one-body tests were rerun here.

## 5. Direct reconstruction of the minimal mixed contact

At \(\Delta=2,E_0=4,J=0\), the complete even-scalar-parity block is exactly \(\{|ss\rangle,|gg\rangle\}\). The odd-parity state \(b_{10}^\dagger|0\rangle\) is not in this block. Explicit occupation enumeration verifies that no other even state occurs.

Below, every \(C\) is the coefficient of
\(\kappa^2a_{2,+}^\dagger a_{2,-}^\dagger b_{00}^2\), before the \(\sqrt2\) matrix-element normalization. Time phases are suppressed at \(t=0\), and \(y=\sqrt{1+r^2}\), \(\sqrt{\bar\sigma}\,d^2x=dy\,d\theta\).

### 5.1 Ground annihilation-pair response

The normalized positive-frequency scalar leg and momentum are
\[
R=\frac1{\sqrt{2\pi}y^2},\qquad
\chi=-\frac{2i}{\sqrt{2\pi}y^3}.
\]
The coefficients of \(b_{00}^2\) are
\[
\rho_{bb}=\frac{y^{-4}-2y^{-6}}\pi,
\qquad u_{\phi,bb}=-\frac1{20\pi y^4},
\qquad L_0u_{\phi,bb}=\rho_{bb}/2,
\]
\[
t_{\phi,bb}{}^i{}_j=\operatorname{diag}(A_\phi,-A_\phi),
\quad A_\phi=\frac{iF(y)}{\pi(y^2-1)},
\quad F(y)=\frac2{15}-\frac1{3y^3}+\frac1{5y^5}.
\tag{5}
\]
Here \(L_0=-(y^2-1)\partial_y^2-2y\partial_y+2\). These solve the scalar and momentum constraints with a regular center and the prescribed fast solution. In particular the \(y^{-2}\) boundary coefficient of \(u_{\phi,bb}\) is zero. The scalar global source harmonic has **not** been discarded.

### 5.2 Opposite-chirality gravitational pair

For \(m=2\), put
\[
N^2=\frac1{48\pi},\quad
p(y)=\frac{(y-1)(y+2)}{y+1},\quad A_m=\frac6{(y+1)^2}.
\]
With the phases of the [original canonical chart](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L840-L874>), a creation leg has
\[
\eta_\sigma^*=i\sigma N e^{-2i\sigma\theta},\qquad
(\tau_\sigma^*)_A=-iNA_m e^{-2i\sigma\theta},
\qquad (\eta_\sigma^*)'=2N e^{-2i\sigma\theta}.
\]
Including both cross orders,
\[
(\tau:\tau)_{a_+^*a_-^*}=-\frac6{\pi(y+1)^4},\qquad
u_\tau=-\frac{y+3}{12\pi(y+1)^3},\quad
L_0u_\tau=\tfrac12(\tau:\tau)_{a_+^*a_-^*}.
\tag{6}
\]

### 5.3 The momentum seagull

Expanding the exact scalar constraint at fixed scalar canonical momentum gives the [uncontracted contact](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L944-L968>)
\[
V_{p^2\phi^2}=\int y\,dy\,d\theta\,
(-u_\tau\chi^2-8u_\phi u_\tau-2u_\phi\tau:\tau)
\]
at \(m^2=0\). Its coefficient is the convergent elementary integral
\[
C_{p^2}=\int_1^\infty
-\frac{y^4+4y^3+26y^2+20y+15}{15\pi y^5(y+1)^4}\,dy
=\frac1\pi\left(\frac{3067}{180}-\frac{74}{3}\log2\right).
\tag{7}
\]

### 5.4 Embedding contact and canonical momentum transport

The matter-dependent boundary energy transforms with weight two:
\[
H_{\rm matter}[f]=6\int C(f(\theta))(f'(\theta))^2d\theta,
\qquad f(\theta)=\theta+\kappa\eta(\theta).
\]
This is the [boundary-embedding law used in the original derivation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L985-L993>). Its pure-gravity Schwarzian does not contain scalar legs. Changing integration variable yields the linear factor \(1+\kappa\eta'\) and quadratic factor \(-\kappa^2\eta\eta''\).

The \(\eta^2\phi^2\) contribution to this particular channel is zero because \(C_{\phi,bb}=0\). The \(\eta p\phi^2\) contribution is not zero. At zero embedding the order-\(\kappa^3\) conformal response obeys
\[
Lu_3=\tau:t_\phi,
\quad C_{3,k}=\frac13\int_1^\infty p_{|k|}(y)(\tau:t_\phi)_k\,dy.
\tag{8}
\]
The \(1/3\) follows from the fast Green solution \(q_m\sim1/(3y^2)\). Expanding the boundary energy therefore supplies \(6\int\eta'C_3\).

One must also transport the canonical edge momentum. If \(x=f(\theta)\), the boundary potential is
\[
\theta_{\rm edge}=\int P_{\rm body}(x)\,\delta f(f^{-1}x)\,dx
=\int P(\theta)\delta f(\theta)\,d\theta,
\]
so
\[
P=f'P_{\rm body}\circ f,
\qquad P_{\rm body}=P-\kappa(\eta P)'+O(\kappa^2).
\tag{9}
\]
For a radial scalar \(bb\) pair, only the zero angular harmonic of this correction could contribute to the integrated linear-momentum energy. It vanishes because \(\int(\eta P)'=0\). Thus it adds no further coefficient in this minimal channel. This check is specific to this channel; the term must not be dropped in arbitrary external configurations.

Substitution of (5)–(8), with both choices of which graviton supplies \(\eta'\), gives directly
\[
C_{\eta p}=\frac4\pi\int_1^\infty
\frac{y+2}{(y+1)^4}F(y)\,dy
=\frac1\pi\left(\frac{56}{3}\log2-\frac{116}{9}\right).
\tag{10}
\]
Neither (8) nor (10) was obtained by demanding cancellation. In particular, the statement that a symmetric displacement–momentum **vacuum contraction** vanishes would not determine (10).

## 6. Complete mixed-cubic exchange and the direct cancellation

For \(E_f=\int f\rho\), put \(v_g=y\bar Dg-g\bar Dy\). The free canonical bracket gives, when \(\bar D_iv_g^i=0\),
\[
[E_f,[H_\phi,E_g]]_{\rm cl}
=\int\sqrt{\bar\sigma}\,\bigl[(v_g\cdot\bar Df)\rho
-f\bar D^iv_g^j\,\partial_i\phi\partial_j\phi\bigr].
\tag{11}
\]
The \(a_+^\dagger a_-^\dagger\) part of \(\tfrac12[S_{\rm mix},V_{\rm mix}]\) is
\[
\tfrac12\bigl([D,[H_\phi,D^\dagger]]+[D^\dagger,[H_\phi,D]]\bigr).
\]
The terms proportional to the graviton frequency cancel in this two-creation coefficient. Evaluating (11) with \(f=Npe^{-2i\theta}\), \(g=Npe^{2i\theta}\) gives
\[
C_{\rm cc}=\int_1^\infty
\frac{(y-1)(4y^5+7y^4-4y^3-17y^2-20y-6)}
{12\pi y^6(y+1)^3}\,dy
=\frac1\pi\left(6\log2-\frac{83}{20}\right).
\tag{12}
\]
Pure-gravity/mixed-cubic cross terms do not contribute to this matrix element: after the gravity contraction their scalar pair would have to come from a single mixed vertex proportional to \(b_{00}^2\) and one nonzero-angular-momentum graviton. That vertex is forbidden by angular momentum. Pure-gravity quartics contain no scalar annihilation legs.

The complete sum is
\[
\boxed{C_{p^2}+C_{\eta p}+C_{\eta^2}+C_{\rm cc}=0.}
\tag{13}
\]
It has a stronger local integral certificate: the sum of the three displayed nonzero radial densities is the derivative of
\[
-\frac{(y-1)(78y^5+203y^4+170y^3+47y^2-84y-18)}
{180\pi y^5(y+1)^3}.
\tag{14}
\]
This primitive vanishes at both \(y=1\) and \(y=\infty\). Finally,
\(\langle gg|\mathcal W_2|ss\rangle=\sqrt2(C_{p^2}+C_{\eta p}+C_{\rm cc})\),
and the matrix element divided by \(G\) is \(16\pi\sqrt2\) times the same sum.

Thus this audit does not merely report a missing alternative calculation: the requested minimal uncontracted mixed calculation has actually been closed, using the supplied action/chart and its boundary transformation law. A complete arbitrary-external component table is still not computed; it is unnecessary for the general Ward theorem.

## 7. Independent radial OFPT check and correction to the prior partial result

The same cubic coefficient can be computed without (11). In \(x=1/y\), define the angular-normalization-stripped radial functions
\[
R_0=x^2,\quad
R_n=\sqrt{\frac{n+3}{n+1}}(x^2-x^4)
P_n^{(1,2)}(1-2x^2),\quad \omega_n=4+2n,
\quad p=\frac{(1-x)(1+2x)}{x(1+x)}.
\]
For an intermediate scalar of \(j=\mp2\),
\[
A_n=N\int_0^1p\,[2\omega_nR_nR_0+(1-x^2)R_n'R_0']\,dx,
\]
\[
B_n=N\int_0^1p\,[-2\omega_nR_nR_0+(1-x^2)R_n'R_0']\,dx.
\tag{15}
\]
The two chiral paths have free intermediate energy \(8+2n\). The cubic vertices contain opposite factors \(2n+4\), and the OFPT denominator is \(-(2n+4)\). Hence
\[
C_{\rm cc}=2\sum_{n=0}^\infty(2n+4)A_nB_n.
\tag{16}
\]
At \(n=0\),
\[
A_0=\frac3{20\sqrt\pi},\quad B_0=\frac1{140\sqrt\pi},\quad
\pi C_{\rm cc}^{(n=0)}=\frac3{350}.
\]
This yields \(24\sqrt2/175\) for the normalized matrix element divided by \(G\). **It is the two \(E_{\rm int}=8\) paths only, not the complete mixed-cubic contribution.** There is no finite radial-band selection rule eliminating all \(n>0\) in this canonical density vertex.

After the new result was derived, the parent supplied exactly this prior partial number. Its discrepancy is resolved by the omitted radial intermediates, not by changing normalization or target-fitting a contact. The correct full coefficient is
\[
\frac{\langle gg|\mathcal W_{2,\rm cc}|ss\rangle\kappa^2}{G}
=16\sqrt2\left(6\log2-\frac{83}{20}\right).
\]
The [fresh exact polynomial quadratures and partial sums](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_closure_checks.json#L21-L56>) give:

| Highest radial index | \(\pi C_{\rm cc}^{\rm partial}\) | Absolute difference from \(6\log2-83/20\) |
|---:|---:|---:|
| 0 | \(3/350\) | \(3.11655\times10^{-4}\) |
| 1 | \(13/1470\) | \(3.95459\times10^{-5}\) |
| 2 | \(41/4620\) | \(8.62449\times10^{-6}\) |
| 8 | exact rational in the linked report | \(5.26226\times10^{-8}\) |
| 24 | exact rational in the linked report | \(2.03120\times10^{-10}\) |

The partial sums are independent numerical support for normalization and the complete-sum identification, not a fitted proof of the limit. The exact canonical-completeness bracket (11) and elementary integral (12) supply the complete result. Completeness is legitimate here: applying the density generators to the ground-mode Cauchy data gives center-smooth data with \(\delta\phi=O(y^{-2})\), \(\delta\chi=O(y^{-3})\), hence finite free energy. The corresponding energy-weighted mode norms are finite, and Cauchy–Schwarz controls the weighted cross sum in (16). No separate signed-sector UV prescription is being used for this connected mixed coefficient. No prior note was changed.

## 8. Proof/assumption ledger and limits

| Item | Status and precise role |
|---|---|
| Classical boundary-completed Einstein–scalar action, fast scalar and Brown–Henneaux phase space | Specified theory/domain. Their classical charge Ward identity is an action-level consequence, with the usual integrable-charge construction; it is not inferred from a desired spectrum. |
| Regular local maximal/conformal Darboux chart and retained boundary cotangent variables | Perturbative construction assumed to exist in a neighborhood of AdS. The supplied constraints, potential and boundary law determine the minimal contact above. No global gauge-slice theorem is asserted. |
| Singular leading charge normalization | Fixed by the free CPS oscillators and leading Brown–Henneaux central term. Essential; an expansion starting only at \(\kappa^0\) misses the constraint. |
| Complete cubic nonresonance | Derived from the leading non-global identity and scalar parity; the mixed cubic also has its explicit numerator zero. |
| Complete quartic commutant | Proved by (1)–(3), before gravitational-vacuum compression. The new minimal direct cancellation is independent dynamical support. |
| Scalar-number conservation at this order | Proved using global intertwining, lowest weight, and the degree-four bound, including special integer masses. |
| Identification of quantum four-leg coefficient | Uses the specified canonical Liouville/midpoint-Weyl quantization, common perturbative degree counting, and absence of new independent four-leg input. Ordering corrections do not alter the tree coefficient. |
| Lower-degree branch invariance | Proved from degree \(\le2\), scalar parity, positive frequencies, and \(E,J\) invariance. A regulator/subtraction preserving these basic symmetries is required; full non-global quantum Ward restoration is not. |
| Scalar one-body energies and the chosen physical gap | Separate quantum subtraction calculation/prescription. Not proved by closure and not retested here. |
| Full quantum commutant, gravity-sector energy shifts, quantum Virasoro charge/counterterm completion | Not established by this audit. Requires the appropriate renormalized Ward defects to vanish or a separate calculation. |
| Infinite-dimensional unitary normal-form map and exact finite-\(G\) branches | Not proved. The statements concern fixed finite labels and formal first-order spectral coefficients; no uniform high-energy estimate or \(O(G^2)\) remainder follows. |

On the minimal block, the connected quartic off-diagonal is therefore zero. Its scalar diagonal is the independently determined scalar pair coefficient; its gravity diagonal can still receive an uncomputed degree-two quantum term unless stronger quantum Ward information is supplied. A diagonal two-by-two block is enough for scalar-branch closure; asserting an entirely zero gravity shift would require more.

## 9. Fresh verification record

The [new self-contained script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_closure_checks.py>) runs as unpreparsed Python in a fresh Sage 10.9/SymPy kernel. Its [saved result](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_closure_checks.json>) reports 18 passing checks: complete-block enumeration, a deliberately nonzero mixed Ward obstruction, Weyl degree counting, scalar and gravitational constraint responses, the direct three-term cancellation, its endpoint derivative, and an independently constructed Jacobi-mode OFPT partial sum through \(n=24\).

The negative test is \(\lambda a_+^\dagger a_-^\dagger b_{00}^2+\mathrm{h.c.}\). It is energy-resonant, rotationally invariant and scalar-parity even, but its commutator with \(a_+\) is \(-\lambda a_-^\dagger b_{00}^2\), of exactly the charge weight. No regular \((\operatorname{ad}H_0-s)\widetilde Q_1\) can cancel this resonant monomial. Thus the test genuinely probes the extra non-global Ward content rather than confusing elementary selection rules with the desired conclusion.

This delegated audit could not start a further child at the available delegation depth. Its defining formulas and normalization were sent to the parent for independent review. The evidence levels remain distinct: general algebraic theorem; direct source-level minimal-block calculation; exact CAS identities; and finite spectral-sum support.

# Supplement: remaining formal physics claims and the all-index kernel

## 10. Decisive coverage verdict

**PHY-09, PHY-10 and PHY-11 are valid theorems with their stated formal/operator hypotheses. PHY-12 and PHY-14 are valid conditional theorems, not completed assertions of their additional hypotheses for the AdS quantum theory. PHY-05 has a genuine all-index derivation on the declared matching source/Hessian/endpoint domain.** An additional Casimir-free all-index evaluation of the canonical raw sums is not logically required for that stated claim.

The exact entries in the [claim register](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/provenance/claim_register.json>) were read, followed by the actual proofs. The register's verdicts were not treated as evidence. The entries are PHY-05 at lines 782–823, PHY-09 at 1320–1425, PHY-10 at 1429–1534, PHY-11 at 1538–1640, PHY-12 at 1645–1754, and PHY-14 at 1913–2014.

| Claim | Audited conclusion | What does not follow |
|---|---|---|
| PHY-09 | Stationary elimination transfers all retained-external trees, symmetry factors, successive elimination, and transported insertions. | Continuum inverse existence, loop equality, or removal of physical on-shell cohomology. |
| PHY-10 | Exact projected resolvent/eigenkernel identity and norm \(1-\partial_EK_P\). | Invertibility at a missing resonance or existence of an unconstructed self-adjoint quantum Hamiltonian. |
| PHY-11 | All-order equality of the leading \(\hbar^0\) normal-form symbol under matched conventions. | Equality of all quantum symbols, all fixed-occupation energies, or convergence. |
| PHY-12 | The additional full quantum Ward/commutant/parity hypotheses force zero \(\kappa^3\) compression in each common \(W_2\)-eigenspace. | Those hypotheses for actual renormalized AdS, or an unconditional \(O(G^2)\) remainder. |
| PHY-14 | Conditional proper log-free finite-time de Donder construction and genuine exceptional/off-shell obstructions. | An off-shell truncation rule, unconditional smooth wave-domain existence, or a uniform infinite-time bound. |
| PHY-05 | All-index pair formula from a calibrated initial row, dynamical Casimir equation, uniqueness, and explicit annihilation responses, on the declared matching domain. | Equivalence to every alternative response prescription or an extra Casimir-free summation theorem. |

## 11. PHY-09: stationary trees, kernel equations, and observables

The [proof in D.1](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L1580-L1623>) takes
\[
S[x,y]=S_x[x]+\tfrac12\langle y,Ky\rangle+I[x,y],
\qquad y_*=-\mathcal G I_y[x,y_*].
\]
The pairing includes the boundary completion. The reciprocal inverse is fixed on a specified complement. Iteration raises a complete separated filtration; every recursive source lies in the inverse domain, and every graph pairing exists at the asserted regulator/continuum level.

Under these hypotheses the proof is complete:

1. Agreement of two iterates through degree \(r\) implies agreement through degree \(r+1\). Starting at the common zeroth term proves formal existence and uniqueness, without norm convergence or a heavy-mass expansion.
2. Recursive substitution attaches lower-order trees to eliminated-field slots and adds a root edge \(-\mathcal G\). Taylor factorials retain multiplicities; no eliminated-field loop is generated.
3. Completed stationarity gives \(\delta_xS[x,y_*]=S_x^{\rm full}[x,y_*]\delta x\). Marking an external retained leg counts rooted trees; integrating recovers the unrooted action factors. Common vacuum normalization fixes the field-independent constant.
4. Every full retained-external tree partitions uniquely into maximal components joined by eliminated edges. Contracting/expanding these components is a bijection with trees built from reduced vertices and retained edges. This proves all retained-external tree kernels, not merely finite examples.
5. Successive elimination solves the same joint stationary equations. On the same domain, uniqueness proves associativity beyond the linear Schur-complement case.

The kernel proviso is indispensable and is correctly retained: inverting a complement does not make a nonzero kernel equation disappear. True homogeneous data/on-shell cohomology must remain, or be fixed consistently while residual equations are imposed. Physical Brown–Henneaux gravitons are not made gauge by selecting a scalar response branch.

For an insertion use \(S+\eta O\), eliminating with \(\eta\) included. At \(\eta=0\), \(\partial_\eta S_{\rm red}=O[x,y_*]\). A second derivative, for an originally \(\eta\)-independent observable, includes
\[
\partial_\eta^2S_{\rm red}=-\langle O_y,(S_{yy})^{-1}O_y\rangle
\]
on that stationary domain. This illustrates the induced insertion contact; two insertions are not simply two untouched copies of the single-insertion formula. Endpoint states and boundary energy require the same transport.

The theorem permits time nonlocality but requires reciprocity. Varying a single-copy quadratic action with a retarded inverse produces the retarded/advanced average, not the retarded response. Stationarity also omits the Gaussian \((i\hbar/2)\operatorname{Tr}\log K[x]\) contribution. These restrictions, explained in D.4.3, are consistent with the theorem. The absence of a general AdS continuum existence theorem is a declared application condition, not a gap in this formal result.

## 12. PHY-10 and PHY-11: exact operator identity versus leading symbol

### PHY-10: projected resolvent and normalization

The [proof in D.2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L1625-L1675>) is correct on its common block domains and inverse locus. Let \(R_Q=(E-QHQ)^{-1}\). Solving the \(Q\)-equation gives
\[
\psi_Q=R_QQHP\psi_P,
\qquad K_P=PHP+PHQR_QQHP.
\]
Substitution proves the resolvent identity wherever the full resolvent and \(Q\)-inverse exist. At an eigenvalue the full resolvent is not evaluated as an ordinary inverse: only the \(Q\)-inverse is required for the Schur/full eigenkernel isomorphism. A full eigenvector with zero \(P\)-component would lie in the invertible \(Q\)-kernel and vanish, proving injectivity and multiplicity preservation.

For real \(E\), on the stated self-adjoint inverse/domain locus,
\[
\partial_ER_Q=-R_Q^2,
\quad -\partial_EK_P=PHQR_Q^2QHP\ge0,
\quad \|\psi\|^2=\langle\psi_P,(1-\partial_EK_P)\psi_P\rangle.
\]
The minus sign is essential and correct. Unit normalization in the model space would otherwise miss the reconstructed norm/pole residue. For unbounded operators, “inverse” and “common domain” must have their ordinary operator meaning; the identity does not justify manipulating an unclosed compression.

Choosing the complete degenerate free block, with \(PV_1P=0\), gives the stated second-order OFPT expression. The two oscillator time orderings combine exactly with the same frequency prescription, but Legendre contacts remain necessary. A true resonance belongs in \(P\), not in an assigned finite part of a missing inverse. No additional hidden spectral assumption was found.

### PHY-11: all-order formal leading Weyl symbol

The [proof in D.3](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L1677-L1696>) is an actual induction. In a finite oscillator Weyl algebra,
\[
\frac{A\star B-B\star A}{i\hbar}=\{A,B\}+O(\hbar^2),
\qquad
\frac{H_0\star A-A\star H_0}{i\hbar}=\{H_0,A\}
\]
exactly for quadratic \(H_0\). If lower coupling-order leading symbols agree, every nested normalized bracket in the next source has the same \(\hbar^0\) coefficient. The common resonant projection, complement inverse, and resonant-generator convention then give the same next generator and resonant coefficient. This proves all formal coupling orders, not an extrapolation from low orders.

The no-negative-\(\hbar\)-powers condition applies to input/generator symbols, not to forbidding the usual exponential \(e^{iS/\hbar}\). It prevents higher-Moyal terms from being promoted into the leading symbol. The finite oscillator setting and matched generator convention are substantive hypotheses.

Vacuum compression introduces contractions, so leading-symbol equality does not fix all fixed-occupation energies. The nonlinear-coordinate example in D.4.2 is consistent: exact unitary transport and newly applying Weyl quantization can differ at \(O(\hbar^2)\) while having identical leading symbols. No all-order convergence, infinite-Fock unitary implementation, or ordering independence is claimed or proved.

## 13. PHY-12: a sufficient conditional next-order repair

The [hypotheses and proof](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L1828-L1859>) require the full renormalized \(W_2\) to commute with every gravity ladder, including lower-degree terms, and require the next transported quantum charge identity. This is stronger than the quartic conclusion above.

The order-zero charge equation gives \(q_{0,s}\) free weight \(s\). Weight projection of the next identity therefore yields
\[
c_s[\mathcal RW_3,a_s]=-[W_2,q_{0,s}].
\]
Form \(P_\lambda\), the common \(W_2\)-eigenprojection across the algebraic direct sum of all free-energy spaces, before fixing one energy. The full commutant assumption gives \([P_\lambda,a_s]=0\), and
\(P_\lambda[W_2,q_{0,s}]P_\lambda=0\). Hence \(P_\lambda\mathcal RW_3P_\lambda\) commutes with every gravity creation and annihilation operator. It is the identity on the gravity Fock factor tensor an operator on scalar multiplicity. Gravitational parity makes it odd; identity on the gravity factor is even. The compression is zero.

Ordinary analytic Hermitian matrix perturbation on a fixed finite free block then gives no \(\kappa^3\) splitting within this common \(\lambda\)-eigenspace. Mixing distinct \(\lambda\)'s contributes first at \(\kappa^6/\kappa^2=\kappa^4\); equal \(\lambda\)'s were included in the compression. This properly handles both degeneracies and the ladder domain.

The absent physical inputs are explicit, not flaws in the conditional proof: the complete quantum commutant, the next-order charge with counterterm metric completions, and compatible regulator removal have not been established for actual AdS. Coupling reflection alone permits \(\lambda\kappa^2\pm v\kappa^3\) by exchanging branches. The manuscript correctly retains \(o(G)\); it does not claim that this repair already proves an AdS \(O(G^2)\) remainder.

## 14. PHY-14: finite-time gauge construction and off-shell obstruction

The [construction in A.6](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L374-L458>) separates three necessary steps.

**Asymptotic construction.** The collar integrals put an on-shell response into radial gauge by a proper vector, cut off near the center. The leading radial Einstein constraints impose the trace/chiral conditions on the order-one tangential data. Those conditions cancel the leading resonant terms of \(C_\nu[q]\); an arbitrary off-shell Brown–Henneaux tensor does not obey them.

The remaining exponents are \(s\in\{4+2n\}\cup\{2\Delta+2n\}\), with denominators \(s^2-4\) and \(s^2-2s-4\). All exceed two. The positive radial root \(1+\sqrt5\) occurs only at \(n=0,\Delta=(1+\sqrt5)/2\). Away from it, recursion fixes every power coefficient. The assumed complete expansion and differentiated remainders permit a smooth Borel lift with rapidly decaying residual source. This is not yet an exact global wave solution.

**Exact residual equation.** For
\[
(\mathcal Pv)_\nu=\nabla^\mu(\nabla_\mu v_\nu-\nabla_\nu v_\mu)-4v_\nu,
\qquad \mathcal Q=\Box-2,
\]
use \(\mathcal Qv=\mathcal Pv+\nabla\nabla\cdot v\),
\(\nabla\cdot\mathcal Pv=-4\nabla\cdot v\), and
\(\mathcal Q\nabla u=\nabla(\Box-4)u\).
Solutions of \(\mathcal Pv=F\), \((\Box-4)u=\nabla\cdot F\) give \(\mathcal Q(v+\nabla u/4)=F\). The smooth reflecting positive-mass realizations and their center/boundary compatibility are declared analytic hypotheses. Under them the construction completes on each fixed finite time interval. Positivity of a formal energy is not silently promoted to a smooth-domain existence theorem.

**Both obstructions are genuine and correctly scoped.** In de Donder gauge \((\Box-4)q=2T\), with
\[
T=-\Delta(2\Delta-3)\beta^2r^{-2\Delta}+\cdots.
\]
At the exceptional mass the indicial coefficient vanishes but the source coefficient is \((\sqrt5-3)/2\ne0\). A generic nonzero boundary scalar amplitude forces a logarithm. This is an obstruction to the requested log-free gauge, not a physical spectrum pole.

For \(q_{t\theta}=A(t)r^4/(1+r^2)^2\), a fresh component derivation gives exactly
\[
C_\theta=-A'\frac{r^4}{(1+r^2)^3},
\quad
(1+r^2)a_{rr}+(r-r^{-1})a_r-\frac{a_{tt}}{1+r^2}-4a
=A'\frac{r^4}{(1+r^2)^3}.
\]
The leading radial operator on \(r^{-s}\) is \((s^2-4)r^{-s}\). Resonance at \(s=2\) forces \(a=-A'r^{-2}\log r/4+\cdots\), hence
\[
(\mathcal L_\xi g)_{r\theta}=A'r^{-3}\log r-A'r^{-3}/4+\cdots,
\]
violating the differentiated Brown–Henneaux bound. A homogeneous residual vector cannot remove this forced coefficient without changing the equation. The original tensor is smooth at the center: its angular one-form is proportional to \(r^2(x\,dy-y\,dx)\).

The conditional on-shell theorem and off-shell counterexample are therefore compatible. Neither supplies the uniform long-time condition \(B(T)/T\to0\) needed in PHY-04. Finite-time gauge accessibility cannot replace that separate endpoint hypothesis.

## 15. PHY-05: all-index proof as stated

### Calibration and the genuinely dynamical identity

The [main derivation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics.md#L678-L867>) and [Appendix C](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L1322-L1574>) supply a complete all-index chain on their declared domain.

Varying the original second scalar Hamiltonian at fixed canonical momentum gives the all-\(J\) canonical family
\[
\mathscr D_J=-4\Delta^2+
\frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J},\quad J\ge0.
\]
The beta integrals converge for \(\Delta>1\). At \(J=0\) the term multiplied by \(J^2\) is omitted before evaluating its beta function. Free Clebsch–Gordan compression is triangular with \(w_{JJ}>0\), uniquely giving
\[
x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},
\qquad x_{k0}=-4\Delta^2\quad(k\ge1).
\]
This is an action-derived infinite initial row, not a fit to finite seeds. Temporary distinguishability matters: odd intermediate pair channels can enter the recurrence although the final Bose spectrum retains only \(k+\ell\) even.

Next, the off-shell identity
\[
\mathcal E^{(1)}q=-\mathcal P(\mathcal C-2)q+
\mathcal P\nabla_{(\mu}C_{\nu)}[q],\qquad
\mathcal Pq=q-\tfrac12g\operatorname{tr}q
\]
contains the actual Einstein operator. In three dimensions \(\mathcal P^{-1}T=T-g\operatorname{tr}T\). Applying \(\mathcal E^{(1)}k=T/2\), transferring the derivative term against conserved sources on the matched domain, and using source-space reciprocity gives the local dynamical contraction
\[
T_1:T_2-\operatorname{tr}T_1\operatorname{tr}T_2.
\]
Its coefficient is fixed by the Einstein equation, not global symmetry or an assumed spectrum. No de Donder inverse on arbitrary off-shell conserved tensors is required.

The scalar/vector decomposition (C.2) was freshly checked off shell in signature \((-++)\). For analytic lowest-weight sources, the two lowering equations determine the Taylor coefficients from the center fiber. A zero center value gives a zero local primary and analyticity extends this throughout the connected interior. Scalar/vector/rank-two fibers admit center spin at most zero/one/two. This explains the diagonal/adjacent crossed bands and spin-zero/spin-two Bose annihilation support; it is not finite-sample extrapolation. The center amplitudes follow from normalized free Clebsch–Gordan coefficients. Their ratios (C.7), (C.9) become independent of the summation index by cancellation of rising factorials, so no interacting energy is used to normalize the sources.

### Discrete equation and uniqueness

The crossed Casimir action on \(\mathsf k_h=z^h{}_2F_1(h,h;2h;z)\) has the exact three-term formula (C.14). Its proof compares the arbitrary Taylor coefficient \(q\) using (C.15), with \(q=0,1\) treated separately. The new check verifies this symbolic rational identity in \(h,\Delta,q\), not a finite Taylor truncation.

The known free preparation normalization then gives
\[
(\mathcal L_k+\mathcal L_\ell-2)x_{k\ell}=S_{k\ell},
\quad (\mathcal Lf)_n=a_n(f_{n+1}-f_n)+c_n(f_{n-1}-f_n).
\]
When Casimir derivatives hit the logarithm in the preparation expansion they generate nonlogarithmic terms. Thus the secular energy coefficient is transported by the displayed block identity alone. This uses free representation theory and the local Einstein source, not an imported interacting CFT spectrum.

For every \(\Delta>1,n\ge0\), \(a_n>0\), with \(c_0=0\). Knowing all of row zero determines row one; each subsequent row follows from the previous two. Horizontal neighbors are in an already determined row. **No high-spin condition or boundary condition at infinity is needed for uniqueness.**

Set \(h_n=\Delta+n\), \(C_n=h_n(h_n-1)\), \(\mu=\Delta(\Delta-2)\), \(u_n=4\mu-8C_n\). Then
\[
x_{k\ell}=u_{\min(k,\ell)}\ (k\ne\ell),\qquad
x_{nn}=u_n\frac{2h_n-2}{2h_n-1}
\]
satisfies the zero-source region, diagonal, and adjacent band. Each was freshly checked for symbolic \(n,\Delta\), including \(\mathcal LC_n=2C_n-\mu\). Together with calibration and uniqueness, these are an all-index proof, not a rational fit.

### Annihilation responses and exceptional masses

For spin zero,
\[
\tau_{n,0}=\mathcal DS_n,
\quad S_n=\frac{C_n+\mu}{2(4C_n-3)}F_n^{\rm id},
\quad k[\tau_{n,0}]=-gS_n.
\]
The identity \(\mathcal E^{(1)}[g\psi]=-\mathcal D\psi/2\) verifies the response directly; the known source norm yields
\[
g^{\rm ann}_{n,0}=-\frac{2(C_n+\mu)^2}{(2h_n-3)(2h_n-1)(2h_n+1)}.
\]
For spin two the TT response is \(k=-\tau/[4h_n(h_n+1)]\). Its explicit tensor norm gives the claimed spin-two fraction. Both norm-to-coefficient steps were freshly checked symbolically. Higher Bose spins have no local analytic rank-two annihilation source.

The only apparent spin-zero pole in the physical range is \(n=0,\Delta=3/2\). Cancel
\[
\frac{C_0+\mu}{2(4C_0-3)}=\frac{\Delta}{2(2\Delta+1)}
\]
before taking the limit. The source potential remains finite, equal to \(3F_0^{\rm id}/16\); zero trace does not mean zero tensor. Its pairing with the conformal response vanishes because the trace vanishes. The total ground coefficient is the regular value \(-9/2\). The distinct de Donder obstruction at \((1+\sqrt5)/2\) is not a pole of the pair kernel.

### Exact domain qualification—not an absent raw-sum proof

The conversion to the response pairing is [PHY-04](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics.md#L522-L601>): the same lapse/shift reconstruction and homogeneous data, renormalized Hessian domain, fixed boundary clock, and induced endpoint satisfying \(B(T)/T\to0\) are required. The paired graph proves its symplectic pullback through this order, but bounded oscillator coordinates alone do not establish every continuum endpoint estimate. The source explicitly retains this distinction.

On that matching domain, action/observable transport and reciprocity provide the bridge, and the recurrence plus annihilation calculation prove PHY-05 for all labels in that prescription. Another all-index Casimir-free raw summation would be an independent proof, not a prerequisite or an unfilled algebraic step in this proof.

Outside that domain, the claim must not be strengthened: equivalence to every retarded, secular, or independently regularized response is not established, and finite-time PHY-14 does not prove the long-time condition. The independent canonical finite construction determines finite matrices without this bridge; the source-Casimir formula's general identification uses the declared bridge. This is the precise conditional interface recorded in the registry, not evidence that the formula or its internal all-index derivation is false.

## 16. New verification record for the supplement

The [new formal-claim script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_closure_formal.py>) and [saved result](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_closure_formal.json>) report **19 passing new checks**: off-shell local source decomposition; arbitrary-coefficient Casimir identity and endpoints; all-parameter recurrence bands; scalar/spin-two annihilation norms and removable ratio; direct component divergence/gauge operator; the forced logarithm and inadmissible metric falloff; and the exceptional trace source.

PHY-09–12 were audited by their general proofs, not by presenting trivial finite examples as proofs of their full quantifiers. No previous one-body tests or the 18 closure checks were rerun for this supplement. Source files and old notes remain unchanged. The still-unestablished application inputs are precisely the stated continuum matching/wave-domain conditions and stronger next-order renormalized quantum Ward construction.
