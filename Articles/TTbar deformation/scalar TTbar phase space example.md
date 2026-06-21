---
title: Scalar TTbar phase space example
date: 2026-05-21
summary: "Connects the first-order scalar TTbar conserved charges to the covariant phase space picture by making the canonical variables, boundary assumptions, and integrable-charge interpretation explicit."
---

# Scalar TTbar Phase Space Example

This note rewrites the free scalar $T\bar T$ example in a form that directly tests the formal discussion in `formalism_v2.md`. The main point is to distinguish three layers:

- the velocity variables $(\phi,\dot\phi)$,
- the canonical variables $(\phi,\pi_\lambda)$,
- the local conserved-charge densities.

The deformation changes the symplectic form in velocity variables, but it is Darboux in canonical variables. The conserved densities also deform, even when the integrated charge algebra remains unchanged to first order.

# Fixed Convention

Use

$$\begin{align}
x^\pm=t\pm x, \qquad
\partial_\pm=\frac{1}{2}(\partial_t\pm\partial_x).
\end{align}$$

Define

$$\begin{align}
a=\partial_+\phi=\frac{1}{2}(\dot\phi+\phi'), \qquad
b=\partial_-\phi=\frac{1}{2}(\dot\phi-\phi'),
\end{align}$$

and

$$\begin{align}
L_0=\frac{1}{2}ab =\frac{1}{8}(\dot\phi^2-\phi'^2).
\end{align}$$

Then

$$\begin{align}
F=\sqrt{1+4\lambda L_0} =\sqrt{1+2\lambda ab} =\sqrt{1+\frac{\lambda}{2}(\dot\phi^2-\phi'^2)}.
\end{align}$$

The deformed Lagrangian is

$$\begin{align}
L_\lambda=\frac{F-1}{2\lambda} =L_0-\lambda L_0^2+O(\lambda^2).
\end{align}$$

# Canonical Momentum and Symplectic Form

The equal-time symplectic potential is

$$\begin{align}
\theta_\lambda^t =\frac{\dot\phi}{4F}\delta\phi.
\end{align}$$

Thus

$$\begin{align}
\pi_\lambda=\frac{\partial L_\lambda}{\partial\dot\phi} =\frac{\dot\phi}{4F},
\end{align}$$

and

$$\begin{align}
\Omega_\lambda =\int dx\,\delta\pi_\lambda\wedge\delta\phi .
\end{align}$$

Therefore $(\phi,\pi_\lambda)$ are Darboux variables at fixed $\lambda$. In contrast, if one uses $(\phi,\dot\phi)$, then

$$\begin{align}
\pi_\lambda =\frac{1}{4}\dot\phi -\frac{\lambda}{16}\dot\phi(\dot\phi^2-\phi'^2) +O(\lambda^2),
\end{align}$$

so

$$\begin{align}
\Omega_\lambda =\frac{1}{4}\int dx\,\delta\dot\phi\wedge\delta\phi -\frac{\lambda}{16}\int dx\, \delta\left[(\dot\phi^2-\phi'^2)\dot\phi\right]\wedge\delta\phi +O(\lambda^2).
\end{align}$$

This is the explicit example showing why $\partial_\lambda\Omega_\lambda$ should not be set to zero in fixed velocity variables.

# Canonical Map to First Order

Let

$$\begin{align}
p:=\pi_\lambda, \qquad
s:=\phi'.
\end{align}$$

The momentum relation is

$$\begin{align}
p=\frac{\dot\phi}{4\sqrt{1+\frac{\lambda}{2}(\dot\phi^2-s^2)}}.
\end{align}$$

Solving for $\dot\phi$ gives the exact relation

$$\begin{align}
\dot\phi =4p\sqrt{\frac{1-\frac{\lambda}{2}s^2}{1-8\lambda p^2}}.
\end{align}$$

Here the branch is chosen so that $\dot\phi\to 4p$ as $\lambda\to0$. The square root also displays the local phase-space domain where this coordinate patch is real.

To first order,

$$\begin{align}
\dot\phi =4p+\lambda p(16p^2-s^2)+O(\lambda^2).
\end{align}$$

This gives the explicit local Darboux coordinate map between $(\phi,\dot\phi)$ and $(\phi,p)$. The nonlinearity is important: this is not a Bogoliubov transformation in general.

# Chiral Variables: $a,b$ Versus $A,B$

The velocity-space light-cone variables are

$$\begin{align}
a=\frac{1}{2}(\dot\phi+s), \qquad
b=\frac{1}{2}(\dot\phi-s).
\end{align}$$

The canonical chiral variables are instead

$$\begin{align}
A=2p+\frac{1}{2}s, \qquad
B=2p-\frac{1}{2}s.
\end{align}$$

At $\lambda=0$, they agree:

$$\begin{align}
A=a+O(\lambda), \qquad
B=b+O(\lambda).
\end{align}$$

At first order, using the inverse momentum relation,

$$\begin{align}
a=A+\lambda C+O(\lambda^2), \qquad
b=B+\lambda C+O(\lambda^2),
\end{align}$$

where

$$\begin{align}
C=\frac{1}{2}p(16p^2-s^2) =\frac{1}{2}AB(A+B).
\end{align}$$

The Poisson brackets are simple in the canonical variables:

$$\begin{align}
\{A(x),A(y)\}=2\partial_x\delta(x-y),
\end{align}$$

$$\begin{align}
\{B(x),B(y)\}=-2\partial_x\delta(x-y),
\end{align}$$

and

$$\begin{align}
\{A(x),B(y)\}=0.
\end{align}$$

This is why the commutativity check should be done in terms of $A,B$, not directly in terms of the velocity variables $a,b$.

# First-Order Conserved Charges

The deformed currents obey

$$\begin{align}
\partial_-J_{+,n}^{(\lambda)} =\partial_+\Theta_{+,n}^{(\lambda)}, \qquad
\partial_+J_{-,n}^{(\lambda)} =\partial_-\Theta_{-,n}^{(\lambda)}.
\end{align}$$

With the density convention

$$\begin{align}
q_{+,n}^{(\lambda)}=J_{+,n}^{(\lambda)}-\Theta_{+,n}^{(\lambda)}, \qquad
q_{-,n}^{(\lambda)}=J_{-,n}^{(\lambda)}-\Theta_{-,n}^{(\lambda)},
\end{align}$$

the plus-sector charge is

$$\begin{align}
Q_{+,n}^{(\lambda)} =\int dx\left[ a^n-\frac{n\lambda}{2}a^{n+1}b-\frac{\lambda}{2}a^nb^2 \right]+O(\lambda^2),
\end{align}$$

and the minus-sector charge is

$$\begin{align}
Q_{-,n}^{(\lambda)} =\int dx\left[ b^n-\frac{n\lambda}{2}ab^{n+1}-\frac{\lambda}{2}a^2b^n \right]+O(\lambda^2).
\end{align}$$

Now substitute

$$\begin{align}
a=A+\lambda C+O(\lambda^2), \qquad
b=B+\lambda C+O(\lambda^2).
\end{align}$$

The charge densities become

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n+\lambda\frac{n-1}{2}A^nB^2+O(\lambda^2),
\end{align}$$

and

$$\begin{align}
q_{-,n}^{(\lambda)} =B^n+\lambda\frac{n-1}{2}A^2B^n+O(\lambda^2).
\end{align}$$

Thus the densities are genuinely deformed. The deformation is not an artifact of notation.

# Charge Type

The charges

$$\begin{align}
Q_{\pm,n}^{(\lambda)}
\end{align}$$

should be treated as integrable Hamiltonian charges, not necessarily as ordinary spacetime Noether charges. They are Hamiltonian functionals on the deformed phase space because their brackets and flows are computed using $\Omega_\lambda$. But for general $n$ they are not generated by a simple spacetime vector field $\xi$.

This distinction matters for the formalism:

- Noether charges are tied to a transformation of the fields that changes the Lagrangian by a total derivative.
- Integrable hierarchy charges are conserved Hamiltonians that may not come from a spacetime symmetry.
- The $T\bar T$ deformation can preserve the hierarchy even though the local densities are no longer purely chiral.

# Commutativity to First Order

Using the canonical brackets of $A,B$, the first-order bracket corrections reduce to total derivatives:

$$\begin{align}
\{Q_{+,m}^{(1)},Q_{+,n}^{(0)}\} +\{Q_{+,m}^{(0)},Q_{+,n}^{(1)}\} =mn(n-1)\int dx\,\partial_x(A^{m+n-2}B^2),
\end{align}$$

$$\begin{align}
\{Q_{-,m}^{(1)},Q_{-,n}^{(0)}\} +\{Q_{-,m}^{(0)},Q_{-,n}^{(1)}\} =-mn(n-1)\int dx\,\partial_x(A^2B^{m+n-2}),
\end{align}$$

and

$$\begin{align}
\{Q_{+,m}^{(0)},Q_{-,n}^{(1)}\} +\{Q_{+,m}^{(1)},Q_{-,n}^{(0)}\} =2(n-1)\int dx\,\partial_x(A^mB^n).
\end{align}$$

Therefore

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\} =O(\lambda^2)
\end{align}$$

provided the boundary terms vanish.

# Boundary Conditions

The commutativity statement uses one of the following assumptions:

- periodic boundary conditions on a spatial circle,
- sufficiently fast falloff at spatial infinity,
- boundary conditions that make all displayed total derivatives vanish.

If the spatial slice has a physical boundary, the bracket may acquire boundary charges. Then the same density computation is not enough; one must include the boundary symplectic form and possible boundary improvements of the charges.

# Relation to Canonical Transport

The formalism says that the deformation of the symplectic form is controlled by

$$\begin{align}
\partial_\lambda\Omega_{\Sigma,\lambda} =\delta B_{\Sigma,\lambda}, \qquad
B_{\Sigma,\lambda}=\int_\Sigma\partial_\lambda\Theta_\lambda.
\end{align}$$

In this scalar example the same structure is seen concretely:

- in velocity variables, $\Omega_\lambda$ has a nonzero first-order correction;
- in canonical variables, $\Omega_\lambda=\int dx\,\delta p\wedge\delta\phi$;
- the deformed chiral variables $A,B$ have simple brackets;
- the deformed charge densities are naturally expressed in $A,B$.

This is the concrete realization of the dressed picture. The charges are not unchanged as local functions, but the canonical variables organize the deformation so that the integrated bracket remains trivial to first order.

# All-Order Discussion

The first-order computation suggests a stronger possibility:

$$\begin{align}
Q_{\pm,n}^{(\lambda)}
\end{align}$$

may be the first terms of an all-order dressed hierarchy. The right way to formulate the all-order problem is to work directly in the canonical variables.

Using

$$\begin{align}
p=\frac{A+B}{4}, \qquad
s=A-B,
\end{align}$$

the exact Hamiltonian density is

$$\begin{align}
h_\lambda(A,B) =p\dot\phi-L_\lambda =\frac{1-\sqrt{ \left(1-\frac{\lambda}{2}(A+B)^2\right) \left(1-\frac{\lambda}{2}(A-B)^2\right)
}}{2\lambda}.
\end{align}$$

It expands as

$$\begin{align}
h_\lambda =\frac{A^2+B^2}{4} +\frac{\lambda}{4}A^2B^2 +\frac{\lambda^2}{8}A^2B^2(A^2+B^2) +O(\lambda^3).
\end{align}$$

With the brackets

$$\begin{align}
\{A(x),A(y)\}=2\partial_x\delta(x-y), \qquad
\{B(x),B(y)\}=-2\partial_x\delta(x-y),
\end{align}$$

the equations of motion are the two-component hydrodynamic system

$$\begin{align}
\partial_t A=2\partial_x\left(\frac{\partial h_\lambda}{\partial A}\right), \qquad
\partial_t B=-2\partial_x\left(\frac{\partial h_\lambda}{\partial B}\right).
\end{align}$$

This system can be diagonalized explicitly. Define

$$\begin{align}
\Delta=A^2-B^2, \qquad \mathcal D=4-4\lambda(A^2+B^2)+\lambda^2\Delta^2.
\end{align}$$

Then

$$\begin{align}
R_+=\frac{2+\lambda\Delta}{A}, \qquad
R_-=\frac{2-\lambda\Delta}{B}
\end{align}$$

are Riemann invariants. They obey

$$\begin{align}
\partial_t R_+ =v_+\partial_x R_+, \qquad
\partial_t R_- =v_-\partial_x R_-,
\end{align}$$

where

$$\begin{align}
v_+=\frac{2-\lambda\Delta}{\sqrt{\mathcal D}}, \qquad
v_-=-\frac{2+\lambda\Delta}{\sqrt{\mathcal D}}.
\end{align}$$

Equivalently, one may use the variables

$$\begin{align}
U=\frac{2}{R_+} =\frac{2A}{2+\lambda(A^2-B^2)}, \qquad
V=\frac{2}{R_-} =\frac{2B}{2-\lambda(A^2-B^2)},
\end{align}$$

which reduce to $A,B$ at $\lambda=0$. These variables make the all-order integrability question more standard: it becomes the problem of constructing conservation laws for a two-component diagonal hydrodynamic system.

A local density $q(A,B;\lambda)$ is conserved if there exists a flux $j(A,B;\lambda)$ such that

$$\begin{align}
\partial_t q=\partial_x j.
\end{align}$$

Equivalently,

$$\begin{align}
j_A=2q_Ah_{AA}-2q_Bh_{AB}, \qquad
j_B=2q_Ah_{AB}-2q_Bh_{BB},
\end{align}$$

and the integrability condition for the flux is

$$\begin{align}
\partial_B\left(2q_Ah_{AA}-2q_Bh_{AB}\right) = \partial_A\left(2q_Ah_{AB}-2q_Bh_{BB}\right).
\end{align}$$

This is the all-order conservation equation for local densities in canonical variables. At $\lambda=0$ it reduces to

$$\begin{align}
\partial_A\partial_B q=0,
\end{align}$$

so the undeformed conserved densities are arbitrary sums of left- and right-moving functions,

$$\begin{align}
q^{(0)}=f(A)+g(B).
\end{align}$$

For the plus-sector branch with $q_{+,n}^{(0)}=A^n$, the first-order solution

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n+\lambda\frac{n-1}{2}A^nB^2+O(\lambda^2)
\end{align}$$

solves this conservation equation. Pushing the same equation to second order gives, up to the freedom to add a purely chiral density,

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n +\lambda\frac{n-1}{2}A^nB^2 +\lambda^2\left[ \frac{n-1}{4}A^{n+2}B^2 +\frac{n(n-1)}{8}A^nB^4 \right] +O(\lambda^3).
\end{align}$$

Similarly,

$$\begin{align}
q_{-,n}^{(\lambda)} =B^n +\lambda\frac{n-1}{2}A^2B^n +\lambda^2\left[ \frac{n-1}{4}A^2B^{n+2} +\frac{n(n-1)}{8}A^4B^n \right] +O(\lambda^3),
\end{align}$$

again up to the freedom to add a purely chiral density.

This second-order result is a conservation check, not yet a full proof of pairwise commutativity. The hierarchy question has two separate parts:

1. Conservation: solve the flux-integrability equation for $q_{\pm,n}^{(\lambda)}$ order by order or in closed form.
1. Commutativity: verify that the brackets

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}
\end{align}$$

   reduce to boundary terms at each order.

The conservation equation gives a recursive construction. If

$$\begin{align}
q_{\pm,n}^{(\lambda)} =\sum_{r\ge0}\lambda^r q_{\pm,n}^{(r)}, \qquad
h_\lambda=\sum_{r\ge0}\lambda^r h_r,
\end{align}$$

then the order-$\lambda^r$ equation is linear in the mixed part of $q_{\pm,n}^{(r)}$. Its homogeneous solutions are arbitrary chiral additions

$$\begin{align}
f_r(A)+g_r(B),
\end{align}$$

which correspond to redefining the basis of conserved charges. Fixing this freedom by requiring no new purely chiral term at each positive order gives a canonical perturbative representative.

With that convention, the next plus-sector term is

$$\begin{align}
q_{+,n}^{(3)} =\frac{n(n-1)(n+1)}{48}A^nB^6 +\frac{n^2-1}{8}A^{n+2}B^4 +\frac{n-1}{8}A^{n+4}B^2.
\end{align}$$

The minus-sector term is obtained by exchanging $A\leftrightarrow B$:

$$\begin{align}
q_{-,n}^{(3)} =\frac{n(n-1)(n+1)}{48}A^6B^n +\frac{n^2-1}{8}A^4B^{n+2} +\frac{n-1}{8}A^2B^{n+4}.
\end{align}$$

Continuing the same recursion gives the fourth plus-sector term

$$\begin{align}
q_{+,n}^{(4)} =\frac{(n-1)n(n+1)(n+2)}{384}A^nB^8 +\frac{(n-1)(n+1)(n+2)}{32}A^{n+2}B^6 +\frac{3(n-1)(n+2)}{32}A^{n+4}B^4 +\frac{n-1}{16}A^{n+6}B^2,
\end{align}$$

and $q_{-,n}^{(4)}$ is again obtained by exchanging $A\leftrightarrow B$.

These coefficients show a stable triangular structure: at order $\lambda^r$, the plus-sector representative contains only terms

$$\begin{align}
A^{n+2k}B^{2(r-k)}, \qquad
0\le k\le r-1,
\end{align}$$

after removing the purely chiral ambiguity.

The coefficient pattern suggests the following closed double-series candidate. Set

$$\begin{align}
x=\frac{\lambda A^2}{2}, \qquad
y=\frac{\lambda B^2}{2}.
\end{align}$$

Then

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n\left[ 1+\sum_{l\ge1}\sum_{k\ge0}
c_{k,l}^{(n)}x^ky^l \right],
\end{align}$$

with

$$\begin{align}
c_{k,l}^{(n)} =(n-1)\frac{(n+k)_{l-1}}{l!}
\binom{k+l-1}{k}.
\end{align}$$

Equivalently,

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n\left[ 1+(n-1)y\,F_4(1,n;n,2;x,y) \right],
\end{align}$$

where $F_4$ is Appell's hypergeometric function,

$$\begin{align}
F_4(a,b;c,d;x,y) =\sum_{k,l\ge0} \frac{(a)_{k+l}(b)_{k+l}}{(c)_k(d)_l\,k!\,l!}
x^ky^l.
\end{align}$$

The minus-sector candidate is obtained by exchanging $A\leftrightarrow B$, or equivalently $x\leftrightarrow y$ with the overall factor $B^n$.

This is not yet a proof of all-order involutivity. It is, however, a useful closed-form target: substituting the truncated series into the conservation PDE checks through $O(\lambda^5)$, and it reproduces all coefficients displayed above.

In fact this can be promoted to an all-order conservation proof. Substituting

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n\left[ 1+(n-1)y\,F_4(1,n;n,2;x,y) \right]
\end{align}$$

into the flux-integrability equation reduces it to the standard Appell-$F_4$ differential equations with parameters

$$\begin{align}
a=1,\qquad b=n,\qquad c=n,\qquad d=2.
\end{align}$$

Therefore the Appell-$F_4$ expression is an all-order conserved density in its domain of convergence, and elsewhere by analytic continuation as long as the hydrodynamic variables remain in the same local branch.

# Second-Order Commutativity Check

Using the second-order densities above, the order-$\lambda^2$ brackets are still total derivatives. For the plus sector,

$$\begin{align}
\{Q_{+,m}^{(\lambda)},Q_{+,n}^{(\lambda)}\}_{\lambda^2} =\int dx\,\partial_x P_{++,m,n}^{(2)},
\end{align}$$

with

$$\begin{align}
P_{++,m,n}^{(2)} =\frac{(n-1)(2+mn)}{2}A^{m+n}B^2 +\frac{mn(n-1)(m+n-1)}{4}A^{m+n-2}B^4.
\end{align}$$

For the minus sector,

$$\begin{align}
\{Q_{-,m}^{(\lambda)},Q_{-,n}^{(\lambda)}\}_{\lambda^2} =\int dx\,\partial_x P_{--,m,n}^{(2)},
\end{align}$$

where

$$\begin{align}
P_{--,m,n}^{(2)} =-\frac{(n-1)(2+mn)}{2}A^2B^{m+n} -\frac{mn(n-1)(m+n-1)}{4}A^4B^{m+n-2}.
\end{align}$$

For the mixed bracket,

$$\begin{align}
\{Q_{+,m}^{(\lambda)},Q_{-,n}^{(\lambda)}\}_{\lambda^2} =\int dx\,\partial_x P_{+-,m,n}^{(2)},
\end{align}$$

with

$$\begin{align}
P_{+-,m,n}^{(2)} =n(n-1)A^{m+2}B^n +m(n-1)A^mB^{n+2}.
\end{align}$$

Therefore the pairwise commutativity is not merely a first-order accident:

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\} =O(\lambda^3)
\end{align}$$

under the same boundary assumptions.

Using the third-order densities, the order-$\lambda^3$ bracket densities are also closed one-forms in the variables $(A,B)$; equivalently, they are local total derivatives. Thus the evidence improves to

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\} =O(\lambda^4),
\end{align}$$

again modulo boundary terms.

# Structural Involutivity Argument

The remaining question is whether the total-derivative bracket property holds to all orders. The Riemann-invariant form gives a structural reason that it should.

Let $Q=\int dx\,q(A,B)$ be one of the Appell-$F_4$ charges. Its Hamiltonian flow is

$$\begin{align}
\partial_\tau A=2\partial_x q_A, \qquad
\partial_\tau B=-2\partial_x q_B.
\end{align}$$

This flow is diagonal in the same Riemann invariants $R_\pm$ precisely when

$$\begin{align}
4AB\lambda[-2+\lambda(A^2+B^2)](q_{AA}+q_{BB}) +2\left[ 4-4\lambda(A^2+B^2) +\lambda^2(A^4+6A^2B^2+B^4) \right]q_{AB}=0.
\end{align}$$

The Appell-$F_4$ densities satisfy this equation. Perturbatively, the same recursion that produced the displayed $q_{+,n}^{(r)}$ solves it order by order; in closed form it is again one of the Appell-$F_4$ differential equations.

Thus every charge in this family generates a diagonal flow

$$\begin{align}
\partial_\tau R_+ =w_+(R_+,R_-)\partial_xR_+, \qquad
\partial_\tau R_- =w_-(R_+,R_-)\partial_xR_-.
\end{align}$$

For a two-component diagonal hydrodynamic system, the semi-Hamiltonian consistency condition has no independent three-index content. The Tsarev commuting-flow condition reduces to

$$\begin{align}
\frac{\partial_{R_-}w_+}{w_- - w_+} = \frac{\partial_{R_-}v_+}{v_- - v_+}, \qquad \frac{\partial_{R_+}w_-}{w_+ - w_-} = \frac{\partial_{R_+}v_-}{v_+ - v_-}.
\end{align}$$

These equations are equivalent to the conservation-law equation for the Hamiltonian density $q$. Therefore the Appell-$F_4$ charges generate mutually commuting diagonal flows.

Equivalently, in Hamiltonian language,

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\} =\int dx\,\partial_x P_{\sigma\rho,mn}^{(\lambda)}
\end{align}$$

for a local flux $P_{\sigma\rho,mn}^{(\lambda)}$. Under the boundary assumptions stated above, this gives

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}=0.
\end{align}$$

The earlier explicit checks through $O(\lambda^3)$ are finite-order tests of this structural argument.
