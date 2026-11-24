## Susy Algebra, BPS States and Supersymmetric Hodge Theory

Choose a supercharge $\displaystyle{Q}$ satisfying $\displaystyle{Q^{2}=0}$, and denote its Hermitian conjugate by $\displaystyle{Q^{\dagger}}$. The susy algebra reads

$$\begin{align}
\left\{Q,Q^{\dagger}\right\} & =\Delta
\end{align}$$

where $\displaystyle{\Delta=H-E_{\mathrm{BPS}}}$, and $\displaystyle{E_{\mathrm{BPS}}}$ is a linear combination of global symmetry charges.

Consider a normalized physical state $\displaystyle{\ket{\psi}}$. By the positivity of the Hilbert space inner product, we obtain the BPS bound:

$$\begin{align}
E-E_{\mathrm{BPS}} & =\braket{ \psi|\Delta|\psi } \\
 & =\braket{ \psi|\left\{Q,Q^{\dagger}\right\}|\psi }  \\
 & =\left|Q\ket{\psi} \right|^{2}+\left|Q^{\dagger}\ket{\psi}\right|^{2}\geqslant 0
\end{align}$$

states that saturate the BPS bound, i.e.

$$\begin{align}
E=E_{\mathrm{BPS}} \iff Q\ket{\psi} =Q^{\dagger}\ket{\psi} =0,
\end{align}$$

are called BPS states.

Since $\displaystyle{Q}$ is nilpotent, we can define the $\displaystyle{Q}$-cohomology (of states) as

$$\begin{align}
H_{Q} & =\dfrac{\mathrm{ker}Q}{\mathrm{im}Q}
\end{align}$$

since $\displaystyle{\Delta=\left\{Q,Q^{\dagger}\right\}}$, under "suitable" conditions we have the Hodge decomposition,

$$\begin{align}
\mathcal{H} & =\mathrm{ker}\Delta \oplus \mathrm{im}Q\oplus \mathrm{im}Q^{\dagger}
\end{align}$$

where

$$\begin{align}
\mathrm{ker}\Delta & =\mathrm{ker}Q\cap \mathrm{ker}Q^{\dagger}
\end{align}$$

and the $Q$-cohomology is isomorphic to the space of harmonic representatives, i.e. the kernel of $\Delta$, which is exactly the space of BPS states:

$$\begin{align}
H_{Q} & \simeq \mathrm{ker}\Delta=\mathcal{H}_{\mathrm{BPS}}
\end{align}$$

---

The construction is quite similar to the Hodge theory of differential forms. Consider a compact, oriented Riemann manifold $\displaystyle{M}$ without boundary. The exterior derivative $\displaystyle{\mathrm{d}}$ satisfies $\displaystyle{\mathrm{d}^{2}=0}$, and the Riemann metric induces an inner product on differential forms, with respect to which we define the adjoint $\displaystyle{\mathrm{d}^{\dagger}}$. The Hodge Laplacian is

$$\begin{align}
\Delta _{H} & =\mathrm{d}\mathrm{d}^{\dagger}+\mathrm{d}^{\dagger}\mathrm{d}
\end{align}$$

the Hodge theorem states that every de Rham cohomology class has a unique harmonic representative. In particular,

$$\begin{align}
H_{\mathrm{dR}}^{k}(M)\simeq \mathrm{ker}(\Delta _{H}|_{\Omega ^{k}(M)})
\end{align}$$

---

