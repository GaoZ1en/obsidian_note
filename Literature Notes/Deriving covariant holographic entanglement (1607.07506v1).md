---
paper id: 1607.07506v1
title: Deriving covariant holographic entanglement
authors: [Xi Dong, Aitor Lewkowycz, Mukund Rangamani]
publication date: 2016-07-25T23:40
abstract: "We provide a gravitational argument in favour of the covariant holographic entanglement entropy proposal. In general time-dependent states, the proposal asserts that the entanglement entropy of a region in the boundary field theory is given by a quarter of the area of a bulk extremal surface in Planck units. The main element of our discussion is an implementation of an appropriate Schwinger-Keldysh contour to obtain the reduced density matrix (and its powers) of a given region, as is relevant for the replica construction. We map this contour into the bulk gravitational theory, and argue that the saddle point solutions of these replica geometries lead to a consistent prescription for computing the field theory Renyi entropies. In the limiting case where the replica index is taken to unity, a local analysis suffices to show that these saddles lead to the extremal surfaces of interest. We also comment on various properties of holographic entanglement that follow from this construction."
comments: "39 pages. 9 figures"
pdf: "[[Attachments/Assets/Deriving covariant holographic entanglement (1607.07506v1).pdf]]"
url: https://arxiv.org/abs/1607.07506v1
summary: "A Lorentzian Schwinger-Keldysh replica derivation of the HRT extremal surface prescription for covariant holographic entanglement entropy."
tags: []
---

# Paper

Source read: arXiv v1 / local PDF, `https://arxiv.org/abs/1607.07506v1`.

Dong, Lewkowycz, and Rangamani derive the covariant HRT prescription from the AdS/CFT path integral. The key move is to replace the Euclidean replica construction used by Lewkowycz-Maldacena with a Lorentzian Schwinger-Keldysh construction that computes reduced density matrices in genuinely time-dependent states.

# Core problem

The RT prescription has a Euclidean replica derivation when the state has a time-reflection symmetry. HRT says that for general time-dependent states,

$$\begin{align}
S_A = \frac{\operatorname{Area}(E_A)}{4G_N},
\end{align}$$

where $E_A$ is a codimension-2 bulk extremal surface anchored on $\partial A$. The paper asks how this formula follows from the boundary definition of entanglement entropy when no Euclidean time slice or real Euclidean saddle is available.

# Main claim

The field theory computation of $\operatorname{Tr}\rho_A^q$ in a time-dependent state is naturally a Schwinger-Keldysh path integral with $2q$ Lorentzian folds. Assuming the boundary replica symmetry extends into the bulk, the quotient geometry has a codimension-2 fixed locus $e_q$. A local analysis near $e_q$ shows that regularity plus the bulk equations of motion force

$$\begin{align}
\lim_{q \to 1} e_q = E_A,
\qquad
K^a = 0,
\end{align}$$

so the limiting surface is extremal. The variation of the Lorentzian on-shell action with respect to $q$ localizes on this fixed locus and gives the HRT area term.

# Section map

- Section 1 sets the problem: LM derives RT using Euclidean replicas; HRT requires a Lorentzian real-time construction. The relevant boundary object is the reduced density matrix at a time slice and its replicated powers.
- Section 2 constructs $\rho_A(t)$ and $\operatorname{Tr}\rho_A^q$ by a Schwinger-Keldysh contour. The main output is the gluing prescription and the modular entropy $\widetilde S_A^{(q)}$.
- Section 3 translates the field theory contour into gravity. It first reviews the Euclidean LM argument, then generalizes it to Lorentzian folded geometries and derives extremality.
- Section 4 discusses consequences: homology, entanglement wedge, multiple saddles, Lorentzian replicated geometries, higher derivative corrections, quantum corrections, and maximin.
- Appendix A explains how the Lorentzian boundary terms and a sample matter integral reproduce the expected modular entropy.

# Key objects and notation

