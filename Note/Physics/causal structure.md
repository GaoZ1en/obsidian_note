# Causal Structure in Spacetime - Final Exam Review Notes

## I. Fundamental Concepts and Definitions

### 1.1 Spacetime Metric and Light Cone Structure

**Physical Context**: In General Relativity, the causal structure of spacetime is determined by the metric tensor, which encodes both geometric and causal information.

**Mathematical Framework**: 
Given a spacetime manifold $(M, g_{\mu\nu})$ with metric signature $(-,+,+,+)$, the line element is:
$$ds^2 = g_{\mu\nu}dx^\mu dx^\nu$$

**Causal Classification of Vectors**:
For any tangent vector $V^\mu$ at point $p \in M$:
- **Timelike**: $g_{\mu\nu}V^\mu V^\nu < 0$
- **Null (Lightlike)**: $g_{\mu\nu}V^\mu V^\nu = 0$  
- **Spacelike**: $g_{\mu\nu}V^\mu V^\nu > 0$

**Light Cone Structure**: At each point $p$, the null vectors form the light cone:
$$\{V^\mu : g_{\mu\nu}(p)V^\mu V^\nu = 0, V^\mu \neq 0\}$$

### 1.2 Curves and Their Causal Character

**Definition**: A smooth curve $\gamma: I \rightarrow M$ with tangent vector $\dot{\gamma}^\mu = \frac{d\gamma^\mu}{d\lambda}$ is classified as:

$$\text{Curve Type} = \begin{cases}
\text{Timelike} & \text{if } g_{\mu\nu}\dot{\gamma}^\mu\dot{\gamma}^\nu < 0 \text{ everywhere} \\
\text{Null} & \text{if } g_{\mu\nu}\dot{\gamma}^\mu\dot{\gamma}^\nu = 0 \text{ everywhere} \\
\text{Spacelike} & \text{if } g_{\mu\nu}\dot{\gamma}^\mu\dot{\gamma}^\nu > 0 \text{ everywhere}
\end{cases}$$

**Physical Interpretation**: 
- Timelike curves represent possible worldlines of massive particles
- Null curves represent photon trajectories
- Spacelike curves cannot be traversed by any physical signal

## II. Causal Relations Between Events

### 2.1 Chronological and Causal Relations

**Definitions**: For events $p, q \in M$:

**Chronological Relation** ($p \ll q$): 
$q$ is in the chronological future of $p$ if there exists a future-directed timelike curve from $p$ to $q$.

**Causal Relation** ($p < q$):
$q$ is in the causal future of $p$ if there exists a future-directed causal (timelike or null) curve from $p$ to $q$.

**Mathematical Formulation**:
$$J^+(p) = \{q \in M : p < q\} \quad \text{(Causal Future)}$$
$$I^+(p) = \{q \in M : p \ll q\} \quad \text{(Chronological Future)}$$

Similarly for the past:
$$J^-(p) = \{q \in M : q < p\}, \quad I^-(p) = \{q \in M : q \ll p\}$$

### 2.2 Properties of Causal Sets

**Theorem 2.1**: The causal structure satisfies:
1. **Transitivity**: If $p < q$ and $q < r$, then $p < r$
2. **Irreflexivity**: $p \not< p$ (no closed causal curves in well-behaved spacetimes)
3. **Closure Relations**: $\overline{I^+(p)} = J^+(p)$

**Proof of Transitivity**:
Given causal curves $\gamma_1: [0,1] \rightarrow M$ from $p$ to $q$ and $\gamma_2: [0,1] \rightarrow M$ from $q$ to $r$, we can construct a piecewise smooth causal curve:

$$\gamma(s) = \begin{cases}
\gamma_1(2s) & s \in [0, 1/2] \\
\gamma_2(2s-1) & s \in [1/2, 1]
\end{cases}$$

The tangent vectors remain causal (timelike or null) along the entire curve, establishing $p < r$.

## III. Hierarchy of Causal Conditions and Global Hyperbolicity

### 3.1 Overview of Causal Conditions (Weak to Strong)

The causal conditions form a hierarchy where each stronger condition implies all weaker ones:

$$\text{Non-totally vicious} \subset \text{Chronological} \subset \text{Causal} \subset \text{Distinguishing} \subset \text{Strongly causal} \subset \text{Stably causal} \subset \text{Globally hyperbolic}$$

### 3.2 Non-totally Vicious Spacetimes

**Definition**: A spacetime is **non-totally vicious** if not every point lies on a closed timelike curve.

**Mathematical Condition**: There exists at least one point $p \in M$ such that $p \notin I^+(p)$.

**Physical Interpretation**: At least some regions of spacetime respect causality.

**Example 1 - Gödel Spacetime**: 
Metric: $ds^2 = -dt^2 + dx^2 + \frac{1}{2}e^{2x}dy^2 + dz^2 + 2\sqrt{2}e^x dt dy$

- Contains closed timelike curves through every point
- Therefore **totally vicious** (fails even the weakest condition)
- Demonstrates that General Relativity allows causality violation

**Example 2 - Misner Space**:
- Identification space of Minkowski with boost symmetry
- Has closed timelike curves in some regions but not everywhere
- Satisfies non-totally vicious condition

### 3.3 Chronological Spacetimes

**Definition**: A spacetime is **chronological** if it contains no closed timelike curves.

**Mathematical Condition**: For all $p \in M$: $p \notin I^+(p)$

**Equivalently**: The chronological relation $\ll$ is irreflexive.

**Theorem 3.1 (Chronological Characterization)**: A spacetime is chronological if and only if there exists a continuous function $t: M \rightarrow \mathbb{R}$ such that $t(q) > t(p)$ whenever $p \ll q$.

