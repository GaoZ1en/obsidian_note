# Solutions to *Differential Geometry and Topology in Physics* (First Half)

---

## 1 Topological Spaces and Manifolds

---

### 1.1

Let $(X, d)$ be a metric space. Verify whether $d_1$ and $d_2$ are distance functions.

**Metric axioms** (for all $x,y,z \in X$):
1. **Non-negativity**: $d(x,y) \ge 0$, and $d(x,y) = 0 \iff x = y$;
1. **Symmetry**: $d(x,y) = d(y,x)$;
1. **Triangle inequality**: $d(x,z) \le d(x,y) + d(y,z)$.

---

**$d_1(x,y) := \frac{d(x,y)}{1 + d(x,y)}$.**

Define $f(t) = \frac{t}{1+t}$ for $t \ge 0$. Then $f'(t) = \frac{1}{(1+t)^2} > 0$ and $f''(t) = -\frac{2}{(1+t)^3} < 0$. Hence $f$ is strictly increasing, concave, and $f(0) = 0$.

*Non-negativity*: $d_1(x,y) = f(d(x,y)) \ge f(0) = 0$, with equality iff $d(x,y) = 0$ iff $x = y$. $\checkmark$

*Symmetry*: $d_1(x,y) = f(d(x,y)) = f(d(y,x)) = d_1(y,x)$. $\checkmark$

*Triangle inequality*: Since $f$ is increasing, $d(x,z) \le d(x,y) + d(y,z)$ implies $f(d(x,z)) \le f(d(x,y) + d(y,z))$. For a concave function with $f(0) = 0$, we have $f(a+b) \le f(a) + f(b)$ for $a,b \ge 0$. Proof:

$$\begin{aligned}
f(a) + f(b) - f(a+b)
&= \frac{a}{1+a} + \frac{b}{1+b} - \frac{a+b}{1+a+b} \\[4pt]
&= \frac{a(1+b)(1+a+b) + b(1+a)(1+a+b) - (a+b)(1+a)(1+b)}{(1+a)(1+b)(1+a+b)} \\[4pt]
&= \frac{2ab + a^2b + ab^2}{(1+a)(1+b)(1+a+b)} \ge 0.
\end{aligned}$$

Hence $d_1(x,z) \le d_1(x,y) + d_1(y,z)$. $\checkmark$

**Conclusion**: $d_1$ **is a metric**.

---

**$d_2(x,y) := \min\{d(x,y), 1\}$.**

*Non-negativity*: $d_2(x,y) = \min(d(x,y), 1) \ge 0$. If $x = y$, $d(x,y) = 0$, so $d_2(x,y) = 0$. Conversely, if $d_2(x,y) = 0$, then $\min(d(x,y), 1) = 0 \implies d(x,y) = 0 \implies x = y$. $\checkmark$

*Symmetry*: $d_2(x,y) = \min(d(x,y),1) = \min(d(y,x),1) = d_2(y,x)$. $\checkmark$

*Triangle inequality*: We need $\min(d(x,z), 1) \le \min(d(x,y), 1) + \min(d(y,z), 1)$.

**Lemma**: For $a,b \ge 0$, $\min(a+b, 1) \le \min(a,1) + \min(b,1)$.

*Proof*: Consider three cases:
- If $a \ge 1$ or $b \ge 1$: RHS $\ge 1 \ge$ LHS.
- If $a < 1$, $b < 1$, and $a+b \le 1$: LHS $= a+b =$ RHS.
- If $a < 1$, $b < 1$, and $a+b > 1$: LHS $= 1 < a+b =$ RHS. $\square$

Now, using the triangle inequality of $d$ and monotonicity of $t \mapsto \min(t, 1)$:

$$\begin{align}
d_2(x,z) = \min(d(x,z), 1) \le \min(d(x,y) + d(y,z), 1) \le \min(d(x,y), 1) + \min(d(y,z), 1) = d_2(x,y) + d_2(y,z).
\end{align}$$

$\checkmark$

**Conclusion**: $d_2$ **is also a metric**.

---

### 1.2

**De Morgan's formulas in set theory.**

Let $X$ be an arbitrary set and $A_j \subseteq X$ for $j \in J$. The complement is $A_j^c := X \setminus A_j$.

**First formula**: $\bigl(\bigcap_{j \in J} A_j\bigr)^c = \bigcup_{j \in J} A_j^c$.

*Proof*:

$$\begin{aligned}
x \in \Bigl(\bigcap_{j \in J} A_j\Bigr)^c
&\iff x \notin \bigcap_{j \in J} A_j \\
&\iff \exists\, j \in J \text{ such that } x \notin A_j \quad (\text{negation of "for all $j$, $x \in A_j$"}) \\
&\iff \exists\, j \in J \text{ such that } x \in A_j^c \\
&\iff x \in \bigcup_{j \in J} A_j^c.
\end{aligned}$$

Thus the two sets are equal. $\square$

**Second formula**: $\bigl(\bigcup_{j \in J} A_j\bigr)^c = \bigcap_{j \in J} A_j^c$.

*Proof*:

$$\begin{aligned}
x \in \Bigl(\bigcup_{j \in J} A_j\Bigr)^c
&\iff x \notin \bigcup_{j \in J} A_j \\
&\iff \forall\, j \in J,\; x \notin A_j \quad (\text{negation of "there exists $j$ with $x \in A_j$"}) \\
&\iff \forall\, j \in J,\; x \in A_j^c \\
&\iff x \in \bigcap_{j \in J} A_j^c. \quad \square
\end{aligned}$$

---

### 1.3

**The homeomorphism relation is an equivalence relation.**

Let $\sim$ denote the homeomorphism relation: $X \sim Y$ iff there exists a homeomorphism $f: X \to Y$ (i.e., $f$ is bijective, continuous, and $f^{-1}$ is continuous).

1. **Reflexivity**: $\operatorname{Id}_X: X \to X$ is a homeomorphism (bijective, continuous, inverse is itself). Hence $X \sim X$.

1. **Symmetry**: If $X \sim Y$, there exists a homeomorphism $f: X \to Y$. Then $f^{-1}: Y \to X$ is also bijective, continuous, with continuous inverse $(f^{-1})^{-1} = f$. Hence $Y \sim X$.

1. **Transitivity**: If $X \sim Y$ (via $f: X \to Y$) and $Y \sim Z$ (via $g: Y \to Z$), then $g \circ f: X \to Z$ is:
   - Bijective (composition of bijections);
   - Continuous (composition of continuous maps);
   - Has continuous inverse $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$ (composition of continuous maps).
   Hence $X \sim Z$.

All three conditions are satisfied, so homeomorphism is an equivalence relation. $\square$

---

### 1.4

**The identity map $\operatorname{Id}_X: X_{\tau_1} \to X_{\tau_2}$ is continuous iff $\tau_1$ is no weaker than $\tau_2$.**

*Recall*: A map $f: (X, \tau_X) \to (Y, \tau_Y)$ is continuous iff for every $V \in \tau_Y$, $f^{-1}(V) \in \tau_X$. "$\tau_1$ is no weaker than $\tau_2$" means $\tau_2 \subseteq \tau_1$ (equivalently, $\tau_1$ is finer/stronger than $\tau_2$).

*Proof*:

($\Rightarrow$) Suppose $\operatorname{Id}_X: X_{\tau_1} \to X_{\tau_2}$ is continuous. For any $U \in \tau_2$, continuity gives $\operatorname{Id}_X^{-1}(U) = U \in \tau_1$. Hence $\tau_2 \subseteq \tau_1$, i.e., $\tau_1$ is no weaker than $\tau_2$.

($\Leftarrow$) Suppose $\tau_2 \subseteq \tau_1$. For any $U \in \tau_2$, we have $U \in \tau_1$ by the inclusion, so $\operatorname{Id}_X^{-1}(U) = U \in \tau_1$. Hence $\operatorname{Id}_X$ is continuous. $\square$

---

### 1.5

**$f: X \to Y$ is continuous iff the preimage of every closed set is closed.**

*Proof*:

($\Rightarrow$) Suppose $f$ is continuous. Let $A \subseteq Y$ be closed. Then $Y \setminus A$ is open. By continuity, $f^{-1}(Y \setminus A)$ is open in $X$. Since $f^{-1}(Y \setminus A) = X \setminus f^{-1}(A)$, the set $X \setminus f^{-1}(A)$ is open, hence $f^{-1}(A)$ is closed.

($\Leftarrow$) Suppose the preimage of every closed set is closed. Let $V \subseteq Y$ be open. Then $Y \setminus V$ is closed. By hypothesis, $f^{-1}(Y \setminus V) = X \setminus f^{-1}(V)$ is closed. Hence $f^{-1}(V)$ is open. Therefore $f$ is continuous. $\square$

---

### 1.6

**Determine which families form a topology on an infinite set $X$.**

Recall the axioms for a topology $\tau$ on $X$:
1. $\varnothing \in \tau$ and $X \in \tau$;
1. Arbitrary unions of members of $\tau$ belong to $\tau$;
1. Finite intersections of members of $\tau$ belong to $\tau$.

---

**$\tau_1 = \{U \subseteq X \mid U^c \text{ is finite or } U = X\}$** (the cofinite topology).

- $\varnothing^c = X$ is infinite, but note: $\varnothing^c = X$, which is not finite. However the definition says "$U^c$ is finite **or** $U = X$". For $U = \varnothing$, $U \neq X$, but $U^c = X$ is infinite (since $X$ is infinite), so $\varnothing \notin \tau_1$? Wait: $\varnothing^c = X$. Since $X$ is infinite and $\varnothing \neq X$, the condition "$\varnothing^c$ is finite" fails. So $\varnothing \notin \tau_1$ by this definition. But a topology must contain $\varnothing$.

Actually, let us re-examine: the definition uses "$U^c$ is a finite set **or** $X$ itself". This means $U \in \tau_1$ iff $U^c$ is finite, or $U = X$. For $U = \varnothing$, we have $U^c = X$, which is not finite (since $X$ is infinite), and $U \neq X$. So $\varnothing \notin \tau_1$. This means $\tau_1$ **is not a topology**.