In [*Supersymmetry and Morse Theory*](https://www.ias.edu/sites/default/files/sns/files/supersymmetry-and-morse-theory-1982.pdf), Witten further connected this construction to Morse theory. Given a smooth Morse function $\displaystyle{f\to \mathbb{R}}$, consider the deformed exterior derivative

$$\begin{align}
\mathrm{d}_{t} & =e^{-tf}\mathrm{d}e^{tf}
\end{align}$$

which still satisfies $\displaystyle{\mathrm{d}_{t}^{2}=0}$. Since $\displaystyle{\mathrm{d}_{t}}$ is conjugate to $\displaystyle{\mathrm{d}}$, its cohomology is isomorphic to the de Rham cohomology of $\displaystyle{M}$.

The corresponding Witten Laplacian is

$$\begin{align}
\Delta _{t} & =\mathrm{d}_{t}\mathrm{d}_{t}^{\dagger}+\mathrm{d}_{t}^{\dagger}\mathrm{d}_{t}
\end{align}$$

as $\displaystyle{t\to \infty}$, its low-energy eigenstates become localized near the critical points of $\displaystyle{f}$. Each nondegenerate critical point contributes a low-energy state whose degree equals its Morse index. Comparing these states with the harmonic representatives of de Rham cohomology leads to the Morse inequalities.

---

## State–Operator Correspondence

For a CFT, radial quantization gives the state–operator correspondence,

$$\begin{align}
\mathcal{O}(0)\ket{0} & \longleftrightarrow \ket{\mathcal{O}}
\end{align}$$

which identifies local operators at the origin with states on the spatial sphere. Under this correspondence, the action of the chosen supercharge on states is mapped to its action on operators through the graded commutator. The classification of BPS states can therefore be reformulated as a problem in the $\displaystyle{Q}$-cohomology of gauge-invariant local operators:

$$\begin{align}
H_Q(\mathcal{C}) & =\dfrac{\mathrm{ker}(Q:\mathcal{C}\to\mathcal{C})}{\mathrm{im}(Q:\mathcal{C}\to\mathcal{C})}
\end{align}$$

where $\displaystyle{\mathcal{C}}$ denotes the corresponding graded operator space. In the weak-coupling description below, this space is constructed from the relevant field components and their derivatives, subject to classical relations and gauge invariance. Relating this classical complex to the full interacting theory requires additional control over quantum corrections.

## BPS Letters and Words

Consider weakly coupled $\displaystyle{\mathcal{N}=4}$ SYM. We begin with the elementary field components that saturate the chosen BPS bound in the free limit, together with the covariant derivatives that preserve this bound. Following the notation of Chang–Yin, these BPS letters and derivatives are

$$\begin{align}
\phi^i,\qquad \psi_i,\qquad \lambda_{\dot\alpha},\qquad f,\qquad D_{\dot\alpha},
\end{align}$$

where $\displaystyle{i=1,2,3}$ and $\displaystyle{\dot\alpha=\dot+,\dot-}$. They consist of three complex scalars, selected fermionic components, gaugino components, a field-strength component, and two covariant derivatives. Products of these letters form words, and taking gauge traces gives gauge-invariant local operators, such as

$$\begin{align}
\operatorname{Tr}(\phi^1\phi^2\phi^3),\qquad \operatorname{Tr}(\phi^1\phi^2)\operatorname{Tr}(\phi^3\phi^3).
\end{align}$$

Operators containing fermionic letters and covariant derivatives are constructed in the same way. The term BPS letters refers to the free-limit bound; a general word made from these letters need not represent an interacting BPS state. It must still define a nontrivial $\displaystyle{Q}$-cohomology class.

The words are not freely generated. In the normalization used here, the covariant-derivative relation and the classical equation of motion involving only these letters read

$$\begin{align}
[D_{\dot\alpha},D_{\dot\beta}] & =\epsilon_{\dot\alpha\dot\beta}f,\\
D_{\dot\alpha}\lambda^{\dot\alpha} & =[\phi^i,\psi_i].
\end{align}$$

In the first equation, the field strength on the right-hand side acts in the appropriate gauge representation; on an adjoint-valued letter, it acts by commutation. These relations allow antisymmetric derivative components, and the corresponding contraction of a derivative with the gaugino, to be expressed in terms of other words. We can therefore organize the independent components using symmetrized derivatives rather than treating every derivative ordering as a new letter.

## Fermionic Generating Superfield

Introduce two commuting auxiliary variables $\displaystyle{z^{\dot+},z^{\dot-}}$. The symmetrized derivatives of the scalars can be encoded in generating fields,

$$\begin{align}
\phi^i(z) & =\sum_{n=0}^{\infty}\dfrac{1}{n!}(z^{\dot\alpha}D_{\dot\alpha})^n\phi^i.
\end{align}$$

Since the $\displaystyle{z}$ variables commute, the coefficient of a monomial in $\displaystyle{z}$ selects the completely symmetric part of the derivative indices. Similarly, define

$$\begin{align}
\psi_i(z) & =\sum_{n=0}^{\infty}\dfrac{1}{n!}(z^{\dot\alpha}D_{\dot\alpha})^n\psi_i,\\
f(z) & =\sum_{n=0}^{\infty}\dfrac{1}{n!}(z^{\dot\alpha}D_{\dot\alpha})^n f.
\end{align}$$

For the gaugino, its dotted spinor index must also be included in the symmetrization. We use

$$\begin{align}
\lambda(z) & =\sum_{n=0}^{\infty}\dfrac{1}{(n+1)!}(z^{\dot\alpha}D_{\dot\alpha})^n(z^{\dot\beta}\lambda_{\dot\beta})
\end{align}$$

so that the gaugino index and all derivative indices are symmetrized together. In particular, $\displaystyle{\lambda(0)=0}$.

Next, introduce three Grassmann-odd auxiliary variables $\displaystyle{\theta_1,\theta_2,\theta_3}$ satisfying $\displaystyle{\theta_i\theta_j=-\theta_j\theta_i}$. All of the generating fields can be assembled into a single Grassmann-odd superfield,

$$\begin{align}
\Psi(z,\theta) & =-i\left[\lambda(z)+2\theta_i\phi^i(z)+\epsilon^{ijk}\theta_i\theta_j\psi_k(z)+4\theta_1\theta_2\theta_3f(z)\right].
\end{align}$$

Here $\displaystyle{z}$ and $\displaystyle{\theta}$ are auxiliary coordinates, not physical spacetime coordinates. Differentiating with respect to them and evaluating at the origin recovers the BPS letters and their symmetrized derivatives. The absence of a constant term is expressed by

$$\begin{align}
\Psi(0,0) & =0.
\end{align}$$

With these normalizations, the supersymmetry transformations take the compact form

$$\begin{align}
\{Q,\Psi\} & =\Psi^2,
\end{align}$$

which is equation (2.10) of Chang–Yin. The product on the right-hand side combines matrix multiplication with the Grassmann signs of the coefficients. Since $\displaystyle{\Psi}$ is odd, it can also be written as

$$\begin{align}
\Psi^2 & =\dfrac{1}{2}[\Psi,\Psi\}.
\end{align}$$

This resembles a Maurer–Cartan equation and packages the component transformations into a single algebraic differential. The classical relations have not been discarded: they enter through the choice of independent components encoded by the generating fields.

## Constructing Q-Closed Operators

Consider the exterior differential on the auxiliary superspace,

$$\begin{align}
\mathrm{d} & =\mathrm{d}z^{\dot\alpha}\dfrac{\partial}{\partial z^{\dot\alpha}}+\mathrm{d}\theta_i\dfrac{\partial}{\partial\theta_i}.
\end{align}$$

We use left derivatives with respect to the Grassmann variables and total Grassmann parity, for which $\displaystyle{\mathrm{d}}$ is odd, $\displaystyle{\mathrm{d}z^{\dot\alpha}}$ is odd, and $\displaystyle{\mathrm{d}\theta_i}$ is even. Thus

$$\begin{align}
\mathrm{d}\Psi & =\mathrm{d}z^{\dot\alpha}\dfrac{\partial\Psi}{\partial z^{\dot\alpha}}+\mathrm{d}\theta_i\dfrac{\partial\Psi}{\partial\theta_i}
\end{align}$$

is even. This differential acts only on the auxiliary variables and should not be confused with the exterior derivative on physical spacetime.

Extend $\displaystyle{Q}$ to auxiliary forms as an odd derivation that acts trivially on the auxiliary coordinates and their differentials, so that $\displaystyle{Q\mathrm{d}+\mathrm{d}Q=0}$. The relation $\displaystyle{\{Q,\Psi\}=\Psi^2}$ and the graded Leibniz rule then give

$$\begin{align}
Q(\mathrm{d}\Psi) & =[\Psi,\mathrm{d}\Psi].
\end{align}$$

Since $\displaystyle{\mathrm{d}\Psi}$ is even, this extends to its powers:

$$\begin{align}
Q\big((\mathrm{d}\Psi)^n\big) & =[\Psi,(\mathrm{d}\Psi)^n].
\end{align}$$

Taking a trace and using graded cyclicity, we obtain

$$\begin{align}
Q\operatorname{Tr}\big((\mathrm{d}\Psi)^n\big) & =0.
\end{align}$$

Expanding in the auxiliary coordinates and differentials therefore produces $\displaystyle{Q}$-closed gauge-invariant operators. Products of these operators are also closed. This is the basic mechanism by which the generating superfield simplifies the construction of candidate BPS operators.

However, being $\displaystyle{Q}$-closed is not sufficient to define a nontrivial cohomology class. An operator may be $\displaystyle{Q}$-exact, or it may vanish because of finite-$\displaystyle{N}$ trace identities. These possibilities must be checked separately.

## Finite-N Trace Relations

Let $\displaystyle{\mathcal{C}_\infty}$ denote the formal multitrace operator complex, with the classical relations and graded cyclicity already imposed but without the additional finite-rank trace identities. Let $\displaystyle{\mathcal{C}_N}$ be the corresponding operator complex at finite $\displaystyle{N}$. If $\displaystyle{I_N}$ is the subspace of formal expressions that vanish by finite-$\displaystyle{N}$ trace identities, then

$$\begin{align}
\mathcal{C}_N & =\mathcal{C}_\infty/I_N.
\end{align}$$

The space $\displaystyle{\mathcal{C}_\infty}$ is a covering complex for the finite-$\displaystyle{N}$ operator problem, rather than an arbitrary enlargement of the physical Hilbert space.

As a simple example, consider a bosonic $\displaystyle{2\times2}$ matrix $\displaystyle{A}$ with commuting entries. The Cayley–Hamilton theorem gives

$$\begin{align}
A^2-(\operatorname{Tr}A)A+(\det A)I & =0,
\end{align}$$

from which one obtains

$$\begin{align}
\operatorname{Tr}(A^3) & =\dfrac{3}{2}\operatorname{Tr}(A^2)\operatorname{Tr}A-\dfrac{1}{2}(\operatorname{Tr}A)^3.
\end{align}$$

For a traceless matrix, as appropriate to an adjoint scalar of $\displaystyle{\mathrm{SU}(2)}$, this reduces to

$$\begin{align}
\operatorname{Tr}(A^3) & =0.
\end{align}$$

Thus an expression that is independent in the formal multitrace space can vanish at a particular finite rank.

Since $\displaystyle{Q}$ preserves trace identities,

$$\begin{align}
QI_N & \subseteq I_N,
\end{align}$$

it descends to a differential on the quotient. The short exact sequence of complexes,

$$\begin{align}
0\longrightarrow I_N\longrightarrow\mathcal{C}_\infty\longrightarrow\mathcal{C}_N\longrightarrow0,
\end{align}$$

induces a long exact sequence in cohomology,

$$\begin{align}
\cdots\longrightarrow H_Q^k(I_N)\longrightarrow H_Q^k(\mathcal{C}_\infty)\longrightarrow H_Q^k(\mathcal{C}_N)\xrightarrow{\partial}H_Q^{k+1}(I_N)\longrightarrow\cdots.
\end{align}$$

Here $\displaystyle{k}$ denotes a cohomological grading in which $\displaystyle{Q}$ has degree one. Exactness shows why taking cohomology does not, in general, commute with imposing finite-$\displaystyle{N}$ relations. Simply quotienting the covering cohomology by trace identities can miss classes that become closed only after those identities are imposed. Finite rank can therefore both remove formal operators and allow new cohomology classes.

## From Multi-Graviton States to Fortuitous States

In [*1/16 BPS States in N=4 SYM*](https://arxiv.org/abs/1305.6314), Chang and Yin used the generating superfield to reformulate the weak-coupling $\displaystyle{Q}$-cohomology problem in terms of relative Lie superalgebra cohomology. The relevant Lie superalgebra is

$$\begin{align}
\mathfrak{G}_N & =\mathbb{C}[z^{\dot+},z^{\dot-}]\otimes\Lambda(\theta_1,\theta_2,\theta_3)\otimes\mathfrak{sl}_N,
\end{align}$$

with the relative construction implementing invariance under the constant gauge algebra. They determined the infinite-$\displaystyle{N}$ cohomology in this description and found agreement with the spectrum of free BPS multi-graviton states in AdS.

Their finite-$\displaystyle{N}$ computations found no additional classes in the range examined, leading to the conjecture that all $\displaystyle{1/16}$-BPS operators belonged to the multi-graviton sector. This finite-range evidence was not a proof, and the conjecture was in apparent tension with the large entropy of supersymmetric AdS black holes.

---

In [*Words to describe a black hole*](https://arxiv.org/abs/2209.06728), Chang and Lin reorganized the finite-$\displaystyle{N}$ computation and found cohomology classes outside the multi-graviton sector in $\displaystyle{\mathrm{SU}(2)}$ SYM. The first example occurred at

$$\begin{align}
E & =\dfrac{19}{2},\qquad n=24,
\end{align}$$

where $\displaystyle{E}$ is the free-field scaling dimension, or equivalently the radial-quantization energy in units of the inverse sphere radius, and $\displaystyle{n}$ is the grading used in their generating-superfield description.

This provided a counterexample to the finite-$\displaystyle{N}$ conjecture of Chang–Yin. The paper also discussed perturbative non-renormalization of the BPS cohomology under additional assumptions. The new classes are candidates for black-hole microstates, but their existence alone does not establish a microscopic account of black-hole entropy.

---

In [*Holographic covering and the fortuity of black holes*](https://arxiv.org/abs/2402.10129), Chang and Lin used the covering complex and its long exact sequence to distinguish two sources of finite-$\displaystyle{N}$ BPS cohomology.

A nontrivial finite-$\displaystyle{N}$ class is called monotone if it lies in the image of the covering cohomology. Equivalently, it admits a representative with a $\displaystyle{Q}$-closed lift $\displaystyle{\widetilde{\mathcal{O}}\in\mathcal{C}_\infty}$:

$$\begin{align}
Q\widetilde{\mathcal{O}} & =0.
\end{align}$$

For the nested trace ideals of the standard covering, such a class can be continued to larger $\displaystyle{N}$ as a nontrivial BPS class. Its closure does not depend on a trace identity special to the original finite rank.

A fortuitous class, in contrast, is a nontrivial finite-$\displaystyle{N}$ class that does not lie in this image. A lift of a closed representative satisfies

$$\begin{align}
Q\widetilde{\mathcal{O}} & \in I_N,
\end{align}$$

so it is closed in the quotient, even though it is not closed in the covering complex. Crucially, no change of lift can make it $\displaystyle{Q}$-closed in the covering. The condition $\displaystyle{Q\widetilde{\mathcal{O}}\neq0}$ for one particular lift is not by itself sufficient to establish fortuity: the obstruction must survive all allowed changes of lift. In the long exact sequence, this obstruction is measured by the nonzero connecting class $\displaystyle{\partial[\mathcal{O}]}$.

As $\displaystyle{N}$ increases, the trace identity responsible for closure may cease to hold, so a fortuitous state need not remain BPS. The distinction is therefore between classes inherited from the covering cohomology and classes whose closure genuinely relies on finite-rank relations. The exact sequence identifies the monotone subspace and the quotient by it; it does not, by itself, choose a canonical complementary subspace of fortuitous representatives.

The proposed bulk interpretation is that monotone states are associated with smooth horizonless geometries, whereas fortuitous states supply the typical microstates of supersymmetric black holes. The cohomological distinction is algebraically precise, but this geometric interpretation and the quantitative accounting of black-hole entropy require further physical input.

The main thread is thus the passage from the supersymmetry algebra to an operator cohomology problem, followed by two complementary simplifications. The generating superfield packages the differential into $\displaystyle{\{Q,\Psi\}=\Psi^2}$, while the covering construction isolates how finite-$\displaystyle{N}$ trace relations modify its cohomology. Together, they explain how the infinite-$\displaystyle{N}$ multi-graviton spectrum can coexist with additional finite-$\displaystyle{N}$ BPS classes and motivate the proposed connection between fortuity and black-hole microstates.

## References

1. C.-M. Chang and X. Yin, [*1/16 BPS States in N=4 SYM*](https://arxiv.org/abs/1305.6314), arXiv:1305.6314 (2013).
2. C.-M. Chang and Y.-H. Lin, [*Words to describe a black hole*](https://arxiv.org/abs/2209.06728), arXiv:2209.06728 (2022).
3. C.-M. Chang and Y.-H. Lin, [*Holographic covering and the fortuity of black holes*](https://arxiv.org/abs/2402.10129), arXiv:2402.10129 (2024).