- $A \subset \Sigma_t$: boundary spatial region on a Cauchy slice.
- $A^c$: complement of $A$ on $\Sigma_t$.
- $\partial A$: entangling surface.
- $\rho_A(t)$: reduced density matrix obtained by tracing out $A^c$.
- $q$: replica index, initially a positive integer and later analytically continued.
- $B_q$: replicated boundary contour geometry.
- $M_q$: bulk geometry dual to $B_q$.
- $\widehat M_q = M_q/\mathbb Z_q$: quotient by replica symmetry.
- $e_q$: codimension-2 fixed point locus of the bulk $\mathbb Z_q$ action.
- $E_A$: $q \to 1$ limit of $e_q$, the HRT surface.
- $\widetilde\Sigma_t$: bulk Cauchy slice ending on $\Sigma_t$.
- $R_A$ and $R_A^c$: pieces of $\widetilde\Sigma_t$ split by $e_q$ or $E_A$.
- $K^a_{ij}$: extrinsic curvature of $e_q$ in normal direction $a$.
- $K^a = \gamma^{ij}K^a_{ij}$: trace of extrinsic curvature.
- $\theta_\pm$: null expansions of the codimension-2 surface.

# Main argument chain

1. A time-dependent density matrix needs forward evolution for the ket and backward evolution for the bra.
1. Tracing out $A^c$ imposes different gluing across $A$ and $A^c$.
1. $\operatorname{Tr}\rho_A^q$ therefore uses $q$ copies of the reduced density matrix, equivalently $2q$ Schwinger-Keldysh folds.
1. In the bulk, this contour is represented by doubled Lorentzian geometries glued across a bulk Cauchy slice.
1. Replica symmetry lets one work on $\widehat M_q$, which contains a codimension-2 fixed locus $e_q$.
1. The local metric near $e_q$ must have a conical or S-brane-like opening controlled by $q$.
1. For $q \to 1$, Einstein's equations contain divergent terms proportional to $(q-1)K^a/r$ unless $K^a=0$.
1. Hence $e_q$ limits to an extremal surface $E_A$.
1. The $q$-variation of the on-shell action has no asymptotic boundary contribution and localizes near $e_q$.
1. The regulated Lorentzian Gibbons-Hawking contribution gives $i\operatorname{Area}(e_q)/(4q^2G_N)$, so the entropy at $q=1$ is the HRT area.

# Important formulas

## Field theory construction

### Formula (2.1): time-dependent density matrix

$$\begin{align}
|\Psi(t)\rangle = e^{iHt}|\Psi_0\rangle,
\qquad
\langle\Psi(t)|=\langle\Psi_0|e^{-iHt},
\qquad
\rho(t)=|\Psi(t)\rangle\langle\Psi(t)|
=e^{iHt}\rho_0 e^{-iHt}.
\end{align}$$

This formula fixes the real-time orientation convention used in the paper. The ket and bra are evolved on opposite branches. With the authors' convention, $e^{iHt}$ evolves the ket from the chosen initial time to $t$, while the conjugate branch carries the opposite sign in the action. The important point is not the sign convention itself but the doubling: a density matrix is not computed by a single time contour.

Local unpacking:

- $\rho_0$ is the initially prepared state.
- The two exponentials become the two Schwinger-Keldysh branches.
- The later bulk construction must therefore contain two Lorentzian copies even before replication.

### Formula (2.2): wavefunctionals as path integrals

$$\begin{align}
\Psi(t,\phi_0(x))
=\int [D\phi]\,
e^{iS[\phi]_{-\infty}^{t}}\,
\delta(\phi(t,x)-\phi_0(x)),
\end{align}$$

$$\begin{align}
\overline\Psi(t,\phi_0(x))
=\int [D\phi]\,
e^{iS[\phi]_{t}^{-\infty}}\,
\delta(\phi(t,x)-\phi_0(x)).
\end{align}$$

The delta function fixes the field value on the final Cauchy slice. The two actions are integrated along opposite time orientations. This is the path-integral version of the ket/bra doubling in (2.1).

The second integral is not a new theory. It is the conjugate branch of the same real-time theory, with the contour running backward. This is why the later diagrams have forward and backward segments rather than a Euclidean circle.

### Formula (2.3): path integral for $\rho$

$$\begin{align}
\rho = |\Psi\rangle\langle\Psi|
=\int [D\phi]\,
e^{iS^\uparrow[\phi]-iS^\downarrow[\phi]}.
\end{align}$$

The arrows label the forward and backward branches. When the two branches are glued along the whole Cauchy slice $\Sigma_t$, the path integral computes $\operatorname{Tr}\rho(t)$. To compute $\rho_A$, one glues only along $A^c$ and leaves open boundary data on $A$.