**Proof Sketch**:
($\Rightarrow$) If chronological, define $t(p) = \sup\{s : p \in I^+(q) \text{ for some } q \text{ with } t(q) = s\}$

($\Leftarrow$) If such $t$ exists and $p \ll p$, then $t(p) > t(p)$, contradiction.

**Physical Significance**: Allows for a global notion of "before" and "after".

**Example 1 - Minkowski Spacetime**: 
- Obviously chronological: $t$-coordinate increases along future-directed timelike curves
- Time function: $t(x^\mu) = x^0$

**Example 2 - Schwarzschild Spacetime (exterior)**: 
- Chronological in $r > 2M$ region
- Time function: $t(x^\mu) = x^0$ (Schwarzschild time)
- Interior $r < 2M$ also chronological but requires different time function

### 3.4 Causal Spacetimes

**Definition**: A spacetime is **causal** if it contains no closed causal curves (timelike or null).

**Mathematical Condition**: For all $p \in M$: $p \notin J^+(p) \setminus \{p\}$

**Theorem 3.2 (Causal implies Chronological)**: Every causal spacetime is chronological.

**Proof**: Suppose not chronological, so $\exists p$ with $p \ll p$. Then there exists a closed timelike curve through $p$, which is also a closed causal curve, contradicting causality.

**Strengthening Condition**: To upgrade from chronological to causal, we need to eliminate closed null curves. This often requires:
- Appropriate boundary conditions
- Energy conditions (e.g., null energy condition)
- Topological restrictions

**Example 1 - Flat Minkowski with Identification**:
Consider Minkowski space with identification $(t,x,y,z) \sim (t,x,y+2\pi,z)$.
- Chronological (no closed timelike curves)
- Not causal: null curve $x^\mu(\lambda) = (t_0 + \lambda, x_0, y_0 + \lambda, z_0)$ with $\lambda \in [0, 2\pi]$ forms closed null curve

**Example 2 - Anti-de Sitter Spacetime**: 
Global AdS₃: $ds^2 = \ell^2(-\cosh^2\rho \, dt^2 + d\rho^2 + \sinh^2\rho \, d\phi^2)$

Without identification: causal
With $\phi \sim \phi + 2\pi$: contains closed timelike curves, not even chronological

### 3.5 Distinguishing Spacetimes

**Definition**: A spacetime $(M,g)$ is **distinguishing** if for any two distinct points $p, q \in M$:
$$I^+(p) \neq I^+(q) \text{ or } I^-(p) \neq I^-(q)$$

**Physical Interpretation**: Any two events can be distinguished by their causal relationships with other events.

**Theorem 3.3 (Distinguishing Characterization)**: A spacetime is distinguishing if and only if the chronological relations determine the topology.

**Proof Outline**: 
- If distinguishing, the sets $\{I^+(p), I^-(p)\}$ separate points, generating the manifold topology
- Conversely, if topology determined by chronological relations, distinct points have different causal pasts/futures

**Strengthening from Causal to Distinguishing**: Requires eliminating situations where different points have identical causal relationships. Often achieved by:
- Avoiding "lightlike boundaries" 
- Ensuring generic position of points relative to null geodesics

**Example 1 - Minkowski Spacetime**: Clearly distinguishing - any two distinct events have different light cones.

**Example 2 - Spacetime with Lightlike Boundary**:
Consider half-space of Minkowski: $\{(t,x,y,z) : t \geq x\}$
- Points on boundary $t = x$ may have identical chronological futures
- Fails to be distinguishing

### 3.6 Strongly Causal Spacetimes

**Definition**: A spacetime is **strongly causal** if every point has arbitrarily small neighborhoods that no causal curve intersects more than once.

**Mathematical Condition**: For every $p \in M$ and every neighborhood $U$ of $p$, there exists a neighborhood $V \subset U$ of $p$ such that no causal curve intersects $V$ in more than one point.

**Theorem 3.4 (Strong Causality and Continuous Time Functions)**: A spacetime is strongly causal if and only if there exists a continuous time function that strictly increases along every causal curve.

**Detailed Proof**:

**($\Rightarrow$)**: Assume strong causality. 
1) Define equivalence relation: $p \sim q$ if $p \leq q$ and $q \leq p$
2) In strongly causal spacetime, this gives $p = q$ (no causal loops)
3) Construct $t: M \rightarrow \mathbb{R}$ by choosing Cauchy surface foliation locally
4) Strong causality ensures global consistency

**($\Leftarrow$)**: Assume continuous time function $t$ with $t(q) > t(p)$ whenever $p < q$.
1) For any $p$ and neighborhood $U$, choose $\epsilon > 0$ small enough
2) Set $V = U \cap \{q : |t(q) - t(p)| < \epsilon\}$
3) No causal curve can intersect $V$ twice (would require $t$ to increase and decrease)

**Strengthening from Distinguishing to Strongly Causal**: 
- Eliminate "almost closed" causal curves
- Often requires energy conditions or specific geometric constraints
- May need to pass to covering spaces

**Example 1 - Minkowski Spacetime**: Strongly causal with time function $t = x^0$.

**Example 2 - Taub-NUT Spacetime**: 
Metric: $ds^2 = -f(r)dt^2 + f(r)^{-1}dr^2 + r^2d\theta^2 + (r^2 + n^2)\sin^2\theta(d\phi + 2n\cos\theta \frac{dt}{r^2 + n^2})^2$

Where $f(r) = \frac{r^2 - 2mr + n^2}{r^2 + n^2}$

- Distinguishing but not strongly causal due to "almost closed" causal curves near the NUT
- Causality violations become arbitrarily mild but never completely eliminated