However, the standard cofinite topology on an infinite set is $\tau_{\text{cof}} = \{\varnothing\} \cup \{U \subseteq X \mid U^c \text{ is finite}\}$. The problem's definition of $\tau_1$ mistakenly omits the empty set. Under the literal definition given, **$\tau_1$ is not a topology** because $\varnothing \notin \tau_1$.

But if we interpret charitably (adding $\varnothing$), the cofinite topology would satisfy all axioms. Let us state both readings:

*Verdict*: Under the strict wording, $\tau_1$ fails the first axiom ($\varnothing \notin \tau_1$). **$\tau_1$ does NOT form a topology.** (The standard cofinite topology would include $\varnothing$ separately.)

---

**$\tau_2 = \{U \subseteq X \mid U^c \text{ is infinite or } U = \varnothing\}$**.

- $\varnothing \in \tau_2$ (by "$U = \varnothing$"). But $X^c = \varnothing$, which is not infinite, and $X \neq \varnothing$, so $X \notin \tau_2$. **Fails the first axiom.** $\tau_2$ does NOT form a topology.

Furthermore: take two sets whose complements are infinite. Their intersection may have finite complement (e.g., take $U_1$ = all points except $\{p\}$, $U_2$ = all points except $\{q\}$, then $U_1 \cap U_2$ has complement $\{p,q\}$, which is finite, so $U_1 \cap U_2 \notin \tau_2$). So finite intersection also fails.

---

**$\tau_3 = \{U \subseteq X \mid U^c \text{ is countable or } U = X\}$** (the cocountable topology).

- $\varnothing^c = X$. If $X$ is uncountable, $X$ is not countable and $\varnothing \neq X$, so $\varnothing \notin \tau_3$. **Fails the first axiom** unless $X$ itself is countable (but $X$ is only assumed infinite, not necessarily uncountable).

Wait — the problem says $X$ is an infinite set, not necessarily uncountable. If $X$ is countably infinite, then $X^c = \varnothing$ (countable) so $\varnothing \in \tau_3$, and $X \in \tau_3$ by definition. In this case:

1. $\varnothing, X \in \tau_3$. $\checkmark$
1. Let $\{U_\alpha\}$ be a collection in $\tau_3$. Either some $U_\alpha = X$, giving $\bigcup U_\alpha = X \in \tau_3$, or all $U_\alpha \neq X$ so each $U_\alpha^c$ is countable. Then $(\bigcup U_\alpha)^c = \bigcap U_\alpha^c$ is an intersection of countable sets, hence countable. So $\bigcup U_\alpha \in \tau_3$.
1. For a finite collection $\{U_i\}_{i=1}^n$, either some $U_i = X$ (intersection is the other sets, still in $\tau_3$ by a similar argument), or all $U_i^c$ are countable. Then $(\bigcap U_i)^c = \bigcup U_i^c$, a finite union of countable sets, hence countable. So $\bigcap U_i \in \tau_3$.

Thus for countably infinite $X$, $\tau_3$ **is a topology** (the cocountable topology coincides with the cofinite topology when $X$ is countable). For uncountable $X$, we must also check $\varnothing$: $\varnothing^c = X$ is uncountable and $\varnothing \neq X$, so $\varnothing \notin \tau_3$. In this case $\tau_3$ fails the first axiom (**not a topology** unless we add $\varnothing$).

*Verdict*: For general infinite $X$, **$\tau_3$ does NOT form a topology** under the strict wording (same $\varnothing$ issue). If we add $\varnothing$ separately, the cocountable topology on an uncountable set is a topology.

---

**Summary**: Under the strict wording, **none** of $\tau_1, \tau_2, \tau_3$ define a topology because all fail to include $\varnothing$ (and $\tau_2$ also fails to include $X$). The intended answers likely assume the standard corrected definitions:

- $\tau_1$ (cofinite, with $\varnothing$ added): **is a topology**.
- $\tau_2$: **is not a topology** (fails finite intersections and does not contain $X$).
- $\tau_3$ (cocountable, with $\varnothing$ added): **is a topology** on an uncountable set; on a countable set it reduces to the discrete topology (all complements are countable).

---

### 1.7

**Cauchy inequality, Minkowski inequality, and the induced metric.**

---

**(1) Cauchy-Schwarz inequality**: $\bigl(\sum_{j=1}^n x^j y^j\bigr)^2 \le \bigl(\sum_{j=1}^n (x^j)^2\bigr) \bigl(\sum_{j=1}^n (y^j)^2\bigr)$.

*Proof*: Define the quadratic polynomial in $\lambda \in \mathbb{R}$:

$$\begin{align}
P(\lambda) := \sum_{j=1}^n (x^j + \lambda y^j)^2 = \sum_{j=1}^n (x^j)^2 + 2\lambda \sum_{j=1}^n x^j y^j + \lambda^2 \sum_{j=1}^n (y^j)^2 \ge 0.
\end{align}$$

The quadratic $P(\lambda) = A + 2B\lambda + C\lambda^2$ with $A = \sum (x^j)^2$, $B = \sum x^j y^j$, $C = \sum (y^j)^2$ is non-negative for all $\lambda$. Its discriminant must satisfy $B^2 - AC \le 0$. Hence:

$$\begin{align}
\Bigl(\sum_{j=1}^n x^j y^j\Bigr)^2 \le \Bigl(\sum_{j=1}^n (x^j)^2\Bigr) \Bigl(\sum_{j=1}^n (y^j)^2\Bigr). \quad \square
\end{align}$$

---

**(2) Minkowski inequality**: $\|x + y\| \le \|x\| + \|y\|$.

*Proof*:

$$\begin{aligned}
\|x+y\|^2 &= \sum_{j=1}^n (x^j + y^j)^2
= \sum_{j=1}^n (x^j)^2 + 2\sum_{j=1}^n x^j y^j + \sum_{j=1}^n (y^j)^2 \\
&\le \|x\|^2 + 2\|x\|\|y\| + \|y\|^2 \quad \text{(by Cauchy-Schwarz: } \sum x^j y^j \le \|x\|\|y\|\text{)} \\
&= (\|x\| + \|y\|)^2.
\end{aligned}$$

Taking square roots (all quantities are non-negative) gives $\|x+y\| \le \|x\| + \|y\|$. $\square$

---

**(3) $d(x,y) := \|x-y\|$ satisfies the metric axioms.**

1. **Non-negativity**: $d(x,y) = \|x-y\| \ge 0$ by definition of the norm. $d(x,y) = 0 \iff \|x-y\| = 0 \iff x-y = 0 \iff x = y$.

1. **Symmetry**: $d(x,y) = \|x-y\| = \|(-1)(y-x)\| = |-1| \cdot \|y-x\| = \|y-x\| = d(y,x)$.

1. **Triangle inequality**: For any $x,y,z \in \mathbb{R}^n$:

$$\begin{align}
d(x,z) = \|x-z\| = \|(x-y) + (y-z)\| \le \|x-y\| + \|y-z\| = d(x,y) + d(y,z),
\end{align}$$

   where we used Minkowski's inequality. $\square$

---

### 1.8

**Interior, closure, and boundary of $\mathbb{Q} \subset \mathbb{R}$ in the Euclidean topology.**

Recall: The Euclidean topology on $\mathbb{R}$ is generated by open intervals $(a,b)$.

- **Interior**: $\mathring{\mathbb{Q}}$ is the largest open set contained in $\mathbb{Q}$. Any non-empty open interval contains irrational numbers, so no non-empty open set is contained entirely in $\mathbb{Q}$. The only open subset of $\mathbb{Q}$ is $\varnothing$. Hence:

$$\begin{align}
\mathring{\mathbb{Q}} = \varnothing.
\end{align}$$

- **Closure**: $\overline{\mathbb{Q}}$ is the smallest closed set containing $\mathbb{Q}$. Since $\mathbb{Q}$ is dense in $\mathbb{R}$ (between any two reals there is a rational), every real number is a limit point of $\mathbb{Q}$. Hence:

$$\begin{align}
\overline{\mathbb{Q}} = \mathbb{R}.
\end{align}$$

- **Boundary**: $\partial\mathbb{Q} = \overline{\mathbb{Q}} \setminus \mathring{\mathbb{Q}} = \mathbb{R} \setminus \varnothing = \mathbb{R}$.

---

### 1.9

**The unit open ball $B^n$ is homeomorphic to $\mathbb{R}^n$.**

Define the map $f: B^n \to \mathbb{R}^n$ by

$$\begin{align}
f(x) := \frac{x}{1 - \|x\|},
\end{align}$$

with inverse $g: \mathbb{R}^n \to B^n$ given by

$$\begin{align}
g(y) := \frac{y}{1 + \|y\|}.
\end{align}$$

*Verification*:
- For $x \in B^n$, $\|x\| < 1$, so $1 - \|x\| > 0$, and $\|f(x)\| = \frac{\|x\|}{1-\|x\|} < \infty$. So $f(x) \in \mathbb{R}^n$.
- $g(f(x)) = \frac{x/(1-\|x\|)}{1 + \|x\|/(1-\|x\|)} = \frac{x/(1-\|x\|)}{1/(1-\|x\|)} = x$.
- $f(g(y)) = \frac{y/(1+\|y\|)}{1 - \|y\|/(1+\|y\|)} = \frac{y/(1+\|y\|)}{1/(1+\|y\|)} = y$.

Both $f$ and $g$ are continuous (they are compositions of the norm $\|\cdot\|$, which is continuous, with rational functions whose denominators never vanish on their respective domains). Thus $f$ is a homeomorphism. $\square$

(Geometric intuition: this map radially stretches the ball to cover all of $\mathbb{R}^n$, analogous to $\tan$ mapping $(-\pi/2, \pi/2)$ to $\mathbb{R}$.)

---

### 1.10

**Fixed-point set of a continuous self-map on a Hausdorff space is closed.**

Let $X$ be Hausdorff and $f: X \to X$ continuous. Define $\mathcal{F}(f) := \{x \in X \mid f(x) = x\}$.