This is the first place where the reduced density matrix differs from an ordinary real-time correlator. The gluing has spatial dependence: $A$ and $A^c$ are treated differently.

### Formula (2.4): local Rindler coordinates near $\partial A$

The paper introduces local coordinates near the entangling surface schematically as

$$\begin{align}
x \pm t = \pm r\,e^{\pm\tau},
\end{align}$$

with different sign choices in different Rindler wedges.

This is a bookkeeping device for the four local domains around $\partial A$. Crossing a horizon corresponds to a shift

$$\begin{align}
\tau \to \tau+\frac{\pi i}{2}.
\end{align}$$

After four crossings one returns to the original wedge, so a single reduced-density-matrix contour has the monodromy

$$\begin{align}
\tau \sim \tau+2\pi i.
\end{align}$$

The authors stress that this is not a physical analytic continuation of the QFT data. It records Lorentzian gluing conditions across the different real-time branches.

### Formula (2.5): replica monodromy

For $q$ copies, the same local coordinate is assigned the longer identification

$$\begin{align}
\tau \sim \tau+2\pi i q.
\end{align}$$

This expresses the cyclic multiplication of reduced density matrices. Along $A^c$, each bra is glued back to the corresponding ket in the same copy. Along $A$, the gluing advances from one copy to the next. The periodicity in $\tau$ is just a compact way to encode this cyclic order.

This formula is the boundary ancestor of the bulk conical or S-brane singularity. The bulk fixed locus $e_q$ is the extension of the boundary fixed locus $\partial A$.

### Formula (2.6): modular entropy

$$\begin{align}
\widetilde S_A^{(q)}
=-q^2\partial_q
\left[
\frac{1}{q}\log\operatorname{Tr}_A(\rho_A)^q
\right].
\end{align}$$

This is a Legendre-transform-like version of the Renyi entropy. It is technically easier in gravity because $\partial_q$ can be interpreted as a variation of the saddle geometry.

At $q=1$, $\widetilde S_A^{(1)}$ agrees with the von Neumann entropy. For a thermal density matrix where $q$ rescales inverse temperature, $\widetilde S_A^{(q)}$ is the ordinary thermal entropy.

## Euclidean LM review

### Formula (3.1): local Euclidean metric near a candidate surface

$$\begin{align}
ds_E^2
=dx^2+dt_E^2
\left(\gamma_{ij}+2K^x_{ij}x+2K^t_{ij}t_E\right)dy^i dy^j+\cdots.
\end{align}$$

Here $y^i$ are coordinates along the codimension-2 surface, while $(x,t_E)$ are normal coordinates. The coefficients $K^x_{ij}$ and $K^t_{ij}$ are extrinsic curvatures in the two normal directions.

Why this matters:

- If the surface is not minimal or extremal, the metric changes linearly as one moves normally away from it.
- The replica construction turns the normal plane into a cone.
- The singular part of the curvature near the cone detects the traces $K^x$ and $K^t$.

### Formula (3.2): quotient cone near the fixed locus

$$\begin{align}
ds^2=q^2dr^2+r^2d\tau^2+ds^2_{\text{transverse}}+\cdots.
\end{align}$$

This is the local quotient metric $\widehat M_q=M_q/\mathbb Z_q$ near the fixed locus. The covering space $M_q$ is smooth for integer $q$, but the quotient has an opening angle controlled by $q$.

The explicit $q^2dr^2$ is not a harmless coordinate decoration. It records the fact that the quotient has a conical defect or excess, while the parent geometry is smooth.

### Formula (3.3): quotient action

$$\begin{align}
I[M_q]=q\,I[\widehat M_q].
\end{align}$$

Replica symmetry reduces the computation to one fundamental domain. This is what makes analytic continuation in $q$ geometrically tractable: instead of building a literal $q$-fold cover for non-integer $q$, one studies a quotient geometry with a $q$-dependent defect.

The assumption behind the formula is unbroken replica symmetry in the dominant bulk saddle.

### Formula (3.4): Euclidean near-defect ansatz

