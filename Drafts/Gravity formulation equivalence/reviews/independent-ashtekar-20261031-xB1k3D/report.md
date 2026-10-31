# Complex Ashtekar reality, symplectic boundary terms, and constraint correspondence

Fresh independent mathematical analysis, 2026-10-31. No parent candidate report or conclusion was read before this analysis and its exact evidence were written. A later explicitly requested supplied-text audit is separate. No pre-existing research source was edited. This report uses analytic derivations and exact component algebra, not a literature summary.

## Results and claim levels

**Proved on the nondegenerate, positive-oriented triad sector:**

1. In a fixed time gauge, the Lorentzian real slice is
   \[
   \overline E=E,\qquad \det E>0,\qquad
   A_\gamma+\overline{A_\gamma}=2\Gamma(E),\qquad \gamma=\pm i.
   \]
   Its inverse is a real positive-oriented triad together with
   \(K=(A_\gamma-\Gamma)/\gamma\). Gauss is additionally needed for this real one-form to define a symmetric ADM extrinsic-curvature tensor.
2. Triad compatibility fixes the sign and coefficient of the boundary identity:
   \[
   E_i\wedge\delta\Gamma^i=\frac12d(e_i\wedge\delta e^i).
   \]
   Consequently the **raw**, bounded-region holomorphic symplectic form generally has an imaginary boundary pullback to real data. With the regional convention \(\int\theta-\oint C\), matching the real EC/ADM symplectic problem requires the relative corner
   \[
   C_\gamma-C_{\rm EC}=\frac1{2\kappa\gamma}e_i\wedge\delta e^i.
   \]
   This is a retained and canceled boundary contribution, not a discarded derivative. A different boundary completion need not describe the same phase space.
3. The nonlinear antiholomorphic involution
   \[
   \rho(E,A)=(\overline E,\,2\Gamma(\overline E)-\overline A)
   \]
   is compatible with complex conjugation of the **corner-corrected** holomorphic symplectic form. On a closed slice the correction vanishes. On a bounded slice the raw form has exactly the boundary defect computed below.
4. The normalized polynomial selfdual constraints agree with the ADM constraints after imposing the real slice and Gauss. This does **not** mean that arbitrary complex constraint-satisfying data are Lorentzian. The explicit nondegenerate datum on a unit three-torus
   \[
   E^a_i=\delta^a_i,\qquad A_a^i=\operatorname{diag}(1,1,-1/2)
   \]
   satisfies all vacuum polynomial constraints but fails Lorentzian reality, with nonzero curvature.
5. Constraint correspondence is distinct from reality-preserving evolution. With these signs, a real nonconstant lapse requires a Gauss compensator
   \[
   \lambda_N^i=-\gamma e^{ai}\partial_aN
   \]
   in the strong time-gauge real section. An exact Hamiltonian identity proves local reality tangency on closed slices; an exact homogeneous model checks both chiral signs and exhibits failure for a complex lapse.
6. For the explicitly specified negative-Holst-sign action below, \(\beta=\gamma=\pm i\) projects onto one chiral connection. The other connection is an absent/null auxiliary sector in the complexified theory. The real-\(\beta\) inverse of the Holst operator cannot be used at these values.

**Conditional:** a bounded-region equivalence of *physical* phase spaces and flows still requires matching boundary conditions, differentiable generators, a common real EC wall/corner sector, and the same quotient of actual degeneracies. These have not been specified by the question.

**Not proved:** a global evolution/existence theorem, treatment of degenerate triads or arbitrary matter/torsion, a classification of boundary edge sectors, or a nonlinear quantum-equivalence/positive-inner-product theorem.

## 1. Definitions and convention audit

The CPS convention is that of [formalism.md:7–27](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L27>): retain the wall/corner contribution, define \(\Omega=\delta\Theta\), and quotient only actual gauge degeneracies. Here
\[
\iota_{X_H}\Omega=-\delta H,\qquad \kappa=8\pi G>0.
\]
All antisymmetric internal-index sums are full sums. The spacetime metric is \(\eta_{IJ}=\operatorname{diag}(-1,1,1,1)\), with \(\epsilon_{0123}=+1\). The spatial orientation satisfies \(\epsilon_{123}=+1\), and Stokes' theorem uses the induced outward boundary orientation.

