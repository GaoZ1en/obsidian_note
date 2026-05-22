---
title: Scalar TTbar complete discussion
date: 2026-05-21
summary: "A self-contained corrected discussion of the TTbar-deformed free scalar, including the flow equation, first-order conserved currents, canonical phase space, and all-order commuting hierarchy."
---

# Flow Equation

consider a massless scalar field in 2d with undeformed Lagrangian

$$\begin{align}
\mathcal{L}_{0} & =\frac{1}{2}g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\phi
\end{align}$$

and assume the deformed Lagrangian depends only on $\displaystyle{\mathcal{L_{0}}}$

$$\begin{align}
\mathcal{L}_{\lambda} & =\mathcal{L}_{\lambda}(\mathcal{L}_{0}),  & \mathcal{L}_{\lambda=0} & =\mathcal{L}_{9}
\end{align}$$

the action is given by

$$\begin{align}
S_{\lambda} & =\int \mathrm{d}^{2}x\sqrt{ -g }\mathcal{L}_{\lambda}(\mathcal{L}_{0})
\end{align}$$

take a variation with respect to $\displaystyle{g^{\mu \nu}}$, we have

$$\begin{align}
\delta S_{\lambda} & =\frac{1}{2}\int \mathrm{d}^{2}x\sqrt{ -g }T_{\mu \nu}^{(\lambda)}\delta g^{\mu \nu} \\
 & =\int \mathrm{d}^{2}x\left[\frac{1}{2} \frac{\partial \mathcal{L}_{\lambda}}{\partial \mathcal{L}_{0}}\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\mathcal{L}_{\lambda}\right]\delta g^{\mu \nu} \\
 \implies T_{\mu \nu}^{(\lambda)} & =\frac{\partial \mathcal{L}_{\lambda}}{\partial \mathcal{L}_{0}}\nabla _{\mu}\phi \nabla _{\nu}\phi-g_{\mu \nu}\mathcal{L}_{\lambda} \\
 \implies \det T^{(\lambda)} & =\frac{1}{2}(T^{2}-T^{\mu \nu}T_{\mu \nu}) \\
 & = \mathcal{L}_{\lambda}^{2}-2 \frac{\partial \mathcal{L}_{\lambda}}{\partial \mathcal{L}_{0}}\mathcal{L}_{0}\mathcal{L}_{\lambda}
\end{align}$$

the flow equation is given by

$$\begin{align}
\frac{\partial \mathcal{L}_{\lambda}}{\partial \lambda} & =\det T^{(\lambda)} \\
\implies \mathcal{L}_{\lambda} & =\frac{1}{2\lambda}(\sqrt{ 1+4\lambda \mathcal{L}_{0} }-1)
\end{align}$$

the first several orders read

$$\begin{align}
\mathcal{L}_{\lambda} & =\mathcal{L}_{0}-\lambda \mathcal{L}_{0}^{2}+2\lambda ^{2}\mathcal{L}_{0}^{3}+\mathcal{O}(\lambda ^{3})
\end{align}$$

# CPS formalism

denote $\displaystyle{F=\sqrt{ 1+4\lambda \mathcal{L}_{0} }}$. take a variation of the action with respect to $\displaystyle{\phi}$.

$$\begin{align}
\delta S_{\lambda} & =\int \mathrm{d}^{2}x\sqrt{ -g } \frac{1}{F} \nabla _{\mu}\phi \nabla ^{\mu}\delta \phi \\
 & =\int \mathrm{d}^{2}x\sqrt{ -g } \nabla _{\mu}\left(\frac{1}{F}\nabla ^{\mu}\phi\right)\delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu} \frac{1}{F}\nabla ^{\mu}\phi \delta \phi
\end{align}$$

the eom is

$$\begin{align}
\nabla _{\mu} \left( \frac{1}{F}\nabla ^{\mu}\phi \right) & =0 \\
\implies \partial _{+}\left(\frac{b}{F}\right)+\partial _{-}\left(\frac{a}{F}\right)=0
\end{align}$$

here $\displaystyle{a=\partial _{+}\phi,b=\partial _{-}\phi}$. and the symplectic form is given by