$$\begin{aligned}
ds^2
=&\left(q^2dr^2+r^2d\tau^2\right)
\left(\gamma_{ij}
+2K^x_{ij}r^q\cos\tau
+2K^t_{ij}r^q\sin\tau\right)dy^i dy^j \\
&+\left[r^{f_q(q-1)}-1\right]\delta g_{\mu\nu}dx^\mu dx^\nu+\cdots.
\end{aligned}$$

This is the most important local ansatz in the Euclidean review. The $r^q e^{\pm i\tau}$ behavior follows from two conditions:

- replica symmetry makes fields $2\pi$-periodic in $\tau$ on the quotient;
- smoothness on the integer-$q$ covering space requires regular powers of the smooth coordinates $r^q e^{\pm i\tau}$.

The $K$ terms are the continuation of the linear normal expansion in (3.1). The $\delta g_{\mu\nu}$ term represents possible subleading corrections compatible with replica symmetry. It is included to show that allowed corrections cannot remove the leading divergence proportional to $K^a$.

### Formula (3.5): minimal surface condition in the Euclidean case

$$\begin{align}
\lim_{q\to 1} e_q \to E_A,
\qquad
E_A\in M,\quad t=0,\quad K^x=0.
\end{align}$$

Near $q=1$, the Ricci tensor from (3.4) contains terms of the form $(q-1)K^a/r$. Einstein's equations cannot tolerate these divergences. In the time-reflection symmetric case, $K^t=0$ automatically, so the nontrivial condition is $K^x=0$.

Thus the fixed locus becomes a minimal surface. This is the RT result.

### Formula (3.6): variation of the gravitational action

$$\begin{align}
\delta I[\widehat M_q]
=\int_{\widehat M_q}
\left[
\text{EOM}\cdot\delta g_q
+d\Theta(g_q,\delta g_q)
\right].
\end{align}$$

This is the standard covariant phase space decomposition. On shell, the EOM term vanishes, so the action variation is a boundary term.

For ordinary AdS/CFT variations, the boundary term lives at the asymptotic boundary. For $\delta g=\partial_q g$, the asymptotic sources are held fixed; the only changed boundary condition is near the replica fixed locus.

### Formula (3.7): localization on the fixed locus

$$\begin{align}
\partial_q I[\widehat M_q]
=\int_{e_q(\epsilon)}
\Theta(g_q,\partial_q g_q).
\end{align}$$

The singular locus is regulated by replacing $e_q$ with a small tubular surface $e_q(\epsilon)$ at $r=\epsilon$. This formula says that the entropy computation localizes near the defect.

This is the gravitational reason the final answer is an area. The $q$-variation does not measure a bulk volume effect; it measures the response of the geometry to opening the cone at the fixed locus.

### Formula (3.8): Gibbons-Hawking evaluation

$$\begin{align}
\partial_q I[\widehat M_q]
=-\partial_q I_{\text{bdy}}[\widehat M_q],
\qquad
I_{\text{bdy}}[\widehat M_q]
=\frac{1}{8\pi G_N}\int_{e_q(\epsilon)}K_\epsilon.
\end{align}$$

The regulated tube is treated as a temporary boundary. For Einstein gravity, its contribution is the Gibbons-Hawking term.

The minus sign appears because the small tube is an inner boundary around an excised locus. The entropy contribution is therefore computed by the extrinsic curvature of the regulator surface.

### Formula (3.9): Euclidean modular entropy area

$$\begin{align}
\partial_q I[\widehat M_q]
=\frac{\operatorname{Area}(e_q)}{4q^2G_N}.
\end{align}$$

Using the local metric, $K_\epsilon=1/(q\epsilon)$, and the induced measure supplies the compensating factor of $\epsilon$. The finite remainder is the area of $e_q$ divided by $4q^2G_N$.

At $q\to 1$, $e_q\to E_A$, so this gives the RT area formula.

## Lorentzian covariant construction

### Formula (3.10): local Lorentzian/Rindler metric near $e$

$$\begin{align}
ds^2
=dr^2-r^2d\tau^2
\left(\gamma_{mn}+r e^{\pm\tau}K^\pm_{mn}+\cdots\right)dy^m dy^n.
\end{align}$$

This is the Lorentzian analogue of the adapted expansion near a codimension-2 surface. The normal plane now has Rindler signature. The four Rindler wedges meet at $e$.

Crossing a Rindler horizon is encoded by

$$\begin{align}
\tau\to\tau+\frac{\pi i}{2},
\qquad
r\to i^{-1}r.
\end{align}$$

