# The AdS3 vacuum quantum benchmark: determinants, polarization, and actual intertwiners

## Result and proof levels

**The classical vacuum symplectomorphism does not, by itself, determine a quantum equivalence.** This report makes several remaining choices calculable rather than merely listing them.

1. **Proved for the quadratic vacuum model:** the normalized physical modes are oscillators of frequencies n≥2. Their descendant product is fixed, but normal and Weyl/half-form quantizations have different vacuum factors. Frequency heat subtraction and spectral zeta give a chiral zero-point energy −13/24; a different specified subtraction need not.
2. **Computed at one loop in a named metric heat-kernel prescription:** the nonidentity thermal images give the same two-chiral descendant product. Retaining the analytically continued identity-image term gives the same −13/24 per chirality. Omitting that local term is a different finite prescription, not a different descendant spectrum.
3. **Proved algebraically:** a polarized adjoint-Witt determinant cocycle has central coefficient −26; its dual-half anomaly, if selected as quantum data, has coefficient +13. Naively deleting the three projective modes before constructing that cocycle destroys the representation and even the cocycle identity. The algebraic computation is not a construction of the full gravity half-form measure.
4. **Proved for cyclic unitary vacuum representations:** equality of the actual quantum central charge is necessary and sufficient for a vacuum-preserving unitary intertwiner of all labeled Virasoro generators on their descendant cores. An explicit thermal stress observable determines this datum, whereas descendant counting alone does not.
5. **Proved in the diagonal oscillator model:** a smooth classical squeeze need not be Fock implementable. Preserving the original rotation dynamics is a substantive additional restriction.

A source audit also locates a positivity defect in the printed localization deformation of Cotler–Jensen. An explicit modified gauge fermion repairs the local algebra and positivity on real loops. This neither refutes their character nor supplies the still-missing infinite-dimensional anomaly/contour/convergence theorem.

These are a finite quantum benchmark and conditional transport results, not an all-orders metric–CS measure-pushforward theorem. The earlier [scheme audit](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/scheme dependence audit of the AdS3 gravity +13 central charge shift.md>) already separates the local vacuum factor from descendant counting. Its old conclusions are not relabeled as new discoveries; the polarized cocycle, explicit intertwiner/observable criterion, and localization repair address additional interfaces.

## 1. Objects, conventions, and the classical input

Use the [workspace CPS convention](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L132-L145>): Ω=δΘ, i_XH Ω=−δH, [A,B]=i{A,B}, and ℏ=1. All quantities below are dimensionless, with the AdS radius set to one in differential operators. When displaying a gravitational coupling, restore

\[
C=\frac{3\ell}{2G},\qquad k_{\rm CS}=\frac{\ell}{4G},\qquad C=6k_{\rm CS}.
\tag{1.1}
\]

Here C>0 is the specified classical/reference coefficient. It is **not** silently identified with the measured quantum central charge c or with a separately calibrated quantum Newton coupling.

The [complete-sector theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) supplies the common classical space and finite proper relation. For one chirality, x has period 2π, f(x+2π)=f(x)+2π, f′>0, and projective postcomposition is quotiented. Its already derived data are