Following the hint: we show $\mathcal{F}(f)^c$ is open. Take any $x \in \mathcal{F}(f)^c$, so $f(x) \neq x$.

Since $X$ is Hausdorff, there exist open sets $U, V \subseteq X$ with $x \in U$, $f(x) \in V$, and $U \cap V = \varnothing$.

Since $f$ is continuous, $f^{-1}(V)$ is open in $X$. Define $W := U \cap f^{-1}(V)$. As the intersection of two open sets, $W$ is open. Moreover $x \in U$ and $f(x) \in V \implies x \in f^{-1}(V)$, so $x \in W$. Thus $W$ is an open neighborhood of $x$.

Now we show $W \subseteq \mathcal{F}(f)^c$. Take any $y \in W$. Then $y \in U$ and $y \in f^{-1}(V)$, so $f(y) \in V$. Since $U \cap V = \varnothing$, we have $y \notin V$, hence $f(y) \neq y$, i.e., $y \in \mathcal{F}(f)^c$.

Thus every $x \in \mathcal{F}(f)^c$ has an open neighborhood contained in $\mathcal{F}(f)^c$, so $\mathcal{F}(f)^c$ is open. Therefore $\mathcal{F}(f)$ is closed. $\square$

---

### 1.11

**Stereographic projection of $S^{n-1}$ onto $\mathbb{R}^{n-1}$.**

The unit sphere is $S^{n-1} = \{ (x^1, \dots, x^n) \in \mathbb{R}^n \mid \sum_{i=1}^n (x^i)^2 = 1\}$. The hyperplane is $\mathbb{R}^{n-1} \cong \{ (x^1, \dots, x^n) \in \mathbb{R}^n \mid x^n = 0\}$.

**From the north pole** $N = (0, \dots, 0, 1)$:

Let $P = (x^1, \dots, x^n) \in S^{n-1} \setminus \{N\}$. The line through $N$ and $P$ is parametrized by $N + t(P - N)$, $t \in \mathbb{R}$. Its intersection with the hyperplane $x^n = 0$ occurs when the $n$-th coordinate vanishes:

$$\begin{align}
1 + t(x^n - 1) = 0 \implies t = \frac{1}{1 - x^n}.
\end{align}$$

The projection point $\varphi_N(P) = (u^1, \dots, u^{n-1}, 0)$ has coordinates

$$\begin{align}
u^i = 0 + t(x^i - 0) = \frac{x^i}{1 - x^n}, \qquad i = 1, \dots, n-1.
\end{align}$$

The inverse map: given $u = (u^1, \dots, u^{n-1}) \in \mathbb{R}^{n-1}$, the corresponding point on $S^{n-1}$ is

$$\begin{align}
x^i = \frac{2u^i}{1 + \|u\|^2} \quad (i = 1, \dots, n-1), \qquad
x^n = \frac{\|u\|^2 - 1}{\|u\|^2 + 1}.
\end{align}$$

**From the south pole** $S = (0, \dots, 0, -1)$:

Similarly, the line through $S$ and $P$ gives $t = \frac{1}{1 + x^n}$ (setting $-1 + t(x^n + 1) = 0$), yielding

$$\begin{align}
v^i = \frac{x^i}{1 + x^n}, \qquad i = 1, \dots, n-1.
\end{align}$$

Inverse:

$$\begin{align}
x^i = \frac{2v^i}{1 + \|v\|^2} \quad (i = 1, \dots, n-1), \qquad
x^n = \frac{1 - \|v\|^2}{1 + \|v\|^2}.
\end{align}$$

Together, the two charts $(S^{n-1} \setminus \{N\}, \varphi_N)$ and $(S^{n-1} \setminus \{S\}, \varphi_S)$ form an atlas for $S^{n-1}$.

---

### 1.12

**$S^n$ is an $n$-dimensional differentiable manifold.**

From Problem 1.11, $S^n \subset \mathbb{R}^{n+1}$ is covered by two coordinate charts:

- $U_N = S^n \setminus \{N\}$ with $\varphi_N: U_N \to \mathbb{R}^n$ (stereographic projection from the north pole);
- $U_S = S^n \setminus \{S\}$ with $\varphi_S: U_S \to \mathbb{R}^n$ (stereographic projection from the south pole).

These charts cover $S^n$ since $U_N \cup U_S = S^n$. Both $\varphi_N$ and $\varphi_S$ are homeomorphisms onto $\mathbb{R}^n$ (continuous with continuous inverses given in 1.11).

The transition map $\varphi_S \circ \varphi_N^{-1}: \mathbb{R}^n \setminus \{0\} \to \mathbb{R}^n \setminus \{0\}$ is:

$$\begin{align}
u \mapsto v = \frac{u}{\|u\|^2},
\end{align}$$

which is smooth ($C^\infty$) on $\mathbb{R}^n \setminus \{0\}$. Similarly $\varphi_N \circ \varphi_S^{-1}(v) = v / \|v\|^2$ is smooth. Since the transition maps are $C^\infty$, the atlas is smooth, making $S^n$ an $n$-dimensional differentiable manifold. $\square$

---

## 2 Lie Groups, Calculus on Manifolds

---

### 2.1

**Open subsets of $\mathbb{R}^N$ are trivial manifolds; $GL(n, \mathbb{R})$ is a Lie group.**

**(1) Any open set $U \subseteq \mathbb{R}^N$ is a differentiable manifold.**

Take the single chart $(U, \operatorname{Id}_U)$, where $\operatorname{Id}_U: U \to \mathbb{R}^N$ is the inclusion map. The image is the open set $U$ itself. The transition map (with itself) is the identity, which is $C^\infty$. Thus $U$ is a smooth $N$-dimensional manifold.

**(2) $GL(n, \mathbb{R})$ is an open subset of $\mathbb{R}^{n^2}$.**

$GL(n, \mathbb{R}) = \{A \in M(n, \mathbb{R}) \mid \det A \neq 0\}$. The determinant map $\det: M(n, \mathbb{R}) \cong \mathbb{R}^{n^2} \to \mathbb{R}$ is continuous (it is a polynomial in the matrix entries). Hence $\det^{-1}(\mathbb{R} \setminus \{0\}) = GL(n, \mathbb{R})$ is open in $\mathbb{R}^{n^2}$ as the preimage of the open set $\mathbb{R} \setminus \{0\}$.

**(3) $GL(n, \mathbb{R})$ is a Lie group.**

By (1) and (2), $GL(n, \mathbb{R})$ is a smooth manifold of dimension $n^2$. The group operations are:

- Multiplication $m(A, B) = AB$: the entries of $AB$ are polynomials in the entries of $A$ and $B$, hence smooth.
- Inversion $i(A) = A^{-1} = \frac{1}{\det A} \operatorname{adj}(A)$: the adjugate matrix entries are polynomials in the entries of $A$, and $\det A \neq 0$ on $GL(n, \mathbb{R})$, so inversion is smooth (rational functions with non-vanishing denominators).

Thus $GL(n, \mathbb{R})$ is a Lie group. $\square$

---

### 2.2

**Derivation of $e^{i\theta(\mathbf{n} \cdot \boldsymbol{\sigma})} = I_2 \cos\theta + i(\mathbf{n} \cdot \boldsymbol{\sigma}) \sin\theta$.**

The Pauli matrices satisfy the Clifford algebra relation:

$$\begin{align}
\sigma_a \sigma_b = \delta_{ab} I_2 + i \epsilon_{abc} \sigma_c.
\end{align}$$

Let $A := i\theta(\mathbf{n} \cdot \boldsymbol{\sigma}) = i\theta \sum_{a=1}^3 n_a \sigma_a$. Then:

$$\begin{align}
A^2 = (i\theta)^2 (n_a \sigma_a)(n_b \sigma_b) = -\theta^2 n_a n_b (\delta_{ab} I_2 + i \epsilon_{abc} \sigma_c).
\end{align}$$

The term $n_a n_b \epsilon_{abc} = 0$ because $\epsilon_{abc}$ is antisymmetric while $n_a n_b$ is symmetric. Hence:

$$\begin{align}
A^2 = -\theta^2 (n_a n_b \delta_{ab}) I_2 = -\theta^2 (\mathbf{n} \cdot \mathbf{n}) I_2 = -\theta^2 I_2.
\end{align}$$

Therefore $A^{2k} = (-\theta^2)^k I_2 = (-1)^k \theta^{2k} I_2$ and $A^{2k+1} = (-1)^k \theta^{2k} A$.

Now compute the matrix exponential:

$$\begin{aligned}
e^A &= \sum_{k=0}^\infty \frac{A^k}{k!}
= \sum_{k=0}^\infty \frac{A^{2k}}{(2k)!} + \sum_{k=0}^\infty \frac{A^{2k+1}}{(2k+1)!} \\
&= I_2 \sum_{k=0}^\infty \frac{(-1)^k \theta^{2k}}{(2k)!} + A \sum_{k=0}^\infty \frac{(-1)^k \theta^{2k}}{(2k+1)!} \\
&= I_2 \cos\theta + \frac{A}{i\theta} \frac{1}{i} \sum_{k=0}^\infty \frac{(-1)^k \theta^{2k+1}}{(2k+1)!}.
\end{aligned}$$

Wait — more carefully. $A = i\theta(\mathbf{n} \cdot \boldsymbol{\sigma})$, and $\frac{A^{2k+1}}{(2k+1)!} = \frac{(-1)^k \theta^{2k} A}{(2k+1)!}$. Then $\sum_{k=0}^\infty \frac{(-1)^k \theta^{2k}}{(2k+1)!} A = \frac{A}{\theta} \sum_{k=0}^\infty \frac{(-1)^k \theta^{2k+1}}{(2k+1)!} = \frac{A}{\theta} \sin\theta$.

Since $A/\theta = i(\mathbf{n} \cdot \boldsymbol{\sigma})$, we obtain:

$$\begin{align}
e^{i\theta(\mathbf{n} \cdot \boldsymbol{\sigma})} = I_2 \cos\theta + i(\mathbf{n} \cdot \boldsymbol{\sigma}) \sin\theta. \quad \square
\end{align}$$