Let
\[
E_i=\frac12\epsilon_{ijk}e^j\wedge e^k,
\qquad
E^a_i=\frac12\widetilde\epsilon^{abc}\epsilon_{ijk}e_b^je_c^k
      =\sqrt q\,e^a_i.
\]
The triad has \(\det(e_a^i)>0\). Thus
\[
q_{ab}=e_a^ie_{bi},\quad q=\det q_{ab}=\det(E^a_i)>0,
\quad \sqrt q=\det(e_a^i),\quad
q^{ab}=\frac{E^a_iE^{bi}}q.
\]
The internal metric in the complexified theory remains the complex-bilinear \(\delta_{ij}\), not a Hermitian metric.

The unique compatible connection is defined by
\[
D_\Gamma e^i=de^i+\epsilon^i{}_{jk}\Gamma^j\wedge e^k=0,
\qquad \Gamma^i=-\frac12\epsilon^i{}_{jk}\omega^{jk}.
\]
Write
\[
K^i=\omega^{0i},\qquad A_\gamma^i=\Gamma^i+\gamma K^i,
\qquad \gamma=s i,\quad s=\pm1.
\]
For a future normal with internal components \(n^I=(1,0,0,0)\), this convention gives
\(K_{ab}=K_a^ie_{bi}=q_a{}^\mu q_b{}^\nu\nabla_\mu n_\nu\), so the ADM velocity convention is \(\dot q_{ab}=2NK_{ab}+\mathcal L_{\vec N}q_{ab}\).

Use
\[
F^i_{ab}(A)=2\partial_{[a}A^i_{b]}+\epsilon^i{}_{jk}A_a^jA_b^k,
\qquad
\Theta_{\rm raw}=\frac1{\kappa\gamma}\int_\Sigma E_i\wedge\delta A^i.
\]
The spatial curvature convention is \(R^i{}_j=d\omega^i{}_j+\omega^i{}_k\wedge\omega^k{}_j\), with a round sphere having positive scalar curvature. In particular,
\(R^{ij}(\omega_\Gamma)=-\epsilon^{ij}{}_kF^k(\Gamma)\).

The field-space exterior product is distinguished by evaluation on two variations; ordinary wedges inside the spatial integrals are spacetime/spatial wedges. For example,
\[
\Omega_K(\delta_1,\delta_2)=\frac1\kappa\int_\Sigma
(\delta_1E_i\wedge\delta_2K^i-\delta_2E_i\wedge\delta_1K^i).
\]
The familiar bulk brackets, valid on a closed slice or with compact support away from a boundary, are
\(\{A_a^i,E^b_j\}=\kappa\gamma\delta_a^b\delta^i_j\delta^3\).
They must not be blindly applied to boundary observables after changing the corner symplectic form.

## 2. Reality conditions and the inverse map

### 2.1 Strong time-gauge reality

For nondegenerate \(E\) near the positive real sector, reconstruct
\[
e_a^i=\sqrt{\det E}\,(E^{-1})^i{}_a,
\qquad
K_a^i=\frac{A_a^i-\Gamma_a^i(E)}\gamma.
\]
The positive square root selects the prescribed orientation. The conditions
\[
\boxed{\ \overline E=E,\quad\det E>0,\quad
A+\overline A=2\Gamma(E)\ }
\]
are necessary and sufficient for \(e\) and \(K\) to be real in this section. Indeed,
\[
K=\frac{A-\overline A}{2\gamma},
\]
and \(\overline\gamma=-\gamma\). Conversely real \(e,K\) immediately give these equations.

The positivity condition is not redundant. The fixed-point equations of a locally extended real structure alone do not select the positive spatial-metric component. Degenerate \(E\) has no such inverse map.

The two chiral descriptions of the same real data obey
\[
A_{-i}=\overline{A_{+i}},\qquad E_{-i}=E_{+i}=E,
\]
not \(A_{-i}=A_{+i}\). Reconstructing spatial \(\omega^{0i}=K^i\) and \(\omega^{ij}=-\epsilon^{ij}{}_k\Gamma^k\) does not fix lapse, shift, or the temporal connection; those are additional evolution/gauge data.

Reality by itself does not imply symmetry of \(K_{ab}\). That is exactly the nondegenerate Gauss condition derived below.

### 2.2 Finite real versus complex gauge transformations

