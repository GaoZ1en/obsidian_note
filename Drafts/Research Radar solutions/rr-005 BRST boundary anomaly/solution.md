# A one-loop boundary gauge-anomaly test in scalar electrodynamics

## Result and precise boundary

For a massive charged complex scalar with Dirichlet boundary conditions on a finite cylinder, the one-loop matter determinant has **zero gauge-BRST anomaly**, including boundary-supported gauge variations in the allowed domain. A covariant heat-kernel regulator makes this an exact statement at finite ultraviolet cutoff and finite collar cutoff. Gauge-invariant local subtractions preserve it, and removal of the collar leaves the same zero class.

This is an explicit Abelian gauge--matter benchmark, rather than an assumption that every Abelian model is anomaly-free. A [separate sourced-current calculation](source-current.md) treats one normal BRST-current insertion at the reflecting wall. The [charged-boundary supplement](charged-boundary-ward.md) now extends the continuum determinant to the full one-loop current-source Ward hierarchy and constructs a finite interacting model with nonzero endpoint charges and exact collar-profile independence. A continuum limit of the charged Hilbert-space algebra remains unproved; the seam question is deferred by the user's sewing exclusion.

## Action, BRST differential, and boundary conditions

Start with scalar electrodynamics on the Lorentzian strip $\mathbb R_t\times[0,L]$, signature $(-,+)$:

$$
S=\int_Md^2x\left[-\frac14F_{\mu\nu}F^{\mu\nu}
-(D_\mu\phi)^*D^\mu\phi-m^2|\phi|^2\right]+s\Psi,
\qquad D_\mu=\partial_\mu-ieA_\mu,\quad m>0.
$$

Use $\Psi=\int\bar c(\partial_\mu A^\mu+\xi b/2)$ and the Abelian differential

$$
sA_\mu=\partial_\mu c,\quad sc=0,\quad
s\phi=iec\phi,\quad s\phi^*=-iec\phi^*,\quad
s\bar c=b,\quad sb=0.
$$

At each timelike boundary impose

$$
\phi=0,\qquad A_n=0,\qquad F_{na}=0,\qquad
\partial_n c=\partial_n\bar c=\partial_n b=0.
$$

These are gauge-invariant scalar Dirichlet data and absolute Maxwell/ghost boundary data on the flat strip. Their BRST variations preserve the same domain. The scalar and Maxwell terms in the boundary variation vanish because $\delta\phi=0$ and $F_{na}=0$. The resulting classical CPS has no flux through the physical walls on allowed tangent variations. In particular this choice does not retain an independent electric edge-charge sector.

For the determinant use the Euclidean cylinder $M_\beta=S^1_\beta\times[0,L]$, with periodic bosonic time coordinate and smooth real background $A$, at background scalar $\phi=0$. The charged scalar Hessian is the positive elliptic operator

$$
P_A=-D_\tau^2-D_x^2+m^2,\qquad
D(P_A)=H^2(M_\beta)\cap H_0^1(M_\beta)
$$

where the zero trace is imposed only at the spatial walls and functions are periodic in $\tau$. Abelian gauge and ghost Hessians about this background do not depend on $A$. Residual constant gauge transformations are divided out as a group volume; omitting the corresponding Faddeev--Popov zero mode does not create an $A$-dependent anomaly.

## The actual one-loop functional

A complex scalar contributes $\Gamma_1[A]=\operatorname{Tr}\log P_A$, up to an $A$-independent normalization. For a smooth gauge parameter $\lambda$, let $U_\lambda=e^{ie\lambda}$. Multiplication by $U_\lambda$ preserves the Dirichlet domain, and a direct calculation gives

$$
P_{A+d\lambda}U_\lambda=U_\lambda P_A.
$$

For parameters satisfying $\partial_n\lambda=0$, the Maxwell background conditions are also preserved. Unlike a trace of a formal unbounded commutator, this is an equality of closed operators with explicitly identified domains.

Choose a smooth collar weight $0\leq\chi_\epsilon\leq1$, equal to zero near the walls and tending pointwise to one in the interior as $\epsilon\to0$. It is multiplication by a scalar and commutes with $U_\lambda$. Define

$$
\Gamma_{1,\delta,\epsilon}[A]
=-\int_{\delta^2}^\infty\frac{dt}{t}
\operatorname{Tr}\bigl(\chi_\epsilon e^{-tP_A}\bigr),\qquad \delta>0.
$$

This is a specified collar regulator on a fixed physical boundary problem, not a replacement of the domain by a smaller strip. The heat operator is trace class and $m>0$ controls the large-$t$ integral. Functional calculus and trace cyclicity therefore give, at finite cutoffs,