Again, the imaginary shift is a labeling device for real Lorentzian wedges. Four crossings give $\tau\sim\tau+2\pi i$.

### Formula (3.11): Lorentzian replicated near-defect ansatz

$$\begin{aligned}
ds^2
=&\left(q^2dr^2-r^2d\tau^2\right)
\left(\gamma_{ij}
+2K^x_{ij}r^q\cosh\tau
+2K^t_{ij}r^q\sinh\tau\right)dy^i dy^j \\
&+\left[r^{f_q(q-1)}-1\right]\delta g_{\mu\nu}dx^\mu dx^\nu+\cdots.
\end{aligned}$$

This is the central Lorentzian ansatz. It is obtained from the Euclidean form by replacing circular functions in the normal plane with hyperbolic functions. The fixed locus is now a spacelike codimension-2 object in Lorentzian spacetime, sometimes described as an S-brane-like conical singularity.

The $K^x_{ij}$ and $K^t_{ij}$ terms encode how the surface bends in the spacelike and timelike normal directions. The whole HRT derivation is contained in what Einstein's equations do to these terms.

### Formula (3.12): divergent equations of motion

$$\begin{align}
\text{EOM}_a \propto \frac{q-1}{r}K^a+\text{regular}_a.
\end{align}$$

This formula is schematic but decisive. For $q$ near $1$, the local curvature contains a term that diverges as $r\to 0$ unless the trace of the extrinsic curvature vanishes.

No allowed $\mathbb Z_q$-symmetric correction in $\delta g_{\mu\nu}$ can cancel this divergence. Therefore the equations of motion impose

$$\begin{align}
K^x=0,
\qquad
K^t=0.
\end{align}$$

This is where the extremal surface condition comes from dynamically. It is not assumed.

### Formula (3.13): null-expansion form of extremality

$$\begin{align}
K^a=0
\quad\Longrightarrow\quad
\theta_\pm
=\frac{1}{\sqrt 2}(K^0\pm K^1)=0,
\end{align}$$

$$\begin{align}
\Longrightarrow
\qquad
\lim_{q\to 1}e_q=E_A,
\qquad
E_A\in M\ \text{is extremal}.
\end{align}$$

Here $K^0$ and $K^1$ are the traces of extrinsic curvature in timelike and spacelike normal directions. The null normals are linear combinations

$$\begin{align}
x^\pm=\frac{1}{\sqrt 2}(x^0\pm x^1).
\end{align}$$

Vanishing of both normal traces is equivalent to vanishing of both null expansions. This is precisely the HRT extremality condition.

The surface must also lie on an admissible bulk Cauchy slice $\widetilde\Sigma_t$. The Schwinger-Keldysh construction permits many Cauchy slices for ordinary correlators, but the replica defect restricts the relevant saddle to slices containing $E_A$.

### Formula (3.14): Lorentzian boundary term

$$\begin{align}
\partial_q I[\widehat M_q]
=-\frac{1}{8\pi G_N}
\partial_q\int_{e_q(\epsilon)}K_\epsilon.
\end{align}$$

This is the Lorentzian counterpart of (3.8). The regulator surface is now more subtle because the small surface around a spacelike codimension-2 locus includes timelike, spacelike, and near-null pieces.

The boundary terms at the Schwinger-Keldysh turning surface $\widetilde\Sigma_t$ cancel because the forward and backward branches are glued with the correct matching conditions. The surviving contribution comes from the regulated neighborhood of the light-cone singularity.

### Formula (3.15): Lorentzian modular entropy area

$$\begin{align}
\partial_q I[\widehat M_q]
=\frac{i\,\operatorname{Area}(e_q)}{4q^2G_N}.
\end{align}$$

The extra factor of $i$ is the Lorentzian action convention: the path integral weight is $e^{iS}$ rather than $e^{-I_E}$. After translating to the entropy, the physical answer is real and equals the HRT area at $q=1$.

This completes the main derivation:

$$\begin{align}
S_A
=\widetilde S_A^{(1)}
=\frac{\operatorname{Area}(E_A)}{4G_N}.
\end{align}$$

## Discussion formula

### Formula (4.1): strong subadditivity via maximin

The paper quotes the maximin/surgery inequality schematically as