### 3.7 Stably Causal Spacetimes

**Definition**: A spacetime $(M,g)$ is **stably causal** if there exists a neighborhood of $g$ in the space of Lorentzian metrics such that every metric in this neighborhood makes $(M,\tilde{g})$ causal.

**Alternative Characterization**: Admits a smooth time function $t: M \rightarrow \mathbb{R}$ such that $\nabla t$ is past-directed timelike.

**Theorem 3.5 (Stable Causality Theorem)**: The following are equivalent:
1. $(M,g)$ is stably causal
2. There exists a smooth global time function with timelike gradient
3. $M$ admits a smooth foliation by spacelike Cauchy surfaces

**Proof Strategy**:
**(1⇒2)**: Use the stability to construct smooth time function from continuous one
**(2⇒3)**: Level sets of time function provide Cauchy surface foliation  
**(3⇒1)**: Foliation structure persists under small metric perturbations

**Detailed Construction of Time Function**:
Given stable causality, we can construct $t: M \rightarrow \mathbb{R}$ with $g^{\mu\nu}\partial_\mu t \partial_\nu t < 0$:

1) Start with continuous time function $t_0$ from strong causality
2) Use smooth partition of unity to regularize: $t = \int t_0 * \phi_\epsilon$
3) Choose $\epsilon$ small enough to preserve timelike gradient condition
4) Stability ensures this construction works for neighborhood of metrics

**Strengthening from Strongly Causal to Stably Causal**:
- Requires "robust" causality that persists under perturbations
- Often needs global topological conditions
- May require energy conditions to prevent causality violations

**Example 1 - Minkowski Spacetime**: 
- Stably causal with $t = x^0$, $\nabla t = (1,0,0,0)$ timelike
- Any small perturbation preserves this structure

**Example 2 - Spacetime with Compact Cauchy Surface**:
Consider $M = \mathbb{R} \times T^3$ with metric:
$$ds^2 = -dt^2 + \sum_{i=1}^3 (dx^i)^2$$
- Stably causal: $t$ is global time function
- Foliated by compact spacelike surfaces $\{t = \text{const}\}$

### 3.8 Globally Hyperbolic Spacetimes

**Definition**: A spacetime is **globally hyperbolic** if:
1. It is strongly causal
2. $J^+(p) \cap J^-(q)$ is compact for all $p,q \in M$

**Alternative Definition**: A Cauchy surface $\Sigma$ is a spacelike hypersurface such that every inextensible causal curve intersects $\Sigma$ exactly once. A spacetime is globally hyperbolic if it admits a Cauchy surface.

**Theorem 3.6 (Geroch's Theorem)**: A spacetime is globally hyperbolic if and only if it admits a Cauchy surface.

**Theorem 3.7 (Bernal-Sánchez Theorem)**: Every globally hyperbolic spacetime is isometric to $\mathbb{R} \times \Sigma$ where:
- $\Sigma$ is a smooth spacelike Cauchy surface  
- Metric takes form: $ds^2 = -\beta^2 dt^2 + h_{ij}(t,x^k)(dx^i + X^i dt)(dx^j + X^j dt)$

**Detailed Proof of Geroch's Theorem**:

**($\Rightarrow$)**: Assume global hyperbolicity.
1) **Construction of Cauchy surface**: 
   - Choose points $p, q$ with $J^+(p) \cap J^-(q) = M$ (possible by compactness)
   - Consider level set $S = \{r \in M : d(p,r) = d(r,q)\}$ where $d$ is Lorentzian distance
   - Strong causality ensures $S$ is spacelike surface
   - Compactness condition ensures every causal curve intersects $S$

2) **Uniqueness of intersection**:
   - Suppose causal curve $\gamma$ intersects $S$ at two points $r_1, r_2$
   - This would create causal diamond violating compactness
   - Therefore each causal curve intersects $S$ exactly once

**($\Leftarrow$)**: Assume Cauchy surface $\Sigma$ exists.
1) **Strong causality**: Foliation by Cauchy surfaces provides local strong causality
2) **Compactness**: For any $p, q$, the set $J^+(p) \cap J^-(q)$ lies in causal diamond bounded by $\Sigma$-slices, hence compact

**Strengthening from Stably Causal to Globally Hyperbolic**:
Requires additional compactness condition. Can be achieved by:
- Spatial compactness of Cauchy surfaces
- Appropriate asymptotic conditions
- Energy conditions preventing causality violations at infinity

**Example 1 - Minkowski Spacetime**: 
- Globally hyperbolic with Cauchy surfaces $\{t = \text{const}\}$
- $J^+(p) \cap J^-(q)$ is always compact (empty or bounded diamond)

**Detailed Verification for Minkowski**:
Given Minkowski metric $ds^2 = -dt^2 + d\vec{x}^2$:

**Step 1**: Identify Cauchy surfaces: $\Sigma_t = \{(s, \vec{y}) : s = t\}$

**Step 2**: Show every causal curve intersects each $\Sigma_t$ exactly once:
- Causal curve: $\gamma(\lambda) = (t(\lambda), \vec{x}(\lambda))$ with $\dot{t}^2 \geq |\dot{\vec{x}}|^2$
- Since $\dot{t}^2 \geq |\dot{\vec{x}}|^2 > 0$ for timelike curves, $t(\lambda)$ is monotonic
- Each $\Sigma_t$ intersected exactly once

**Step 3**: Verify compactness of causal diamonds:
$$J^+(p) \cap J^-(q) = \{r : (t_r - t_p)^2 \geq |\vec{x}_r - \vec{x}_p|^2, (t_q - t_r)^2 \geq |\vec{x}_q - \vec{x}_r|^2, t_p \leq t_r \leq t_q\}$$

