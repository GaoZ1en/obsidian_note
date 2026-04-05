This note summarizes core concepts in point-set topology with concise definitions, key theorems, and canonical examples/counterexamples. It’s designed to be a quick reference consistent with standard conventions.

## 1. Topological spaces

- Topology on a set $X$: a collection $T \subseteq \mathcal{P}(X)$ such that
  1) $\emptyset, X \in T$;
  2) arbitrary unions of sets in $T$ are in $T$;
  3) finite intersections of sets in $T$ are in $T$.
  Elements of T are called open sets; closed sets are complements of open sets.

- Neighborhood: $U$ is a neighborhood of $x$ if $x \in U$ and $U$ is open.

- Interior/closure/boundary of $A \subseteq X$: $\operatorname{int}(A)$ is the largest open subset of $A$; $\operatorname{cl}(A)$ is the smallest closed set containing $A$; $\partial A := \operatorname{cl}(A) \setminus \operatorname{int}(A)$.

- Continuous map: $f: (X,T_X) \to (Y,T_Y)$ is continuous iff $f^{-1}(V)$ is open in $X$ for every open $V \subseteq Y$.

- Homeomorphism: bijective continuous map with continuous inverse; homeomorphic spaces are topologically equivalent.

## 2. Bases and subbases

- Basis $B$ for $T$: collection of open sets such that every open set is a union of basis elements, and for any $x \in B_1 \cap B_2$ there exists $B_3$ with $x \in B_3 \subseteq B_1 \cap B_2$.
- Subbasis S: finite intersections of elements of S form a basis.
- Initial topology: coarsest topology on X making a given family of maps continuous. Final topology: finest topology on Y making a given family of maps continuous.

## 3. Standard constructions

- Subspace topology: if $A \subseteq X$, open sets in $A$ are $U \cap A$ with $U$ open in $X$.
- Product topology: on $X\times Y$ the basis is $\{\,U\times V\mid U\text{ open in }X,\ V\text{ open in }Y\,\}$. Tychonoff product generalizes to arbitrary products.
- Quotient topology: given $q: X \to Y$ surjective, $U \subseteq Y$ is open iff $q^{-1}(U)$ is open in $X$.

## 4. Separation axioms (T0–T4)

- $T_0$ (Kolmogorov): for distinct $x\ne y$, there is an open set containing one but not the other.
- $T_1$ (Fréchet): for each $x\ne y$, there is an open set containing $x$ but not $y$. Points are closed.
- $T_2$ (Hausdorff): for $x\ne y$, there exist disjoint neighborhoods $U\ni x$, $V\ni y$.
- $T_3$ (regular + $T_1$): for closed $F$ and $x\notin F$, disjoint open sets separate $x$ and $F$.
- $T_4$ (normal + $T_1$): disjoint closed sets can be separated by disjoint open sets.

Notes: Metric spaces are normal ($T_4$). Compact Hausdorff spaces are normal. Subspaces inherit $T_i$ properties appropriately; quotients may lower separation.

## 5. Compactness and related notions

- Compact: every open cover has a finite subcover.
- Sequentially compact: every sequence has a convergent subsequence.
- Countably compact: every countable open cover has a finite subcover.
- Lindelöf: every open cover admits a countable subcover.

Key theorems:
- Heine–Borel ($\mathbb{R}^n$): closed and bounded sets are compact (Euclidean metric).
- Continuous image of a compact space is compact.
- Compact subspace of a Hausdorff space is closed.
- Tychonoff theorem: arbitrary product of compact spaces is compact (product topology).

## 6. Connectedness and path connectedness

- Connected: cannot be written as a separation $X=U\cup V$ with $U,V$ nonempty disjoint open sets.
- Path-connected: for any $x,y$, there is a continuous path $\gamma:[0,1]\to X$ with $\gamma(0)=x$, $\gamma(1)=y$.
- Locally connected/path-connected: small neighborhoods are connected/path-connected.

Facts:
- Path-connected $\Rightarrow$ connected, but not conversely.
- Continuous images preserve connectedness and path-connectedness.
- Components: maximal connected subsets; path components: maximal path-connected subsets; components are closed.

## 7. Metric spaces: basics

- Metric $d: X\times X\to[0,\infty)$ with positivity, symmetry, triangle inequality. The metric topology has basis of open balls $B(x,\varepsilon)$.
- Complete: every Cauchy sequence converges. Totally bounded: for every ε>0, finitely many ε-balls cover X.
- Compact $\Leftrightarrow$ complete and totally bounded (in metric spaces).
- Baire category theorem: complete metric spaces are Baire (countable intersections of dense open sets are dense).

## 8. Convergence, continuity, and compactness criteria

- Sequential characterization (first countable spaces): $x\in\operatorname{cl}(A)$ iff there exists a sequence in $A$ converging to $x$; continuity iff sequential continuity.
- In metric spaces, compact $\Leftrightarrow$ sequentially compact $\Leftrightarrow$ countably compact.

## 9. Urysohn lemma and Tietze extension (normal spaces)

- Urysohn lemma: in normal spaces, for disjoint closed $A,B$ there is a continuous $f:X\to[0,1]$ with $f|_A=0$, $f|_B=1$.
- Tietze extension: in normal spaces, any continuous $f:A\to\mathbb{R}$ on closed $A\subseteq X$ extends to $F:X\to\mathbb{R}$.

## 10. Examples and counterexamples

- Sierpiński space: $X=\{0,1\}$ with open sets $\{\emptyset,\{1\},X\}$ is $T_0$ but not $T_1$.
- Cofinite topology on an infinite set: T1, not Hausdorff.
- Lower limit topology on $\mathbb{R}$ (Sorgenfrey line): normal, Lindelöf fails; product with itself is not normal.
- Long line: locally Euclidean, not second countable, not metrizable.
- Topologist’s sine curve: connected but not path-connected.
- $\mathbb{Q}$ with Euclidean subspace topology: totally disconnected, not discrete, not complete.

## 11. Metrization and second countability (brief)

- Urysohn metrization theorem: a second countable, regular space is metrizable.
- Riesz–Nagata–Smirnov: characterizations via developments and bases.
- Second countability in manifolds implies separability and Lindelöf.

## 12. Quotients and identifications: examples

- Circle as quotient: $S^1 \cong [0,1]/(0\sim 1)$.
- Wedge sum: identify points in disjoint union; impacts connectedness and fundamental group.
- Non-Hausdorff quotient: collapse a closed set to a point can break Hausdorffness.

## 13. Compact Hausdorff extras

- Every compact Hausdorff space is normal and completely regular.
- Riesz representation (topological measure theory side-note): regular Borel measures correspond to positive linear functionals on $C(X)$ (Riesz–Markov–Kakutani).

## 14. Checklists and quick tests

- To test continuity: preimages of basis elements open; or sequential criterion in first countable spaces.
- To test compactness (metric): complete + totally bounded; or use Heine–Borel in $\mathbb{R}^n$.
- To test Hausdorff: distinct points have disjoint neighborhoods; in compact spaces, uniqueness of limits ⇔ Hausdorff.

---

References for further reading: Munkres, Willard, Engelking (for general topology); standard metric space texts for compactness/completeness equivalences.