$$
\Gamma_{1,\delta,\epsilon}[A+d\lambda]
=\Gamma_{1,\delta,\epsilon}[A],\qquad
\mathcal A_{\delta,\epsilon}:=s\Gamma_{1,\delta,\epsilon}=0.
$$

Thus the actual coefficient of a gauge anomaly is zero. The consistency equation is satisfied, $s\mathcal A=0$, and its functional BRST cohomology class on this boundary domain is the trivial class. This conclusion uses the full non-chiral complex-scalar determinant; it would not follow for a chiral determinant or a boundary domain not preserved by gauge transformations.

## Local renormalization and collar removal

For a smooth elliptic Dirichlet problem the small-$t$ heat trace has local bulk and boundary coefficients. Because the regulated trace is gauge invariant for every positive $t$, its asymptotic coefficients are gauge invariant as functionals of the allowed data. Subtract the divergent coefficients in this covariant scheme, with gauge-invariant finite counterterms. Then

$$
s\Gamma_{1,\epsilon}^{\rm ren}=0.
$$

The relevant heat-kernel locality framework is summarized in [Vassilevich](https://arxiv.org/abs/hep-th/0306138). No numerical heat coefficient is needed for the zero-anomaly conclusion: covariance holds before expanding in $t$.

For fixed $t>0$, bounded convergence against the trace-class heat operator gives

$$
\operatorname{Tr}(\chi_\epsilon e^{-tP_A})\longrightarrow
\operatorname{Tr}(e^{-tP_A}).
$$

At every collar width the anomaly functional is exactly zero, so its distributional limit is zero independently of the shape of $\chi_\epsilon$. This proves collar independence of the **anomaly class**. It does not assert that the unrenormalized action or every local stress insertion has a finite collar limit. Cutoff-dependent boundary energies can remain while the gauge anomaly vanishes.

Changing to a local renormalization scheme differing by a finite boundary functional $B$ changes the anomaly by $sB$. Hence the cohomology class remains zero even if that other scheme has a nonzero exact representative. This statement presupposes that the two schemes differ by allowed local counterterms; it does not classify arbitrary changes of boundary conditions.

## Finite regulator check

The saved Mathematica check constructs a six-site covariant scalar Laplacian on a periodic-time, Dirichlet-space lattice. Its link variables are nontrivial unit-modulus complex numbers. Gauge transformation of every link, independently rebuilding the matrix, gives $P'=UPU^\dagger$. The determinant is unchanged, the matrix is Hermitian, and all six leading principal minors are positive. Thus an explicit finite regulator realizes the same covariance and positivity mechanism.

The continuum identity was also checked on an arbitrary two-variable scalar and arbitrary smooth gauge parameter. The first saved script split its multi-line operator definition incorrectly and produced a nonzero residual; the corrected parenthesized definition returns exactly zero. That failed expression is a verification-script error, not a physical anomaly, and both records are retained.

## Remaining rr-005 problem

The live [2607.13765 HTML](https://arxiv.org/html/2607.13765) checked on 2 October 2026 still identifies itself as v1 and explicitly describes its worked electromagnetic example as being without matter. It therefore does not supply the interacting scalar-QED boundary insertion calculation required here. This is a current scope check, not a re-verification of every printed differential in that preprint or a complete citation search.

[Baulieu--Wetzstein](https://arxiv.org/html/2405.18898), section 3.3, distinguish a bulk/gauge anomaly from a boundary Ward identity with a source for the BRST Noether current. The [charged-boundary supplement](charged-boundary-ward.md) supplies the multiple-source one-loop calculation with an explicit nonzero contact term, and a separate finite interacting boundary electric-charge algebra. A collar weight on a fixed physical strip does not constitute a seam-removal theorem, and the finite charge algebra alone does not prove convergence to a continuum representation.

**Verified:** exact scalar operator gauge covariance in the corrected Mathematica computation; exact determinant covariance and positivity for the stated finite lattice; the trace-class and domain argument for zero gauge anomaly and its collar independence is supplied in the text.

**Assumptions:** massive non-chiral charged complex scalar; background scalar zero; smooth compact Euclidean cylinder; Dirichlet scalar and absolute Maxwell/ghost conditions; gauge transformations preserving that domain; a covariant heat-kernel subtraction scheme. The Euclidean result is a one-loop gauge-functional statement, not a construction of Lorentzian interacting BRST charges.

**Not verified:** a continuum interacting Hilbert-space realization and limit of the boundary charge algebra, seam anomalies, or full local BRST cohomology classification. The sourced one-loop Ward hierarchy and a finite nonzero edge-charge sector are derived in the charged-boundary supplement. Their verification levels must not be merged into an unproved continuum operator theorem.