This set is bounded: $|\vec{x}_r - \vec{x}_p| \leq |t_r - t_p| \leq t_q - t_p$ and $|\vec{x}_r - \vec{x}_q| \leq t_q - t_r$

By triangle inequality: $|\vec{x}_r| \leq |\vec{x}_p| + |\vec{x}_q| + 2(t_q - t_p)$

Bounded and closed in Minkowski topology ⟹ compact.

**Example 2 - Spatially Compact Cosmology**:
FLRW spacetime with $k = +1$ (closed spatial sections):
$$ds^2 = -dt^2 + a(t)^2 d\Omega_3^2$$
- Globally hyperbolic with Cauchy surfaces $\{t = \text{const}\}$
- Spatial compactness ensures causal diamonds are compact

**Example 3 - Anti-de Sitter Causality Analysis**:

AdS₃ in global coordinates: $ds^2 = \ell^2(-\cosh^2\rho \, dt^2 + d\rho^2 + \sinh^2\rho \, d\phi^2)$

**Null geodesics**: Setting $ds^2 = 0$:
$$-\cosh^2\rho \, \dot{t}^2 + \dot{\rho}^2 + \sinh^2\rho \, \dot{\phi}^2 = 0$$

With conserved quantities $E = \cosh^2\rho \, \dot{t}$ and $L = \sinh^2\rho \, \dot{\phi}$:

$$\dot{\rho}^2 = \frac{E^2}{\cosh^2\rho} - \frac{L^2}{\sinh^2\rho}$$

**Radial null geodesics** ($L = 0$): $\dot{\rho} = \pm \frac{E}{\cosh\rho}$

Integration: $\int_0^\rho \cosh\rho' d\rho' = \pm E \lambda$  
⟹ $\sinh\rho = \pm E\lambda + C$

**Closed curves analysis**: For curve to close, need:
$$\Delta\phi = \int \frac{L}{\sinh^2\rho} \frac{d\rho}{\dot{\rho}} = 2\pi n$$

This is possible for appropriate choice of $E, L$, showing AdS₃ contains closed timelike curves and is not even chronological without appropriate boundary conditions.

### 3.9 Summary of Strengthening Conditions

**Diagram of Implications**:
```
Non-totally vicious 
    ↓ [eliminate all closed timelike curves]
Chronological 
    ↓ [eliminate closed null curves]
Causal 
    ↓ [eliminate causal confusion between points]
Distinguishing 
    ↓ [eliminate almost-closed causal curves]
Strongly causal 
    ↓ [ensure stability under perturbations]
Stably causal 
    ↓ [add compactness of causal diamonds]
Globally hyperbolic
```

**Methods for Strengthening**:

1. **Topological**: Pass to universal cover, modify identifications
2. **Geometric**: Add appropriate boundary conditions, modify asymptotic structure  
3. **Physical**: Impose energy conditions, add matter content
4. **Analytical**: Smooth regularization, stable perturbations

**Applications to Physical Systems**: 
- **Black Hole Spacetimes**: Schwarzschild (globally hyperbolic outside horizon), Kerr (more complex due to ergosphere), Reissner-Nordström (globally hyperbolic in each connected region)
- **Cosmological Spacetimes**: FLRW (globally hyperbolic with natural Cauchy surfaces), de Sitter (stably causal but not globally hyperbolic), Anti-de Sitter (requires boundary conditions for causality)

## IV. Horizons and Boundary Structure

### 4.1 Event Horizons

**Definition**: The event horizon $\mathcal{H}^+$ is the boundary of the causal past of future null infinity:
$$\mathcal{H}^+ = \partial J^-(\mathcal{I}^+)$$

**Mathematical Properties**:
1. $\mathcal{H}^+$ is a null hypersurface
2. Generated by null geodesics with zero expansion
3. Satisfies the area theorem: $\frac{dA}{dt} \geq 0$

### 4.2 Apparent Horizons

**Definition**: An apparent horizon is a marginally trapped surface where the expansion of outgoing null geodesics vanishes:
$$\theta_+ = 0$$

**Expansion Formula**: For a spacelike 2-surface $S$ with normal vectors $\ell^\mu$ (outgoing) and $n^\mu$ (ingoing):
$$\theta_+ = \frac{1}{2}g^{ab}\mathcal{L}_\ell g_{ab}$$

where $g_{ab}$ is the induced metric on $S$.

## V. Causal Structure in Specific Spacetimes

### 5.1 Minkowski Spacetime

**Metric**: $ds^2 = -dt^2 + dx^2 + dy^2 + dz^2$

**Causal Structure**:
- Light cones: $t^2 = x^2 + y^2 + z^2$
- Chronological future: $I^+(p) = \{q : (t_q - t_p)^2 > |\vec{x}_q - \vec{x}_p|^2, t_q > t_p\}$
- Causal future: $J^+(p) = \{q : (t_q - t_p)^2 \geq |\vec{x}_q - \vec{x}_p|^2, t_q \geq t_p\}$

### 5.2 Schwarzschild Spacetime

**Metric**: 
$$ds^2 = -\left(1-\frac{2M}{r}\right)dt^2 + \left(1-\frac{2M}{r}\right)^{-1}dr^2 + r^2d\Omega^2$$

**Causal Structure Analysis**:
- Event horizon at $r = 2M$
- Light cones tip inward for $r < 2M$
- Timelike curves inside horizon must have $\frac{dr}{dt} < 0$

**Radial Null Geodesics**:
Outgoing: $\frac{dr}{dt} = 1 - \frac{2M}{r}$
Ingoing: $\frac{dr}{dt} = -\left(1 - \frac{2M}{r}\right)$

