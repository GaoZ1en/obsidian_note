# Lorentzian Linear Relative CPS for the Cut Interval

> Status: theorem and proof at the 0-truncated strong-solution level. The derived-complex and canonical-quantization upgrades remain targets.

## 1. Result and Claim Level

For the massive scalar on a Lorentzian time slab, restriction to two subintervals gives a continuous linear isomorphism between:

1. the strong global solution space with physical outer Dirichlet conditions; and
2. the pair of strong regional solution spaces whose field values and oriented action momenta match at the artificial timelike interface.

The same map preserves the Cauchy presymplectic form and the quadratic Hamiltonian. It works for an arbitrary cut position and for a finite ordered set of cuts, so classical reconstruction is independent of the cut and associative.

This is a genuine Lorentzian relative-CPS gluing statement, but only at degree zero. It does not prove a weak equivalence of derived Klein--Gordon complexes, a Lagrangian structure on the boundary-data map, a finite-regulator canonical map, or a quantum equivalence.

The distinction from the closest precedent is precise. Cattaneo and Mnev construct a homotopy equivalence for the Riemannian massless scalar BV complex using elliptic smoothing; their boundary phase space contains the scalar and its normal momentum. The result below instead proves an exact Lorentzian strong-solution reconstruction and CPS comparison, without importing their elliptic homotopy. See [Cattaneo--Mnev](https://arxiv.org/abs/2208.11211), especially Section 5. General hypotheses needed for rigorous CPS and Peierls constructions are discussed by [Khavkine](https://arxiv.org/abs/1402.1282).

## 2. Minimal Cut-Region Category

Fix

$$\begin{align}
I=[t_i,t_f],\qquad X=[a,b],\qquad a<b,\qquad m>0,
\end{align}$$

with Lorentzian metric $-dt^2+dx^2$ and the standard time orientation. Let $\mathbf{CutInt}_{I,X}$ be the category whose objects are closed subslabs

$$\begin{align}
M_{[u,v]}=I\times[u,v],\qquad a\leq u<v\leq b,
\end{align}$$

and whose morphisms are inclusions preserving the metric, spacetime orientation, and time orientation. Endpoint labels are determined relative to the fixed global interval: an endpoint inherited from $a$ or $b$ is physical, while any newly exposed interior endpoint is artificial.

The category records restriction. Gluing is additional specified structure: for $u<c<v$,

$$\begin{align}
M_{[u,v]}=M_{[u,c]}\cup_{\Gamma_c}M_{[c,v]}, \qquad \Gamma_c=I\times\{c\}.
\end{align}$$

Finite ordered partitions

$$\begin{align}
a=x_0<x_1<\cdots<x_n=b
\end{align}$$

encode iterated cuts. Orientation reversal at a common interface reverses the action momentum but not the boundary value. This background-dependent category is not a topological bordism category: the metric, mass, physical boundary labels, and time slab are retained.

## 3. Action and Interface Conventions

For one cut $a<c<b$, introduce

$$\begin{align}
y_1=x-a,\qquad y_2=b-x,
\end{align}$$

with lengths

$$\begin{align}
\ell_1=c-a,\qquad \ell_2=b-c.
\end{align}$$

Both $y_i$ increase from a physical outer endpoint toward the artificial cut. The regional actions are

$$\begin{align}
S_i[\phi_i] =\frac12\int_I dt\int_0^{\ell_i}dy_i \left(\dot\phi_i^2-(\phi_i')^2-m^2\phi_i^2\right),
\end{align}$$

with

$$\begin{align}
\phi_i(t,0)=0.
\end{align}$$

Write the equation as

$$\begin{align}
P_i\phi_i :=\partial_t^2\phi_i-\partial_{y_i}^2\phi_i+m^2\phi_i=0,
\end{align}$$

equivalently

$$\begin{align}
-\ddot\phi_i+\phi_i''-m^2\phi_i=0.
\end{align}$$

At the interface define

$$\begin{align}
q_i:=\phi_i|_{y_i=\ell_i}, \qquad f_i:=\phi_i'|_{y_i=\ell_i}, \qquad \pi_i:=-f_i.
\end{align}$$

Here $f_i$ is the derivative in the coordinate increasing toward the cut, while $\pi_i$ is the momentum appearing in the action variation:

$$\begin{align}
\left.\delta S_i\right|_{\Gamma_c} =\int_I dt\,\pi_i\,\delta q_i =-\int_I dt\,f_i\,\delta q_i.
\end{align}$$

In the global $x$ coordinate,

$$\begin{align}
f_1=\partial_x\phi|_{c^-}, \qquad f_2=-\partial_x\phi|_{c^+}.
\end{align}$$

Thus

$$\begin{align}
f_1+f_2=0 \quad\Longleftrightarrow\quad \partial_x\phi|_{c^-}=\partial_x\phi|_{c^+}.
\end{align}$$

## 4. Strong Field and Trace Spaces

For a spatial interval $J$, define

$$\begin{align}
\mathcal X(J) := C^0\!\left(I;H^2(J)\right) \cap C^1\!\left(I;H^1(J)\right) \cap C^2\!\left(I;L^2(J)\right),
\end{align}$$

with the sum of the three standard norms. Let $\mathcal F(J)\subset\mathcal X(J)$ impose Dirichlet data only at endpoints of $J$ that coincide with the physical endpoints $a$ or $b$. Artificial endpoints remain unrestricted.

Define the strong solution space

$$\begin{align}
\operatorname{Sol}(J) := \left\{ \phi\in\mathcal F(J)
\;\middle|\; P\phi=0\ \text{in}\ C^0(I;L^2(J)) \right\}.
\end{align}$$

The boundary-history and boundary-momentum spaces are

$$\begin{align}
\mathcal B_c:=C^1(I), \qquad \mathcal N_c:=C^0(I), \qquad \mathfrak P_c:=\mathcal B_c\oplus\mathcal N_c.
\end{align}$$

These choices make the traces explicit:

- $H^1(J)\hookrightarrow C^0(\overline J)$ in one spatial dimension, so evaluation of $\phi$ and $\dot\phi$ at an endpoint is continuous;
- $H^2(J)\hookrightarrow C^1(\overline J)$, so evaluation of $\partial_x\phi$ at an endpoint is continuous.

Consequently,

$$\begin{align}
q_i\in C^1(I), \qquad \pi_i\in C^0(I),
\end{align}$$

and the boundary maps

$$\begin{align}
r_i:\operatorname{Sol}([a,c])\ \text{or}\ \operatorname{Sol}([c,b]) \longrightarrow\mathfrak P_c, \qquad r_i(\phi_i)=(q_i,\pi_i),
\end{align}$$

are continuous linear maps. No surjectivity of $r_i$ is assumed.

For an admissible prescribed history $q\in\mathcal B_c$, the regional object used in the active formalism is the affine fiber

$$\begin{align}
\mathcal P_i[q] := \left\{ \phi_i\in\operatorname{Sol}_i
\;\middle|\; q_i=q \right\}.
\end{align}$$

Its tangent vectors obey $\delta q_i=0$. The notation does not assert that every $q\in C^1(I)$ is attained by a strong solution with arbitrary independently chosen temporal data.

## 5. Action-First Critical Locus

### Proposition 5.1 — Smooth Variational Characterization

Let $\mathcal F_{12}^{\infty,\mathrm{cont}}$ be the smooth regional pairs satisfying the physical outer Dirichlet conditions and

$$\begin{align}
q_1=q_2=q.
\end{align}$$

Take smooth variations that vanish at $t_i,t_f$, vanish at the physical outer endpoints, and have a common otherwise arbitrary interface trace $\delta q$. Then a pair is a critical point of

$$\begin{align}
(S_1+S_2)|_{\mathcal F_{12}^{\infty,\mathrm{cont}}}
\end{align}$$

if and only if

$$\begin{align}
P_i\phi_i=0, \qquad q_1=q_2, \qquad f_1+f_2=0.
\end{align}$$

#### Proof

Integration by parts gives

$$\begin{align}
\delta(S_1+S_2) =-\sum_{i=1}^2\int_I dt\int_0^{\ell_i}dy_i\, (P_i\phi_i)\delta\phi_i -\int_I dt\,(f_1+f_2)\delta q,
\end{align}$$

after the allowed temporal and physical outer-boundary variations have been removed. Interior variations give $P_i\phi_i=0$. Every compactly supported smooth function on the interior of $I$ occurs as the common trace of an allowed interface variation, so the fundamental lemma gives $f_1+f_2=0$. The converse follows by substitution. ∎

The continuity pullback is formed before the last equation is known. Flux matching is therefore an Euler--Lagrange equation in the common-$q$ direction, not part of the initial configuration-space definition.

## 6. Sobolev Gluing Lemma

### Lemma 6.1 — Spatial $H^2$ Gluing

Let

$$\begin{align}
u_1\in H^2(a,c), \qquad u_2\in H^2(c,b),
\end{align}$$

and let $u$ be their piecewise union. Then $u\in H^2(a,b)$ if and only if

$$\begin{align}
u_1(c)=u_2(c), \qquad \partial_xu_1(c)=\partial_xu_2(c).
\end{align}$$

On this matching closed subspace, piecewise gluing is a continuous linear map into $H^2(a,b)$.

#### Proof

For a piecewise $H^2$ function, its distributional first derivative is the piecewise first derivative plus a delta distribution with coefficient equal to the jump of $u$. Its distributional second derivative additionally contains a delta-prime term from the jump of $u$ and a delta term from the jump of $\partial_xu$. Both distributional singularities vanish exactly under the two matching conditions. The remaining second derivative is piecewise $L^2$, hence $u\in H^2(a,b)$. Conversely, the one-dimensional $H^2$ trace has a globally continuous representative with continuous first derivative, so both jumps vanish. The norm estimate follows from the closed graph theorem, or directly from the sum of the piecewise $L^2$ derivative norms. ∎

### Corollary 6.2 — Time-Dependent Strong Gluing

Suppose

$$\begin{align}
\phi_1\in\mathcal X(a,c), \qquad \phi_2\in\mathcal X(c,b).
\end{align}$$

Their piecewise union belongs to $\mathcal X(a,b)$ if

$$\begin{align}
\phi_1(t,c)=\phi_2(t,c)
\end{align}$$

as an equality in $C^1(I)$ and

$$\begin{align}
\partial_x\phi_1(t,c)=\partial_x\phi_2(t,c)
\end{align}$$

as an equality in $C^0(I)$.

Indeed, Lemma 6.1 applies to $\phi(t)$ for every $t$. The equality of the $C^1$ boundary histories gives matching traces of $\dot\phi_i$, so the piecewise time derivative lies in $C^0(I;H^1(a,b))$. The second time derivative requires no spatial trace and glues in $C^0(I;L^2(a,b))$. Continuity in the stated time-dependent norms follows because restriction and matched gluing are bounded linear maps.

## 7. Main Relative-CPS Gluing Theorem

Define orientation reversal on boundary phase data by

$$\begin{align}
\mathsf a_c(q,\pi):=(q,-\pi).
\end{align}$$

Let

$$\begin{align}
\operatorname{Sol}_{\mathrm{match}}(c) := \operatorname{Sol}([a,c]) \times_{\mathfrak P_c} \operatorname{Sol}([c,b]),
\end{align}$$

where the two maps are $r_1$ and $\mathsf a_c\circ r_2$. Explicitly,

$$\begin{align}
\operatorname{Sol}_{\mathrm{match}}(c) = \left\{ (\phi_1,\phi_2)
\;\middle|\; q_1=q_2,\ \pi_1=-\pi_2 \right\}.
\end{align}$$

### Theorem 7.1 — Lorentzian Strong-Solution Gluing

Restriction in the coordinates of Section 3 defines a continuous linear isomorphism

$$\begin{align}
R_c: \operatorname{Sol}([a,b]) \xrightarrow{\ \cong\ } \operatorname{Sol}_{\mathrm{match}}(c).
\end{align}$$

Its inverse $G_c$ is piecewise reconstruction. Therefore

$$\begin{align}
\operatorname{Sol}([a,b])
\cong \operatorname{Sol}([a,c])
\times_{\mathfrak P_c} \operatorname{Sol}([c,b])
\end{align}$$

as topological vector spaces.

#### Proof

If $\phi\in\operatorname{Sol}([a,b])$, restriction is continuous in every component of the $\mathcal X$ norm. The global $H^2$ regularity gives continuity of $\phi$ and $\partial_x\phi$ at $c$. With

$$\begin{align}
f_1=\partial_x\phi|_{c^-}, \qquad f_2=-\partial_x\phi|_{c^+},
\end{align}$$

this is precisely $q_1=q_2$ and $f_1+f_2=0$, or equivalently $r_1=\mathsf a_c\circ r_2$. Hence $R_c$ lands in the matched fiber product.

Conversely, a matched regional pair has equal $C^1$ boundary histories and equal global $x$ derivatives. Corollary 6.2 reconstructs a field $\phi\in\mathcal X(a,b)$. The physical outer Dirichlet data are inherited. Since $P\phi_i=0$ on the two open subintervals and the matching conditions remove the delta and delta-prime interface terms, $P\phi=0$ as an $L^2$ distribution on $(a,b)$. Thus $\phi\in\operatorname{Sol}([a,b])$.

Restriction and reconstruction are inverse by definition. Their continuity follows from the restriction estimates and Lemma 6.1. ∎

### Corollary 7.2 — Discrete Smooth-Family Stack

For a finite-dimensional smooth test manifold $S$, define

$$\begin{align}
\underline{\operatorname{Sol}}^{\infty}(M)(S)
\end{align}$$

to be the set of smooth $S$-families of smooth solutions with the stated boundary conditions. These assignments are sheaves of sets, hence discrete stacks, on the test-manifold site. The smooth version of the proof above is natural under pullback in $S$ and gives

$$\begin{align}
\underline{\operatorname{Sol}}^{\infty}(M_{[a,b]})
\cong
\underline{\operatorname{Sol}}^{\infty}(M_{[a,c]})
\times_{\underline{\mathcal P}_c^{\infty}}
\underline{\operatorname{Sol}}^{\infty}(M_{[c,b]}).
\end{align}$$

Because every object here is $0$-truncated, this ordinary pullback also computes its homotopy pullback in sheaves of spaces. This statement does not compute the derived critical locus or a homotopy pullback of BV complexes.

## 8. Covariant Phase-Space Compatibility

For two tangent solutions $\delta_1\phi,\delta_2\phi$, define

$$\begin{align}
\omega_J(t)(\delta_1\phi,\delta_2\phi) := \int_J dx\, \left( \delta_1\dot\phi\,\delta_2\phi -\delta_2\dot\phi\,\delta_1\phi \right).
\end{align}$$

Equivalently,

$$\begin{align}
\omega_J(t) =\int_Jdx\,\delta\dot\phi\wedge\delta\phi.
\end{align}$$

### Theorem 8.1 — CPS and Hamiltonian Compatibility

Under the isomorphism $R_c$:

1. the Cauchy form is additive,

$$\begin{align}
\omega_{[a,b]}(t) = \omega_1(t)+\omega_2(t);
\end{align}$$

2. the summed regional form is independent of $t$ on matched tangent solutions;
3. on a fixed-history fiber $\mathcal P_i[q]$, the regional form is independent of $t$ on vertical tangent vectors;
4. the quadratic Hamiltonian is additive,

$$\begin{align}
H_{[a,b]}=H_1+H_2,
\end{align}$$

   and the summed regional boundary work cancels after gluing.

#### Proof

The first identity follows by splitting the global spatial integral at $c$ and changing from $x$ to $y_2=b-x$ on the right region.

For any regional tangent solutions,

$$\begin{align}
\frac{d}{dt}\omega_i(t) = \left.\delta\phi_i'\wedge\delta\phi_i\right|_{0}^{\ell_i}.
\end{align}$$

The physical outer term vanishes. On a fixed-history fiber, $\delta q_i=0$, so the interface term also vanishes. On the matched space, the two interface terms sum to

$$\begin{align}
\delta(f_1+f_2)\wedge\delta q=0.
\end{align}$$

This proves the second and third statements.

Finally,

$$\begin{align}
H_i(t) = \frac12\int_0^{\ell_i}dy_i \left( \dot\phi_i^2+(\phi_i')^2+m^2\phi_i^2 \right)
\end{align}$$

satisfies

$$\begin{align}
\frac{dH_i}{dt}=f_i\dot q
\end{align}$$

on shell. Hence

$$\begin{align}
\frac{d}{dt}(H_1+H_2) =(f_1+f_2)\dot q=0.
\end{align}$$

The value $H_1+H_2$ equals the global spatial integral after the same coordinate change used for the Cauchy form. ∎

This theorem proves compatibility of the ordinary Cauchy CPS structure with classical reconstruction. It does not prove that the boundary map $r_i$ is Lagrangian in a derived or infinite-dimensional symplectic category.

## 9. Arbitrary Cuts and Classical Associativity

### Corollary 9.1 — Cut-Position Independence

Theorems 7.1 and 8.1 hold for every $c\in(a,b)$. For any two cut positions $c$ and $\widetilde c$, the comparison

$$\begin{align}
R_{\widetilde c}\circ G_c
\end{align}$$

is the unique regional re-expression of the same global strong solution. It preserves the reconstructed field, Cauchy form, and Hamiltonian.

This is exact continuum independence. It says nothing about the cut dependence of a regional mode truncation at finite $N$.

### Corollary 9.2 — Finite-Cut Classical Associativity

For a finite partition

$$\begin{align}
a=x_0<x_1<\cdots<x_n=b,
\end{align}$$

let $\operatorname{Sol}_{\mathrm{match}}(\{x_j\})$ be the regional strong solutions whose field values and global $x$ derivatives match at every interior cut. Restriction and piecewise reconstruction give

$$\begin{align}
\operatorname{Sol}([a,b])
\cong \operatorname{Sol}_{\mathrm{match}}(\{x_j\}).
\end{align}$$

Every parenthesized order of binary gluing is the same map after identification with the global solution space. Thus the coherence map at this level is the identity on the reconstructed global field. The Cauchy forms and Hamiltonians add over all subintervals.

This proves associativity only for 0-truncated classical reconstruction and its ordinary CPS data. It does not prove associativity of derived critical loci, reduced finite-$N$ symplectic maps, or metaplectic lifts.

## 10. What Has and Has Not Been Proved

### Verified

- the action-first order: continuity first, flux matching from the common-$q$ variation;
- continuous field-value and normal-derivative traces on the declared strong field space;
- the spatial and time-dependent Sobolev gluing lemmas;
- topological linear equivalence between global and matched regional strong solution spaces;
- the corresponding equivalence of smooth-family discrete stacks;
- additivity and conservation of the Cauchy form after matching;
- additivity and conservation of the Hamiltonian after cancellation of regional boundary work;
- exact classical independence of the cut position;
- classical associativity for a finite set of cuts.

The interface sign, symplectic-flux cancellation, and energy-flux cancellation were also checked by direct Mathematica residuals.

### Assumptions

- signature $(-,+)$ and $m>0$;
- compact time slab and finite spatial interval;
- physical outer Dirichlet conditions;
- strong solutions in $C^0_tH^2_x\cap C^1_tH^1_x\cap C^2_tL^2_x$;
- smooth temporal-endpoint behavior for the variational proposition;
- no scalar gauge symmetry and hence only discrete groupoids at this stage.

### Not Verified

- well-posedness for every prescribed $q\in C^1(I)$ and independently selected temporal data;
- optimal energy-space or distributional-trace regularity;
- a weak equivalence of Lorentzian derived Klein--Gordon complexes;
- a shifted-symplectic or Lagrangian structure on the boundary-data maps;
- equivalence between a derived action-first critical locus and a derived boundary-phase pullback;
- compatibility with a specific finite regulator, reduced symplectic matrix, or Hamiltonian matrix;
- metaplectic, CCR, algebraic-continuum, or Fock-space equivalence.

The next theorem layer is therefore finite-regulator compatibility, not a broader claim that the derived or quantum problem has already been solved.