For a field-independent finite \(R(x)\in SO(3,\mathbb C)\),
\[
E'=RE,\quad K'=RK,\quad
(A'\times)=R(A\times)R^{-1}-dR\,R^{-1},
\]
and \(\Gamma(E')\) has the same connection transformation law. Here \((u\times)v=u\times v\) with the stated epsilon convention.

A real \(R\in SO(3)\) preserves the strong reality conditions. Conversely, if both \(E\) and \(E'\) are real and nondegenerate, the pointwise equation \(E'=RE\) forces \(R\) to be real. Thus the intersections of a complex internal-gauge orbit with this real section are related by real rotations, not by arbitrary complex rotations. For spin variables replace the groups by their appropriate double covers; the adjoint statement is unchanged.

A real Lorentz boost before time gauge is represented chirally by a complex rotation, but it also changes the internal timelike normal and generally leaves the chosen time-gauge section. This is not a counterexample to the preceding assertion. Restoring the normal/time gauge is an additional step.

A gauge-covariant description may instead require a real positive spatial metric and real \(K_{ab}\), and then choose a real frame. Locally, real positive \(E^a_iE^{bi}\), together with the positive determinant branch, admits such a frame by complex orthogonal factorization. **Metric reality alone is insufficient**: the explicit counterexample below already has a real positive metric.

Finally, preserving the real section does not make every boundary-nontrivial real rotation a redundancy. Whether it is a presymplectic degeneracy or carries a charge depends on the retained common corner and allowed variations.

## 3. Exact symplectic pullback and its corner

### 3.1 Compatibility determines the derivative

Vary the compatible-triad equation, with variations tangent to that equation:
\[
D_\Gamma\delta e^i+\epsilon^i{}_{jk}\delta\Gamma^j\wedge e^k=0.
\]
Using \(D_\Gamma e=0\) and the invariant internal contraction,
\[
\begin{aligned}
d(e_i\wedge\delta e^i)
 &=-e_i\wedge D_\Gamma\delta e^i\\
 &=\epsilon_{ijk}e^i\wedge\delta\Gamma^j\wedge e^k\\
 &=2E_i\wedge\delta\Gamma^i.
\end{aligned}
\]
The last sign is important and was checked with full epsilon sums. No field equation for \(K\), Gauss constraint, or boundary condition was used.

Put
\[
B[e]=\oint_{\partial\Sigma}e_i\wedge\delta e^i.
\]
Then the exact pullback by \(A=\Gamma+\gamma K\) is
\[
\boxed{\ \Theta_{\rm raw}\big|_{(E,K)}
 =\Theta_K+\frac1{2\kappa\gamma}B[e],\qquad
\Theta_K=\frac1\kappa\int_\Sigma E_i\wedge\delta K^i.\ }
\]
Taking a field-space derivative,
\[
\Omega_{\rm raw}\big|_{(E,K)}
 =\Omega_K+\frac1{2\kappa\gamma}\delta B,
\]
where
\[
\delta B(\delta_1,\delta_2)
=2\oint_{\partial\Sigma}\delta_1e_i\wedge\delta_2e^i.
\]
Thus for real tangent variations the extra term is purely imaginary when \(\gamma=\pm i\). It is generally nonzero.

### 3.2 Closed and bounded slices are different claims

On a closed \(\Sigma\), the raw pullback is exactly real:
\[
\Omega_{\rm raw}|_{\mathcal R_\gamma}=\Omega_K.
\]
On a bounded slice the same assertion is false without an extra condition or correction. Examples of conditions that can remove the pullback are fixed tangential triad data or a restricted variation space on which \(\delta B\) vanishes. These are boundary conditions, not identities.

For the regional convention
\[
\Theta_\gamma^{\rm reg}=\int_\Sigma\theta_\gamma-\oint_{\partial\Sigma}C_\gamma,
\]
matching the EC/ADM regional symplectic problem is achieved by retaining
\[
Y_\gamma=\frac1{2\kappa\gamma}e_i\wedge\delta e^i,
\qquad C_\gamma=C_{\rm EC}+Y_\gamma.
\]
Then
\[
\Theta_\gamma^{\rm reg}|_{\mathcal R_\gamma}
=\Theta_K-\oint C_{\rm EC},\qquad
\Omega_\gamma^{\rm reg}|_{\mathcal R_\gamma}
=\Omega_K-\oint\delta C_{\rm EC}.
\]
The common real EC wall/corner contribution has deliberately been retained symbolically. If an EC boundary action changes its potential by a field-space exact term, that common term is retained too; it does not affect the comparison of symplectic forms.

Compatibility fixes this *relative primitive* up to the usual corner ambiguities. It does not assert that every possible chiral boundary completion equals the same EC problem. Differentiability, allowed boundary data, and flux must still be checked. In particular, retaining the raw imaginary corner as an independent edge sector is a different choice, not an algebraic contradiction.

### 3.3 Antiholomorphic real structure and its precise boundary defect

Complexify the nondegenerate triad sector locally around the positive real component. The functional \(\Gamma(E)\) is holomorphic there and obeys
\(\Gamma(\overline E)=\overline{\Gamma(E)}\). Define
\[
\rho(E,A)=(\overline E,2\Gamma(\overline E)-\overline A).
\]
It is antiholomorphic and \(\rho^2=1\). In the \((E,K)\) coordinates it is simply
\(\rho(E,K)=(\overline E,\overline K)\). Its desired fixed component is precisely the strong real slice with \(\det E>0\).

For fixed \(\gamma=\pm i\), the raw form satisfies
\[
\boxed{\ \rho^*\Omega_{\rm raw}-\overline{\Omega_{\rm raw}}
 =\frac1{\kappa\gamma}\delta B[\overline e].\ }
\]
This follows directly by inserting \(\delta A\mapsto2\delta\Gamma(\overline E)-\delta\overline A\) and using \(\overline\gamma=-\gamma\). Thus even the real-structure compatibility has a boundary obstruction for the raw form.

Define the holomorphic relative correction
\[
\Omega_{\rm corr}=\Omega_{\rm raw}-\frac1{2\kappa\gamma}\delta B.
\]
Then
\[
\rho^*\Omega_{\rm corr}=\overline{\Omega_{\rm corr}},
\qquad \Omega_{\rm corr}=\frac1\kappa\int_\Sigma\delta E_i\wedge_{\!\mathcal F}\delta K^i.
\]
A common EC corner may be added provided its complexification obeys the corresponding reality property. The sign here is tied to the normalization \(1/(\kappa\gamma)\); dropping that factor changes how one states the conjugation property.

At the regular kinematic level, the real slice is middle-dimensional, symplectic for \(\operatorname{Re}\Omega_{\rm corr}\), and Lagrangian for \(\operatorname{Im}\Omega_{\rm corr}\). Equivalently, its imaginary coordinate conditions are second-class for the real symplectic structure \(\operatorname{Re}\Omega_{\rm corr}\), not new complex first-class gauge freedoms. After imposing gravitational constraints, degeneracies and their quotient must be treated separately.

## 4. ADM conversion and polynomial constraints

The following generator formulas are for a closed slice, or variations compactly supported in the interior. A bounded-region generator requires its own differentiable boundary completion.

Define the polynomial densities
\[
\begin{aligned}
G_i&=D_a^AE^a_i,\\
V_a&=F^i_{ab}E^b_i,\\
S&=\epsilon^{ij}{}_kE^a_iE^b_jF^k_{ab},\\
\mathcal C&=S+2\Lambda q,
\qquad q=\frac16\widetilde\epsilon_{abc}\epsilon^{ijk}E^a_iE^b_jE^c_k.
\end{aligned}
\]
Here \(G\) and \(V\) have density weight one; \(S,q\) have weight two. The cosmological constant is real and optional; the counterexample uses \(\Lambda=0\).

Normalize the generators by
\[
H_G[\lambda]=\frac1{\kappa\gamma}\int d^3x\,\lambda^iG_i,
\qquad H_V[\vec N]=\frac1{\kappa\gamma}\int d^3x\,N^aV_a,
\]
\[
H_{\rm diff}[\vec N]=\frac1{\kappa\gamma}\int d^3x\,N^a(V_a-A_a^iG_i),
\]
\[
\boxed{\ H_S[N]=\frac1{2\kappa}\int d^3x\,\widetilde N\,\mathcal C,
\qquad \widetilde N=\frac N{\sqrt q}.\ }
\]
The independent polynomial multiplier is the densitized lapse \(\widetilde N\), of weight minus one. Fixing an ordinary lapse \(N\) instead makes this generator nonpolynomial through \(\sqrt q\); it does not change the polynomial constraint density. Variations at fixed \(N\) and fixed \(\widetilde N\) differ by scalar-constraint terms on the constraint surface.

With \(\iota_{X_H}\Omega=-\delta H\), the Gauss generator gives
\[
X_{H_G}A=-D_A\lambda,\qquad X_{H_G}E=\lambda\times E.
\]
The subtraction \(-A_a^iG_i\) makes \(H_{\rm diff}\) generate the ordinary spatial Lie derivative. \(H_V\) alone is the gauge-covariant spatial diffeomorphism generator.

### 4.1 Gauss and symmetry

Compatibility implies \(D_a^\Gamma E^a_i=0\), so
\[
G_i=\gamma J_i,
\qquad J_i=\epsilon_{ijk}K_a^jE^{ak}.
\]
For nondegenerate \(E\), \(J=0\) is equivalent to \(K_{ab}=K_{ba}\). This also shows that real \(\lambda\) has a real Gauss Hamiltonian on the real section, \(H_G=\kappa^{-1}\int\lambda^iJ_i\).

### 4.2 Scalar and vector contractions

Expand
\[
F(A)=F(\Gamma)+\gamma D_\Gamma K+\frac{\gamma^2}{2}\epsilon^i{}_{jk}K^j\wedge K^k.
\]
On \(J=0\), three exact identities are
\[
\epsilon^{ij}{}_kE_i^aE_j^bF^k_{ab}(\Gamma)=-q\,{}^{(3)}R,
\]
\[
\epsilon^{ij}{}_kE_i^aE_j^b(2D^\Gamma_{[a}K_{b]}^k)=0,
\]
\[
\epsilon^{ij}{}_kE_i^aE_j^b\epsilon^k{}_{lm}K_a^lK_b^m
=q\bigl(K^2-K_{ab}K^{ab}\bigr).
\]
The middle identity is the contraction of a derivative of a symmetric tensor with \(\widetilde\epsilon^{abc}\). The curvature sign in the first identity follows from \(R^{ij}=-\epsilon^{ij}{}_kF^k(\Gamma)\).

Since \(\gamma^2=-1\),
\[
\boxed{\ S=q\bigl(K_{ab}K^{ab}-K^2-{}^{(3)}R\bigr),\quad
V_a=\gamma\sqrt q\bigl(\nabla_aK-\nabla_bK^b{}_a\bigr).\ }
\]
The pure \(\Gamma\)-curvature part of \(V_a\) vanishes by the spatial Bianchi identity, and its quadratic \(K\) part vanishes when \(K_{ab}\) is symmetric.

### 4.3 Symplectic ADM normalization

On \(J=0\), define
\[
\pi^{ab}=\frac{\sqrt q}{2\kappa}(K^{ab}-Kq^{ab}).
\]
An exact potential identity is
\[
\Theta_K=\int d^3x\,\pi^{ab}\delta q_{ab}
 +\delta\left(\frac1\kappa\int d^3x\,\sqrt q\,K\right).
\]
To see it, write \(E_i^a\delta K_a^i=\delta(E_i^aK_a^i)-K_a^i\delta E_i^a\); for symmetric \(K_{ab}\),
\(-K_a^i\delta E_i^a=\frac12\sqrt q(K^{ab}-Kq^{ab})\delta q_{ab}\). Hence the two symplectic forms agree after the rotation degeneracy is quotiented, with any common boundary sector retained.

The above generators become
\[
\mathcal H_a^{\rm ADM}=-2q_{ac}\nabla_b\pi^{bc}
=\frac{\sqrt q}{\kappa}(\nabla_aK-\nabla_bK^b{}_a),
\]
\[
\mathcal H^{\rm ADM}
=\frac{2\kappa}{\sqrt q}\left(\pi^{ab}\pi_{ab}-\frac12\pi^2\right)
 -\frac{\sqrt q}{2\kappa}({}^{(3)}R-2\Lambda)
=\frac{\mathcal C}{2\kappa\sqrt q}.
\]
This is a classical constraint and symplectic correspondence on the stated regular sector, not a statement about every solution of the complex polynomial equations.

## 5. Explicit constraint-satisfying non-Lorentzian datum

Take \(\Sigma=T^3\) with periodic coordinates of period one and
\[
e^i=dx^i,\quad E^a_i=\delta^a_i,\quad\Gamma=0,
\quad A^1=dx^1,\quad A^2=dx^2,\quad A^3=-\tfrac12dx^3.
\]
All fields are smooth and global. Since \(A\) is constant diagonal,
\[
G_i=0,\qquad V_a=0,
\qquad S=2(a_1a_2+a_2a_3+a_3a_1)=0.
\]
The curvature is not zero:
\[
F^3_{12}=1,\qquad F^1_{23}=-\frac12,
\qquad F^2_{31}=-\frac12.
\]
But
\[
A+\overline A-2\Gamma=\operatorname{diag}(2,2,-1)\ne0.
\]
For \(\gamma=i\), the reconstructed \(K\) is
\(\operatorname{diag}(-i,-i,i/2)\), not real. The same datum fails the other chirality's reality condition.

It cannot be repaired by a finite internal complex gauge transformation that lands in a real nondegenerate triad section: such a transformation would necessarily be real, and the reality conditions are covariant under real rotations. This example uses no degenerate triads, no boundary issue, and no trivial flat-connection shortcut.

## 6. Reality preservation is a separate Hamiltonian issue

### 6.1 Exact lapse-compensator identity

For this subsection \(K_{ab}\) need not be symmetric. Define
\[
Q^a=\widetilde\epsilon^{abc}e_{ck}K_b^k=-e^{ai}J_i,
\qquad v^i=e^{ai}\partial_aN.
\]
Let
\[
H_{\rm real}[N]=\frac1{2\kappa}\int d^3x\,N\sqrt q
\left[\operatorname{Tr}(\mathsf K^2)-(\operatorname{Tr}\mathsf K)^2
-{}^{(3)}R+2\Lambda\right],\qquad
\mathsf K^a{}_b=q^{ac}K_{cb}.
\]
This is manifestly real for arbitrary real \(E,K\), even before Gauss. The derivative part of the selfdual scalar obeys
\[
\frac{\gamma}{\kappa}N\widetilde\epsilon^{abc}e_{ck}D_a^\Gamma K_b^k
=\frac{\gamma}{\kappa}\left[\partial_a(NQ^a)+v^iJ_i\right].
\]
The derivative of the triad drops from this *local identity* by torsion compatibility and antisymmetry, not by discarding a boundary term. Therefore
\[
\boxed{\ H_S[N]+H_G[-\gamma v]
=H_{\rm real}[N]+\frac{\gamma}{\kappa}
\oint_{\partial\Sigma}NQ^a\,dS_a.\ }
\]
On a closed slice, the left-hand side is exactly a real Hamiltonian in the corrected \((E,K)\) symplectic coordinates. It therefore has a real-tangent Hamiltonian vector field. On Gauss it reduces to the ADM Hamiltonian and preserves the symmetric sector. A real shift, generated by the ordinary diffeomorphism generator, and a real residual rotation can be added.

The compensator is field-dependent. If one varies \(H_G[\lambda(E)]\) as a functional, there is also a term proportional to \(J\delta\lambda\). In the usual multiplier formulation, choosing \(\lambda=-\gamma v\) *after* deriving the equations gives the same vector field on \(J=0\). The exact off-shell real extension and the on-constraint-surface multiplier prescription should not be confused. This imaginary compensator is part of a real-tangent combined evolution, not a license to quotient the real phase space by arbitrary complex rotations. If the canonical Hamiltonian is instead written with Gauss term \(-\int A_0^iG_i/(\kappa\gamma)\), then \(\lambda=-A_0\); the flat lapse test consequently has \(A_0^i=+\gamma\partial_iN\).

On a bounded slice, subtracting the displayed \(\gamma NQ\) term addresses this chiral Gauss/corner identity but is not the full ADM energy boundary prescription. \(H_{\rm real}\) itself still needs the appropriate differentiable EC/ADM boundary completion. Although \(Q=0\) on Gauss, its off-shell boundary variation need not vanish for unrestricted variations.

### 6.2 A bare real lapse can leave the strong real section

At flat \(E^a_i=\delta^a_i\), \(K=0\), a real nonconstant lapse gives the bare scalar velocity
\[
\dot E^b_k\big|_{H_S}=\gamma\widetilde\epsilon^{abk}\partial_aN.
\]
It is a purely imaginary internal rotation. A closed-torus example is \(N=1+\varepsilon\sin x^1\). The Gauss term with \(\lambda=-\gamma\nabla N\) cancels it exactly. The full local Hamiltonian vector is also easy to track: since \(F=0\), the bare scalar gives \(\dot A_a^i=0\), whereas the compensating Gauss term gives
\[
\dot A_a^i=-\partial_a\lambda^i
=+\gamma\partial_a\partial_iN,\qquad
\dot E^a_i=0\quad\text{for the combined flow}.
\]
Consequently \(\dot\Gamma(E)=0\) for the combined flow and
\[
\dot K_a^i=+\partial_a\partial_iN,
\]
which is real and has the sign appropriate to \(K=+\tfrac12\mathcal L_nq\). For the bare flow, the complex rotation of \(E\) instead gives \(\dot\Gamma=-\gamma\,\mathrm{Hess}\,N\), so its reconstructed \(\dot K\) agrees at this point even though its frame has left the real section.

In this example the bare metric velocity is real (in fact zero): an imaginary frame rotation drops from \(\dot q^{ab}\). Thus this is specifically a failure of the **strong fixed-time-gauge** real section for the bare generator, not a claim that every such rotation changes the physical metric. It illustrates why real restricted constraint values alone do not prove Hamiltonian tangency.

### 6.3 Exact homogeneous model and complex-lapse failure

On the unit torus take
\[
E^a_i=\operatorname{diag}(p_1,p_2,p_3),\quad p_i>0,
\qquad A_a^i=\operatorname{diag}(c_1,c_2,c_3),\qquad\Gamma=0.
\]
Use a spatially constant densitized lapse \(n\) and
\[
H=\frac n\kappa\left(\sum_{i<j}p_ip_jc_ic_j+\Lambda p_1p_2p_3\right),
\qquad \Omega=\frac1{\kappa\gamma}\sum_i\delta p_i\wedge\delta c_i.
\]
Reality is \(c_i=\gamma k_i\), with real \(k_i\). For either \(\gamma=+i\) or \(-i\), the exact equations are
\[
\dot p_i=n p_i\sum_{j\ne i}p_jk_j,
\qquad
\dot k_i=-n k_i\sum_{j\ne i}p_jk_j
+n\Lambda p_jp_k\quad(\{i,j,k\}=\{1,2,3\}).
\]
For real \(n,\Lambda\) these preserve reality for as long as the solution stays smooth and \(p_i>0\). The polynomial scalar constraint is exactly conserved in this model.

For \(\Lambda=0\), the real initial datum
\(p=(1,1,1)\), \(k=(1,1,-1/2)\) satisfies the scalar constraint. With \(n=i\), however,
\[
\dot p=(i/2,i/2,2i).
\]
The complex constraint remains conserved, but the real metric sector is left. This is a genuine metric-reality failure, unlike the compensable internal rotation in the previous example. Complex constraint preservation alone plainly does not select real Lorentzian evolution.

The full closed-slice tangency argument is an exact local Hamiltonian statement, conditional on differentiable functionals and existence of smooth flow; the homogeneous example is a check and counterexample, not a substitute for a global PDE theorem.

## 7. Complex Holst values and chiral auxiliary nullness

To remove sign ambiguity, choose the action
\[
L_\beta=\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}
-\frac1{2\kappa\beta}e_I\wedge e_J\wedge F^{IJ}.
\]
The sums are full. In time gauge its kinetic potential is
\[
\Theta_\beta=\frac1\kappa\int E_i\wedge\delta K^i
+\frac1{\kappa\beta}\int E_i\wedge\delta\Gamma^i,
\]
so \(\gamma=\beta\) gives exactly the raw potential used above. Reversing the Holst sign would instead give \(\gamma=-\beta\); chiral labels must then be exchanged accordingly.

Define
\[
(\star X)^{IJ}=\frac12\epsilon^{IJ}{}_{KL}X^{KL},
\quad\star^2=-1,\quad
P_s=\frac12(1-s i\star).
\]
Thus \(P_s\) projects onto the \(\star=s i\) eigenspace. The Holst operator in this action is
\[
P_\beta^{\rm H}=\star-\beta^{-1},\qquad
P_{s i}^{\rm H}=2s i P_s.
\]
It has rank three on the six-dimensional complex bivector space, with kernel the opposite chirality. Its inverse does not exist at \(\beta=\pm i\).

In the variables \((\Gamma,K)\), the star acts as
\[
\star:(\Gamma,K)\longmapsto(-K,\Gamma).
\]
Consequently the rotational part of \(P_s\omega\) is
\(\frac12(\Gamma+s iK)=\frac12A_{s i}\). This fixes which chiral connection is retained with the stated conventions.

The complex Lorentz algebra splits into commuting chiral ideals. Hence the projected curvature depends only on the retained connection. If the boundary completion does not reintroduce the other connection, arbitrary variations of that absent chirality are null in the action and in its presymplectic current. One should quotient this auxiliary null sector, or reconstruct it by imposing the full Lorentzian conjugation condition—not pretend that the generic real-\(\beta\) torsion inversion still applies.

For an invertible tetrad, the retained connection equation is nevertheless sufficient to determine the retained connection uniquely. A useful direct check is
\[
\Sigma_s^i=\frac12\epsilon^i{}_{jk}e^j\wedge e^k-s i\,e^0\wedge e^i,
\qquad D_{A_{s i}}\Sigma_s^i=0.
\]
The homogeneous linear map for a change of connection,
\(a^j\mapsto\epsilon^i{}_{jk}a^j\wedge\Sigma_s^k\), has twelve inputs and twelve outputs. At a tetrad coframe, exact algebra gives rank \(12\) and determinant \(-16\) for \(s=+1\); the other sign follows by conjugation. An invertible change of coframe preserves the rank. The projected Levi-Civita connection supplies existence, so uniqueness follows locally on every nondegenerate tetrad.

This proves uniqueness of the **retained** chiral connection, not equations for an independently absent opposite chirality. If a real Lorentz connection is required, its two chiral components are conjugate and the missing one is fixed by that reality condition. This distinction matters at complex \(\beta\).

## 8. Verification record, scope, and unresolved work

### Actual exact-kernel evidence

The source and outputs below were created as new files in this private review directory. Outputs were exported by the Mathematica kernel itself, not reconstructed by hand.

- [Main frozen executed CAS source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/checks.executed-source.txt>) and [safe-replay source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/checks.wl>).
- [Main actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/actual-output.txt>) and [exact WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/actual-output.wxf>).
- [Off-shell frozen executed CAS source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell.executed-source.txt>) and [safe-replay source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-evolution-checks.wl>).
- [Off-shell actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-actual-output.txt>) and [exact WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-actual-output.wxf>).
- Raw server diagnostics: [main call](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/main-tool-diagnostics.json>) and [off-shell call](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/offshell-tool-diagnostics.json>).

The executed calls were `Get[absolute source path]`, each in a fresh kernel. Both reports return `FailedOrAbortedPresent -> False` and `Messages -> {}`. Every labelled residual is exactly zero. After execution, only replay-output plumbing was changed: the executable sources now select a fresh UUID output directory whenever recorded outputs exist. The archived executed sources and original outputs are unchanged; the safe-replay plumbing has not been rerun. The complete pre-audit report is preserved in the [frozen fresh-phase report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.fresh-phase.md>); this report's mathematical derivation is unchanged.

The checks cover:

1. The Lorentzian star matrix, \(\star^2=-1\), both chiral projector ranks, and the null Holst sector.
2. The full twelve-by-twelve retained-connection compatibility matrix and its exact determinant/rank.
3. Full-sum Palatini and Holst kinetic normalizations, and the positive sign of the triad boundary identity.
4. Scalar/vector/Gauss identities at an arbitrary spatial-curvature point with arbitrary symmetric \(K\) and its first derivatives; both chiral signs.
5. A nonorthogonal positive triad with determinant three.
6. A genuinely curved local slice \(e=(dx,\sin x\,dy,dz)\), \(0<x<\pi\), with \({}^{(3)}R=2\), \(\Gamma^3=\cos x\,dy\), and varying diagonal extrinsic curvature.
7. The non-Lorentzian torus datum, including its nonzero curvature and all three polynomial constraints.
8. Exact homogeneous Hamilton equations, scalar-constraint conservation, both chiral signs, and complex-lapse reality failure.
9. The lapse-gradient compensator, the fact that the bare flat-slice imaginary frame rotation has zero metric variation, and the off-shell compensator identity for all nine independent \(K_{ab}(x)\) on the curved slice.
10. The ADM potential conversion at arbitrary symmetric \(K\) and arbitrary triad variation.

These are exact component checks supplementing the analytic proofs. They do not establish boundary functional differentiability or global PDE existence. No additional fresh subagent could be started from this delegated session because its delegation-depth limit was already reached; no second independent reasoning review is claimed here.

### Assumptions and boundaries of the result

- Nondegenerate, positively oriented triads; smooth fields; fixed oriented slice; fixed time-gauge real section.
- Vacuum gravity, with an optional real cosmological constant; no torsionful matter.
- Closed/compact-support generator statements unless a boundary term is explicitly displayed.
- A common real EC wall/corner piece is retained, not computed or declared zero.
- Real lapse and shift, and the stated compensating/internal gauge prescription, for real Lorentzian flow.
- Local holomorphic extension near the desired real component; no assertion about all global field-space branches, spin lifts, large-gauge sectors, or degenerate polynomial sectors.

The remaining substantive bounded-region question is to specify one actual variational problem and prove that its allowed variations, flux condition, differentiable Hamiltonians, and degeneracy quotient match under the displayed corrected map. The remaining quantum question is not solved by writing formal adjointness conditions: operator ordering, domains, the nonlinear \(\Gamma(\widehat E)\), positivity, and a compatible inner product remain separate issues. None of the calculations above supplies a full nonlinear quantization theorem.