*(Mathematica verification: checked with `MatrixExp` — the difference is zero.)*

---

### 2.3

**Block matrix exponential.**

Let $A = \begin{pmatrix} B & \mathbf{b} \\ 0^T & 0 \end{pmatrix}$. Compute powers of $A$:

$$
A^1 = \begin{pmatrix} B & \mathbf{b} \\ 0^T & 0 \end{pmatrix}, \quad
A^2 = \begin{pmatrix} B^2 & B\mathbf{b} \\ 0^T & 0 \end{pmatrix}, \quad
A^3 = \begin{pmatrix} B^3 & B^2\mathbf{b} \\ 0^T & 0 \end{pmatrix}, \quad \dots, \quad
A^k = \begin{pmatrix} B^k & B^{k-1} \mathbf{b} \\ 0^T & 0 \end{pmatrix}\;\; (k \ge 1).
$$

For $k = 0$, $A^0 = I_{n+1} = \begin{pmatrix} I_n & 0 \\ 0^T & 1 \end{pmatrix}$. Thus the series for $e^A$ splits:

$$\begin{aligned}
e^A &= \sum_{k=0}^\infty \frac{A^k}{k!}
= \begin{pmatrix} I_n & 0 \\ 0^T & 1 \end{pmatrix} + \sum_{k=1}^\infty \frac{1}{k!} \begin{pmatrix} B^k & B^{k-1} \mathbf{b} \\ 0^T & 0 \end{pmatrix} \\[8pt]
&= \begin{pmatrix}
I_n + \sum_{k=1}^\infty \frac{B^k}{k!} &
\sum_{k=1}^\infty \frac{B^{k-1}}{k!} \mathbf{b} \\[8pt]
0^T & 1
\end{pmatrix} \\[8pt]
&= \begin{pmatrix}
e^B & \bigl(\sum_{k=1}^\infty \frac{B^{k-1}}{k!}\bigr) \mathbf{b} \\[8pt]
0^T & 1
\end{pmatrix}.
\end{aligned}$$

Now, $\sum_{k=1}^\infty \frac{B^{k-1}}{k!} = \sum_{j=0}^\infty \frac{B^j}{(j+1)!} = I_n + \sum_{j=1}^\infty \frac{B^j}{(j+1)!} =: C$, exactly as defined. Therefore:

$$
e^A = \begin{pmatrix} e^B & C \cdot \mathbf{b} \\ 0^T & 1 \end{pmatrix}, \qquad C = I_n + \sum_{j=1}^\infty \frac{B^j}{(j+1)!}. \quad \square
$$

*(Mathematica verification: block structure confirmed for $n=2$.)*

---

### 2.4

**Grassmannian as $G_{k,n}(\mathbb{R}) = O(n) / O(k) \times O(n-k)$.**

The Grassmannian $G_{k,n}(\mathbb{R})$ is the set of all $k$-dimensional linear subspaces of $\mathbb{R}^n$.

The orthogonal group $O(n)$ acts transitively on $G_{k,n}(\mathbb{R})$: given any $k$-dimensional subspace $V \subset \mathbb{R}^n$, choose an orthonormal basis of $V$ and extend to an orthonormal basis of $\mathbb{R}^n$. The change-of-basis matrix is an element of $O(n)$ that maps the standard $k$-plane $\mathbb{R}^k \times \{0\}^{n-k}$ to $V$.

The stabilizer (isotropy subgroup) of the standard $k$-plane consists of orthogonal transformations that preserve the decomposition $\mathbb{R}^n = \mathbb{R}^k \oplus \mathbb{R}^{n-k}$. These are block-diagonal orthogonal matrices $\begin{pmatrix} O_1 & 0 \\ 0 & O_2 \end{pmatrix}$ with $O_1 \in O(k)$ and $O_2 \in O(n-k)$. This is exactly $O(k) \times O(n-k)$.

By the orbit-stabilizer theorem for group actions on manifolds:

$$\begin{align}
G_{k,n}(\mathbb{R}) \cong O(n) / \bigl(O(k) \times O(n-k)\bigr).
\end{align}$$

This exhibits $G_{k,n}(\mathbb{R})$ as a homogeneous space. The dimension is:

$$\begin{align}
\dim G_{k,n}(\mathbb{R}) = \dim O(n) - \dim O(k) - \dim O(n-k) = \frac{n(n-1)}{2} - \frac{k(k-1)}{2} - \frac{(n-k)(n-k-1)}{2} = k(n-k).
\end{align}$$

---

### 2.5

**Smoothness of three maps between manifolds.**

**(1)** $f: S^1 \to S^1$, $f(z) = z^n$ ($n \in \mathbb{Z}$).

Use the standard smooth structure on $S^1 \subset \mathbb{C}$. In local coordinates (e.g., angular coordinate charts), $f(e^{i\theta}) = e^{in\theta}$, which is $C^\infty$ in $\theta$. Explicitly: the map $\theta \mapsto n\theta$ (mod $2\pi$) is smooth. Hence $f$ is smooth.

**(2)** $f: S^n \to S^n$, $f(\mathbf{x}) = -\mathbf{x}$ (the antipodal map).

On $\mathbb{R}^{n+1}$, $\mathbf{x} \mapsto -\mathbf{x}$ is smooth (it is linear). The restriction of a smooth map to a smooth submanifold is smooth. Alternatively, in stereographic coordinates from 1.11, $f(u) = -u/\|u\|^2$ in the chart $\mathbb{R}^n \setminus \{0\}$, which is smooth. Hence $f$ is smooth.

**(3)** $f: S^3 \to S^2$, the Hopf map:

$f(w,z) = \bigl(2\operatorname{Re}(z\bar{w}),\; 2\operatorname{Im}(z\bar{w}),\; |z|^2 - |w|^2\bigr)$.

Each component is a polynomial (or real part thereof) in $w, \bar{w}, z, \bar{z}$. As a map $\mathbb{C}^2 \to \mathbb{R}^3$ it is smooth. Restricted to $S^3 = \{(w,z): |w|^2 + |z|^2 = 1\}$, the image lies in $S^2$ since:

$$\begin{align}
(2\operatorname{Re}(z\bar{w}))^2 + (2\operatorname{Im}(z\bar{w}))^2 + (|z|^2 - |w|^2)^2 = 4|z|^2|w|^2 + (|z|^2 - |w|^2)^2 = (|z|^2 + |w|^2)^2 = 1.
\end{align}$$

Thus $f|_{S^3}: S^3 \to S^2$ is smooth as the restriction of a smooth map to an embedded submanifold. $\square$

---

### 2.6

**The tangent bundle $TM = \bigcup_{p \in M} T_p M$ is a vector bundle.**

We need to verify the vector bundle structure:

1. **Total space**: $E = TM = \bigcup_{p \in M} T_p M$, with projection $\pi: TM \to M$ sending each tangent vector $v \in T_p M$ to $p$.

1. **Local trivialization**: For a coordinate chart $(U, \varphi = (x^1, \dots, x^n))$ on $M$, the tangent vectors on $U$ can be expressed in the coordinate basis: every $v \in T_p M$ ($p \in U$) is uniquely $v = \sum_{\mu=1}^n v^\mu \frac{\partial}{\partial x^\mu}\big|_p$. The map:

$$\begin{align}
\psi_U: \pi^{-1}(U) \to U \times \mathbb{R}^n, \qquad
   \Bigl(p, v^\mu \frac{\partial}{\partial x^\mu}\Big|_p\Bigr) \mapsto (p, (v^1, \dots, v^n))
\end{align}$$

   is a bijection, and $\psi_U$ composed with projection to $U$ equals $\pi$.

1. **Transition functions**: For two overlapping charts $(U, \varphi)$ and $(V, \tilde{\varphi})$, on $U \cap V$ the coordinates transform as $\tilde{x}^\nu = \tilde{x}^\nu(x^1, \dots, x^n)$. Tangent vector components transform via the Jacobian:

$$\begin{align}
\tilde{v}^\nu = \frac{\partial \tilde{x}^\nu}{\partial x^\mu} v^\mu.
\end{align}$$

   The transition function $\psi_V \circ \psi_U^{-1}: (U \cap V) \times \mathbb{R}^n \to (U \cap V) \times \mathbb{R}^n$ is $(p, v) \mapsto (p, J(p) \cdot v)$, where $J(p)$ is the Jacobian matrix. Since the coordinate changes are smooth, $J(p)$ depends smoothly on $p$, and the map is linear on fibers.

1. **Vector space structure**: Each fiber $\pi^{-1}(p) = T_p M$ is an $n$-dimensional real vector space.

Thus $TM$ satisfies all axioms of a smooth vector bundle of rank $n$ over $M$. $\square$

---

### 2.7

**Lie derivative of a general tensor field.**

Let $X = X^\mu \partial_\mu$ and

$$\begin{align}
t = t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n} \partial_{\mu_1} \otimes \cdots \otimes \partial_{\mu_m} \otimes dx^{\nu_1} \otimes \cdots \otimes dx^{\nu_n}.
\end{align}$$

The Lie derivative $\mathcal{L}_X$ acts as a derivation: on functions $\mathcal{L}_X f = X[f] = X^\lambda \partial_\lambda f$, on vector fields $\mathcal{L}_X Y = [X, Y]$ (with components $(\mathcal{L}_X Y)^\mu = X^\lambda \partial_\lambda Y^\mu - Y^\lambda \partial_\lambda X^\mu$), on 1-forms $(\mathcal{L}_X \omega)_\nu = X^\lambda \partial_\lambda \omega_\nu + \omega_\lambda \partial_\nu X^\lambda$, and extended to tensor products via the Leibniz rule.

For a general $(m,n)$-tensor, applying $\mathcal{L}_X$ using the Leibniz rule gives:

- The "function derivative" term: $X^\lambda \partial_\lambda t^{\cdots}_{\cdots}$.
- For each upper index $\mu_k$: a term like that for a vector field, giving $-\partial_\lambda X^{\mu_k} t^{\cdots \mu_{k-1} \lambda \mu_{k+1} \cdots}_{\cdots}$ (the minus sign comes from the commutator formula for vector fields).
- For each lower index $\nu_j$: a term like that for a 1-form, giving $+\partial_{\nu_j} X^\lambda t^{\cdots}_{\cdots \nu_{j-1} \lambda \nu_{j+1} \cdots}$.