$$\begin{align}
\operatorname{Area}(E_{A_1\cap A_2})
+\operatorname{Area}(E_{A_1\cup A_2})
\le
\sum_{i=1}^2 \operatorname{Area}(P E_{A_i})
\le
\sum_{i=1}^2 \operatorname{Area}(E_{A_i}).
\end{align}$$

The PDF extraction duplicates one label in this displayed equation, but the intended strong-subadditivity structure is the standard one involving $A_1\cap A_2$ and $A_1\cup A_2$.

The logic is:

- choose a common Cauchy slice containing the extremal surfaces for $A_1\cap A_2$ and $A_1\cup A_2$;
- project the other extremal surfaces onto that slice;
- under the null energy condition, projection does not increase area;
- on the common slice, use the static surgery argument.

The authors' replica perspective adds a restriction: the relevant Cauchy slices are not arbitrary maximin trial slices, but those compatible with the Schwinger-Keldysh replica boundary conditions.

## Appendix formulas

### Formula (A.1): Lorentzian action for integer $q$

$$\begin{align}
I[M_q]
=\int_{M_q}L
+\int_{\partial M_q}L_{\text{bdy}}
+\int_{\widetilde\Sigma_t}L_{\text{SK}}.
\end{align}$$

The first two terms are the usual bulk and asymptotic boundary terms. The last term is specific to the Schwinger-Keldysh construction: when two Lorentzian pieces are glued across a bulk Cauchy slice, the variational principle needs the appropriate matching term.

For integer $q$, $M_q$ is the full smooth replicated geometry. Replica symmetry again permits the quotient description $I[M_q]=qI[\widehat M_q]$.

### Formula (A.2): corner or jump boundary term

$$\begin{align}
I_{\text{bdy}}
=\frac{1}{8\pi G_N}\int_{e^{\text{jump}}_1(\epsilon)}K_\epsilon
=\cosh^{-1}(n_1\cdot n_2).
\end{align}$$

This formula evaluates the contribution from a segment where the regulator surface jumps between spacelike and timelike pieces. The vectors $n_1$ and $n_2$ are the initial and final unit normals.

For the Lorentzian cone, the regulator becomes nearly null at the jump. The $i\epsilon$ prescription controls how the inverse hyperbolic cosine is evaluated and keeps the path integral well-defined.

### Formula (A.3): quotient boundary term

$$\begin{align}
I_{\text{bdy}}[\widehat M_q]
=\frac{4i}{4q}\,
\frac{\operatorname{Area}(e_q)}{4G_N}.
\end{align}$$

The factor of $4$ counts the four horizon crossings around the local Lorentzian normal plane. The factor $1/q$ comes from comparing normals in locally flat coordinates

$$\begin{align}
x=r\cosh(\tau/q),
\qquad
t=r\sinh(\tau/q).
\end{align}$$

This appendix computation supplies the local boundary-term justification for the main result (3.15).

### Formula (A.4): Einstein gravity plus a scalar

$$\begin{align}
I[\widehat M_q]
=I_{\text{EH}}[\widehat M_q]
-\int_{\widehat M_q}d^{d+1}x\sqrt{-g}
\left[(\partial\phi)^2+V(\phi)\right].
\end{align}$$

This is a test problem for the Lorentzian prescription. The scalar has small boundary source $\lambda\varphi(\tau)$, and the authors examine the $O(\lambda^2)$ correction to the modular entropy.

The purpose is not to solve a new scalar model. It is to check that the Lorentzian matter integral, with the correct light-cone prescription, reproduces the same area variation known from the Euclidean LM analysis.

### Formula (A.5): scalar contribution to modular entropy

$$\begin{align}
\left.\widetilde S_A^{(q)}\right|_{\lambda^2}
=
\left.\frac{A}{4q^2G_N}\right|_{\lambda^2}
=-i\int_{\widehat M_q}T^\phi_{\mu\nu}\partial_q g^{\mu\nu}
=-i\partial_q\int_{\partial\widehat M_q}\phi\,\partial_{\vec n}\phi.
\end{align}$$

This formula gives three equivalent ways to compute the $O(\lambda^2)$ correction:

- area change from scalar backreaction;
- bulk stress tensor contracted with the $q$-variation of the metric;
- boundary scalar term after using the scalar equations of motion.