$$\begin{align}
\omega _{\lambda} & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\delta\left(\frac{1}{F}\nabla ^{\mu}\phi\right)\wedge \delta \phi
\end{align}$$

## undeformed conserved charges

in the undeformed theory, the eom reads

$$\begin{align}
\partial _{+}\partial _{-}\phi & =0 \\
\implies \partial _{+}b=0, & \quad\partial _{-}a=0 \\
\implies \partial _{+}b^{n}=0, & \quad\partial _{-}a^{n}=0,n\in \mathbb{N}
\end{align}$$

this gives the undeformed conserved charges

$$\begin{align}
Q_{+,n}^{(0)} & =\int \mathrm{d}xa^{n}, & Q_{-,n}^{(0)} & =\int \mathrm{d}xb^{n}
\end{align}$$

on the other hand, define the symmetry generator

$$\begin{align}
X_{+,n} & =\int \mathrm{d}^{2}x \frac{n}{2}a^{n-1} \frac{\delta}{\delta \phi}, & X_{-,n} & =\int \mathrm{d}^{2}x \frac{n}{2}b^{n-1} \frac{\delta}{\delta \phi}
\end{align}$$

act on the symplectic form, we have

$$\begin{align}
X_{+,n}\cdot \omega _{0} & = \frac{n}{2}\int _{\Sigma}\mathrm{d}x \left(\partial _{x}(a^{n-1})\delta \phi-a^{n-1}\delta \dot{\phi}\right) \\
 & =-n\int _{\Sigma}\mathrm{d}xa^{n-1}\left(\delta \phi'+\delta \dot{\phi}\right) \\
 & =-\delta\left(\int _{\Sigma}\mathrm{d}xa^{n}\right) \\
\implies Q_{+,n}^{(0)} & =\int _{\Sigma}\mathrm{d}xa^{n} \\
 Q_{-,n}^{(0)} & =\int _{\Sigma}\mathrm{d}xb^{n}
\end{align}$$

after deformation, the definition of the symmetry generator and the corresponding Noether charge will deform respectively. 

# First-Order Conserved Currents

For the plus sector, look for

$$
J_{+,n}^{(\lambda)}
=a^n+\lambda J_{+,n}^{(1)}+O(\lambda^2),
\qquad
\Theta_{+,n}^{(\lambda)}
=\lambda\Theta_{+,n}^{(1)}+O(\lambda^2),
$$

satisfying

$$
\partial_-J_{+,n}^{(\lambda)}
=\partial_+\Theta_{+,n}^{(\lambda)}.
$$

Using the deformed equation of motion,

$$
\partial_-a^n
=\frac{n\lambda}{2}a^{n-1}b^2\partial_+a
+\frac{n\lambda}{2}a^{n+1}\partial_-b
+O(\lambda^2).
$$

Choose

$$
J_{+,n}^{(1)}
=-na^nL_0
=-\frac{n}{2}a^{n+1}b.
$$

Then

$$
\partial_-\left(a^n+\lambda J_{+,n}^{(1)}\right)
=\frac{n\lambda}{2}a^{n-1}b^2\partial_+a
+O(\lambda^2)
=\lambda\partial_+\left(\frac{1}{2}a^nb^2\right)
+O(\lambda^2),
$$

so

$$
\Theta_{+,n}^{(1)}
=\frac{1}{2}a^nb^2.
$$

The minus sector follows by exchanging $a\leftrightarrow b$:

$$
J_{-,n}^{(1)}
=-\frac{n}{2}ab^{n+1},
\qquad
\Theta_{-,n}^{(1)}
=\frac{1}{2}a^2b^n.
$$

# First-Order Charges

From

$$
\partial_-J_{+,n}^{(\lambda)}
=\partial_+\Theta_{+,n}^{(\lambda)}
$$

and $\partial_\pm=\frac{1}{2}(\partial_t\pm\partial_x)$, one obtains

$$
\partial_t(J_{+,n}^{(\lambda)}-\Theta_{+,n}^{(\lambda)})
=\partial_x(J_{+,n}^{(\lambda)}+\Theta_{+,n}^{(\lambda)}).
$$

Thus the conserved density is

$$
q_{+,n}^{(\lambda)}
=J_{+,n}^{(\lambda)}-\Theta_{+,n}^{(\lambda)}
$$

with flux $-(J_{+,n}^{(\lambda)}+\Theta_{+,n}^{(\lambda)})$. Therefore

$$
Q_{+,n}^{(\lambda)}
=\int dx\left[
a^n-\frac{n\lambda}{2}a^{n+1}b
-\frac{\lambda}{2}a^nb^2
\right]+O(\lambda^2),
$$

and

$$
Q_{-,n}^{(\lambda)}
=\int dx\left[
b^n-\frac{n\lambda}{2}ab^{n+1}
-\frac{\lambda}{2}a^2b^n
\right]+O(\lambda^2).
$$

These are integrable hierarchy charges. For generic $n$, they should not be identified with ordinary spacetime Noether charges.

# Symplectic Structure

The symplectic potential current is read off from the boundary term:

$$
\theta_\lambda^+
=\frac{b}{2F}\delta\phi,
\qquad
\theta_\lambda^-
=\frac{a}{2F}\delta\phi.
$$

The equal-time component is

$$
\theta_\lambda^t
=\frac{1}{2}(\theta_\lambda^++\theta_\lambda^-)
=\frac{\dot\phi}{4F}\delta\phi.
$$

Hence the canonical momentum is

$$
\pi_\lambda
=\frac{\partial L_\lambda}{\partial\dot\phi}
=\frac{\dot\phi}{4F},
$$

and the symplectic form is

$$
\Omega_\lambda
=\int dx\,\delta\pi_\lambda\wedge\delta\phi.
$$

In velocity variables,

$$
\pi_\lambda
=\frac{1}{4}\dot\phi
-\frac{\lambda}{16}\dot\phi(\dot\phi^2-\phi'^2)
+O(\lambda^2),
$$

so

$$
\Omega_\lambda
=\frac{1}{4}\int dx\,\delta\dot\phi\wedge\delta\phi
-\frac{\lambda}{16}\int dx\,
\delta\left[(\dot\phi^2-\phi'^2)\dot\phi\right]\wedge\delta\phi
+O(\lambda^2).
$$

Thus the deformation of the symplectic form is nonzero in fixed velocity variables. The canonical variables $(\phi,\pi_\lambda)$ absorb it into Darboux form.

# Canonical Variables and Chiral Brackets

Let

$$
p:=\pi_\lambda,
\qquad
s:=\phi'.
$$

The exact relation between velocity and canonical momentum is

$$
p=\frac{\dot\phi}{4\sqrt{1+\frac{\lambda}{2}(\dot\phi^2-s^2)}}.
$$

Choosing the branch connected to $\lambda=0$,

$$
\dot\phi
=4p\sqrt{\frac{1-\frac{\lambda}{2}s^2}{1-8\lambda p^2}}.
$$

To first order,

$$
\dot\phi
=4p+\lambda p(16p^2-s^2)+O(\lambda^2).
$$

Define the canonical chiral variables

$$
A=2p+\frac{1}{2}s,
\qquad
B=2p-\frac{1}{2}s.
$$

They obey

$$
\{A(x),A(y)\}=2\partial_x\delta(x-y),
$$

$$
\{B(x),B(y)\}=-2\partial_x\delta(x-y),
$$

and

$$
\{A(x),B(y)\}=0.
$$

In terms of $A,B$,

$$
a=A+\lambda C+O(\lambda^2),
\qquad
b=B+\lambda C+O(\lambda^2),
$$

where

$$
C=\frac{1}{2}p(16p^2-s^2)
=\frac{1}{2}AB(A+B).
$$

Substituting the first-order charges into canonical variables gives

$$
q_{+,n}^{(\lambda)}
=A^n+\lambda\frac{n-1}{2}A^nB^2+O(\lambda^2),
$$

and

$$
q_{-,n}^{(\lambda)}
=B^n+\lambda\frac{n-1}{2}A^2B^n+O(\lambda^2).
$$

# First-Order Commutativity

Using the canonical brackets, the first-order bracket corrections are total derivatives:

$$
\{Q_{+,m}^{(1)},Q_{+,n}^{(0)}\}
+\{Q_{+,m}^{(0)},Q_{+,n}^{(1)}\}
=mn(n-1)\int dx\,\partial_x(A^{m+n-2}B^2),
$$

$$
\{Q_{-,m}^{(1)},Q_{-,n}^{(0)}\}
+\{Q_{-,m}^{(0)},Q_{-,n}^{(1)}\}
=-mn(n-1)\int dx\,\partial_x(A^2B^{m+n-2}),
$$

and

$$
\{Q_{+,m}^{(0)},Q_{-,n}^{(1)}\}
+\{Q_{+,m}^{(1)},Q_{-,n}^{(0)}\}
=2(n-1)\int dx\,\partial_x(A^mB^n).
$$

Therefore

$$
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}
=O(\lambda^2)
$$

under periodic boundary conditions or sufficiently fast falloff.

# Exact Hamiltonian Density

The canonical Hamiltonian density is

$$
h_\lambda(A,B)
=p\dot\phi-L_\lambda
=\frac{1-\sqrt{
\left(1-\frac{\lambda}{2}(A+B)^2\right)
\left(1-\frac{\lambda}{2}(A-B)^2\right)
}}{2\lambda}.
$$

It expands as

$$
h_\lambda
=\frac{A^2+B^2}{4}
+\frac{\lambda}{4}A^2B^2
+\frac{\lambda^2}{8}A^2B^2(A^2+B^2)
+O(\lambda^3).
$$

The equations of motion become

$$
\partial_t A
=2\partial_x\left(\frac{\partial h_\lambda}{\partial A}\right),
\qquad
\partial_t B
=-2\partial_x\left(\frac{\partial h_\lambda}{\partial B}\right).
$$

This is a two-component hydrodynamic system.

# Riemann Invariants

Define

$$
\Delta=A^2-B^2,
\qquad
\mathcal D=4-4\lambda(A^2+B^2)+\lambda^2\Delta^2.
$$

Then

$$
R_+=\frac{2+\lambda\Delta}{A},
\qquad
R_-=\frac{2-\lambda\Delta}{B}
$$

are Riemann invariants. They obey

$$
\partial_t R_+
=v_+\partial_xR_+,
\qquad
\partial_t R_-
=v_-\partial_xR_-,
$$

where

$$
v_+=\frac{2-\lambda\Delta}{\sqrt{\mathcal D}},
\qquad
v_-=-\frac{2+\lambda\Delta}{\sqrt{\mathcal D}}.
$$

Equivalently, one may use

$$
U=\frac{2}{R_+}
=\frac{2A}{2+\lambda(A^2-B^2)},
\qquad
V=\frac{2}{R_-}
=\frac{2B}{2-\lambda(A^2-B^2)}.
$$

These reduce to $A,B$ at $\lambda=0$.

# All-Order Conserved Densities

A local density $q(A,B;\lambda)$ is conserved if there is a local flux $j(A,B;\lambda)$ such that

$$
\partial_t q=\partial_xj.
$$

Equivalently,

$$
j_A=2q_Ah_{AA}-2q_Bh_{AB},
\qquad
j_B=2q_Ah_{AB}-2q_Bh_{BB},
$$

and the flux integrability condition is

$$
\partial_B(2q_Ah_{AA}-2q_Bh_{AB})
=\partial_A(2q_Ah_{AB}-2q_Bh_{BB}).
$$

At $\lambda=0$, this reduces to

$$
\partial_A\partial_Bq=0,
$$

so the undeformed conserved densities are arbitrary sums of left- and right-moving functions.

For the plus branch with $q_{+,n}^{(0)}=A^n$, the perturbative solution is

$$
q_{+,n}^{(\lambda)}
=A^n
+\lambda\frac{n-1}{2}A^nB^2
+\lambda^2\left[
\frac{n-1}{4}A^{n+2}B^2
+\frac{n(n-1)}{8}A^nB^4
\right]
+O(\lambda^3).
$$

At the next orders,

$$
q_{+,n}^{(3)}
=\frac{n(n-1)(n+1)}{48}A^nB^6
+\frac{n^2-1}{8}A^{n+2}B^4
+\frac{n-1}{8}A^{n+4}B^2,
$$

and

$$
q_{+,n}^{(4)}
=\frac{(n-1)n(n+1)(n+2)}{384}A^nB^8
+\frac{(n-1)(n+1)(n+2)}{32}A^{n+2}B^6
+\frac{3(n-1)(n+2)}{32}A^{n+4}B^4
+\frac{n-1}{16}A^{n+6}B^2.
$$

The minus branch is obtained by exchanging $A\leftrightarrow B$.

Set

$$
x=\frac{\lambda A^2}{2},
\qquad
y=\frac{\lambda B^2}{2}.
$$

The coefficient pattern is captured by the closed candidate

$$
q_{+,n}^{(\lambda)}
=A^n\left[
1+(n-1)y\,F_4(1,n;n,2;x,y)
\right],
$$

where $F_4$ is Appell's hypergeometric function,

$$
F_4(a,b;c,d;x,y)
=\sum_{k,l\ge0}
\frac{(a)_{k+l}(b)_{k+l}}{(c)_k(d)_l\,k!\,l!}
x^ky^l.
$$

Equivalently,

$$
q_{+,n}^{(\lambda)}
=A^n\left[
1+\sum_{l\ge1}\sum_{k\ge0}
c_{k,l}^{(n)}x^ky^l
\right],
$$

with

$$
c_{k,l}^{(n)}
=(n-1)\frac{(n+k)_{l-1}}{l!}
\binom{k+l-1}{k}.
$$

Substituting the Appell-$F_4$ expression into the flux integrability equation reduces it to the standard Appell-$F_4$ differential equations with parameters

$$
a=1,
\qquad
b=n,
\qquad
c=n,
\qquad
d=2.
$$

Thus it is an all-order conserved density in the local convergence domain, and by analytic continuation on a fixed local branch.

# All-Order Involutivity

Let

$$
Q=\int dx\,q(A,B)
$$

be one of the Appell-$F_4$ charges. Its Hamiltonian flow is

$$
\partial_\tau A=2\partial_xq_A,
\qquad
\partial_\tau B=-2\partial_xq_B.
$$

This flow is diagonal in the same Riemann invariants $R_\pm$ precisely when

$$
4AB\lambda[-2+\lambda(A^2+B^2)](q_{AA}+q_{BB})
+2\left[
4-4\lambda(A^2+B^2)
+\lambda^2(A^4+6A^2B^2+B^4)
\right]q_{AB}=0.
$$

The Appell-$F_4$ densities satisfy this equation. Therefore every charge in this family generates a diagonal flow

$$
\partial_\tau R_+
=w_+(R_+,R_-)\partial_xR_+,
\qquad
\partial_\tau R_-
=w_-(R_+,R_-)\partial_xR_-.
$$

For a two-component diagonal hydrodynamic system, the Tsarev commuting-flow condition reduces to

$$
\frac{\partial_{R_-}w_+}{w_- - w_+}
=
\frac{\partial_{R_-}v_+}{v_- - v_+},
\qquad
\frac{\partial_{R_+}w_-}{w_+ - w_-}
=
\frac{\partial_{R_+}v_-}{v_+ - v_-}.
$$

These equations are equivalent to the conservation-law equation for $q$. Hence the Appell-$F_4$ charges generate mutually commuting diagonal flows.

Equivalently,

$$
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}
=\int dx\,\partial_xP_{\sigma\rho,mn}^{(\lambda)}.
$$

Under periodic boundary conditions or boundary conditions that kill the flux term,

$$
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}=0.
$$

The explicit bracket checks through $O(\lambda^3)$ are finite-order tests of this structural argument.

# Domain and Boundary Assumptions

The exact canonical map uses the local branch

$$
\dot\phi
=4p\sqrt{\frac{1-\frac{\lambda}{2}\phi'^2}{1-8\lambda p^2}},
$$

so the real Darboux patch requires

$$
1-\frac{\lambda}{2}\phi'^2>0,
\qquad
1-8\lambda p^2>0,
$$

for real $\lambda>0$. The Appell-$F_4$ expression also has a convergence domain in $(x,y)$, but the local conserved densities can be analytically continued as long as the same branch is kept.

The commutativity of the integrated charges assumes periodic boundary conditions, sufficiently fast falloff, or boundary conditions that cancel the total derivative terms. With physical boundaries, one must include boundary symplectic terms and possible boundary charge improvements.
