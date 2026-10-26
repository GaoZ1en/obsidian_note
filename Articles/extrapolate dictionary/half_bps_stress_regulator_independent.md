# Independent distinction between external Wightman shifts and retarded limiting absorption

## 1. Result and scope

**External complex-coordinate shifts and retarded complex-frequency shifts are different operations.** The specified combined gravitational kernel has a genuine external Wightman-tube regularization, with an elementary strong distributional limit and a uniform linear rate in the imaginary-time gaps. This statement does not identify that kernel with a separately defined vacuum contour or Abel-regulated all-insertion calculation: possible edge-supported distributions receive the same external damping.

The formulas with \(A^2=a^2+2i\epsilon p^0-\epsilon^2\) and \(T^2=\tau^2-2i\epsilon k^0-\epsilon^2\) in the [independent timelike report:219–251](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent.md#L219-L251>) are **frequency-shifted radial resolvents**. They are not the momentum representation of external coordinate shifts. Their local estimates can remain useful under that corrected interpretation. The [main report:350–375](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md#L350-L375>) already uses the more precise term “radial limiting absorption,” but “genuinely time-shifted gravitational contour” is ambiguous unless the contour family is separately defined.

No existing file was edited. No compact-square or cube identities were recalculated here.

## 2. Exact operations and their relation

Use the existing convention
\[
W(x_1,x_2,x_3)=\int d\nu(p)d\nu(q)\,
 e^{-ip\cdot(x_1-x_2)+iq\cdot(x_3-x_2)}\widetilde W(p,q),
\quad p\cdot x=p^0t-\mathbf p\cdot\mathbf x,
\quad d\nu(p)=\frac{d^4p}{(2\pi)^4}.
\]
The spectral support is \(\overline V_+\times\overline V_+\). For the ordering \(\langle T(x_1)U(x_2)U(x_3)\rangle\), set
\[
t_j\mapsto t_j-i\eta_j,\qquad \eta_1>\eta_2>\eta_3,
\qquad d_1=\eta_1-\eta_2>0,\quad d_2=\eta_2-\eta_3>0.
\]
Then exactly
\[
\boxed{\widetilde W_{d_1,d_2}(p,q)
 =e^{-d_1p^0-d_2q^0}\widetilde W(p,q).}
\tag{1}
\]
Equivalently, after translation to \(x_2=0\), the first relative time shifts downward and the last upward. All real momenta, radial masses, spectral indicators, and tensor projectors in \(\widetilde W\) remain unchanged. At finite ordered gaps, sufficiently polynomially bounded spectral kernels have an absolutely convergent Fourier–Laplace representation; the general primitive tube allows future-timelike imaginary differences as well.

By contrast, if
\[
\widehat R_{\rm ret}(\omega)=\int_{\mathbb R}dt\,e^{i\omega t}R_{\rm ret}(t),
\qquad \operatorname{supp}R_{\rm ret}\subseteq\{t\ge0\},
\]
then
\[
\boxed{\widehat R_{\rm ret}(\omega+i\epsilon)
 =\mathcal F_t[e^{-\epsilon t}R_{\rm ret}(t)](\omega),\qquad \epsilon>0.}
\tag{2}
\]
Thus \(\epsilon\) damps a **real elapsed time**, whereas \(d_j\) damps a **real positive energy**. Their physical dimensions are inverse to each other. Neither operation is obtained from the other by renaming the regulator.

For example, \(R_{\rm ret}(t)=-\theta(t)\sin(\Omega t)/\Omega\) gives
\[
\widehat R_{\rm ret}(\omega+i\epsilon)
 =\frac1{(\omega+i\epsilon)^2-\Omega^2},
\]
whereas the oscillator vacuum two-point function gives
\[
W(t-id)=\frac{e^{-i\Omega t-d\Omega}}{2\Omega}.
\]
The first changes the resolvent denominator; the second leaves the spectral frequency fixed and multiplies its weight.

### Spectral relation, not equality of regulators

The [scalar prescription:61–112](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman.md#L61-L112>) relates the two objects by
\[
R_{\rm ret}=-\frac{i}{C_0}\theta(t)[U_0,U_0],\qquad C_0=2\pi^2.
\]
In the BF radial spectral representation this becomes
\[
\mathscr R_{r^0+i\epsilon}(z,u)
 =\int_0^\infty \frac{\mu\,d\mu\,J_0(\mu z)J_0(\mu u)}
 {(r^0+i\epsilon)^2-|\mathbf r|^2-\mu^2}.
\tag{3}
\]
This is a kernel/distribution identity, with radial smearing when necessary. Its timelike boundary value has imaginary part
\(-\frac\pi2\operatorname{sgn}(r^0)J_0(mz)J_0(mu)\), matching the stated retarded inverse. The Wightman spectrum determines the retarded resolvent by a dispersive transform; external imaginary-time damping and resolvent limiting absorption regulate different variables in this relation.

A literal common past switch gives a further diagnostic. For a plane-wave source and a switch \(e^{\epsilon t'}\) over the retarded integration range,
\[
\int_{-\infty}^{t}dt'\,R_{\rm ret}(t-t')e^{\epsilon t'}e^{-i\omega t'}
 =e^{\epsilon t}e^{-i\omega t}\widehat R_{\rm ret}(\omega+i\epsilon).
\tag{4}
\]
The extra output factor matters. A finite switch generally breaks stationarity; shifting only the retarded denominator while retaining stationary real free contractions is a specified Abel family, not automatically the exact finite-switch correlator. Vacuum-contour deformation can relate the limiting objects, but requires its own argument, including endpoint terms and convergence.

## 3. External-tube theorem for the existing combined coefficient

Let \(W_{z,w}\) denote the **full unamputated fixed-coordinate tensor** constructed in the [main report:304–334](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md#L304-L334>): the known spacelike expression and the combined timelike expressions, with their locally integrable continuation and no added supported terms. Let \(W_\partial=W_{0,0}\). Work in fixed momentum and length units, with \(0\le z,w\le1\), \(r_*=\max(z,w)\), and define
\[
P_m(\psi)=\sup_{p,q}(1+|(p,q)|_E)^m|\psi(p,q)|.
\]
Finite-dimensional tensor norms are absorbed in constants. The established estimates imply
\[
\int_{V_+^2}d\nu(p)d\nu(q)\,
 \|W_{z,w}(p,q)\|(1+|(p,q)|_E)^{-18}\le C|\alpha|,
\tag{5}
\]
uniformly in the two radii, and
\[
|\langle W_{z,w}-W_\partial,\psi\rangle|
 \le C|\alpha|r_*^2P_{18}(\psi).
\tag{6}
\]
Here the absolute-value version of (6) follows from the same pointwise majorants, not from differentiating a distributional limit. For (5), the spacelike tensor is bounded by a constant times
\(|\alpha|(E^2+E^4+E^6)/D\), while the timelike tensor is bounded by \(|\alpha|E^6(z^6+w^6)\), with \(E=p^0+q^0\). The established cap estimate \(\int_{E_B^2}D^{-1}\le CB^6\) and the cone-product volume \(O(B^8)\) make exponent 18 more than sufficient. Near zero momentum the same cap estimate gives local integrability.

**Theorem.** Define \(W_{z,w}^{d}=e^{-d_1p^0-d_2q^0}W_{z,w}\), with \(d_1,d_2>0\). Then
\[
\boxed{|\langle W_{z,w}^{d}-W_{z,w},\psi\rangle|
 \le C|\alpha|(d_1+d_2)P_{19}(\psi).}
\tag{7}
\]
Moreover,
\[
\boxed{|\langle W_{z,w}^{d}-W_\partial,\psi\rangle|
 \le C|\alpha|[r_*^2+d_1+d_2]P_{19}(\psi),}
\tag{8}
\]
and
\[
|\langle W_{z,w}^{d}-W_\partial^{d},\psi\rangle|
 \le C|\alpha|r_*^2P_{18}(\psi).
\tag{9}
\]
Consequently all these limits are strong in \(\mathcal S'\), uniformly on bounded Schwartz sets. The two radii and two tube gaps can tend to zero independently; no ratio restriction is needed.

**Proof.** On the spectral support,
\[
0\le1-e^{-d_1p^0-d_2q^0}
 \le d_1p^0+d_2q^0
 \le(d_1+d_2)|(p,q)|_E.
\]
Combine this with (5) to obtain (7). Equation (8) follows by adding (6), and (9) follows because the common damping has modulus at most one and the boundary-error majorant is absolute. For fixed positive gaps, exponential damping dominates all polynomial momentum moments; the Fourier–Laplace representation is holomorphic in the corresponding tube. No retarded denominator or tensor projector is shifted in this proof.

### Why this is not a vacuum-uniqueness theorem

Any additional tempered spectral distribution supported on a null stratum also has its external-tube boundary value. For a concrete counterexample to uniqueness from spectral support and tube analyticity alone, fix \(c>0\), choose a nonzero smooth measure \(d\mu(\ell)\) supported on a compact annulus of the future null cone, and set
\[
\langle E,\psi\rangle=\int d\mu(\ell)\,\psi(\ell,c\ell).
\]
Then \(p^2=q^2=(p-q)^2=0\) throughout its support, yet
\[
\langle E^d,\psi\rangle
 =\int d\mu(\ell)\,e^{-(d_1+cd_2)\ell^0}\psi(\ell,c\ell)
 \longrightarrow\langle E,\psi\rangle.
\]
This example is not asserted to satisfy the gravitational dynamics or conformal Ward identities. It shows precisely why ordinary spectral support, tube analyticity, and agreement off the null strata do not exclude supported additions.

## 4. The identification theorem actually needed

There are two distinct sufficient routes.

1. **Abel/contour identification:** specify the complete regulated all-insertion tensor and common vertex regulator, then prove its sum converges in \(\mathcal D'\) across every null intersection to the constructed coefficient, with global polynomial control if \(\mathcal S'\) convergence is desired. Separately prove that this Abel prescription is the intended perturbative vacuum contour, or take that identification as an explicit physical assumption. Local positive-mass threshold estimates alone do not supply either global statement.
2. **Distributional dynamics and boundary uniqueness:** construct the actual contour boundary value, prove its radial equations and logfree boundary traces distributionally, and identify the complete boundary trace with the independently fixed CFT Wightman distribution. This can fix all-null terms without estimating each separated divergent Abel piece.

For the second route, consider one finite middle scalar. After subtracting the known source, the difference \(\Delta(z;p,q)\) between two candidate solutions obeys
\[
(\partial_z^2+z^{-1}\partial_z+s(p-q))\Delta=0.
\tag{10}
\]
On compact momentum sets, the regular-singular radial ODE has a smooth-in-\(s\) fundamental pair
\[
h_s(z)=J_0(z\sqrt s),\qquad
g_s(z)=h_s(z)\log z+\text{a power series smooth in }s.
\]
Under the usual distribution-valued regularity in \(z>0\) and a controlled regular-singular boundary expansion,
\[
\Delta(z)=h_{s(p-q)}(z)A+g_{s(p-q)}(z)B,
\qquad A,B\in\mathcal D'_{p,q}.
\]
The logfree condition gives \(B=0\), and equality of finite boundary traces gives \(A=0\). Thus \(\Delta=0\), including possible delta functions and derivatives supported at null transfer or outer-null intersections. This is a local momentum-distribution argument: multiplication of a general tempered distribution by \(h_s(z)\) is not automatically legitimate globally because \(h_s\) grows exponentially for spacelike transfer. Local uniqueness followed by the established global estimates avoids that mistake.

At two finite scalar radii, first fix the \(z=0,w>0\) boundary face using its \(w\)-equation and the known corner \(z=w=0\); then solve the middle \(z\)-equation with the free Wick source and that face as boundary data. The required theorem must justify these equations, traces and absence of switch-induced boundary defects for the **physical** coefficient. It must not assume that agreement on open channels already establishes them.

A practical next calculation is therefore to keep common compact vertex regulation, derive the radial equations in weak form, and isolate the regulator-removal defect as a distribution supported on the exceptional strata. Proving this defect vanishes, and proving the boundary trace equals the known cut, is enough. A position-space Euclidean-to-ordered-tube construction with controlled boundary traces is another possible route. Invariant-mass differentiation after restriction to physical momenta is not automatically legitimate at degenerate Gram loci; a finite-part calculation must fix the extension or justify the relevant pullback rather than infer it from the off-stratum formula.

## 5. Verification and remaining gap

Analytic checks: exact Fourier shift identities (1)–(4), oscillator counterexample, all-null spectral counterexample, weighted \(\mathcal S'\) estimates, and distribution-valued regular-singular uniqueness. Wolfram checks independently returned the oscillator resolvent transform and zero residual against \(((\omega+i\epsilon)^2-\Omega^2)^{-1}\), the ordered external multiplier, and the Bessel radial ODE/first six recursion residuals; no messages were emitted. These computations check signs and elementary identities, not contour existence.

The proved new theorem is (7)–(9) **for the specified combined kernel**. The missing physical input remains a contour/Abel identification theorem or distributional radial-equation-and-boundary-trace theorem. No claim of arbitrary-switching equivalence, a nonperturbative state, positivity, or an independent subagent review is made here; this independent research delegation could not delegate further.
