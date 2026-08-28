# Geometry, Function Spaces, and Theorem Targets

## 1. Direct verdict and scope

The zero-trace logarithmic radiation-field chain is closed; the affine
horizon/corner range is not.  More precisely:

- the background, orientations, bundle sector, and gauge policy are fixed below;
- the action-derived Maxwell system reduces to two regular half-line master fields for every $j\geq1$;
- `T1-log` is a restriction/reconstruction bijection on the declared
  logarithmic spectral core and its infrared-controlled CPS completion;
- `T2-log` is the corresponding Lee--Wald theorem with zero endpoint traces;
- `10` proves a finite-order, modewise/rapid-angular affine criterion
  `T1-aff(k)`, including a two-ended scattering compatibility condition, but
  the maximal fixed-Sobolev affine Maxwell range `T1-aff` remains
  `conditional`;
- `T2-aff` and `T4-bulk` remain `conditional` because endpoint traces,
  memory, relative frames, and the Lee--Wald representative must be matched
  on that still-incomplete range;
- `T3-local` is proved only after the Maxwell test-complex lemma in `11`;
  `T3-sharp` remains conditional;
- `T5-W*` is the normal KMS theorem in the BD GNS representation; the
  abstract Weyl algebra has only a dense analytic boundary relation, not a
  point-norm continuous $C^*$-dynamics;
- the DEM DtN and modewise cut identities are proved, while a full
  phase-space null-limit is conditional.

Therefore calculations `00`--`09` are not all closed.  The former names T1,
T2, T4, T5, and the boxed phase-space statement in `09` are split below and
in the claim ledger.  This project is not a new static-coordinate mode
expansion: the logical order is

$$
S[A]\longrightarrow \theta,\omega
\longrightarrow \text{raw null pullback}
\longrightarrow \text{constraints and corners}
\longrightarrow \text{proper-gauge quotient}
\longrightarrow \text{action-level masters}
\longrightarrow \text{restriction/reconstruction}.
$$

The product-background benchmark at `../../null-characteristic-cps/` is a read-only technical comparator. None of its closed claims are reopened here.

## 2. Static-patch geometry

Let $L>0$ be the de Sitter radius. On the northern static patch,

$$
ds^2=-\left(1-\frac{r^2}{L^2}\right)dt^2
+\frac{dr^2}{1-r^2/L^2}+r^2d\Omega_2^2,
\qquad 0\leq r<L.
\tag{2.1}
$$

Use dimensionless static time and the hyperbolic radial coordinate

$$
\tau:=\frac{t}{L},
\qquad
r=L\tanh\rho,
\qquad
0\leq\rho<\infty.
\tag{2.2}
$$

Then

$$
\boxed{
ds^2=L^2\operatorname{sech}^2\rho
\left[-d\tau^2+d\rho^2+\sinh^2\rho\,d\Omega_2^2\right].}
\tag{2.3}
$$

Write

$$
\widehat g=-d\tau^2+d\rho^2+a(\rho)^2\gamma_{AB}dx^A dx^B,
\qquad a(\rho)=\sinh\rho,
\tag{2.4}
$$

where $\gamma$ is the unit round metric. In four dimensions, the Hodge star on two-forms and the Maxwell action are invariant under $g=\Omega^2\widehat g$. All action reductions may therefore be carried out with $\widehat g$, while physical horizon normal fields retain the appropriate factors of $L^{-2}$.

The exact component regression in `../scripts/geometry_hodge_checks.wl` gives

$$
\det g=-L^8\operatorname{sech}^4\rho\tanh^4\rho\sin^2\vartheta,
\qquad
R[g]=\frac{12}{L^2}.
\tag{2.5}
$$

Status: `checked symbolically`.

## 3. Static null and affine horizon coordinates

Define static null coordinates

$$
u=\tau-\rho,
\qquad
v=\tau+\rho.
\tag{3.1}
$$

Thus

$$
-d\tau^2+d\rho^2=-du\,dv.
\tag{3.2}
$$

Choose Kruskal coordinates

$$
U=e^u>0,
\qquad
V=-e^{-v}<0.
\tag{3.3}
$$

They obey

$$
UV=-e^{-2\rho},
\qquad
\frac rL=\frac{1+UV}{1-UV},
\tag{3.4}
$$

and the metric is

$$
\boxed{
ds^2=-\frac{4L^2}{(1-UV)^2}\,dU\,dV
+L^2\left(\frac{1+UV}{1-UV}\right)^2d\Omega_2^2.}
\tag{3.5}
$$

The static patch is

$$
U>0,\qquad V<0,\qquad -1\leq UV<0.
\tag{3.6}
$$

Its distinguished loci are

