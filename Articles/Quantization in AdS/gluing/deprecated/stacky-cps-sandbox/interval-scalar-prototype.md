# Informal Stacky CPS Prototype for the Cut Interval Scalar

> Status: definitions and theorem targets for exploration. Question marks on equivalences are intentional.

## 1. Geometric Setup and Conventions

Let

$$\begin{align}
M=[t_i,t_f]\times[-L,L], \qquad M=M_1\cup_\Gamma M_2, \qquad \Gamma=[t_i,t_f]\times\{0\}.
\end{align}$$

Use the regional coordinates

$$\begin{align}
y_1=x+L, \qquad y_2=L-x,
\end{align}$$

so that both $y_i$ increase from the physical outer endpoint toward the artificial cut. The regional actions are

$$\begin{align}
S_i[\phi_i] =\frac12\int_{t_i}^{t_f}\!dt\int_0^L\!dy_i \left(\dot\phi_i^2-(\phi_i')^2-m^2\phi_i^2\right), \qquad \phi_i(t,0)=0.
\end{align}$$

Define the coordinate-oriented interface flux and the action-induced boundary momentum by

$$\begin{align}
f_i:=\phi_i'(t,L), \qquad \pi_i:=-f_i.
\end{align}$$

Then the interface part of the regional variation is

$$\begin{align}
\left.\delta S_i\right|_\Gamma =\int_\Gamma \pi_i\,\delta q_i =-\int_\Gamma f_i\,\delta q_i, \qquad q_i:=\phi_i|_\Gamma.
\end{align}$$

Thus $q_1=q_2=q$ followed by unrestricted variation of the common $q$ gives

$$\begin{align}
f_1+f_2=0 \qquad\Longleftrightarrow\qquad \pi_1+\pi_2=0.
\end{align}$$

This order is part of the definition of the proposed formulation: continuity is imposed first, while flux matching is derived from the summed action.

## 2. Which Stack Is Being Proposed?

For the first pass, take test spaces $S$ to be finite-dimensional smooth manifolds and define smooth families

$$\begin{align}
\mathfrak F_i(S) := \left\{ \phi_i\in C^\infty(S\times M_i,\mathbb R)
\;\middle|\; \phi_i|_{S\times\{y_i=0\}}=0 \right\}.
\end{align}$$

Because the scalar has no gauge symmetry, $\mathfrak F_i(S)$ is initially a discrete groupoid. Calling it a stack only asserts smooth functoriality and descent in $S$; it does not manufacture higher morphisms or edge modes.

The boundary-history object is

$$\begin{align}
\mathfrak B_\Gamma(S):=C^\infty(S\times\Gamma,\mathbb R),
\end{align}$$

and the trace map is

$$\begin{align}
\tau_i:\mathfrak F_i\longrightarrow\mathfrak B_\Gamma, \qquad \tau_i(\phi_i)=\phi_i|_\Gamma.
\end{align}$$

Spacetime descent, meaning $U\mapsto\mathfrak F(U)$ for open $U\subset M$, is a second and logically distinct structure. A later formal version should be a two-variable object in test families and spacetime regions. This sandbox does not yet build that higher sheaf explicitly.

## 3. Regional Solution Object and the Meaning of $\mathcal P_i[q_i]$

Let

$$\begin{align}
E_i\phi_i:= -\ddot\phi_i+\phi_i''-m^2\phi_i.
\end{align}$$

The underived solution functor is

$$\begin{align}
\mathfrak{Sol}_i(S) := \left\{ \phi_i\in\mathfrak F_i(S)
\;\middle|\; E_i\phi_i=0 \right\}.
\end{align}$$

The trace map restricts to

$$\begin{align}
\pi_i:\mathfrak{Sol}_i\longrightarrow\mathfrak B_\Gamma.
\end{align}$$

At $S=\mathrm{pt}$, the fiber over a prescribed history $q_i$ is the intended geometric replacement for the existing notation:

$$\begin{align}
\pi_i^{-1}(q_i) =\mathfrak{Sol}_{i,q_i}
\equiv\mathcal P_i[q_i].
\end{align}$$

This equality is only a notational identification until the function spaces, initial data, temporal endpoint conditions, and trace compatibility conditions are fixed. In particular, $\mathcal P_i[q_i]$ is a fiber of the family of solution spaces, not the whole stack.

A variation tangent to this fiber satisfies

$$\begin{align}
\delta q_i=0.
\end{align}$$

The regional CPS form

$$\begin{align}
\omega_i =\int_0^Ldy_i\, \delta\dot\phi_i\wedge\delta\phi_i
\end{align}$$

is conserved on these vertical variations. On the total object $\mathfrak{Sol}_i$, where $q_i$ is allowed to vary, the boundary flux prevents one from treating $\omega_i$ as an ordinary conserved symplectic form without additional relative boundary data. The natural target is therefore a **relative presymplectic solution object over $\mathfrak B_\Gamma$**, not simply a disjoint union of independent symplectic manifolds.

## 4. Action-First Gluing

First impose continuity at the level of fields:

$$\begin{align}
\mathfrak F_{12}^{\mathrm{cont}} := \mathfrak F_1\times_{\mathfrak B_\Gamma}\mathfrak F_2.
\end{align}$$

An object is a pair $(\phi_1,\phi_2)$ with a common trace $q$. Restrict the summed action to this object and define the glued solution object by the critical locus

$$\begin{align}
\mathfrak{Sol}_{\mathrm{gl}} := \operatorname{Crit} \left( (S_1+S_2)|_{\mathfrak F_{12}^{\mathrm{cont}}} \right).
\end{align}$$

At the elementary smooth level, the critical equations are

$$\begin{align}
E_i\phi_i=0, \qquad q_1=q_2, \qquad f_1+f_2=0.
\end{align}$$

This formulation preserves the active project's logical order. Defining the glued solution object directly by matching both $q$ and $f$ is an equivalent on-shell description only after the variational statement has been established.

## 5. Boundary Phase Object and the On-Shell Fiber Product

Introduce the formal boundary phase object

$$\begin{align}
\mathfrak P_\Gamma(S) := \left\{(q,\pi)\;\middle|\;
q,\pi\in C^\infty(S\times\Gamma,\mathbb R) \right\},
\end{align}$$

with formal boundary form

$$\begin{align}
\Omega_\Gamma =\int_\Gamma\delta\pi\wedge\delta q.
\end{align}$$

This notation suppresses Sobolev duality and density factors. The expression $\mathfrak P_\Gamma\simeq T^*\mathfrak B_\Gamma$ is only formal until those analytic choices are fixed.

Define

$$\begin{align}
r_i:\mathfrak{Sol}_i\longrightarrow\mathfrak P_\Gamma, \qquad r_i(\phi_i)=(q_i,\pi_i),
\end{align}$$

and orientation reversal

$$\begin{align}
\mathsf a(q,\pi)=(q,-\pi).
\end{align}$$

The on-shell matching conditions can then be written as the candidate equivalence

$$\begin{align}
\mathfrak{Sol}(M) \overset{?}{\simeq} \mathfrak{Sol}_1 \times^{h}_{\mathfrak P_\Gamma} \mathfrak{Sol}_2,
\end{align}$$

where the two maps to $\mathfrak P_\Gamma$ are $r_1$ and $\mathsf a\circ r_2$. Their equality is precisely

$$\begin{align}
q_1=q_2, \qquad \pi_1=-\pi_2.
\end{align}$$

For a regular free scalar, the homotopy fiber product may reduce to the ordinary fiber product. Retaining the superscript $h$ is useful only if the equation complex or a possible non-transversality is being retained; it is not evidence for additional physical boundary degrees of freedom.

## 6. Derived Enhancement: Minimal Version

The least ambitious derived model replaces the zero set of $E_i$ by its two-term linear complex

$$\begin{align}
\mathbb T\mathfrak{Sol}_i \sim \left[ \mathcal V_i \xrightarrow{\ E_i\ } \mathcal E_i \right],
\end{align}$$

where $\mathcal V_i$ is a chosen space of field variations satisfying the outer boundary condition and $\mathcal E_i$ is the equation space. The trace map must be upgraded to include the admissible field and normal-derivative traces. No specific Sobolev completion is chosen here.

This linear complex is the natural place to ask for a Lorentzian analogue of the Cattaneo--Mnev weak equivalence. The target is a chain-homotopy comparison between the uncut Klein--Gordon complex and the matched regional complex, local near the timelike cut and compatible with the relative CPS structure.

This target is not proved here. In particular, the Riemannian heat-kernel smoothing argument cannot simply be copied to a hyperbolic operator.

## 7. Classical Checks Available Before Derived Geometry

### Smooth Reconstruction Lemma

Assume $\phi_i$ are smooth regional Klein--Gordon solutions, their full temporal data are compatible at the corners, and

$$\begin{align}
\phi_1|_\Gamma=\phi_2|_\Gamma, \qquad \phi_1'(L)+\phi_2'(L)=0.
\end{align}$$

After converting the $y_i$ derivatives back to the global $x$ orientation, the piecewise-defined field is $C^1$ across $x=0$. The equation then determines matching higher normal derivatives from the common smooth trace, so the reconstructed field is a smooth global solution under the stated compatibility assumptions.

This is the set-level gluing statement. A theorem in energy/Sobolev spaces requires an explicit trace theorem and well-posedness result.

### Symplectic Additivity

For a reconstructed smooth field and a Cauchy slice split as $\Sigma=\Sigma_1\cup\Sigma_2$,

$$\begin{align}
\omega_{\mathrm{global}} =\int_{-L}^{L}dx\, \delta\dot\phi\wedge\delta\phi =\omega_1+\omega_2.
\end{align}$$

This identity alone does not prove that arbitrary regional canonical data descend to the reduced glued phase space. The interface constraint and its reduction must be included before asserting reduced CCR.

## 8. Canonical Quantization Target

The stack language should terminate in the same finite-regulator canonical problem as the active formalism. At a common cutoff $N$, one must construct a reduced phase space $\Gamma_{\mathrm{red},N}$ with no independent port oscillator and a map

$$\begin{align}
S_N:\Gamma_{\mathrm{red},N} \longrightarrow
\Gamma_{\mathrm{global},N}
\end{align}$$

such that

$$\begin{align}
S_N^{\mathrm T}J S_N=J, \qquad H_{\mathrm{red},N}=H_{\mathrm{global},N}\circ S_N.
\end{align}$$

Only after this classical statement is proved should $S_N$ be lifted to the metaplectic/CCR level. The desired comparison can be summarized by a diagram whose lower arrow is not yet constructed:

$$
\begin{array}{ccc}
\text{regional solutions with interface reduction}
&\xrightarrow{\ S_N\ }&
\text{global regulated solutions}
\\[2mm]
\big\downarrow\scriptstyle{\text{canonical quantization}}
&&
\big\downarrow\scriptstyle{\text{canonical quantization}}
\\[2mm]
\mathcal H_{\mathrm{regional},N}^{\mathrm{red}}
&\xrightarrow{\ U_N\ ?\ }&
\mathcal H_{\mathrm{global},N}.
\end{array}
$$

Even if every finite-$N$ diagram is completed, a continuum unitary requires a separate Shale--Stinespring analysis.

## 9. Feasibility Verdict

- **Useful:** the language cleanly identifies $\mathcal P_i[q_i]$ as a fiber, separates continuity from the common-$q$ Euler--Lagrange equation, and explains why gauge theories will require homotopy pullbacks while the scalar usually will not.
- **Already in the literature:** classical scalar boundary phase space, scalar fiber-product gluing, derived CPS, and action-driven homotopical boundary constructions all have precedents.
- **Project-specific target:** a Lorentzian relative-CPS weak equivalence compatible with the finite-regulator canonical reduction.
- **Main risk:** the stack reformulation may remain only a change of vocabulary unless it produces either a precise Lorentzian gluing theorem, an associativity theorem, or a concrete simplification of the reduced symplectic map.

## 10. Verification Record

**Verified:** Mathematica gives zero residuals for the massive scalar Euler--Lagrange equation, temporal and spatial presymplectic-potential coefficients, and the interface variation

$$\begin{align}
\left.\delta(S_1+S_2)\right|_\Gamma =-(f_1+f_2)\,\delta q.
\end{align}$$

**Assumptions:** smooth fields; signature $(-,+)$; both $y_i$ increase toward the cut; fixed physical outer Dirichlet data; compatible temporal endpoint data; formal smooth boundary traces.

**Not verified:** Lorentzian well-posedness in a specified function space; existence of the proposed smooth/derived stack; relative shifted-symplectic or Lagrangian structure; chain-homotopy equivalence across the cut; the reduced finite-$N$ symplectic map; metaplectic equivalence; continuum Fock equivalence.