\[
T_f=\frac C{24}(1-f'^2)-\frac C{12}\{f,x\},\qquad
H_\epsilon=\frac1{2\pi}\int_0^{2\pi}\epsilon T_f\,dx,
\]
\[
\Omega_f=-\frac C{48\pi}\int_0^{2\pi}
\left(\frac{\delta f'\wedge\delta f''}{f'^2}
-\delta f\wedge\delta f'\right)dx,
\qquad H_{\rm cyl}=H_1-\frac C{24}.
\tag{1.2}
\]

The two chiralities use the orientation conversion already fixed in the classical theorem, so both have positive oscillator energies. Set q=exp(2πiτ), Im τ>0. Every fractional power means q^α:=exp(2πiτα) with this chosen τ lift, not a single-valued function on the punctured q-disk. On the physical Euclidean slice the antiholomorphic fugacity is the complex conjugate of q. Write β=2π Im τ for the dimensionless thermal period; it is unrelated to the four-dimensional Holst parameter.

The compact thermal problem considered here is one fixed smooth solid-torus saddle, not a sum over fillings, a modular completion, or BTZ-sector quantization. A finite spatial-mode truncation is a regulator of the Gaussian model, not a Virasoro-invariant subtheory of the nonlinear orbit.

## 2. Positive-frequency oscillators and their actual measure

Put f=x+u, with u real and

\[
u(x)=\sum_{|n|\ge2}u_n e^{inx},\qquad u_{-n}=\overline{u_n}.
\]

The projective modes 0,±1 have already been removed at this linearized stage. Integration by parts in the Schwarzian gives

\[
H_1^{(2)}=\frac C{48\pi}\int(u''^2-u'^2)dx,
\qquad
\Omega_0=i\sum_{n\ge2}d_n\,\delta u_n\wedge\delta u_{-n},
\quad d_n=\frac C{12}n(n^2-1)>0.
\tag{2.1}
\]

Therefore the positive-energy annihilation coordinate is

\[
a_n=\sqrt{d_n}\,u_{-n},\qquad
\Omega_0=i\sum_{n\ge2}\delta\bar a_n\wedge\delta a_n,
\qquad H_1^{(2)}=\sum_{n\ge2}n\bar a_na_n.
\tag{2.2}
\]

The sign of the Fourier label matters: X_H a_n=−in a_n. Taking u_n instead as annihilator would reverse that convention.

For physical modes 2,…,N, the positive Liouville density is

\[
d\mu_N=\prod_{n=2}^N\frac{d_n}{\pi}
 d\operatorname{Re}u_n\,d\operatorname{Im}u_n
=\prod_{n=2}^N\frac{d^2a_n}{\pi}.
\tag{2.3}
\]

Thus the C n(n²−1) symplectic normalization does not survive as a field-dependent Jacobian in these normalized coordinates. This finite statement does not define an infinite Lebesgue measure.

In Bargmann polarization z_n=\bar a_n, use the Hilbert norm with density exp(−∑|z_n|²)∏d²z_n/π, creation z_n and annihilation ∂_{z_n}. The Gaussian trace identity

\[
\int_{\mathbb C}\frac{d^2z}{\pi}
 e^{-(1-q^n)|z|^2}=\frac1{1-q^n}
\tag{2.4}
\]

is convergent for |q|<1 and computes the trace of q^{n z∂z}; equivalently it follows by a coherent-state time slicing. Normal/no-half-form and Weyl/metaplectic prescriptions give, respectively,

\[
Z_N^{\rm normal}=q^{-C/24}\prod_{n=2}^N(1-q^n)^{-1},
\]
\[
Z_N^{\rm Weyl}=q^{-C/24+E_N}\prod_{n=2}^N(1-q^n)^{-1},
\qquad E_N=\frac12\sum_{n=2}^N n=\frac{N^2+N-2}{4}.
\tag{2.5}
\]

For a finite oscillator, the half-form Lie derivative contributes n/2 to the rotation generator. This identifies the metaplectic convention in (2.5); it is not a proof that a global infinite-dimensional half-form on the gravitational orbit has already been selected. Its global rotation cover and equivariant lift are additional data.

### 2.1 Regulated infinite limit

The nonlocal product

\[
P(q)=\prod_{n=2}^{\infty}(1-q^n)^{-1}
\tag{2.6}
\]

converges locally uniformly for |q|<1. In contrast, its Weyl vacuum prefactor requires subtraction. For frequency heat damping,

\[
E(\varepsilon)=\frac12\sum_{n=2}^{\infty}n e^{-\varepsilon n}
=\frac12\left[\frac{e^{-\varepsilon}}{(1-e^{-\varepsilon})^2}
-e^{-\varepsilon}\right]
=\frac1{2\varepsilon^2}-\frac{13}{24}+O(\varepsilon).
\tag{2.7}
\]

Subtracting exactly the displayed divergence leaves −13/24. Spectral zeta gives the same finite assignment, [ζ(−1)−1]/2=−13/24. Thus this specified prescription yields

\[
\boxed{Z_{\rm Weyl,heat}=q^{-(C+13)/24}P(q).}
\tag{2.8}
\]

A hard cutoff with only N²/4+N/4 subtracted instead leaves −1/2. Matching (2.7) requires an additional finite subtraction 1/24. Adding any specified finite vacuum counterterm changes that finite part without changing P(q).

Equation (2.8) is an exact renormalized Gaussian answer in the stated subtraction scheme. Interpreting its exponent as a quantum central charge requires the **additional** conformal Ward identification H_cyl=L_0−c/24 with a projectively invariant vacuum. Oscillator frequencies and a rotational trace alone do not prove this identification or construct all the L_m.

### 2.2 A nonlinear exact submanifold, and two limits of cutoff arguments

The full Hamiltonian is not quadratic in Fourier coordinates:

\[
H_1=\frac C{24}\left\langle\frac{u''^2}{(1+u')^2}-u'^2\right\rangle,
\qquad
u=A\sin2x+B\sin4x
\ \Longrightarrow\ 
H_1=\frac C4A^2+5CB^2-4CA^2B+O(4).
\tag{2.9}
\]

Nevertheless an exact nonlinear map can be proved on the rotation-invariant surface f=x+r cos(nx−φ), n≥2, 0≤r<1/n. Its pullbacks are

\[
H_n(r)=\frac C{24}\left[n^2\left((1-n^2r^2)^{-1/2}-1\right)-\frac{n^2r^2}{2}\right],
\qquad \Omega_n=-\frac1n\,dH_n\wedge d\varphi.
\tag{2.10}
\]

The angular integral giving H_n is ⟨s²cos²y/(1−s sin y)²⟩=(1−s²)^{−1/2}−1, s=nr. Since H′_n>0 for r>0 and H_n tends from zero to infinity, the smooth map

\[
a=\sqrt{H_n/n}\,e^{i\varphi},\qquad
\Omega_n=i\,d\bar a\wedge da,\qquad H_n=n|a|^2
\tag{2.11}
\]

is a global symplectomorphism from this open disk to an oscillator plane. Smoothness at the origin follows from H_n/n=d_n r²/4+O(r⁴). The disk injects into the projective quotient: a projective map relating two representatives must commute with their order-n rigid rotation, hence itself be a rigid rotation; their zero-mean displacement removes that freedom. This gives an exact quantization after **pulling back the oscillator polarization and ordering**, not an exact quantization of the entire orbit or its originally selected polarization. The full Virasoro action does not preserve this surface. The [independent derivation and contour check](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/independent_quantum_benchmark.md#L351-L405>) supply details.

Two further finite tests prevent overextending (2.5). First, the Weyl lift has exp(−2πiH_1)=(-1)^{∑_{n=2}^N n}, already −1 at N=3: an honest rotation-group lift is not automatic. Second, keeping Witt labels |m|≤N while discarding brackets outside that range gives

\[
[L_N,[L_1,L_{-1}]]+[L_1,[L_{-1},L_N]]+[L_{-1},[L_N,L_1]]
=(N-1)(N+2)L_N\ne0.
\tag{2.12}
\]

The missing intermediate L_{N+1} is essential. A finite oscillator regulator cannot simply be declared fully Virasoro invariant.

## 3. A constant vacuum shift is not a central-charge shift

Let genuine quantum Virasoro generators obey the vacuum-subtracted convention

\[
[L_m,L_n]=(m-n)L_{m+n}
+\frac c{12}m(m^2-1)\delta_{m+n,0}.
\tag{3.1}
\]

If only L_0 is replaced by L_0+aI, the central term becomes

\[
\frac c{12}m(m^2-1)-2am.
\tag{3.2}
\]

The cubic coefficient is unchanged; the change is a coboundary. Requiring the same projective vacuum normalization already forces a=0 by the m=1 bracket. Thus one cannot establish c→c+13 merely by adding a vacuum-energy constant to an otherwise unchanged quantum moment map.

In cylinder generators ℓ_m=L_m−(c/24)δ_{m0}, (3.1) instead has central term cm³/12. This is a convention change within the **same** representation. Changing the actual cubic cocycle requires new quantum-moment-map, determinant-line, or action-renormalization data.

## 4. Polarized determinant cocycle and the projective-mode trap

This section is an exact algebraic calculation, independent of a divergent oscillator vacuum sum.

Let V be the Laurent vector-field module with basis e_j, j∈Z. In Witt conventions [l_m,l_n]=(m−n)l_{m+n}, its adjoint matrices are

\[
\rho_m e_j=(m-j)e_{m+j}.
\]

Let P_r project onto j≥r, for an integer r. For finite Fourier generators define

\[
\sigma_r(m,n)=\operatorname{Tr}
\bigl(P_r\rho_m(1-P_r)\rho_nP_r
-P_r\rho_n(1-P_r)\rho_mP_r\bigr).
\tag{4.1}
\]

Every crossing in (4.1) has finite rank. For m>0, n=−m, the first trace is the finite sum

\[
\sum_{j=r}^{r+m-1}(-m-j)(2m-j).
\]

The trace vanishes for m+n≠0; negative m follows by antisymmetry, and m=0 is zero. Faulhaber summation proves

\[
\boxed{\sigma_r(m,n)=\delta_{m+n,0}
\left[-\frac{13}{6}m^3+
\left(r^2-r+\frac16\right)m\right].}
\tag{4.2}
\]

Its cocycle identity follows either from finite-rank trace cyclicity or by substituting the polynomial into the Witt Jacobi identity. Changing r alters only the linear term. In particular

\[
\sigma_{-1}=\sigma_2=-\frac{26}{12}m(m^2-1)\delta_{m+n,0}.
\tag{4.3}
\]

More generally, for the tensor-density action ρ_m e_j=−(j+λm)e_{m+j}, the cubic coefficient is −(6λ²−6λ+1)/6. This independently checks that the number in (4.2) is tied to the adjoint-vector-field module, not to an arbitrary mode cutoff.

### 4.1 What a dual half determinant would contribute

In the occupied-polarization commutator convention (4.1), the determinant anomaly has c_det=−26. **If** the quantization includes the dual square root of this determinant anomaly, its infinitesimal contribution is

\[
-\tfrac12\sigma_{-1}
=\frac{13}{12}m(m^2-1)\delta_{m+n,0}.
\tag{4.4}
\]

This is a concrete route to Δc=13, conditional on identifying and selecting that line. The geometric identification is now supplied for the relative Fredholm prescription below; its selection by a gravitational measure is not. A polarized determinant is not the symmetric divergence of the real Liouville measure. Nor should the matching −13/24 cylinder vacuum-energy shift be added again as a second correction.

For the **specified splitting model** P_g=U_g P U_g^{-1}, the projection connection gives Tr F=−σ, opposite to the occupied-sea commutator. Neither P_{−1} nor P_2 commutes with all of sl₂, so this conjugated splitting need not descend to the projective quotient. Its sign check alone is not an intrinsic tangent Chern-curvature or determinant-functor proof.

The projective geometry is important. The subspace W_{−1}=span{e_j:j≥−1} is invariant under h=sl₂, and h⊂W_{−1}; the polarized tangent quotient is W_{−1}/h. The adjoint determinant on the finite-dimensional h is trivial under PSL. W_2 represents the quotient as a vector space but is **not** invariant under the full unprojected h action: ρ_{−1}e_2=−3e_1. Equality of (4.3) is compatible with this finite determinant factor; it does not turn g/h into a representation of all g.

**Analytic follow-ups:** the [curvature/global-model report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md>) proves ordinary Tr R(e_m,e_{−m})=13m(m²−1)/6, arbitrary smooth-smearing control and the relative global root. The [relative Fredholm report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>) then constructs the actual holomorphic tangent quotient by modes j≤1, an induced trace-class determinant connection in admissible frames, and the critical H^{3/2} determinant metric. It identifies these actual data and the PSL lift with L₋₂₆ and its dual half L₁₃. The intrinsic pair convention is equivalently (extension c, line weight)=(26,+1), versus model (−26,−1). The natural unweighted L² projection connection remains different. Continuum Hilbert pairing, operator domains and the gravitational measure/physical central-charge identification are still additional inputs; contractibility or the algebraic cocycle alone would not have supplied this construction.

### 4.2 A concrete incorrect shortcut

Let Q delete e_{−1},e_0,e_1 and compress the matrices to Qρ_mQ. Then

\[
[Q\rho_2Q,Q\rho_{-2}Q]e_2=0,
\qquad 4Q\rho_0Qe_2=-8e_2.
\tag{4.5}
\]

The compressed matrices are not a Witt representation. If their positive/negative crossing trace is nevertheless called a cocycle, its diagonal values include τ(2,−2)=τ(3,−3)=0 and τ(5,−5)=−112. The cocycle Jacobi expression for (2,3,−5) is then **112**, not zero. Projective gauge removal and construction of an equivariant determinant cannot be interchanged in this naive way.

The [parent exact implementation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_polarized_determinant.py>) checks the general polynomial, 2,904 finite-band matrix comparisons, (4.5), and this Jacobi counterexample. Its [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_polarized_determinant.results.json>) records fourteen labeled checks, not 2,904 independent global theorems.

## 5. Independently specified metric one-loop prescription

Use the complete Euclidean thermal-AdS saddle with fixed conformal boundary source, de Donder gauge, proper vector ghosts, and the conventional imaginary contour for the conformal trace mode. A standard Gaussian operator expression is

\[
Z_{\rm grav}^{(1)}=
\left[\frac{\det{}'_{1,T}(-\nabla^2+2)}
{\det{}'_{2,TT}(-\nabla^2-2)}\right]^{1/2}.
\tag{5.1}
\]

This uses the specified complete-manifold L² spectral domain, quotient images, and a zero-mode/gauge-volume normalization fixed **within this metric prescription**. The normalizable metric/proper-ghost domains and absence of additional collective-coordinate factors are adopted as part of that prescription. These kernels do not prove equivalence to every Brown–Henneaux boundary-domain completion or to an orbit measure. Large Brown–Henneaux transformations are not included in the ghost quotient.

Writing Δ_s=−∇² on rank-s fields, the unreduced de Donder ratio is

\[
\frac{\det{}_1(\Delta_1+2)}
{[\det{}_{2,ST}(\Delta_2-2)\det{}_0(\Delta_0+4)]^{1/2}}.
\tag{5.1a}
\]

Here ST means symmetric traceless, not transverse traceless; the numerator is a complex vector ghost and the scalar is the rotated conformal trace. Reduction to (5.1) uses matched York/ghost domains and induced Jacobians, including their longitudinal/scalar cancellations. It is not obtained merely by applying the classical CPS symplectomorphism to a formal symbol Dg.

The explicit heat kernels in [Giombi–Maloney–Yin, arXiv:0804.1773v1](https://arxiv.org/abs/0804.1773v1), PDF pp. 11, 16, 21–22 / printed pp. 10, 15, 20–21, supply this named metric prescription. The actual relevant pages were visually inspected. The nonidentity images give

\[
\log Z_{\ne0}^{(1)}=
\sum_{s=1}^{\infty}\frac1s
\left(\frac{q^{2s}}{1-q^s}+\frac{\bar q^{2s}}{1-\bar q^s}\right)
=-\sum_{n=2}^{\infty}\log|1-q^n|^2.
\tag{5.2}
\]

The conversion to the product uses absolutely convergent geometric series for |q|<1. Equivalently, the proper-time integral per image has the form ∫₀∞t^{−3/2}exp(−a²/4t−b²t)dt=(2√π/a)exp(−ab), with a,b>0. This explicitly matches the two-chiral nonlocal oscillator factor.

The same source separately gives the identity-image contribution to **log Z**, not to −log Z:

\[
\log Z_{\rm id}^{(1)}=
\frac{\operatorname{Vol}}{(4\pi)^{3/2}}
\int_0^\infty t^{-5/2}
\bigl[e^{-t}(1+8t)-e^{-4t}(1+2t)\bigr]dt.
\tag{5.3}
\]

Analytic continuation of the Gamma functions assigns

\[
\frac{\log Z_{\rm id}^{(1)}}{\operatorname{Vol}}
=\frac{\Gamma(-3/2)(1-8)+\Gamma(-1/2)(8-4)}{(4\pi)^{3/2}}
=-\frac{13}{6\pi}.
\tag{5.4}
\]

With the standard thermal-AdS renormalized volume Vol_ren=−π² Im τ=−πβ/2, this gives log Z_id=13β/12, or |q|^{−13/12}. The thermal-product calculation in that paper explicitly **omits** the volume term below (4.22), whereas (3.8) records its analytic finite part.

Define **AC** to mean the proper-time analytic continuation in (5.4), the stated geodesic-cutoff renormalized volume, and **no additional finite local term**. Define **omit** to mean dropping the identity image before proper-time integration. Including the same tree coefficient C, the two one-loop conventions are

\[
Z_{\rm metric,omit}=|q|^{-C/12}|P(q)|^2,
\qquad
Z_{\rm metric,AC}=|q|^{-(C+13)/12}|P(q)|^2.
\tag{5.5}
\]

The latter agrees with (2.8) times its conjugate at this saddle. This is a genuine regulated one-loop comparison, but equality of one partition function does not prove equality of the underlying gauge-fixed measures or all source-dependent observables.

A finite redefinition at fixed physical theory may move this local term between the reference coupling and loop remainder:

\[
c=\frac{3\ell}{2G_R}+\Delta c,
\qquad
\frac1{G'_R}=\frac1{G_R}+\frac{2\sigma}{3\ell},
\qquad \Delta c'=\Delta c-\sigma.
\tag{5.6}
\]

The counterterm must accompany the complete Einstein/GHY/asymptotic boundary prescription and the coupling redefinition. Adding that action term while holding the defining coupling fixed changes the theory. Nor is (5.6) an assertion that an intrinsic two-dimensional counterterm can erase a fixed physical Weyl anomaly. The invariant object is the measured c, not the arbitrary split in (5.6).

## 6. What the Cotler–Jensen source actually fixes

The audited version is [Cotler–Jensen, arXiv:1808.03263v3](https://arxiv.org/abs/1808.03263v3), 20 September 2018. A symplectic/chiral convention conversion is necessary. The source writes ω_CJ=dα_CJ but S_CJ=−∫(α_CJ·ẋ+H)dt; therefore its action-derived CPS form is **Ω_CPS,CJ=−ω_CJ**, and its Hamiltonian vector satisfies i_vω_CJ=+dH. Under the reflection R: θ=−x, φ(θ)=−f(−θ),

\[
R^*\omega_{\rm CJ}=-\Omega_f,\qquad
R^*\Omega_{\rm CPS,CJ}=\Omega_f,\qquad H_{\rm CJ}\circ R=H_{\rm cyl}.
\tag{6.0}
\]

The Hamiltonian identity in (6.0) is at the **classical/bare-action level**, with H_cyl[f=x]=−C/24, not a regulator-independent quantum-operator identity. The source flow −∂_θ corresponds to our +∂_x; at the vacuum ε_n=−u_{−n}, so positive-energy annihilators map correctly. If τ_x specifies the geometric torus (x,y)∼(x+2π Re τ_x,y+2π Im τ_x), the reflected source modulus is τ_s=−bar τ_x, hence q_s=bar q_x. The source's holomorphic block is therefore the opposite geometric chirality in x. Section 2 uses q as an abstract positive-energy fugacity; the two-chiral metric product in §5 is invariant under this exchange. Single-chiral comparisons at nonzero angular potential must retain this conversion, not identify both geometric moduli by symbol alone.

Its PDF pp. 23–24 / printed pp. 22–23, (3.32)–(3.34), displays the orbit action and formal reduction of Haar measure to ∏dF/F′=∏dφ/φ′. PDF pp. 47–48 / printed pp. 46–47, (5.48)–(5.49), identifies the phase-space Pfaffian prescription and cites the further measure-equivalence argument. This is specific quantum input, not a consequence of the classical KKS form alone.

Its determinant removes the spatial modes 0,±1 at every temporal Fourier frequency. PDF pp. 42–43 / printed pp. 41–42, (5.17)–(5.23), then gives the convergent/zero-point split leading to (2.8). The sphere calculation, PDF pp. 34–35 / printed pp. 33–34, (3.102)–(3.108), maps to that same long-torus determinant and supports the one-loop Weyl-anomaly interpretation; it is not an independent calibration of the Newton coupling.

The exact stress two-point computation in §5.4 is for the **normal Diff/U(1) orbit**, yielding its own c=C+1 result. PDF p. 48 explicitly states that the PSL exceptional theory remains nonfree because its quotient is nonlinear. That calculation must not be cited as an independently computed exact vacuum-orbit TT correlator.

There is also a source normalization trap. The defining equations say C=24k_intro on PDF p. 5 and C=6k_§3 on PDF p. 23, hence

\[
k_{\S3}=4k_{\rm intro}=\frac{\ell}{4G}.
\tag{6.1}
\]

Here k_intro is the **bare action parameter C/24 on PDF p. 5**, not the character parameter k_χ=c/24 in source (1.1) on PDF p. 3. Under the source's vacuum claim, k_χ=k_intro+13/24. Footnote 3 on PDF p. 20 prints the reversed relation between the bare action and CS levels. Equation (6.1), not that isolated sentence, is the consistent conversion. No conclusion here rests on equating the overloaded symbols k without this mapping.

### 6.1 Printed localization defect and an explicit repair

The source's (5.38)–(5.44), PDF pp. 46–47 / printed pp. 45–46, defines

\[
Qx^i=\psi^i,\qquad Q\psi^i=v^i-i\dot x^i=:V_-^i,
\qquad Q^2=\delta_v-i\partial_y,
\tag{6.2}
\]

for a real Hamiltonian vector v and an invariant positive metric g. Its printed bosonic deformation is g(V_−,V_−), with no conjugation. It is **not positive on real loops**. For a real oscillator-plane loop with g_ij=δ_ij, x=(a cos(2πy/β),0), v=ω(−x²,x¹),

\[
\int_0^\beta g(V_-,V_-)dy
=\frac{a^2\beta}{2}\left(\omega^2-\frac{4\pi^2}{\beta^2}\right),
\tag{6.3}
\]

which is negative at sufficiently high loop frequency, even for a confining Hamiltonian.

A constructive repair is

\[
\Psi_+=\int_0^\beta g_{ij}(x)(v^i+i\dot x^i)\psi^jdy.
\tag{6.4}
\]

Since Q²Ψ_+=∫(L_v g)_{ij}(v^i+iẋ^i)ψ^jdy−i∫∂_y[g_{ij}(v^i+iẋ^i)ψ^j]dy, it vanishes when L_vg=0 and the boundary term is periodic. Meanwhile

\[
(Q\Psi_+)_{\rm bos}=\int_0^\beta
\bigl[g(v,v)+g(\dot x,\dot x)\bigr]dy\ge0.
\tag{6.5}
\]

Thus the finite-dimensional local supersymmetry algebra has a Q-closed, Q-exact positive deformation with zero locus constant Hamiltonian fixed points. A real isometric twist commuting with v preserves the integrated boundary identity. The [parent verification](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/localization_positive_deformation.wl>) checks arbitrary metric first jets, the complete Q² identity, and the explicit oscillator loop; all five [actual checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/localization_positive_deformation.results.json>) pass.

The full fermionic term in QΨ_+ is g_{ij}[(∇_kv^i)ψ^k+iD_yψ^i]ψ^j, where ∇ and D_y use the Levi–Civita connection of g. At an isolated fixed point write v=Aξ+O(ξ²), A^T=−A in orthonormal coordinates. Keeping the Grassmann ordering gives

\[
M=-A^2-\partial_y^2,
\qquad K=-A-i\partial_y,
\qquad M=(A-i\partial_y)K.
\tag{6.6}
\]

With the same finite paired-mode cutoff and Pfaffian orientation, Pf K/√det M leaves det(A−i∂_y)^{−1/2}, the original first-order fluctuation operator. For source coordinates and real twist α_s=2π Re τ_s, β=2π Im τ_s, one has φ(θ,y+β)=φ(θ−α_s,y). On e^{inθ+iνy},

\[
A=-\partial_\theta,\qquad
\nu=\frac{2\pi m-n\alpha_s}{\beta},\qquad
A-i\partial_y\longmapsto\frac{m-n\tau_s}{\operatorname{Im}\tau_s}.
\tag{6.7}
\]

The bosonic eigenvalue ν²+n² is positive on the reduced physical modes. A constant reduced fixed point can have the twisted representative φ_0=θ−(Re τ_s/Im τ_s)y; the twist lift retains the classical q_s^{−C/24} phase. This is consistent with (6.0), not a reversal of the physical time direction. The [separate supplied-proof audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/localizer-repair-addendum.md>) independently checks the proposed repair's derivatives, Grassmann signs, real twist, and actual quadratic operator. It is not presented as a repair printed in the source or as an independent rediscovery of the proposal.

This repairs the stated positivity step and its quadratic cancellation, not the entire infinite-dimensional proof. A Q-invariant regulated measure, compatible contours and gauge quotient, no boundary contributions from noncompact field space, consistent determinant phases, and control of the regulator/localization limits remain necessary. The source's all-orders exactness is therefore distinguished from the directly reproduced one-loop determinant and the conditional localization mechanism. The printed defect is not a counterexample to the final character.

## 7. A genuine representation-level equivalence theorem

Consider two Hilbert representations with normalized vacua, L_n†=L_{−n}, the same labeled algebra (3.1), L_n|0⟩=0 for n≥−1, and dense finite-descendant cores. Null vectors are quotiented in the positive semidefinite vacuum form. Assume the two unitary positive-energy representations exist; this theorem is not an existence theorem for a bulk path integral.

**Theorem.** A unitary preserving the vacuum and all labeled Virasoro generators exists on these cores **if and only if c₁=c₂**. It is unique with the stated vacuum normalization.

Necessity already follows from

\[
\|L_{-2}|0\rangle\|^2=\frac c2.
\tag{7.1}
\]

For sufficiency define

\[
U\bigl(L_{-n_1}^{(1)}\cdots L_{-n_s}^{(1)}|0\rangle_1\bigr)
=L_{-n_1}^{(2)}\cdots L_{-n_s}^{(2)}|0\rangle_2,
\quad n_j\ge2.
\tag{7.2}
\]

Move every positive generator in an inner product to the right using (3.1). The result is a polynomial in c determined solely by the word and vacuum conditions. Equal c therefore gives equal Gram forms at every level, the same null radical, and a well-defined isometry of the quotients. Cyclicity makes its range dense; completion gives a unitary. The same commutation calculation intertwines every L_n on the core. This also transports their closures when the specified closed operators are the closures of these cores; arbitrary extra extensions or domains are not silently included. Uniqueness follows from cyclicity.

The closure statement can be made explicit. Write the Hilbert space as ⊕_{k≥0}H_k with finite-dimensional energy levels, and let T_{n,k}:H_k→H_{k−n} be the core action, zero for negative target levels. Then

\[
D(\overline L_n)=\left\{v=\bigoplus_kv_k:
\sum_k\|T_{n,k}v_k\|^2<\infty\right\}.
\tag{7.2a}
\]

Finite-level truncations converge in graph norm, and blockwise adjointness gives \((\overline L_n)^*=\overline L_{-n}\). If the stated adjoint relation means literal Hilbert adjoints, these block domains fix the closed realization; merely formal core adjointness does not authorize arbitrary extensions. This proves individual-mode closure transport, not integration of every infinite smearing or a global group representation.

For example, in the level-four basis (L_{−4}|0⟩,L_{−2}²|0⟩),

\[
G_4=\begin{pmatrix}5c&3c\\3c&c(c+8)/2\end{pmatrix},
\qquad\det G_4=\frac{c^2}{2}(5c+22).
\tag{7.3}
\]

This illustrates why equal counting does not mean equal stress normalization. The proof of (7.2) is all-level algebraic, not an extrapolation from a finite Gram matrix.

When the vacuum module has no nulls beyond the projective vacuum relation, its descendant character is P(q), independent of c. Extra nulls change that character and must be retained; no generic-character formula is imposed on minimal models.

### 7.1 A source-sensitive observable beyond the character

Let Z₀(q)=Tr q^{L₀}, and use normalized expectations for 0<q<1. The identities also hold as formal graded series and extend to |q|<1 wherever Z₀(q)≠0. Finite energy blocks and (3.1) give

\[
\boxed{\langle L_nL_{-n}\rangle_q
=\frac{2nq\partial_q\log Z_0(q)+\frac c{12}n(n^2-1)}{1-q^n},
\qquad n\ge2.}
\tag{7.4}
\]

A precise derivation avoids informal cyclicity of unbounded operators. Write F_n(q)=∑_k q^k Tr_{\mathcal H_k}(L_nL_{−n}). The rectangular maps between finite-dimensional levels give Tr_{\mathcal H_k}(L_{−n}L_n)=Tr_{\mathcal H_{k-n}}(L_nL_{−n}). Thus their generating function is q^nF_n. Taking the block trace of the commutator proves (1−q^n)F_n=2nq∂_qZ₀+[c n(n²−1)/12]Z₀ coefficientwise. Negative-level traces are zero. The bound dim H_k≤p(k), where p(k) is the integer partition number, together with this recurrence and positivity of the diagonal traces, guarantees absolute convergence of the energy-weighted series for |q|<1. Normalized complex expectations still require Z₀(q)≠0; q∂_q log Z₀ means qZ₀′/Z₀ and requires no global logarithm.

It follows that

\[
\mathcal C_n(q):=\frac{12}{n(n^2-1)}
\left[(1-q^n)\langle L_nL_{-n}\rangle_q
-2nq\partial_q\log Z_0(q)\right]=c.
\tag{7.5}
\]

This is an explicit quantum comparison target. Two generic vacuum representations can have identical P(q) yet differ in (7.4) by (c₁−c₂)n(n²−1)/[12(1−q^n)]. For a cylinder trace Z_cyl=q^{−c/24}Z₀, replace q∂_q log Z₀ by q∂_q log Z_cyl+c/24; the numerator then contains cn³/12. These are the same Ward identity in different zero-mode conventions.

Matching the actual c and the vacuum module yields the explicit boundary-representation intertwiner (7.2). It still does not identify Wilson-line sectors, other saddles, or off-shell metric/CS functional measures.

## 8. Classical smoothness does not ensure Fock implementability

On the rapidly decreasing sequence space of (2.2), consider bounded real r_n and the real symplectic map

\[
b_n=\cosh r_n\,a_n+\sinh r_n\,\bar a_n.
\tag{8.1}
\]

It and its inverse preserve the smooth sequence space. At each finite N it has a unitary metaplectic implementer. In the ordinary a-Fock completion, however, a simultaneous normalized b-vacuum exists exactly when

\[
\boxed{\sum_{n\ge2}\sinh^2r_n<\infty.}
\tag{8.2}
\]

For bounded r_n this is equivalent to ∑r_n²<∞. The one-mode normalized solution is

\[
|0_b\rangle_n=(\cosh r_n)^{-1/2}
\exp\left[-\tfrac12\tanh r_n(a_n^\dagger)^2\right]|0_a\rangle_n.
\tag{8.3}
\]

Finite products are Cauchy precisely under (8.2), giving the infinite implementer. Conversely, if the tail product vanishes, any vector annihilated by all b_n has zero overlap with every finite-particle cylinder vector, by imposing the finitely many tail annihilation equations and using their normalized squeezed solution. These cylinder vectors are dense, so the supposed vector is zero. Merely observing zero overlap with the original vacuum would not prove this necessity.

For constant nonzero r, the map is classically smooth but fails (8.2). For the decaying family r_n=n^{−p}, p>0, it is implementable exactly for p>1/2. Let H_a=∑_{n≥2}n a_n†a_n denote the positive original normal-ordered Hamiltonian. The squeezed vacuum has finite mean energy, equivalently lies in D(H_a^{1/2}), exactly when ∑n sinh²r_n<∞ (p>1); it lies in D(H_a) exactly when ∑n²sinh²r_n cosh²r_n<∞ (p>3/2). Unitary existence alone does not settle Hamiltonian domains.

In this real diagonal squeeze family, the squeeze map commutes with the **same original** rotation flow only for r_n=0 mode by mode: positive and negative frequencies otherwise mix. Defining ∑n b_n†b_n as a different Hamiltonian does not meet that requirement. Moreover, the original flow, expressed in the b variables, is

\[
b_n(t)=\bigl[\cos nt-i\cosh(2r_n)\sin nt\bigr]b_n
+i\sinh(2r_n)\sin nt\,b_n^\dagger.
\tag{8.4}
\]

It has a fixed-time implementer in abstract b-Fock exactly when ∑sinh²(2r_n)sin²(nt)<∞. If r∉ℓ², this holds only on a set of times of measure zero: on any positive-measure set of bounded partial sums, integrating and using ∫_E sin²(nt)dt→|E|/2 would force summability. For constant nonzero r the allowed times are exactly πZ, so no full strongly continuous original rotation group exists. The [independent proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-transport-20261031T020608-8fd72c-report.md#L89-L213>) also proves strong convergence of both finite implementers and their adjoints when (8.2) holds. Thus the counterexample exposes a missing polarization/dynamics condition; it does not refute equivalence once compatible positive-energy dynamics and all quantum data have actually been matched.

## 9. Scope of quantum transport and the next missing map

A useful sufficient transport statement can now be made precise, restoring ℏ. First take smooth finite-dimensional symplectic manifolds P_i of equal dimension 2d. Suppose an onto symplectomorphism Φ:P₁→P₂ has a Hermitian prequantum lift preserving the connections, written locally in chosen unitary trivializations as ∇_i=d−iΘ_i/ℏ, with curvature −iΩ_i/ℏ. For i_XfΩ=−df and {f,g}=X_g f the operator is

\[
\widehat f_{\rm pre}=-i\hbar\nabla_{X_f}+f.
\tag{9.0a}
\]

Indeed \([X_f,X_g]=-X_{\{f,g\}}\) and \(\Omega(X_f,X_g)=-\{f,g\}\); inserting the curvature gives \([\widehat f_{\rm pre},\widehat g_{\rm pre}]=i\hbar\widehat{\{f,g\}}_{\rm pre}\). Where global unitary trivializations exist and Φ*Θ₂=Θ₁+dF with real global F, the **forward fiber lift** is (x,z)↦(Φx,e^{iF(x)/ℏ}z), whereas the induced **section pullback**, H₂→H₁, is

\[
Us_2=e^{-iF/\hbar}\Phi^*s_2,\qquad
\widehat{f_2\circ\Phi}^{(1)}U=U\widehat{f_2}^{(2)}.
\tag{9.0b}
\]

Intrinsically \((Us_2)(x)=\widetilde\Phi_x^{-1}s_2(\Phi x)\); Φ*s₂ in (9.0b) denotes only the coefficient/base pullback in the chosen trivializations, before applying the inverse fiber phase. This is a connection calculation, not a choice of arbitrary phase. Globally, existence of the lift means the flat difference L₁*⊗Φ*L₂ has trivial holonomy. Trivial line bundles alone do not make the closed difference of potentials exact; periods in 2πℏZ permit a circle-valued phase even without a real global F. On T*S¹ with q of period 2π and Θ=p dq, the symplectic translation p↦p+η has a lift exactly when η/ℏ∈Z; the nonintegral case is an explicit obstruction.

Assume additionally that Φ maps the involutive Lagrangian polarizations, any selected square roots of their canonical lines, and the positive Hilbert pairing. For polarization-preserving observables, add the half-form term −iℏℒ^{half}_{X_f} when appropriate; its naturality gives the same intertwining. The total pullback then includes the half-form Jacobian as well as the phase in (9.0b). A bijection of dense polarized test spaces with equal pairings extends to a unitary. Specified unbounded operators must have transported common cores and closures, or explicitly transported extensions/boundary conditions. For real observables, assume essential self-adjointness on transported invariant cores, or choose self-adjoint extensions with transported domains; formal differential expressions alone do not ensure this. Real-polarized sections may require a quotient/distributional pairing, not full-phase-space L². Non-polarization-preserving observables require a separately matched projection/BKS prescription.

As a sign test, Θ=p dq gives Ω=dp∧dq, Q_pre(p)=−iℏ∂_q and Q_pre(q)=q+iℏ∂_p. Vertical polarization yields the usual Schrödinger pair. The shear (q,p)↦(q,p+aq) has F=aq²/2 and U=e^{−iaq²/(2ℏ)}, for which (−iℏ∂_q+aq)U=U(−iℏ∂_q).

The [fresh prequantum derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/fresh-prequantum-transport-20261031-34d308546fc5/fresh-prequantum-transport-review.md>) supplies the proof and archived general-commutator/phase/shear checks. These are sufficient transport hypotheses, not an existence proof for an infinite-dimensional measure or determinant line. Formal Liouville volume is insufficient. If Φ does not preserve polarization, a further implementability theorem such as (8.2), not just a classical Darboux theorem, is required.

For the gravity benchmark, this report proves the conditional representation map (7.2), computes explicitly named Gaussian prescriptions, and identifies an algebraic determinant-line correction. It does **not** construct the required off-shell measure correspondence

\[
(Dg\,D\bar c\,Dc)_{\rm metric,ren}
\longrightarrow
(Df\,\operatorname{Pf}\Omega)_{\rm orbit,ren}
\tag{9.1}
\]

with matched proper-ghost domains, source dependence, regulators, finite counterterms, determinant-line phase, and all Ward identities. Agreement of (5.5) with (2.8) is one necessary check of such a construction, not its proof.

The most discriminating next finite calculation is a **source-dependent one-loop comparison**, not another evaluation of ∑n: construct the proper-ghost boundary problem and measure Jacobian sufficiently to compare the stress two-point/Ward normalization (7.5), including the projective determinant data. The [relative Fredholm construction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>) now realizes the selected dual-half cocycle by an actual compatible geometric line, metric, connection and lift. It does not establish that the gravitational reduction selects this line, or supply the continuum Hilbert pairing and nonlinear operator domains.

## Verification boundary

**Verified:** explicit Gaussian normalization and regulator comparisons; finite-crossing cocycle and the compressed-isotropy counterexample; local positivity repair; all-level representation-intertwiner argument and thermal Ward identity; diagonal squeeze criterion; named one-loop heat-kernel/source comparisons.

**Assumptions:** nondegenerate complete classical vacuum sector already fixed; positive C; specified polarizations and finite prescriptions; one thermal-AdS saddle; the named heat-kernel spectral/contour/gauge normalization; existence and cyclicity of the unitary vacuum representations when the representation theorem is used.

**Not established:** regulator-independent bulk-to-orbit quantum measure equivalence; an independently calibrated c(G_physical) relation; the completed continuum Hilbert pairing and nonlinear quantum operators; an unconditional infinite-dimensional localization theorem; modular completion or other gravity sectors. The [relative Fredholm follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>) now identifies the actual selected tangent determinant/dual half, line metric, Chern connection and projective lift. This removes that specific geometric limitation, not the physical measure-selection or quantum-representation limitations.
