# Geometry, Function Spaces, and Theorem Targets

## 1. Direct verdict and scope

The full scoped technical chain is closed under the following precise reading:

- the background, orientations, endpoint policy, and gauge policy are fixed below;
- the action-derived Maxwell system reduces to two regular half-line master fields for every $j\geq1$;
- past-horizon restriction is a bijection on the declared smooth spectral/weighted-angular core and on its explicitly stated infrared-controlled completion;
- a universal point-trace/endpoint theorem on the energy norm alone is `false`; the separately declared raw trace completion is classified, while its maximal smooth-center bulk range remains `conditional`;
- the Maxwell Lee--Wald equality, compact-observable Peierls equality, Bunch--Davies KMS restriction, and stretched-horizon comparison are closed on the explicit spaces declared in `04`, `06`, `07`, and `09`.

Thus `03` proves the core and CPS-completed versions of T1. Calculations `04`, `06`, `08`, and `07` prove T2, T3, stratified T4, and local-algebra T5, respectively, on the explicit spaces stated there; `09` proves the scoped direct-null/DEM comparison. The energy-only point-trace claims `T1-max` and `T2-max` are `false`, whereas the trace-topology range claims `T1-trace` and `T2-trace` remain `conditional`. This project is not a new static-coordinate mode expansion: the logical order is

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

On the zero-endpoint spectral core, the relevant boundary flux variations vanish and the potential quotient agrees with the field-strength description. On an endpoint-enlarged phase space, transformations failing (5.6) are charged directions and must be retained or represented by an explicitly chosen boundary frame. That enlarged statement is not silently included in T1.

## 6. Horizon coordinates and endpoint policy

On $\mathcal H^-$,

$$
V=-e^{-v},\qquad dV=(-V)dv,\qquad
F_{vA}=(-V)F_{VA}.
\tag{6.1}
$$

Consequently the static-energy flux density satisfies

$$
\int_{-\infty}^{\infty}dv\,|F_{vA}|_\gamma^2
=\int_{-\infty}^{0}dV\,(-V)|F_{VA}|_\gamma^2.
\tag{6.2}
$$

The past endpoint $V\to-\infty$ and the bifurcation endpoint $V\to0^-$ are treated as follows:

- on an affine-smooth core, pointwise corner fields at $B$ exist and are retained in the raw data;
- on $\mathfrak C_{\mathrm{sp}}$, logarithmic profiles are Schwartz in $v$ and have zero limits, although $F_{VA}$ need not be affine-smooth at $V=0$;
- in the completion (5.5), point evaluation at $B$ is not continuous and is not used;
- nonzero endpoint limits, half-horizon memory, and charged relative frames require an enlarged space and are deferred to `08`.

Thus “corner datum” means an actual trace only on a space where that trace has been declared. No point value is assigned to a generic Hilbert-space equivalence class.

## 7. Precise theorem targets

### T1 — characteristic restriction/reconstruction

Let $\mathcal X_{\mathcal H^-}^{\mathrm{comp},(s)}$ be the constraint-complete past-horizon space defined in `01` and coordinatized spectrally in `03`. The target theorem is

$$
\boxed{
R_-:\mathcal P_{\mathrm{bulk}}^{(s)}
\longrightarrow
\mathcal X_{\mathcal H^-}^{\mathrm{comp},(s)}
\text{ is a continuous bijection with continuous inverse}.}
\tag{T1}
$$

Status: `proved` on $\mathfrak C_{\mathrm{sp}}$ and the infrared-controlled completion (5.5), at `03`, Theorem 7.1. The maximal finite-energy/endpoint extension is `conditional`.

### T2 — Lee--Wald restriction and symplectic scattering

$$
\boxed{R_-^*\Omega_-=\Omega_{\mathrm{bulk}},
\qquad
\mathscr S^*\Omega_+=\Omega_-.}
\tag{T2}
$$

Status: `proved` on $\mathfrak C_{\mathrm{sp}}$ and the infrared-controlled
completion (5.5), at `04`, Theorem 9.1. The maximal finite-energy extension
with independent endpoint traces remains `conditional` and is not silently
included in T2.

### T3 — characteristic inverse equals the Peierls bracket

The inverse of the complete horizon two-form, lifted through the field-strength dictionary, must equal the bulk advanced-minus-retarded Maxwell propagator on gauge-invariant smearings.

Status: `proved` on the compact gauge-invariant field-strength test quotient
$\Omega_c^2/\mathcal N_F$, at `06`, Theorem 8.1. Sharp endpoint-memory
functionals outside the CPS topology remain `conditional` and are not included
in T3.

### T4 — Coulomb, corner, topology, zero frequency, and memory

The target is a disjoint classification of:

1. electric and magnetic $j=0$ flux sectors;
2. $j\geq1$ cut values fixed by radiative master profiles;
3. large-gauge/relative-frame directions;
4. genuine endpoint memory;
5. the $\omega\to0$ limit of radiative states;
6. discrete bundle topology.

Status: `conditional` as a complete theorem. `02` proves the absence of smooth finite-energy $j=0$ electric/magnetic flux on $B^3$, while `01` and `03` prove the core $j\geq1$ corner dictionary. The endpoint/memory completion is reserved for `08`.

### T5 — Bunch--Davies KMS restriction

The Bunch--Davies state, defined globally by Euclidean analyticity or equivalently by affine-horizon positive frequency on the gauge-invariant algebra, restricts to a $\beta=2\pi L$ KMS state for static time translations.

Status: `proved` on the local-observable/BD-continuity characteristic algebra,
at `07`, Theorem 8.1. A regular extension to every vector of the larger CPS
completion is `false` without additional infrared control. No formal partial
trace or sharp Hilbert-space tensor factorization is used.

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