The factor $-i$ again comes from Lorentzian signature. The integrand can look imaginary before the light-cone singularity is regulated, but the final modular entropy is real.

### Formula (A.6): Poincare patch metric

$$\begin{align}
ds^2=\frac{dx^2-dt^2+dz^2}{z^2}.
\end{align}$$

This is the local AdS metric used for the scalar example. The source is allowed to be genuinely time-dependent in the Poincare time $t$.

### Formula (A.7): hyperbolic patch metric

$$\begin{align}
ds^2
=f(\rho)\frac{du^2}{u^2}
-\rho^2d\tau^2
+\frac{d\rho^2}{f(\rho)}.
\end{align}$$

At $q=1$,

$$\begin{align}
f(\rho)=\rho^2+1.
\end{align}$$

The coordinate transformation to Poincare variables is

$$\begin{align}
\rho^2=\frac{x^2-t^2}{z^2},
\qquad
u^2=x^2-t^2+z^2,
\qquad
\tanh\tau=\frac{t}{x}.
\end{align}$$

For the replicated hyperbolic geometry,

$$\begin{align}
f_q(\rho)=\rho^2+q^{-2}.
\end{align}$$

The hyperbolic chart makes the $q$-variation simple, while the Poincare chart makes general time-dependent sources transparent.

### Formula (A.8): explicit matter integrand

For a scalar mode $\lambda e^{i\omega t}f_\omega(z)$, the paper writes

$$\begin{align}
i\left.\widetilde S_A^{(1)}\right|_{\lambda^2}
=\int_M \widetilde T_\phi,
\end{align}$$

with

$$\begin{align}
\widetilde T_\phi
\equiv
\sqrt{-g}\,T^\phi_{\mu\nu}\partial_q g^{\mu\nu}.
\end{align}$$

In Poincare variables this becomes

$$\begin{align}
\widetilde T_\phi
=
\frac{2z}{(l^2+z^2)^2}
\left[
(T^\phi_{ll}-T^\phi_{zz})(l^2-z^2)
+4lz\,T^\phi_{zl}
\right],
\end{align}$$

and, using the scalar mode,

$$\begin{align}
\widetilde T_\phi
=
\frac{2z(l^2-z^2)}{(l^2+z^2)^2}
\left(
t^2l^2\omega^2 f_\omega f_{-\omega}
-f'_\omega f'_{-\omega}
\right)
+\frac{4itz^2\omega}{(l^2+z^2)^2}
\left(
f_\omega f'_{-\omega}
-f_{-\omega}f'_\omega
\right),
\end{align}$$

where

$$\begin{align}
l^2=x^2-t^2.
\end{align}$$

The local point is that Lorentzian integration over $t$ has poles at

$$\begin{align}
t^2=x^2+z^2.
\end{align}$$

With the correct $i\epsilon$ prescription, the Lorentzian integral gives $i$ times the Euclidean result. This matches the factor in (A.5) and confirms that the final entropy correction equals the area variation.

# Hidden or compressed steps

## Why the Schwinger-Keldysh contour is unavoidable

In Euclidean LM, $\rho_A^q$ is represented by a Euclidean replicated geometry. That works because time reflection or stationarity lets one prepare the density matrix by Euclidean evolution. In a general time-dependent state, $\rho(t)$ is an operator at a real Lorentzian time. Its path integral representation has both a ket and a bra branch. Therefore the correct contour is doubled before the replica trick is even applied.

## Why tracing out $A^c$ becomes a bulk geometric restriction

The boundary trace over $A^c$ glues fields differently on $A$ and $A^c$. In the bulk, the authors assume that this split extends to a split of a bulk Cauchy slice

$$\begin{align}
\widetilde\Sigma_t=R_A\cup R_A^c,
\qquad
\partial R_A=E_A\cup A.
\end{align}$$

This assumption is later justified a posteriori by replica symmetry and the emergence of the fixed locus. It is also what makes the homology constraint natural rather than an extra rule.

## Why $e_q$ lies in the causal shadow

The limiting fixed locus is common to the computations for $A$ and $A^c$. It cannot be in causal contact with $D[A]$ or $D[A^c]$ without allowing an unacceptable causal shortcut between the two boundary domains through the bulk. Hence it lies in the causal shadow. This is weaker than extremality; the equations of motion provide the stronger condition.