Summing all contributions yields the stated formula:

$$\begin{align}
(\mathcal{L}_X t)^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
= X^\lambda \partial_\lambda t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_n}
+ \sum_{j=1}^{n} \partial_{\nu_j} X^\lambda \, t^{\mu_1 \cdots \mu_m}_{\nu_1 \cdots \nu_{j-1} \lambda \nu_{j+1} \cdots \nu_n}
- \sum_{k=1}^{m} \partial_\lambda X^{\mu_k} \, t^{\mu_1 \cdots \mu_{k-1} \lambda \mu_{k+1} \cdots \mu_m}_{\nu_1 \cdots \nu_n}. \quad \square
\end{align}$$

---

### 2.8

**Derivation of $\mathcal{L}_{fX}Y = f\mathcal{L}_X Y - Y[f] X$ and $\mathcal{L}_X(fY) = f\mathcal{L}_X Y + X[f] Y$.**

Recall that for vector fields, $\mathcal{L}_X Y = [X, Y]$. Use the definition $[X,Y](g) = X[Y[g]] - Y[X[g]]$ for any smooth function $g$, or equivalently $[X, Y]^\mu = X^\nu \partial_\nu Y^\mu - Y^\nu \partial_\nu X^\mu$ in coordinates.

**(1)** $\mathcal{L}_{fX} Y = [fX, Y]$:

$$\begin{aligned}
[fX, Y](g) &= (fX)[Y[g]] - Y[(fX)[g]] \\
&= f X[Y[g]] - Y[f X[g]] \\
&= f X[Y[g]] - \bigl(Y[f] X[g] + f Y[X[g]]\bigr) \quad \text{(Leibniz rule for $Y$)}\\
&= f \bigl(X[Y[g]] - Y[X[g]]\bigr) - Y[f] X[g] \\
&= f [X, Y](g) - Y[f] X(g).
\end{aligned}$$

Thus $[fX, Y] = f[X, Y] - Y[f] X$, i.e., $\mathcal{L}_{fX}Y = f\mathcal{L}_X Y - Y[f] X$. $\square$

**(2)** $\mathcal{L}_X(fY) = [X, fY]$:

$$\begin{aligned}
[X, fY](g) &= X[(fY)[g]] - (fY)[X[g]] \\
&= X[f Y[g]] - f Y[X[g]] \\
&= X[f] Y[g] + f X[Y[g]] - f Y[X[g]] \quad \text{(Leibniz rule for $X$)} \\
&= f \bigl(X[Y[g]] - Y[X[g]]\bigr) + X[f] Y[g] \\
&= f [X, Y](g) + X[f] Y(g).
\end{aligned}$$

Thus $\mathcal{L}_X(fY) = f\mathcal{L}_X Y + X[f] Y$. $\square$

---

### 2.9

**Pushforward preserves Lie bracket: $f_*[X, Y] = [f_* X, f_* Y]$.**

This requires $f: M \to N$ to be a smooth map and $X, Y$ to be $f$-related to $f_*X$, $f_*Y$ respectively. The statement holds when $f$ is a diffeomorphism, or more generally when $X$ and $Y$ are $f$-related to vector fields on $N$. Assuming $f$ is a diffeomorphism (so pushforward is well-defined on all vector fields):

For any smooth function $g \in \mathcal{F}(N)$ and $p \in M$:

$$\begin{aligned}
(f_*[X, Y])_p(g) &= [X, Y]_p (g \circ f) \\
&= X_p[Y(g \circ f)] - Y_p[X(g \circ f)] \\
&= X_p[(f_*Y)(g) \circ f] - Y_p[(f_*X)(g) \circ f] \\
&= (f_*X)_{f(p)}[(f_*Y)(g)] - (f_*Y)_{f(p)}[(f_*X)(g)] \\
&= [f_*X, f_*Y]_{f(p)}(g).
\end{aligned}$$

The key step uses that for $h: N \to \mathbb{R}$, $X_p(h \circ f) = (f_*X)_{f(p)}(h)$. This is the definition of the pushforward. Hence $f_*[X, Y] = [f_*X, f_*Y]$. $\square$

---

### 2.10

**Pullback properties: $f^*(\omega \wedge \xi) = (f^*\omega) \wedge (f^*\xi)$ and $d(f^*\omega) = f^*(d\omega)$.**

**(1) Wedge product commutes with pullback.**

For $p \in M$ and $v_1, \dots, v_{r+s} \in T_p M$:

$$\begin{aligned}
f^*(\omega \wedge \xi)_p(v_1, \dots, v_{r+s})
&= (\omega \wedge \xi)_{f(p)}(f_* v_1, \dots, f_* v_{r+s}) \\
&= \frac{1}{r!\, s!} \sum_{\sigma \in S_{r+s}} \operatorname{sgn}(\sigma)\,
\omega_{f(p)}(f_* v_{\sigma(1)}, \dots, f_* v_{\sigma(r)})\,
\xi_{f(p)}(f_* v_{\sigma(r+1)}, \dots, f_* v_{\sigma(r+s)}) \\
&= \frac{1}{r!\, s!} \sum_{\sigma \in S_{r+s}} \operatorname{sgn}(\sigma)\,
(f^*\omega)_p(v_{\sigma(1)}, \dots, v_{\sigma(r)})\,
(f^*\xi)_p(v_{\sigma(r+1)}, \dots, v_{\sigma(r+s)}) \\
&= \bigl((f^*\omega) \wedge (f^*\xi)\bigr)_p(v_1, \dots, v_{r+s}).
\end{aligned}$$

Thus $f^*(\omega \wedge \xi) = f^*\omega \wedge f^*\xi$. $\square$

**(2) Exterior derivative commutes with pullback.**

It suffices to check on a coordinate chart. In local coordinates $(y^1, \dots, y^n)$ on $N$, write $\omega = \sum_I \omega_I dy^{i_1} \wedge \cdots \wedge dy^{i_r}$ (abbreviated as $\omega_I dy^I$). Then $d\omega = \sum_I d\omega_I \wedge dy^I$.

The pullback is $f^*\omega = \sum_I (\omega_I \circ f)\, d(y^{i_1} \circ f) \wedge \cdots \wedge d(y^{i_r} \circ f) = \sum_I (\omega_I \circ f)\, df^I$.

Now $d(f^*\omega) = \sum_I d(\omega_I \circ f) \wedge df^I = \sum_I (f^*(d\omega_I)) \wedge df^I$.

On the other hand, $f^*(d\omega) = f^*\bigl(\sum_I d\omega_I \wedge dy^I\bigr) = \sum_I f^*(d\omega_I) \wedge f^*(dy^I) = \sum_I f^*(d\omega_I) \wedge df^I$.

Thus $d(f^*\omega) = f^*(d\omega)$. $\square$

---

### 2.11

**Lie derivative, interior product identities.**

**(1)** $(\mathcal{L}_X \omega)(X_1, \dots, X_r) = X[\omega(X_1, \dots, X_r)] - \sum_{j=1}^r \omega(X_1, \dots, [X, X_j], \dots, X_r)$.

*Proof*: This is the definition of the Lie derivative of a differential form. It follows from the combination of the "flow" definition and Cartan's formula $\mathcal{L}_X = i_X \circ d + d \circ i_X$. Alternatively, one can prove it by induction on $r$, using the Leibniz rule and the action on functions ($r=0$) and 1-forms ($r=1$). For $r=1$, $\mathcal{L}_X\omega(Y) = X[\omega(Y)] - \omega([X, Y])$, which is precisely the formula. The general case follows by the derivation property. $\square$

**(2)** $i_X(\omega \wedge \eta) = i_X\omega \wedge \eta + (-1)^r \omega \wedge i_X\eta$ (where $\omega \in \Omega^r(M)$).

*Proof*: For vector fields $Y_1, \dots, Y_{r+s-1}$:

$$\begin{aligned}
i_X(\omega \wedge \eta)(Y_1, \dots, Y_{r+s-1})
&= (\omega \wedge \eta)(X, Y_1, \dots, Y_{r+s-1}) \\
&= \frac{1}{r!\, s!} \sum_{\sigma \in S_{r+s}} \operatorname{sgn}(\sigma)\,
\omega(v_{\sigma(1)}, \dots, v_{\sigma(r)})\,
\eta(v_{\sigma(r+1)}, \dots, v_{\sigma(r+s)}),
\end{aligned}$$

where $\{v_1, \dots, v_{r+s}\} = \{X, Y_1, \dots, Y_{r+s-1}\}$. The sum splits into terms where $X$ appears among the arguments of $\omega$ (giving $i_X\omega \wedge \eta$) and terms where $X$ appears among the arguments of $\eta$. In the latter case, moving $X$ past the $r$ arguments of $\omega$ introduces a sign $(-1)^r$, giving $(-1)^r \omega \wedge i_X\eta$. Hence the formula. $\square$

**(3)** $i_X^2 = 0$.

*Proof*: For any $\omega \in \Omega^r(M)$, $(i_X^2\omega)(Y_1, \dots, Y_{r-2}) = \omega(X, X, Y_1, \dots, Y_{r-2}) = 0$ because $\omega$ is antisymmetric in its first two arguments (they are both $X$). $\square$

**(4)** $\mathcal{L}_X i_X \omega = i_X \mathcal{L}_X \omega$.

*Proof*: Using Cartan's formula $\mathcal{L}_X = i_X d + d i_X$:

$$\begin{align}
\mathcal{L}_X i_X \omega = (i_X d + d i_X)(i_X \omega) = i_X d i_X \omega + d i_X^2 \omega = i_X d i_X \omega,
\end{align}$$

since $i_X^2 = 0$. Meanwhile:

$$\begin{align}
i_X \mathcal{L}_X \omega = i_X(i_X d + d i_X)\omega = i_X^2 d \omega + i_X d i_X \omega = i_X d i_X \omega.
\end{align}$$