At $r = 2M$: outgoing null geodesics remain at constant radius, forming the event horizon.

### 5.3 de Sitter Spacetime

**Metric** (static coordinates):
$$ds^2 = -\left(1-\frac{r^2}{\ell^2}\right)dt^2 + \left(1-\frac{r^2}{\ell^2}\right)^{-1}dr^2 + r^2d\Omega^2$$

where $\ell = \sqrt{\frac{3}{\Lambda}}$ is the de Sitter radius.

**Causal Structure**:
- Cosmological horizon at $r = \ell$
- Each observer has access to only a finite causal region
- Global structure requires Penrose diagram analysis

## VI. Penrose Diagrams and Conformal Completion

### 6.1 Conformal Transformations

**Definition**: A conformal transformation rescales the metric by a positive function:
$$\tilde{g}_{\mu\nu} = \Omega^2 g_{\mu\nu}$$

**Causal Preservation**: Conformal transformations preserve:
- Light cone structure
- Causal relations between events
- Null geodesics (up to reparametrization)

### 6.2 Construction of Penrose Diagrams

**Procedure**:
1. Choose appropriate coordinates to bring infinity to finite coordinate values
2. Apply conformal transformation with $\Omega \rightarrow 0$ at boundaries
3. Represent the conformally completed spacetime on a finite diagram

**Example - Minkowski Space**:
Transformation: $u = t - r$, $v = t + r$, then $U = \arctan u$, $V = \arctan v$

Conformal factor: $\Omega^2 = \cos U \cos V$

Result: Minkowski space fits into a diamond with corners at:
- $i^+$: future timelike infinity
- $i^-$: past timelike infinity  
- $i^0$: spacelike infinity
- $\mathcal{I}^{\pm}$: future/past null infinity

## VII. Hierarchy of Causal Conditions

### 7.1 Overview of Causal Conditions (Weak to Strong)

The causal conditions form a hierarchy where each stronger condition implies all weaker ones:

$$\text{Non-totally vicious} \subset \text{Chronological} \subset \text{Causal} \subset \text{Distinguishing} \subset \text{Strongly causal} \subset \text{Stably causal} \subset \text{Globally hyperbolic}$$

### 7.2 Non-totally Vicious Spacetimes

**Definition**: A spacetime is **non-totally vicious** if not every point lies on a closed timelike curve.

**Mathematical Condition**: There exists at least one point $p \in M$ such that $p \notin I^+(p)$.

**Physical Interpretation**: At least some regions of spacetime respect causality.

**Example 1 - Gödel Spacetime**: 
Metric: $ds^2 = -dt^2 + dx^2 + \frac{1}{2}e^{2x}dy^2 + dz^2 + 2\sqrt{2}e^x dt dy$

- Contains closed timelike curves through every point
- Therefore **totally vicious** (fails even the weakest condition)
- Demonstrates that General Relativity allows causality violation

**Example 2 - Misner Space**:
- Identification space of Minkowski with boost symmetry
- Has closed timelike curves in some regions but not everywhere
- Satisfies non-totally vicious condition

### 7.3 Chronological Spacetimes

**Definition**: A spacetime is **chronological** if it contains no closed timelike curves.

**Mathematical Condition**: For all $p \in M$: $p \notin I^+(p)$

**Equivalently**: The chronological relation $\ll$ is irreflexive.

**Theorem 7.1 (Chronological Characterization)**: A spacetime is chronological if and only if there exists a continuous function $t: M \rightarrow \mathbb{R}$ such that $t(q) > t(p)$ whenever $p \ll q$.

**Proof Sketch**:
($\Rightarrow$) If chronological, define $t(p) = \sup\{s : p \in I^+(q) \text{ for some } q \text{ with } t(q) = s\}$

($\Leftarrow$) If such $t$ exists and $p \ll p$, then $t(p) > t(p)$, contradiction.

**Physical Significance**: Allows for a global notion of "before" and "after".

**Example 1 - Minkowski Spacetime**: 
- Obviously chronological: $t$-coordinate increases along future-directed timelike curves
- Time function: $t(x^\mu) = x^0$

**Example 2 - Schwarzschild Spacetime (exterior)**: 
- Chronological in $r > 2M$ region
- Time function: $t(x^\mu) = x^0$ (Schwarzschild time)
- Interior $r < 2M$ also chronological but requires different time function

### 7.4 Causal Spacetimes

**Definition**: A spacetime is **causal** if it contains no closed causal curves (timelike or null).

**Mathematical Condition**: For all $p \in M$: $p \notin J^+(p) \setminus \{p\}$

**Theorem 7.2 (Causal implies Chronological)**: Every causal spacetime is chronological.

**Proof**: Suppose not chronological, so $\exists p$ with $p \ll p$. Then there exists a closed timelike curve through $p$, which is also a closed causal curve, contradicting causality.

**Strengthening Condition**: To upgrade from chronological to causal, we need to eliminate closed null curves. This often requires:
- Appropriate boundary conditions
- Energy conditions (e.g., null energy condition)
- Topological restrictions

**Example 1 - Flat Minkowski with Identification**:
Consider Minkowski space with identification $(t,x,y,z) \sim (t,x,y+2\pi,z)$.
- Chronological (no closed timelike curves)
- Not causal: null curve $x^\mu(\lambda) = (t_0 + \lambda, x_0, y_0 + \lambda, z_0)$ with $\lambda \in [0, 2\pi]$ forms closed null curve

**Example 2 - Anti-de Sitter Spacetime**: 
Global AdS₃: $ds^2 = \ell^2(-\cosh^2\rho \, dt^2 + d\rho^2 + \sinh^2\rho \, d\phi^2)$