## Why extremality comes from a divergence

The replica ansatz contains $r^q$ terms. When curvature derivatives act on them, they produce powers like $r^{q-2}$ and, near $q=1$, terms proportional to $(q-1)K^a/r$. Since the stress tensor and allowed correction terms do not contain matching singular sources, the only way to satisfy the equations of motion near $r=0$ is $K^a=0$.

This is the local mathematical core of the paper.

## Why the entropy is an area even in Lorentzian signature

The $q$-variation of the action is evaluated on shell. Holding asymptotic boundary sources fixed kills the outer boundary contribution. The only changed boundary condition is the opening angle at $e_q$. A small regulator around $e_q$ turns this into a Gibbons-Hawking/corner contribution proportional to the area of the fixed locus.

Lorentzian signature changes the phase and regulator geometry, but not the localization mechanism.

# Relation to prior work

- RT gave the minimal-area formula for static states.
- HRT proposed the covariant extremal-area formula for time-dependent states.
- LM derived RT using Euclidean replicas and generalized gravitational entropy.
- Skenderis and van Rees supplied the real-time holographic Schwinger-Keldysh technology.
- Dong's cosmic-brane/Renyi entropy work motivates the modular entropy formula at finite $q$.
- Headrick, Hubeny, Lawrence, and Rangamani developed the causal-shadow and entanglement-wedge perspective used here.

# What is genuinely new

The paper's new contribution is not the HRT formula itself. It is the derivation strategy:

- construct $\rho_A$ and $\rho_A^q$ in real time using Schwinger-Keldysh folds;
- map the folded contour to a Lorentzian bulk saddle;
- use replica symmetry to define a quotient with fixed locus $e_q$;
- show that local Lorentzian regularity and Einstein's equations force $e_q$ to become extremal;
- show that the Lorentzian action variation still localizes on the fixed locus and gives the area.

This provides a boundary-causal interpretation of why the HRT surface, rather than a generic covariant surface, enters holographic entanglement entropy.

# Potential weak points

- The derivation assumes unbroken replica symmetry in the dominant bulk saddle.
- The construction of the bulk dual to a spatially dependent Schwinger-Keldysh gluing is physically natural but not derived from a microscopic bulk Hilbert-space factorization.
- Analytic continuation in $q$ is still assumed, although the quotient geometry makes it more controlled than in the boundary theory.
- The treatment of finite-$q$ Lorentzian replicated geometries is mostly formal; the paper gives the $q\to 1$ local derivation most explicitly.
- The Lorentzian boundary-term evaluation needs an $i\epsilon$ prescription near light-cone singularities.
- Multiple saddles require a careful order of limits: take $c_{\text{eff}}\to\infty$ before $q\to 1$ if using saddle dominance.

# Follow-up questions

- Can the spatially dependent bulk Schwinger-Keldysh gluing be derived from a sharper statement about bulk operator algebras?
- What are explicit examples of full finite-$q$ Lorentzian replica saddles beyond local modular Hamiltonian cases?
- How does this construction look in higher derivative gravity when the entropy functional is not simply area?
- Can the Lorentzian replica method clarify nonlinear second-law statements for higher derivative black holes?
- How should complex extremal surfaces be interpreted, if at all, in a boundary real-time replica construction?

# Ten-sentence compression

1. Entanglement entropy in a time-dependent state must be computed from a real-time reduced density matrix.
1. A real-time density matrix requires a Schwinger-Keldysh contour with ket and bra branches.
1. Replicating $\rho_A$ gives $2q$ Lorentzian folds with cyclic gluing across $A$ and ordinary tracing across $A^c$.
1. The bulk dual is a folded Lorentzian geometry glued across a bulk Cauchy slice.
1. Assuming replica symmetry, one passes to a quotient geometry $\widehat M_q$ with fixed locus $e_q$.
1. Near $e_q$, the quotient metric has a $q$-dependent Lorentzian conical structure.
1. Einstein's equations contain singular terms proportional to $(q-1)K^a/r$.
1. Removing those singularities forces $K^a=0$, so $e_q$ limits to the HRT extremal surface.
1. The $q$-variation of the on-shell action localizes on a regulated neighborhood of $e_q$.
1. The Lorentzian boundary term gives the area of $E_A$ divided by $4G_N$.