$$
\mathcal H^-:=\{U=0,V<0\},
\qquad
B:=\{U=V=0\}\cong S^2,
\qquad
\mathcal H^+:=\{V=0,U>0\}.
\tag{3.7}
$$

The center $r=0$ is $UV=-1$. The static Killing field is

$$
K=\partial_t=L^{-1}\partial_\tau
=L^{-1}(U\partial_U-V\partial_V).
\tag{3.8}
$$

With (3.5), $V$ is affine along $\mathcal H^-$ and $U$ is affine along $\mathcal H^+$. Their normalization is now fixed; rescaling $U\mapsto cU, V\mapsto c^{-1}V$ is not performed later without also transforming all endpoint conventions.

Status: `proved`; proof is the direct coordinate transformation (3.1)--(3.5), with regression in `geometry_hodge_checks.wl`.

## 4. Orientation conventions

The spacetime orientation is the common orientation class

$$
\operatorname{or}(M)
=\big[d\tau\wedge d\rho\wedge\operatorname{vol}_\gamma\big]
=\big[dU\wedge dV\wedge\operatorname{vol}_\gamma\big],
\qquad
dU\wedge dV=-2UV\,d\tau\wedge d\rho,
\quad -2UV>0.
\tag{4.1}
$$

Square brackets in (4.1) denote an orientation class, not equality of normalized volume forms.

For a double-null metric written as

$$
ds^2=-2\mathcal A(U,V,x)dU\,dV+q_{AB}(U,V,x)dx^A dx^B,
\tag{4.2}
$$

we use future-generator presentation orientations

$$
\operatorname{or}(\mathcal H^-)=dV\wedge\operatorname{vol}_{q},
\qquad
\operatorname{or}(\mathcal H^+)=dU\wedge\operatorname{vol}_{q}.
\tag{4.3}
$$

On the chosen static-patch halves, both $\partial_V$ and $\partial_U$ are future directed. The endpoint orientation induced at $B$ from $\mathcal H^-$ is $+\operatorname{vol}_B$, while that induced from $\mathcal H^+$ is $-\operatorname{vol}_B$. Hence corner terms cancel when the two presentations are glued with these conventions. If a Stokes calculation uses outward-boundary orientations instead, the corresponding overall sheet sign must be inserted explicitly; it is never hidden in the definition of $\Omega_\pm$.

A constant-$\tau$ slice carries the future-normal presentation orientation

$$
\operatorname{or}(\Sigma_\tau)=d\rho\wedge\operatorname{vol}_\gamma.
\tag{4.4}
$$

For in/out scattering, `04` derives from finite characteristic triangles that
$\Omega_-$ is the past future-generator pullback, whereas $\Omega_+$ is minus
the future future-generator pullback. This explicit scattering sign is not a
change of the presentation orientations above.

On either horizon,

$$
q_{AB}=L^2\gamma_{AB},
\qquad
\partial_Vq_{AB}\big|_{\mathcal H^-}=0,
\qquad
\partial_Uq_{AB}\big|_{\mathcal H^+}=0.
\tag{4.5}
$$

## 5. Center regularity and the bulk solution space

### 5.1 Smooth center

After the action-level harmonic reduction of `02`, every radiative sector has $j\geq1$ and a master field $\Psi^P_{jm}$, $P=E,B$. Smoothness of the Maxwell tensor in Cartesian coordinates at $r=0$ selects

$$
\Psi^P_{jm}(\tau,\rho)=O(\rho^{j+1})
\qquad(\rho\to0),
\tag{5.1}
$$

and excludes the singular branch $O(\rho^{-j})$. This is also the unique Friedrichs-domain branch of the half-line operator in `03`.

### 5.2 Smooth spectral and weighted-angular core

It is convenient to use a real orthonormal spherical-harmonic basis. Let

$$
\lambda_j=j(j+1).
$$

The primary classical core $\mathfrak C_{\mathrm{sp}}$ consists of coefficient families

$$
c=\{c^P_{jm}(\omega)\}_{P=E,B;\,j\geq1,m},
\tag{5.2}
$$

such that, for each element:

1. every $c^P_{jm}\in C_c^\infty(0,\infty)$, with support contained in some compact $K\Subset(0,\infty)$;
2. for every $N,k\geq0$,

   $$
   \sum_{P,j,m}(1+\lambda_j)^N
   \|\partial_\omega^k c^P_{jm}\|_{L^2(K)}^2<\infty;
   \tag{5.3}
   $$

3. the reconstructed field satisfies (5.1).

This is a smooth spectral core with rapid angular decay. It excludes $\omega=0$ by construction and is dense in each completion below.