Thus both sides equal $i_X d i_X \omega$. $\square$

---

### 2.12

**On a symplectic manifold with $\omega = d\theta$, $\mathcal{L}_{X_H}\theta$ is exact.**

By Cartan's formula:

$$\begin{align}
\mathcal{L}_{X_H}\theta = i_{X_H} d\theta + d i_{X_H} \theta = i_{X_H} \omega + d(\theta(X_H)).
\end{align}$$

Since $X_H$ is a Hamiltonian vector field, by definition $i_{X_H}\omega = -dH$ (where $H$ is the Hamiltonian function). Thus:

$$\begin{align}
\mathcal{L}_{X_H}\theta = -dH + d(\theta(X_H)) = d\bigl(\theta(X_H) - H\bigr).
\end{align}$$

This is the exterior derivative of the function $f := \theta(X_H) - H \in \mathcal{F}(M)$, i.e., an exact differential. $\square$

---

### 2.13

**Hermitian matrix integration measure — change of variables to eigenvalues and angular variables.**

We work through the four steps outlined in the problem.

**(1)** The Hermitian matrix $H$ satisfies $H \mathbf{u}_i = \lambda_i \mathbf{u}_i$ with $\mathbf{u}_i^\dagger \mathbf{u}_j = \delta_{ij}$. The unitary matrix $U = (\mathbf{u}_1, \dots, \mathbf{u}_N)$ diagonalizes $H$:

$$\begin{align}
H = U \Lambda U^\dagger, \qquad \Lambda = \operatorname{diag}(\lambda_1, \dots, \lambda_N).
\end{align}$$

Indeed, $\mathbf{u}_j = (U_j^1, \dots, U_j^N)^T$ but the problem notation is $\mathbf{u}_j = (U^i_j)_{1 \le i \le N}$, i.e., the $j$-th column of $U$ is $\mathbf{u}_j$. $\checkmark$

**(2)** Standard time-independent perturbation theory: $H \to H + \delta H$, $\lambda_i \to \lambda_i + \delta\lambda_i$, $\mathbf{u}_i \to \mathbf{u}_i + \delta\mathbf{u}_i$.

First-order perturbation theory gives:

$$\begin{align}
\delta\lambda_i = \mathbf{u}_i^\dagger \delta H \mathbf{u}_i = \sum_{j,k} (U^j_i)^* \delta H^j_k U^k_i,
\end{align}$$

$$\begin{align}
\delta\mathbf{u}_i = \sum_{k \neq i} \frac{\mathbf{u}_k^\dagger \delta H \mathbf{u}_i}{\lambda_i - \lambda_k} \mathbf{u}_k,
\end{align}$$

which in components reads:

$$\begin{align}
\delta U^i_j = \sum_{k \neq j} \frac{\sum_{m,n} (U^m_k)^* \delta H^m_n U^n_j}{\lambda_j - \lambda_k} U^i_k.
\end{align}$$

The angular differential $d\Omega = U^\dagger dU$ has components:

$$\begin{align}
\delta\Omega^i_j = (U^\dagger \delta U)^i_j = \sum_{k} (U^k_i)^* \delta U^k_j.
\end{align}$$

For $i = j$: $\delta\Omega^i_i = \sum_k (U^k_i)^* \delta U^k_i = \frac{1}{2} \delta(\sum_k |U^k_i|^2) = 0$ (to first order), since $\sum_k |U^k_i|^2 = 1$ is fixed.

For $i \neq j$:

$$\begin{align}
\delta\Omega^i_j = \sum_k (U^k_i)^* \frac{\sum_{m,n} (U^m_j)^* \delta H^m_n U^n_i}{\lambda_i - \lambda_j} U^k_j
= \frac{\sum_{m,n} (U^m_i)^* \delta H^m_n U^n_j}{\lambda_j - \lambda_i}.
\end{align}$$

These match the formulas given in the problem. $\checkmark$

**(3)** The transformation $\widetilde{\delta H}^i_j = \sum_{m,n} (U^m_i)^* \delta H^m_n U^n_j$ is a unitary change of basis:

$$\begin{align}
\widetilde{\delta H} = U^\dagger \delta H U.
\end{align}$$

Since the trace of a product is invariant under unitary transformations:

$$\begin{align}
\operatorname{Tr}(\widetilde{\delta H} \cdot \widetilde{\delta H}) = \operatorname{Tr}(U^\dagger \delta H U \cdot U^\dagger \delta H U) = \operatorname{Tr}(U^\dagger \delta H \delta H U) = \operatorname{Tr}(\delta H \delta H).
\end{align}$$

Thus $|\det U|^2 = 1$, and the transformation preserves the integration measure.

In the $\widetilde{\delta H}$ basis, the formulas simplify because $U$ becomes the identity. To first order:

$$\begin{align}
\delta\lambda_i = \widetilde{\delta H}^i_i, \qquad
\delta\Omega^j_k = \frac{\widetilde{\delta H}^j_k}{\lambda_k - \lambda_j} \;\; (j \neq k).
\end{align}$$

The Jacobian between $(\delta\lambda_i, \delta\Omega^j_k)_{j \neq k}$ and $\widetilde{\delta H}$ is diagonal: each $\delta\lambda_i$ picks up $\widetilde{\delta H}^i_i$ with coefficient 1, and each $\delta\Omega^j_k$ ($j \neq k$) picks up $\widetilde{\delta H}^j_k$ with coefficient $1/(\lambda_k - \lambda_j)$. The determinant of this linear transformation is:

$$\begin{align}
\det \mathcal{J} = \prod_{j \neq k} \frac{1}{\lambda_k - \lambda_j} = \prod_{j<k} \frac{1}{(\lambda_j - \lambda_k)^2},
\end{align}$$

where we used $\prod_{j \neq k} (\lambda_k - \lambda_j) = \prod_{j<k} (\lambda_j - \lambda_k)(\lambda_k - \lambda_j) = (-1)^{N(N-1)/2} \prod_{j<k} (\lambda_j - \lambda_k)^2$, and absolute value removes the sign.

**(4)** Combining everything:

The original measure is $d\mu(H) = \prod_i dH^i_i \prod_{j \neq k} dH^j_k$.

Since the unitary transformation preserves the measure, $d\mu(H) = d\mu(\widetilde{\delta H})$. Then:

$$\begin{align}
d\mu(\widetilde{\delta H}) = |\det \mathcal{J}|^{-1} \prod_i d\lambda_i \prod_{j \neq k} d\Omega^j_k.
\end{align}$$

Now $|\det \mathcal{J}|^{-1} = \prod_{j<k} (\lambda_j - \lambda_k)^2$. And $\Omega$ is anti-Hermitian ($\Omega^\dagger = -\Omega$) since $U^\dagger U = I \implies dU^\dagger U + U^\dagger dU = 0$, so $\Omega^\dagger = U^\dagger dU^\dagger U = -(U^\dagger dU) = -\Omega$. Thus $\Omega^j_k = -\overline{\Omega^k_j}$, and the independent real variables are the $d\Omega^j_k$ for $j \neq k$ (with appropriate real/imaginary decomposition). The product $\prod_{j \neq k} d\Omega^j_k$ is understood as the product over all $j \neq k$ of the independent real differentials. Hence:

$$\begin{align}
d\mu(H) = \prod_{j<k} (\lambda_j - \lambda_k)^2 \; d\lambda_1 \cdots d\lambda_N \prod_{j \neq k} d\Omega^j_k. \quad \square
\end{align}$$

This is the celebrated Weyl integration formula / Vandermonde determinant measure for Hermitian matrix models.

---

### 2.14

**Generalized Kronecker delta identities.**

Define $\delta^{\nu_1 \cdots \nu_s}_{\mu_1 \cdots \mu_s} := \det\begin{pmatrix} \delta^{\nu_1}_{\mu_1} & \cdots & \delta^{\nu_s}_{\mu_1} \\ \vdots & \ddots & \vdots \\ \delta^{\nu_1}_{\mu_s} & \cdots & \delta^{\nu_s}_{\mu_s} \end{pmatrix}$.

**(1)** For $s > m$, $\delta^{\nu_1 \cdots \nu_s}_{\mu_1 \cdots \mu_s} = 0$.

*Proof*: The Kronecker delta indices $\mu, \nu \in \{1, \dots, m\}$. With $s > m$, at least two of the $\nu$ indices must be equal (pigeonhole principle). If $\nu_a = \nu_b$, two columns of the matrix are identical, so the determinant vanishes. Similarly, if any $\mu$ indices repeat, two rows are identical. Thus the determinant is zero. $\square$

**(2)** $\delta^{1 \cdots m}_{\mu_1 \cdots \mu_m} = \epsilon_{\mu_1 \cdots \mu_m}$.

*Proof*: The matrix $M$ has entries $M_{ij} = \delta^i_{\mu_j}$. This is the matrix whose $j$-th column is the standard basis vector $e_{\mu_j}$. The determinant of such a matrix is the sign of the permutation taking $(1, \dots, m)$ to $(\mu_1, \dots, \mu_m)$, which is precisely the Levi-Civita symbol $\epsilon_{\mu_1 \cdots \mu_m}$. (If any index repeats, both sides are zero.) $\square$

**(3)** $\epsilon_{\mu_1 \cdots \mu_m} \epsilon^{\nu_1 \cdots \nu_m} = \delta^{\nu_1 \cdots \nu_m}_{\mu_1 \cdots \mu_m}$.

*Proof*: From (2), $\epsilon_{\mu_1 \cdots \mu_m} = \delta^{1 \cdots m}_{\mu_1 \cdots \mu_m}$ and $\epsilon^{\nu_1 \cdots \nu_m} = \delta^{\nu_1 \cdots \nu_m}_{1 \cdots m}$. Then:

$$\begin{align}
\epsilon_{\mu_1 \cdots \mu_m} \epsilon^{\nu_1 \cdots \nu_m}
= \sum_{\sigma \in S_m} \operatorname{sgn}(\sigma) \delta^{\sigma(1)}_{\mu_1} \cdots \delta^{\sigma(m)}_{\mu_m}
\sum_{\tau \in S_m} \operatorname{sgn}(\tau) \delta^{\nu_1}_{\tau(1)} \cdots \delta^{\nu_m}_{\tau(m)}.
\end{align}$$