Without identification: causal
With $\phi \sim \phi + 2\pi$: contains closed timelike curves, not even chronological

### 7.5 Distinguishing Spacetimes

**Definition**: A spacetime $(M,g)$ is **distinguishing** if for any two distinct points $p, q \in M$:
$$I^+(p) \neq I^+(q) \text{ or } I^-(p) \neq I^-(q)$$

**Physical Interpretation**: Any two events can be distinguished by their causal relationships with other events.

**Theorem 7.3 (Distinguishing Characterization)**: A spacetime is distinguishing if and only if the chronological relations determine the topology.

**Proof Outline**: 
- If distinguishing, the sets $\{I^+(p), I^-(p)\}$ separate points, generating the manifold topology
- Conversely, if topology determined by chronological relations, distinct points have different causal pasts/futures

**Strengthening from Causal to Distinguishing**: Requires eliminating situations where different points have identical causal relationships. Often achieved by:
- Avoiding "lightlike boundaries" 
- Ensuring generic position of points relative to null geodesics

**Example 1 - Minkowski Spacetime**: Clearly distinguishing - any two distinct events have different light cones.

**Example 2 - Spacetime with Lightlike Boundary**:
Consider half-space of Minkowski: $\{(t,x,y,z) : t \geq x\}$
- Points on boundary $t = x$ may have identical chronological futures
- Fails to be distinguishing

### 7.6 Strongly Causal Spacetimes

**Definition**: A spacetime is **strongly causal** if every point has arbitrarily small neighborhoods that no causal curve intersects more than once.

**Mathematical Condition**: For every $p \in M$ and every neighborhood $U$ of $p$, there exists a neighborhood $V \subset U$ of $p$ such that no causal curve intersects $V$ in more than one point.

**Theorem 7.4 (Strong Causality and Continuous Time Functions)**: A spacetime is strongly causal if and only if there exists a continuous time function that strictly increases along every causal curve.

**Detailed Proof**:

**($\Rightarrow$)**: Assume strong causality. 
1) Define equivalence relation: $p \sim q$ if $p \leq q$ and $q \leq p$
2) In strongly causal spacetime, this gives $p = q$ (no causal loops)
3) Construct $t: M \rightarrow \mathbb{R}$ by choosing Cauchy surface foliation locally
4) Strong causality ensures global consistency

**($\Leftarrow$)**: Assume continuous time function $t$ with $t(q) > t(p)$ whenever $p < q$.
1) For any $p$ and neighborhood $U$, choose $\epsilon > 0$ small enough
2) Set $V = U \cap \{q : |t(q) - t(p)| < \epsilon\}$
3) No causal curve can intersect $V$ twice (would require $t$ to increase and decrease)

**Strengthening from Distinguishing to Strongly Causal**: 
- Eliminate "almost closed" causal curves
- Often requires energy conditions or specific geometric constraints
- May need to pass to covering spaces

**Example 1 - Minkowski Spacetime**: Strongly causal with time function $t = x^0$.

**Example 2 - Taub-NUT Spacetime**: 
Metric: $ds^2 = -f(r)dt^2 + f(r)^{-1}dr^2 + r^2d\theta^2 + (r^2 + n^2)\sin^2\theta(d\phi + 2n\cos\theta \frac{dt}{r^2 + n^2})^2$

Where $f(r) = \frac{r^2 - 2mr + n^2}{r^2 + n^2}$

- Distinguishing but not strongly causal due to "almost closed" causal curves near the NUT
- Causality violations become arbitrarily mild but never completely eliminated

### 7.7 Stably Causal Spacetimes

**Definition**: A spacetime $(M,g)$ is **stably causal** if there exists a neighborhood of $g$ in the space of Lorentzian metrics such that every metric in this neighborhood makes $(M,\tilde{g})$ causal.

**Alternative Characterization**: Admits a smooth time function $t: M \rightarrow \mathbb{R}$ such that $\nabla t$ is past-directed timelike.

**Theorem 7.5 (Stable Causality Theorem)**: The following are equivalent:
1. $(M,g)$ is stably causal
2. There exists a smooth global time function with timelike gradient
3. $M$ admits a smooth foliation by spacelike Cauchy surfaces

**Proof Strategy**:
**(1⇒2)**: Use the stability to construct smooth time function from continuous one
**(2⇒3)**: Level sets of time function provide Cauchy surface foliation  
**(3⇒1)**: Foliation structure persists under small metric perturbations

**Detailed Construction of Time Function**:
Given stable causality, we can construct $t: M \rightarrow \mathbb{R}$ with $g^{\mu\nu}\partial_\mu t \partial_\nu t < 0$:

1) Start with continuous time function $t_0$ from strong causality
2) Use smooth partition of unity to regularize: $t = \int t_0 * \phi_\epsilon$
3) Choose $\epsilon$ small enough to preserve timelike gradient condition
4) Stability ensures this construction works for neighborhood of metrics

**Strengthening from Strongly Causal to Stably Causal**:
- Requires "robust" causality that persists under perturbations
- Often needs global topological conditions
- May require energy conditions to prevent causality violations

**Example 1 - Minkowski Spacetime**: 
- Stably causal with $t = x^0$, $\nabla t = (1,0,0,0)$ timelike
- Any small perturbation preserves this structure

**Example 2 - Spacetime with Compact Cauchy Surface**:
Consider $M = \mathbb{R} \times T^3$ with metric:
$$ds^2 = -dt^2 + \sum_{i=1}^3 (dx^i)^2$$
- Stably causal: $t$ is global time function
- Foliated by compact spacelike surfaces $\{t = \text{const}\}$

### 7.8 Globally Hyperbolic Spacetimes