The normalized vector harmonics preserve angular Sobolev order for the
radiative one-form $F_{vA}$, but the normal scalars and the angular two-form
carry an additional factor $\sqrt{\lambda_j}$.  At fixed $s$ the master
weight in (5.3) therefore maps to

$$
F_{vA}\in H^s(S^2;T^*S^2),
\qquad
\mathcal E,\mathcal B\in H^{s-1}(S^2).
\tag{5.3a}
$$

All field-strength components lie in $H^s$ only if the master domain is
raised to angular order $s+1$.  Polynomial losses are harmless in the
Fréchet intersection over all $s$, but not in a fixed-$s$ isomorphism.  The
exact estimate is recorded in `10`, section 8.

### 5.3 Energy and CPS completions

The static energy is

$$
H_{\partial_\tau}
=2\sum_{P,j,m}\int_0^\infty d\omega\,
\omega^2|c^P_{jm}(\omega)|^2.
\tag{5.4}
$$

Finite energy alone does not control the infrared part of the symplectic form, whose spectral weight is $\omega$. Therefore the completion used for the classical CPS is, for any angular Sobolev weight $s\geq0$,

$$
\boxed{
\|c\|_{\mathrm{CPS},s}^2
=2\sum_{P,j,m}(1+\lambda_j)^s
\int_0^\infty d\omega\,(\omega+\omega^2)|c^P_{jm}(\omega)|^2<\infty.}
\tag{5.5}
$$

Denote the resulting real solution space by $\mathcal P_{\mathrm{bulk}}^{(s)}$, and the Fréchet intersection over all $s$ by $\mathcal P_{\mathrm{bulk}}^{(\infty)}$. The maximal energy space obtained from (5.4) alone is larger. Claims about its endpoint traces, memory sectors, or global symplectic continuity are deferred to `08`.

### 5.4 Maxwell and gauge interpretation

The primary coordinates on $\mathcal P_{\mathrm{bulk}}$ are gauge-invariant field strengths reconstructed from the two masters. At potential level, begin with solutions $A$, retain the raw Lee--Wald form, and quotient only by

$$
\mathcal G_{\mathrm{proper}}
=\left\{d\varepsilon:
\int_{\partial\Sigma}\varepsilon\,*\delta F=0
\text{ for every allowed }\delta F\right\}.
\tag{5.6}
$$

On the zero-endpoint spectral core, the relevant boundary flux variations vanish and the potential quotient agrees with the field-strength description. On an endpoint-enlarged phase space, transformations failing (5.6) are charged directions and must be retained or represented by an explicitly chosen boundary frame. That enlarged statement is not silently included in `T1-log`.

## 6. Horizon coordinates and endpoint policy

On $\mathcal H^-$,

$$
V=-e^{-v},\qquad dV=(-V)dv,\qquad
r_A^{\rm aff}(V,x):=F_{VA},\qquad
\mathfrak r_A(v,x):=F_{vA}=(-V)F_{VA}.
\tag{6.1}
$$

Consequently the static-energy flux density satisfies

$$
\int_{-\infty}^{\infty}dv\,|F_{vA}|_\gamma^2
=\int_{-\infty}^{0}dV\,(-V)|F_{VA}|_\gamma^2.
\tag{6.2}
$$

The past endpoint $V\to-\infty$ and the bifurcation endpoint $V\to0^-$ are treated as follows:

- on an affine-smooth core, $r_A^{\rm aff}$ and the transported corner fields
  have genuine $V$-traces at $B$;
- on $\mathfrak C_{\mathrm{sp}}$, $\mathfrak r_A$ and the master profiles are
  Schwartz in $v$ and have zero logarithmic limits, but
  $r_A^{\rm aff}=e^v\mathfrak r_A$ need not be bounded at $V=0$;
- in the completion (5.5), point evaluation at $B$ is not continuous and is not used;
- nonzero endpoint limits, half-horizon memory, and charged relative frames require an enlarged space and are deferred to `08`.

The exact finite-order criterion is

$$
\partial_V^nr_A^{\rm aff}
=e^{(n+1)v}\prod_{q=1}^{n}(\partial_v+q)\mathfrak r_A,
\tag{6.3}
$$

so affine $C^k$ regularity is equivalent to the existence of the limits of
(6.3) for $0\leq n\leq k$.  `10` proves this statement and gives an explicit
Schwartz counterexample.

Thus “corner datum” means an actual trace only on a space where that trace has been declared. No point value is assigned to a generic Hilbert-space equivalence class.

## 7. Precise theorem targets

### T1-log — spectral radiation-field restriction/reconstruction

Let $\mathcal X_{\mathcal H^-}^{\mathrm{comp},(s)}$ be the constraint-complete past-horizon space defined in `01` and coordinatized spectrally in `03`. The target theorem is