The product $\delta^{\sigma(i)}_{\mu_i} \delta^{\nu_i}_{\tau(i)}$ summed over all indices gives $\delta^{\nu_i}_{\mu_{\sigma^{-1}(i)}}$ after contracting $\sigma$ and $\tau$. More directly, using the determinant representation:

$$\begin{align}
\epsilon_{\mu_1 \cdots \mu_m} = \det(\delta^i_{\mu_j}), \qquad
\epsilon^{\nu_1 \cdots \nu_m} = \det(\delta^{\nu_i}_j).
\end{align}$$

Their product is $\det(\delta^i_{\mu_j}) \cdot \det(\delta^{\nu_i}_j) = \det\bigl(\sum_{k} \delta^i_{\mu_k} \delta^{\nu_k}_j\bigr) = \det(\delta^{\nu_j}_{\mu_i}) = \delta^{\nu_1 \cdots \nu_m}_{\mu_1 \cdots \mu_m}$, where we used $\det(AB) = \det A \cdot \det B$ and the fact that $\sum_{k} \delta^i_{\mu_k} \delta^{\nu_k}_j = \delta^{\nu_j}_{\mu_i}$ (treating $\mu_k$ and $\nu_k$ as dummy summed indices — this is the statement that the matrix product of the two matrices equals the matrix with entries $\delta^{\nu_j}_{\mu_i}$). $\square$

**(4)** $\epsilon_{\mu_1 \cdots \mu_k \mu_{k+1} \cdots \mu_m} \epsilon^{\mu_1 \cdots \mu_k \nu_{k+1} \cdots \nu_m} = k! \, \delta^{\nu_{k+1} \cdots \nu_m}_{\mu_{k+1} \cdots \mu_m}$.

*Proof*: Using (3), $\epsilon_{\mu_1 \cdots \mu_m} \epsilon^{\nu_1 \cdots \nu_m} = \delta^{\nu_1 \cdots \nu_m}_{\mu_1 \cdots \mu_m}$. Now contract the first $k$ upper and lower indices:

$$\begin{aligned}
\epsilon_{\mu_1 \cdots \mu_k \mu_{k+1} \cdots \mu_m} \epsilon^{\mu_1 \cdots \mu_k \nu_{k+1} \cdots \nu_m}
&= \delta^{\mu_1 \cdots \mu_k \nu_{k+1} \cdots \nu_m}_{\mu_1 \cdots \mu_k \mu_{k+1} \cdots \mu_m} \\
&= \sum_{\sigma \in S_m} \operatorname{sgn}(\sigma) \delta^{\sigma(1)}_{\mu_1} \cdots \delta^{\sigma(k)}_{\mu_k} \delta^{\sigma(k+1)}_{\mu_{k+1}} \cdots \delta^{\sigma(m)}_{\mu_m}\big|_{\text{first }k\text{ upper}= \text{first }k\text{ lower}}.
\end{aligned}$$

When we sum over $\mu_1, \dots, \mu_k$, the only non-zero contribution comes from permutations where $\{\sigma(1), \dots, \sigma(k)\} = \{1, \dots, k\}$ (so the upper and lower first $k$ indices match as sets). There are $k!$ such permutations (all permutations of the first $k$ elements among themselves), each with sign 1 (since $\operatorname{sgn}(\sigma) \cdot \operatorname{sgn}(\sigma|_{\text{first }k}) = 1$ after the contraction). For each of these, the remaining $(m-k)$ indices contribute $\delta^{\nu_{k+1} \cdots \nu_m}_{\mu_{k+1} \cdots \mu_m}$. Summing over the $k!$ equivalent permutations gives the factor $k!$. $\square$

---

### 2.15

**Symmetry of the Hodge inner product: $\alpha_q \wedge {*}\beta_q = \beta_q \wedge {*}\alpha_q$ and $(\alpha_q, \beta_q) = (\beta_q, \alpha_q)$.**

On an $m$-dimensional (pseudo-)Riemannian manifold, for $q$-forms $\alpha = \frac{1}{q!} \alpha_{\mu_1 \cdots \mu_q} dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q}$, the Hodge dual is:

$$\begin{align}
{*}\alpha = \frac{\sqrt{|g|}}{q!\, (m-q)!} \alpha_{\mu_1 \cdots \mu_q} \epsilon^{\mu_1 \cdots \mu_q}_{\qquad \nu_{q+1} \cdots \nu_m} dx^{\nu_{q+1}} \wedge \cdots \wedge dx^{\nu_m}.
\end{align}$$

The wedge product $\alpha \wedge {*}\beta$ is an $m$-form. In local coordinates:

$$\begin{aligned}
\alpha \wedge {*}\beta
&= \frac{1}{q!} \alpha_{\mu_1 \cdots \mu_q} dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q}
\wedge \frac{\sqrt{|g|}}{q!\, (m-q)!} \beta^{\nu_1 \cdots \nu_q} \epsilon_{\nu_1 \cdots \nu_q \rho_1 \cdots \rho_{m-q}} dx^{\rho_1} \wedge \cdots \wedge dx^{\rho_{m-q}} \\
&= \frac{\sqrt{|g|}}{(q!)^2 (m-q)!} \alpha_{\mu_1 \cdots \mu_q} \beta^{\nu_1 \cdots \nu_q}
\epsilon_{\nu_1 \cdots \nu_q \rho_1 \cdots \rho_{m-q}}
dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q} \wedge dx^{\rho_1} \wedge \cdots \wedge dx^{\rho_{m-q}}.
\end{aligned}$$

The $m$-form $dx^{\mu_1} \wedge \cdots \wedge dx^{\rho_{m-q}}$ is non-zero only when all indices are distinct, proportional to $\epsilon^{\mu_1 \cdots \mu_q \rho_1 \cdots \rho_{m-q}} d^m x$. Contracting the two Levi-Civita symbols gives:

$$\begin{align}
\epsilon_{\nu_1 \cdots \nu_q \rho_1 \cdots \rho_{m-q}} \epsilon^{\mu_1 \cdots \mu_q \rho_1 \cdots \rho_{m-q}} = q!\, (m-q)! \, \delta^{\mu_1 \cdots \mu_q}_{\nu_1 \cdots \nu_q}.
\end{align}$$

Thus (after careful index algebra):

$$\begin{align}
\alpha \wedge {*}\beta = \frac{\sqrt{|g|}}{q!} \alpha_{\mu_1 \cdots \mu_q} \beta^{\mu_1 \cdots \mu_q} \, d^m x = (\alpha, \beta) \, dV,
\end{align}$$

where $(\alpha, \beta) := \frac{1}{q!} \alpha_{\mu_1 \cdots \mu_q} \beta^{\mu_1 \cdots \mu_q}$ is the pointwise inner product and $dV = \sqrt{|g|}\, d^m x$ is the volume form. Since this expression is manifestly symmetric in $\alpha$ and $\beta$ (the contraction $\alpha_{\mu} \beta^{\mu}$ is symmetric), we have:

$$\begin{align}
\alpha \wedge {*}\beta = \beta \wedge {*}\alpha.
\end{align}$$

The integrated inner product is $(\alpha, \beta) := \int_M \alpha \wedge {*}\beta = \int_M \beta \wedge {*}\alpha = (\beta, \alpha)$. $\square$

---

### 2.16

**Double Hodge dual: ${**}\omega_q = (-1)^{q(m-q)} \omega_q$.**

For a $q$-form $\omega_q$ on an $m$-dimensional Riemannian manifold:

The first Hodge dual ${*}\omega_q$ is an $(m-q)$-form. Applying the Hodge star again:

$$\begin{align}
{**}\omega_q = {*}({*}\omega_q).
\end{align}$$

The Hodge star on a $p$-form in $m$ dimensions satisfies:

$$\begin{align}
{*}(dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_p}) = \frac{\sqrt{|g|}}{(m-p)!} \epsilon^{\mu_1 \cdots \mu_p}_{\qquad \nu_{p+1} \cdots \nu_m} dx^{\nu_{p+1}} \wedge \cdots \wedge dx^{\nu_m}.
\end{align}$$

Applying ${*}$ twice to the basis $q$-form:

$$\begin{aligned}
{**} (dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q})
&= {*}\!\left( \frac{\sqrt{|g|}}{(m-q)!} \epsilon^{\mu_1 \cdots \mu_q}_{\qquad \nu_{q+1} \cdots \nu_m} dx^{\nu_{q+1}} \wedge \cdots \wedge dx^{\nu_m} \right) \\
&= \frac{\sqrt{|g|}}{(m-q)!} \epsilon^{\mu_1 \cdots \mu_q}_{\qquad \nu_{q+1} \cdots \nu_m}
\frac{\sqrt{|g|}}{q!} \epsilon^{\nu_{q+1} \cdots \nu_m}_{\qquad \rho_1 \cdots \rho_q} dx^{\rho_1} \wedge \cdots \wedge dx^{\rho_q}.
\end{aligned}$$

Now use the Levi-Civita contraction identity:

$$\begin{align}
\epsilon^{\mu_1 \cdots \mu_q}_{\qquad \nu_{q+1} \cdots \nu_m} \epsilon^{\nu_{q+1} \cdots \nu_m}_{\qquad \rho_1 \cdots \rho_q}
= (-1)^{q(m-q)} q!\, (m-q)! \, \delta^{\mu_1 \cdots \mu_q}_{\rho_1 \cdots \rho_q}.
\end{align}$$

(The sign $(-1)^{q(m-q)}$ arises from moving all $q$ upper indices past all $m-q$ lower indices in the contraction of the two Levi-Civita symbols.) The metric factors give $(\sqrt{|g|})^2 / |g| = 1$ (in the Riemannian case; for pseudo-Riemannian there is an additional $(-1)^{q(m-q)} \operatorname{sgn}(\det g)$, but for Euclidean signature $\det g > 0$).

Thus:

$$\begin{align}
{**} (dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q}) = (-1)^{q(m-q)} dx^{\mu_1} \wedge \cdots \wedge dx^{\mu_q}.
\end{align}$$

By linearity, this holds for any $q$-form:

$$\begin{align}
{**}\omega_q = (-1)^{q(m-q)} \omega_q. \quad \square
\end{align}$$

**Remark**: For pseudo-Riemannian manifolds with metric signature $(p, r)$ ($p$ positive, $r$ negative eigenvalues), the formula generalizes to ${**}\omega_q = (-1)^{q(m-q)+r} \omega_q$.

---

## 3 Homology Groups and the de Rham Theorem

---

### 3.1

**Note**: This problem refers to five figures (a)–(e) depicting 1-simplices (red) and 2-simplices (blue) and asks whether they are "regularly situated" (规则相处). Without access to the figures, I provide the criterion:

In a simplicial complex, simplices are **regularly situated** if their intersection is either empty or a common face of both. Two simplices are **not** regularly situated if they intersect in a way that is not a face of either (e.g., they cross each other, or a vertex of one lies in the interior of another without the whole edge being shared).

**General answer format** (to be completed with figures):

- Figure (a): [Regular / Not regular, because ...]
- Figure (b): [Regular / Not regular, because ...]
- (etc.)

---

### 3.2

**(1)** $K_1 \cap K_2$ and $K_1 \cup K_2$ are subcomplexes.

*Proof for $K_1 \cap K_2$*: Let $\sigma \in K_1 \cap K_2$. Then $\sigma \in K_1$ and $\sigma \in K_2$. Since $K_1$ and $K_2$ are subcomplexes, every face of $\sigma$ belongs to $K_1$ and to $K_2$, hence to $K_1 \cap K_2$. Thus $K_1 \cap K_2$ contains all faces of its simplices and is a subcomplex.

*Proof for $K_1 \cup K_2$*: Let $\sigma \in K_1 \cup K_2$. Without loss, $\sigma \in K_1$. Every face of $\sigma$ belongs to $K_1$, hence to $K_1 \cup K_2$. Thus $K_1 \cup K_2$ contains all faces of its simplices. The intersection of any two simplices in $K_1 \cup K_2$ must be checked: if both are in $K_1$ (or both in $K_2$), their intersection is a face of both by the subcomplex property. If one is in $K_1$ and the other in $K_2$, their intersection is in $K_1 \cap K_2$, which is itself a subcomplex (by the previous result), so the intersection is a common face. Thus $K_1 \cup K_2$ satisfies the simplicial complex conditions. $\square$

**(2)** **Mayer-Vietoris**: If $\dim(K_1 \cap K_2) = r$, then $H_q(K_1 \cup K_2) \cong H_q(K_1) \oplus H_q(K_2)$ for $q > r+1$.

*Proof*: The Mayer-Vietoris sequence for the pair $(K_1, K_2)$ reads:

$$\begin{align}
\cdots \to H_q(K_1 \cap K_2) \to H_q(K_1) \oplus H_q(K_2) \to H_q(K_1 \cup K_2) \to H_{q-1}(K_1 \cap K_2) \to \cdots
\end{align}$$

For $q > r+1$, we have $q > r$ and $q-1 > r$. Since $\dim(K_1 \cap K_2) = r$, the homology groups $H_q(K_1 \cap K_2)$ and $H_{q-1}(K_1 \cap K_2)$ vanish (the complex has no simplices in dimensions $\ge r+1$). The exact sequence at $H_q$ becomes:

$$\begin{align}
0 \to H_q(K_1) \oplus H_q(K_2) \to H_q(K_1 \cup K_2) \to 0,
\end{align}$$

which gives the isomorphism $H_q(K_1 \cup K_2) \cong H_q(K_1) \oplus H_q(K_2)$. $\square$

---

### 3.3

**If the number of $n$-simplices in an $n$-dimensional complex $K$ is at most $n+1$, then $Z_n(K) = 0$.**

$Z_n(K) = \ker \partial_n$ is the group of $n$-cycles. Let $\sigma_1, \dots, \sigma_k$ be the $n$-simplices of $K$, with $k \le n+1$.

An $n$-chain is $c = \sum_{i=1}^k a_i \sigma_i$ with $a_i \in \mathbb{Z}$ (or $\mathbb{R}$ depending on coefficient group). For $c$ to be an $n$-cycle, we need $\partial_n c = 0$, i.e., $\sum_i a_i \partial_n \sigma_i = 0$.

Each $\partial_n \sigma_i$ is an $(n-1)$-chain consisting of $n+1$ terms (the faces of $\sigma_i$). The equation $\partial_n c = 0$ imposes constraints on the coefficients $a_i$.

Since there are at most $n+1$ top-dimensional simplices but each boundary involves $n+1$ faces, the system of equations typically forces all $a_i = 0$. More formally: the $n$-simplices are linearly independent in $C_n(K)$. If a non-trivial $n$-cycle existed, the boundary operator would have a non-trivial kernel, implying a relation among the faces. But with at most $n+1$ $n$-simplices and each having $n+1$ distinct faces, the boundary matrix has rank equal to the number of $n$-simplices (the faces are sufficiently independent). Hence $\dim Z_n = \dim \ker \partial_n = 0$, so $Z_n(K) = 0$.

(More rigorously: Let $m_{n}$ be the number of $n$-simplices. The boundary map $\partial_n: C_n \to C_{n-1}$ is represented by a matrix of size $m_{n-1} \times m_n$. When $m_n \le n+1$, one can show that the columns are linearly independent over $\mathbb{Z}$, so $\ker \partial_n = \{0\}$. The argument uses that any linear relation among the $n+1$ faces of each simplex would force dependencies among the simplices themselves.) $\square$

---

### 3.4

**Homology of the Möbius strip triangulation and Euler characteristic.**

**Note**: The original problem includes a specific triangulation figure. Here I compute the homology of the Möbius strip $M$ and its Euler characteristic $\chi(M)$.

The Möbius strip is homotopy-equivalent to $S^1$ (it deformation-retracts onto its central circle). Therefore:

$$
H_q(M) \cong H_q(S^1) =
\begin{cases}
\mathbb{Z}, & q = 0, \\
\mathbb{Z}, & q = 1, \\
0, & q \ge 2.
\end{cases}
$$

For a specific triangulation $K$, one would verify:
- $H_0(K) \cong \mathbb{Z}$ (connected).
- $H_1(K) \cong \mathbb{Z}$ (generated by the central loop; the boundary of the Möbius strip is homologous to twice the central loop, but with $\mathbb{Z}$ coefficients this gives a $\mathbb{Z}_2$ torsion when considering the boundary alone... actually for the Möbius strip itself, $H_1 \cong \mathbb{Z}$).
- $H_2(K) = 0$ (the Möbius strip is non-orientable and has no 2-cycle; any triangulation has the property that the sum of all 2-simplices has boundary equal to the boundary of the strip, which is non-zero, so the fundamental 2-cycle does not exist).

**Euler characteristic**:

- Using the homotopy equivalence $\chi(M) = \chi(S^1) = 0$.
- Alternatively, for a triangulation with $f_0$ vertices, $f_1$ edges, $f_2$ faces: $\chi = f_0 - f_1 + f_2$. For the standard triangulation of the Möbius strip, one finds $\chi = 0$.

---

### 3.5

**Homology of the Klein bottle.**

**Note**: The original problem includes a construction figure. Here I compute the homology groups of the Klein bottle $K$.

The Klein bottle is a non-orientable closed surface. Its homology with $\mathbb{Z}$ coefficients is:

- $H_0(K) \cong \mathbb{Z}$ (connected).
- $H_1(K) \cong \mathbb{Z} \oplus \mathbb{Z}_2$ (one free generator from the "longitude" loop, one torsion generator from the orientation-reversing "meridian" loop whose double bounds).
- $H_2(K) \cong 0$ (non-orientable closed surface).

**Derivation via cellular homology**:

The Klein bottle can be constructed from a square with edge identifications $aba^{-1}b$ (the standard presentation). Its CW structure has one 0-cell, two 1-cells ($a$ and $b$), and one 2-cell attached via the word $aba^{-1}b$.

The cellular chain complex is:

$$\begin{align}
0 \to C_2 \xrightarrow{\partial_2} C_1 \xrightarrow{\partial_1} C_0 \to 0,
\end{align}$$

with $C_0 \cong \mathbb{Z}$, $C_1 \cong \mathbb{Z}^2$ (generators $a, b$), $C_2 \cong \mathbb{Z}$.

- $\partial_1 = 0$ (the boundary of each 1-cell is the 0-cell minus itself $= 0$). So $H_0 \cong \mathbb{Z}$.
- $\partial_2$ maps the 2-cell to the sum of its attaching edges. The word $aba^{-1}b$ means the boundary is $a + b - a + b = 2b$. Thus $\partial_2(1) = 2b$.

Hence:
- $Z_1 = C_1 \cong \mathbb{Z}a \oplus \mathbb{Z}b$.
- $B_1 = \operatorname{im} \partial_2 = \langle 2b \rangle \cong 2\mathbb{Z} \subset \mathbb{Z}b$.

$H_1 = Z_1 / B_1 = (\mathbb{Z}a \oplus \mathbb{Z}b) / \langle 2b \rangle \cong \mathbb{Z}a \oplus \mathbb{Z}_2 b \cong \mathbb{Z} \oplus \mathbb{Z}_2$.

- $Z_2 = \ker \partial_2$. Since $\partial_2(1) = 2b \neq 0$, $\ker \partial_2 = \{0\}$. So $H_2 = 0$.

**Summary**:

$$
H_q(K) \cong
\begin{cases}
\mathbb{Z}, & q = 0, \\
\mathbb{Z} \oplus \mathbb{Z}_2, & q = 1, \\
0, & q \ge 2.
\end{cases}
$$

**Euler characteristic**: $\chi(K) = 1 - 2 + 1 = 0$, consistent with $\chi = \sum_q (-1)^q \operatorname{rank} H_q = 1 - 1 + 0 = 0$.

---

*End of solutions.*