**Definition**: A spacetime is **globally hyperbolic** if:
1. It is strongly causal
2. $J^+(p) \cap J^-(q)$ is compact for all $p,q \in M$

**Theorem 7.6 (Geroch's Theorem)**: A spacetime is globally hyperbolic if and only if it admits a Cauchy surface.

**Theorem 7.7 (Bernal-Sánchez Theorem)**: Every globally hyperbolic spacetime is isometric to $\mathbb{R} \times \Sigma$ where:
- $\Sigma$ is a smooth spacelike Cauchy surface  
- Metric takes form: $ds^2 = -\beta^2 dt^2 + h_{ij}(t,x^k)(dx^i + X^i dt)(dx^j + X^j dt)$

**Detailed Proof of Geroch's Theorem**:

**($\Rightarrow$)**: Assume global hyperbolicity.
1) **Construction of Cauchy surface**: 
   - Choose points $p, q$ with $J^+(p) \cap J^-(q) = M$ (possible by compactness)
   - Consider level set $S = \{r \in M : d(p,r) = d(r,q)\}$ where $d$ is Lorentzian distance
   - Strong causality ensures $S$ is spacelike surface
   - Compactness condition ensures every causal curve intersects $S$

2) **Uniqueness of intersection**:
   - Suppose causal curve $\gamma$ intersects $S$ at two points $r_1, r_2$
   - This would create causal diamond violating compactness
   - Therefore each causal curve intersects $S$ exactly once

**($\Leftarrow$)**: Assume Cauchy surface $\Sigma$ exists.
1) **Strong causality**: Foliation by Cauchy surfaces provides local strong causality
2) **Compactness**: For any $p, q$, the set $J^+(p) \cap J^-(q)$ lies in causal diamond bounded by $\Sigma$-slices, hence compact

**Strengthening from Stably Causal to Globally Hyperbolic**:
Requires additional compactness condition. Can be achieved by:
- Spatial compactness of Cauchy surfaces
- Appropriate asymptotic conditions
- Energy conditions preventing causality violations at infinity

**Example 1 - Minkowski Spacetime**: 
- Globally hyperbolic with Cauchy surfaces $\{t = \text{const}\}$
- $J^+(p) \cap J^-(q)$ is always compact (empty or bounded diamond)

**Example 2 - Spatially Compact Cosmology**:
FLRW spacetime with $k = +1$ (closed spatial sections):
$$ds^2 = -dt^2 + a(t)^2 d\Omega_3^2$$
- Globally hyperbolic with Cauchy surfaces $\{t = \text{const}\}$
- Spatial compactness ensures causal diamonds are compact

### 7.9 Summary of Strengthening Conditions

**Diagram of Implications**:
```
Non-totally vicious 
    ↓ [eliminate all closed timelike curves]
Chronological 
    ↓ [eliminate closed null curves]
Causal 
    ↓ [eliminate causal confusion between points]
Distinguishing 
    ↓ [eliminate almost-closed causal curves]
Strongly causal 
    ↓ [ensure stability under perturbations]
Stably causal 
    ↓ [add compactness of causal diamonds]
Globally hyperbolic
```

**Methods for Strengthening**:

1. **Topological**: Pass to universal cover, modify identifications
2. **Geometric**: Add appropriate boundary conditions, modify asymptotic structure  
3. **Physical**: Impose energy conditions, add matter content
4. **Analytical**: Smooth regularization, stable perturbations

### 7.10 Detailed Calculations and Examples

**Calculation 1: Verifying Minkowski is Globally Hyperbolic**

Given Minkowski metric $ds^2 = -dt^2 + d\vec{x}^2$:

**Step 1**: Identify Cauchy surfaces: $\Sigma_t = \{(s, \vec{y}) : s = t\}$

**Step 2**: Show every causal curve intersects each $\Sigma_t$ exactly once:
- Causal curve: $\gamma(\lambda) = (t(\lambda), \vec{x}(\lambda))$ with $\dot{t}^2 \geq |\dot{\vec{x}}|^2$
- Since $\dot{t}^2 \geq |\dot{\vec{x}}|^2 > 0$ for timelike curves, $t(\lambda)$ is monotonic
- Each $\Sigma_t$ intersected exactly once

**Step 3**: Verify compactness of causal diamonds:
$$J^+(p) \cap J^-(q) = \{r : (t_r - t_p)^2 \geq |\vec{x}_r - \vec{x}_p|^2, (t_q - t_r)^2 \geq |\vec{x}_q - \vec{x}_r|^2, t_p \leq t_r \leq t_q\}$$

This set is bounded: $|\vec{x}_r - \vec{x}_p| \leq |t_r - t_p| \leq t_q - t_p$ and $|\vec{x}_r - \vec{x}_q| \leq t_q - t_r$

By triangle inequality: $|\vec{x}_r| \leq |\vec{x}_p| + |\vec{x}_q| + 2(t_q - t_p)$

Bounded and closed in Minkowski topology ⟹ compact.

**Calculation 2: Anti-de Sitter Causality Analysis**

AdS₃ in global coordinates: $ds^2 = \ell^2(-\cosh^2\rho \, dt^2 + d\rho^2 + \sinh^2\rho \, d\phi^2)$

**Null geodesics**: Setting $ds^2 = 0$:
$$-\cosh^2\rho \, \dot{t}^2 + \dot{\rho}^2 + \sinh^2\rho \, \dot{\phi}^2 = 0$$

With conserved quantities $E = \cosh^2\rho \, \dot{t}$ and $L = \sinh^2\rho \, \dot{\phi}$:

$$\dot{\rho}^2 = \frac{E^2}{\cosh^2\rho} - \frac{L^2}{\sinh^2\rho}$$