$$
\boxed{
R_-:\mathcal P_{\mathrm{bulk}}^{(s)}
\longrightarrow
\mathcal X_{\mathcal H^-}^{\mathrm{comp},(s)}
\text{ is a continuous bijection with continuous inverse}.}
\tag{T1-log}
$$

Status: `proved` on $\mathfrak C_{\mathrm{sp}}$ and the infrared-controlled
completion (5.5), at `03`, Theorem 7.1.  This is a theorem for
$\mathfrak r_A=F_{vA}$ in static/logarithmic time, not for affine-smooth
$r_A^{\rm aff}=F_{VA}$.

### T1-aff — affine horizon/corner range

For fixed differentiability order $k$, `10`, Theorem 6.1 proves the exact
modewise and rapid-angular condition: the incoming master trace must satisfy
the $v\to+\infty$ affine limits, the scattered trace $S_jc$ must satisfy the
$u\to-\infty$ affine limits, and the two corner values must agree.

Status: `proved` as `T1-aff(k)` on that finite-order smooth core;
`conditional` for the maximal fixed-Sobolev affine Maxwell range and its
completed endpoint topology.

### T2-log — logarithmic Lee--Wald restriction and scattering

$$
\boxed{R_-^*\Omega_-=\Omega_{\mathrm{bulk}},
\qquad
\mathscr S^*\Omega_+=\Omega_-.}
\tag{T2-log}
$$

Status: `proved` on $\mathfrak C_{\mathrm{sp}}$ and the infrared-controlled
completion (5.5), at `04`, Theorem 9.1. The maximal finite-energy extension
with independent endpoint traces is not included.

### T2-aff — endpoint-extended Lee--Wald equality

This statement allows genuine affine traces, memory, and optional relative
frames.  It must specify the representative
$\theta\mapsto\theta+dY+\delta B$, the boundary action, boundary conditions,
and polarization because $dY$ shifts the cut symplectic potential by a corner
term.  It also depends on the maximal `T1-aff` range.

Status: `conditional`.

### T3-local / T3-sharp — characteristic inverse equals the Peierls bracket

The inverse of the complete horizon two-form, lifted through the field-strength dictionary, must equal the bulk advanced-minus-retarded Maxwell propagator on gauge-invariant smearings.

Status: `proved` as `T3-local` on the compact gauge-invariant field-strength
test quotient $\Omega_c^2/\mathcal N_F$, by `06`, Theorem 8.1 together with
the test-complex lemma `11`.  `T3-sharp` for endpoint-memory functionals
outside the CPS topology remains `conditional`.

### T4-kin / T4-bulk — trace decomposition versus bulk range

The target is a disjoint classification of:

1. electric and magnetic $j=0$ flux sectors;
2. $j\geq1$ cut values fixed by radiative master profiles;
3. large-gauge/relative-frame directions;
4. genuine endpoint memory;
5. the $\omega\to0$ limit of radiative states;
6. discrete bundle topology.

Status: `T4-kin` is `proved` in `08`: the chosen trace core has a unique
splitting and canonical form, with memory conjugate to the shifted coordinate
$\widehat a=a+2\ell_h(x)$.  `T4-bulk` is `conditional`: `10` gives necessary
and sufficient finite-mode $C^k$ conditions, but not the maximal completed
full-tower range.  `02` proves $Q_E=Q_B=0$ and no flat holonomy in the fixed
smooth trivial-bundle sector.

### T5-W* / T5-C* — Bunch--Davies KMS restriction

The Bunch--Davies state, defined globally by Euclidean analyticity or equivalently by affine-horizon positive frequency on the gauge-invariant algebra, restricts to a $\beta=2\pi L$ KMS state for static time translations.

Status: `T5-W*` is `proved` on the BD GNS von Neumann algebra, where static
time is a normal, weak-* continuous dynamics.  `T5-C*` denotes only the KMS
boundary relation on a dense analytic *-algebra of the abstract Weyl algebra;
the claim that the Weyl automorphisms are point-norm strongly continuous is
`false`.  A regular BD extension to every vector of the larger CPS completion
is also `false` without additional infrared control.

## 8. Status discipline

Every claim is indexed in `../verification/CLAIM_LEDGER.md` using only

$$
\texttt{proved},\quad
\texttt{checked symbolically},\quad
\texttt{conditional},\quad
\texttt{conjectural},\quad
\texttt{false}.
$$

Successful scripts prove only their listed finite identities and numerical error bounds. They do not by themselves prove operator domains, characteristic surjectivity, Lee--Wald equivalence, Peierls equality, KMS, or novelty.