**Radial null geodesics** ($L = 0$): $\dot{\rho} = \pm \frac{E}{\cosh\rho}$

Integration: $\int_0^\rho \cosh\rho' d\rho' = \pm E \lambda$  
⟹ $\sinh\rho = \pm E\lambda + C$

**Closed curves analysis**: For curve to close, need:
$$\Delta\phi = \int \frac{L}{\sinh^2\rho} \frac{d\rho}{\dot{\rho}} = 2\pi n$$

This is possible for appropriate choice of $E, L$, showing AdS₃ contains closed timelike curves and is not even chronological without appropriate boundary conditions.

## VIII. Advanced Topics and Applications

### 8.1 Singularity Theorems

**Hawking-Penrose Theorem**: A spacetime containing a Cauchy surface and satisfying:
1. Einstein equations: $R_{\mu\nu} - \frac{1}{2}Rg_{\mu\nu} = 8\pi T_{\mu\nu}$
2. Energy condition: $T_{\mu\nu}n^\mu n^\nu \geq 0$ for all timelike $n^\mu$
3. Generic condition on curvature

must contain incomplete geodesics (singularities).

### 7.2 Causal Structure and Information

**Causality Principle**: Information propagation respects causal structure:
$$\text{If } p \not< q \text{ and } q \not< p, \text{ then events at } p \text{ and } q \text{ are causally independent}$$

**Application to Black Holes**: Information falling past the event horizon cannot influence external observers, leading to the information paradox.

## VIII. Problem-Solving Strategies for Exams

### 8.1 Standard Approaches

1. **Identify the metric signature** and establish coordinate ranges
2. **Calculate light cone equations** by setting $ds^2 = 0$
3. **Determine causal character** of given curves by computing $g_{\mu\nu}\dot{\gamma}^\mu\dot{\gamma}^\nu$
4. **Find horizons** by locating coordinate singularities in the metric
5. **Analyze global structure** using Penrose diagrams when appropriate

### 8.2 Applications to Physical Systems

**Black Hole Spacetimes**: 
- Schwarzschild: globally hyperbolic outside horizon, stably causal including horizon
- Kerr: more complex due to ergosphere, but similar hierarchy applies
- Reissner-Nordström: globally hyperbolic in each connected region

**Cosmological Spacetimes**:
- FLRW: globally hyperbolic with natural Cauchy surfaces
- de Sitter: stably causal but not globally hyperbolic (no Cauchy surfaces)
- Anti-de Sitter: requires boundary conditions for causality

### 8.3 Common Exam Problems

**Type 1**: Given a metric, determine the causal structure
- Calculate null geodesics
- Identify horizons and singularities
- Construct Penrose diagram

**Type 2**: Analyze specific curves
- Classify as timelike/null/spacelike
- Determine if curve can represent physical trajectory
- Calculate proper time/arc length

**Type 3**: Global properties
- Determine if spacetime is globally hyperbolic
- Identify Cauchy surfaces
- Apply singularity theorems

## IX. Key Formulas Summary

### Essential Relations
$$\begin{align}
\text{Metric Classification:} &\quad g_{\mu\nu}V^\mu V^\nu \begin{cases} < 0 & \text{timelike} \\ = 0 & \text{null} \\ > 0 & \text{spacelike} \end{cases} \\
\text{Causal Future:} &\quad J^+(p) = \{q : p \leq q\} \\
\text{Event Horizon:} &\quad \mathcal{H}^+ = \partial J^-(\mathcal{I}^+) \\
\text{Expansion:} &\quad \theta = \frac{1}{2}g^{ab}\mathcal{L}_k g_{ab}
\end{align}$$

### Causal Hierarchy Conditions
$$\begin{align}
\text{Chronological:} &\quad p \notin I^+(p) \text{ for all } p \\
\text{Causal:} &\quad p \notin J^+(p) \setminus \{p\} \text{ for all } p \\
\text{Distinguishing:} &\quad I^+(p) \neq I^+(q) \text{ or } I^-(p) \neq I^-(q) \text{ if } p \neq q \\
\text{Strongly Causal:} &\quad \exists \text{ continuous time function increasing on causal curves} \\
\text{Stably Causal:} &\quad \exists \text{ smooth time function with timelike gradient} \\
\text{Globally Hyperbolic:} &\quad \text{Strongly causal } + J^+(p) \cap J^-(q) \text{ compact}
\end{align}$$

### Coordinate Systems
- **Minkowski**: $ds^2 = -dt^2 + dx^2 + dy^2 + dz^2$
- **Schwarzschild**: $ds^2 = -(1-\frac{2M}{r})dt^2 + (1-\frac{2M}{r})^{-1}dr^2 + r^2d\Omega^2$
- **FLRW**: $ds^2 = -dt^2 + a(t)^2[dr^2/(1-kr^2) + r^2d\Omega^2]$

---

### Strengthening Methods Summary
1. **Eliminate closed curves**: Energy conditions, boundary conditions, topological modifications
2. **Add compactness**: Spatial compactness, asymptotic flatness, appropriate matter content  
3. **Ensure stability**: Smooth regularization, generic perturbations, robust geometric structures
4. **Construct time functions**: Cauchy surface foliation, level set methods, variational techniques

**Study Tips**:
1. Practice drawing Penrose diagrams for various spacetimes
2. Master the calculation of geodesics in different coordinate systems  
3. Understand the physical interpretation of mathematical results
4. Work through explicit examples of causal relation computations
5. **Memorize the causal hierarchy** and conditions for strengthening
6. **Practice proving** implications between different causal conditions
7. **Work out detailed examples** showing how each condition can fail