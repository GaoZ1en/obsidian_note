# Practical pipeline: CPS canonical quantization to loop corrections

Date: 2026-07-09

## 0. Direct verdict

This note is the operational pipeline for the fixed-background scalar examples in this directory. It is correct under the following precise conditions:

1. The background, bulk and boundary actions, theory-defining boundary condition $\mathcal B$, and allowed field space define a closed free covariant phase space.
2. The free modes are normalized by the CPS/KG symplectic form.
3. A positive-energy mode split has been chosen, so the vacuum is defined by annihilation operators associated with those modes.
4. The interaction is treated perturbatively around the same free vacuum.
5. Coincident propagators and loop integrals are regulated, and all bulk- and boundary-local counterterms compatible with $\mathcal B$ are included before taking the regulator away.
6. Gauge constraints, BV-BRST, dynamical gravity, dynamical boundaries, and edge modes are outside the present scope.

Throughout this pipeline and its worked scalar examples,

$$\begin{align}
\hbar=1.
\end{align}$$

Loop order is recorded by graph topology, $L=I-V+1$ for a connected graph, while coupling order is recorded independently by the vertex content. Explicit powers of $\hbar$ in the pAQFT companion notes are only a formal loop-counting device and are set to one in concrete calculations.

The boundary condition $\mathcal B$ is part of the definition of the theory, not a late prescription. Together with the boundary action, it fixes the variational problem, allowed CPS tangent vectors, mode spectrum, state space, and boundary-compatible propagators. A finite boundary term that changes $\mathcal B$ defines a different theory.

Under these conditions the practical workflow is

$$\begin{align}
\boxed{ (M,g,S,\mathcal B) \to \text{free CPS and boundary-compatible modes} \to \text{CCR and state} \to G_F^{\mathcal B}\text{ or }G_E^{\mathcal B} \to \text{Wick diagrams} \to \text{renormalized correlators}
}.
\end{align}$$

For the present scalar examples, the calculation is performed with the CPS-normalized propagator and ordinary Wick theorem. The pAQFT/Bogoliubov-map notes are a consistency backend for causal support, the off-shell/on-shell distinction, locality of counterterms, split independence, and Ward identities; they are not a second operational pipeline.

## 1. Free CPS data

Start from a quadratic scalar action on a fixed background, supplemented by the boundary action and boundary condition $\mathcal B$ that define the variational problem,

$$\begin{align}
S_0[\phi] = -\frac12 \int_M d^{d+1}x\sqrt{-g} \left( \nabla_\mu\phi\nabla^\mu\phi + m^2\phi^2 \right).
\end{align}$$

The first variation has the form

$$\begin{align}
\delta S_0 = \int_M d^{d+1}x\sqrt{-g}\, E_\phi\,\delta\phi + \int_{\partial M}\theta(\phi;\delta\phi).
\end{align}$$

For a Cauchy slice $\Sigma$, the free CPS symplectic form is

$$\begin{align}
\Omega_0(\delta_1\phi,\delta_2\phi) = \int_\Sigma d\Sigma_\mu \left( \delta_1\phi\,\nabla^\mu\delta_2\phi - \delta_2\phi\,\nabla^\mu\delta_1\phi \right),
\end{align}$$

up to the sign convention used in the local note. The important point is that the same convention must be used in all later mode normalizations and commutators.

The free equation is

$$\begin{align}
P\phi=0, \qquad P=-\nabla^2+m^2
\end{align}$$

in Euclidean signature, or the corresponding hyperbolic operator in Lorentzian signature.

On the boundary-compatible solution space, the inverse of the free CPS form is the causal Green kernel

$$\begin{align}
E^{\mathcal B}=G_R^{\mathcal B}-G_A^{\mathcal B}.
\end{align}$$

In a mode basis this inverse is not an abstract object: it is the antisymmetric part of the positive- and negative-frequency completeness relation.

## 2. Mode normalization

Choose a complete set of positive-energy solutions $u_N(x)$. The CPS/KG normalization is

$$\begin{align}
\Omega_0[u_N,u_M^*]=-i\delta_{NM}, \qquad \Omega_0[u_N,u_M]=0, \qquad \Omega_0[u_N^*,u_M^*]=0.
\end{align}$$

Then expand the real field as

$$\begin{align}
\hat\phi(x) = \sum_N \left( \hat a_N u_N(x) + \hat a_N^\dagger u_N^*(x) \right).
\end{align}$$

Canonical quantization means

$$\begin{align}
[\hat a_N,\hat a_M^\dagger]=\delta_{NM}, \qquad [\hat a_N,\hat a_M]=0, \qquad [\hat a_N^\dagger,\hat a_M^\dagger]=0.
\end{align}$$

The vacuum is defined by

$$\begin{align}
\hat a_N|0\rangle=0 \qquad \text{for every positive-energy mode }N.
\end{align}$$

This is the concrete version of free CPS quantization used in the existing global AdS notes.

## 3. Causal kernel and Feynman propagator

The positive-frequency two-point function is

$$\begin{align}
W^+(x,y) = \langle0|\hat\phi(x)\hat\phi(y)|0\rangle = \sum_N u_N(x)u_N^*(y).
\end{align}$$

The commutator kernel is

$$\begin{align}
[\hat\phi(x),\hat\phi(y)] = \sum_N \left[ u_N(x)u_N^*(y) - u_N^*(x)u_N(y) \right] = iE(x,y),
\end{align}$$

with the convention $\hbar=1$ fixed above.

The kernels have different jobs and must not be interchanged:

1. $G_R^{\mathcal B}$ or $G_A^{\mathcal B}$ solves a causal classical response problem.
2. $E^{\mathcal B}=G_R^{\mathcal B}-G_A^{\mathcal B}$ fixes the Peierls bracket and commutator.
3. $G_F^{\mathcal B}$ is the Lorentzian time-ordered contraction after a state or positive-frequency split is chosen.
4. $G_E^{\mathcal B}$ solves the corresponding Euclidean elliptic boundary-value problem when an admissible continuation exists.

The Lorentzian Feynman propagator is

$$\begin{align}
G_F(x,y) = \langle0|T\hat\phi(x)\hat\phi(y)|0\rangle = \theta(t_x-t_y)W^+(x,y) + \theta(t_y-t_x)W^+(y,x).
\end{align}$$

In global AdS this is a normal-mode sum. In Euclidean AdS one usually works with the analytically continued Green function $G_E$. The example below uses standard quantization $\mathcal B_{\rm std}$, $\nu>0$, interior regularity, and normalizable falloff $e^{-\Delta\rho}$ with $\Delta=1+\nu$. For a scalar in $\mathbb H^3$,

$$\begin{align}
m^2=\Delta(\Delta-2)=\nu^2-1, \qquad \Delta=1+\nu,
\end{align}$$

and

$$\begin{align}
G_\nu(\rho) = \frac{e^{-\nu\rho}}{4\pi\sinh\rho}.
\end{align}$$

In embedding variables,

$$\begin{align}
\zeta=-X\cdot Y=\cosh\rho,
\end{align}$$

so

$$\begin{align}
G_\nu(\zeta) = \frac{1}{4\pi} \frac{\exp[-\nu\,\operatorname{arccosh}\zeta]} {\sqrt{\zeta^2-1}}.
\end{align}$$

This boundary-compatible propagator, denoted $G_\nu$ below, is the basic contraction in perturbation theory. Alternative or mixed quantization requires replacing it by the Green kernel for that theory-defining boundary condition before repeating the loop calculation.

## 4. Add interactions and counterterms

For a scalar example, write

$$\begin{align}
S=S_0+S_{\rm int}+S_{\rm ct}.
\end{align}$$

When a boundary is present, separate

$$\begin{align}
S_{\rm ct}=S_{{\rm ct},{\rm bulk}}+S_{{\rm ct},\partial}^{\mathcal B}.
\end{align}$$

Only boundary-local counterterms compatible with the fixed variational problem are allowed within the same theory.

In Lorentzian signature a standard convention is

$$\begin{align}
S_{\rm int} = - \int d^{d+1}x\sqrt{-g} \left( \frac{\kappa}{3!}\phi^3 + \frac{\lambda}{4!}\phi^4 \right).
\end{align}$$

In Euclidean signature,

$$\begin{align}
S_E^{\rm int} = \int d^{d+1}x\sqrt g \left( \frac{\kappa}{3!}\phi^3 + \frac{\lambda}{4!}\phi^4 \right).
\end{align}$$

The worked rules below assume potential interactions. For derivative interactions, first recompute the symplectic potential and canonical momenta, then include derivative vertices and any required contact or measure terms; the $\phi^3/\phi^4$ vertex rules cannot be copied unchanged.

The local counterterm action includes the terms allowed by the symmetries and by the chosen truncation, for example

$$\begin{align}
S_E^{\rm ct} = \int d^{d+1}x\sqrt g \left[ J_{\rm ct}\phi + \frac{\delta m^2}{2}\phi^2 + \frac{\delta Z}{2}\nabla_\mu\phi\nabla^\mu\phi + \frac{\delta\lambda}{4!}\phi^4 \right].
\end{align}$$

The linear counterterm $J_{\rm ct}\phi$ is needed for a $\phi^3$ theory if the renormalization condition is

$$\begin{align}
\langle\phi\rangle_{\rm ren}=0.
\end{align}$$

The mass and wavefunction counterterms are fixed by the chosen renormalization conditions for the two-point function.

## 5. Correlators by Wick theorem

The practical perturbative definition of the interacting Euclidean correlator is

$$\begin{align}
\langle\phi(X_1)\cdots\phi(X_n)\rangle_{\rm int} = \frac{ \langle \phi(X_1)\cdots\phi(X_n) e^{-S_E^{\rm int}-S_E^{\rm ct}} \rangle_0
}{ \langle
e^{-S_E^{\rm int}-S_E^{\rm ct}}
\rangle_0
}_{\rm ren}.
\end{align}$$

In Lorentzian signature replace $e^{-S_E}$ by $e^{iS}$ and use time ordering:

$$\begin{align}
\langle T\phi(x_1)\cdots\phi(x_n)\rangle_{\rm int} = \frac{ \langle0| T\phi(x_1)\cdots\phi(x_n) e^{i(S_{\rm int}+S_{\rm ct})}
|0\rangle
}{ \langle0|T e^{i(S_{\rm int}+S_{\rm ct})}|0\rangle
}_{\rm ren}.
\end{align}$$

The denominator removes vacuum bubbles. Every numerator term is evaluated by the free-field Wick theorem. Each contracted pair gives the free two-point function:

$$\begin{align}
\langle0|T\phi(x)\phi(y)|0\rangle = G_F(x,y)
\end{align}$$

in Lorentzian signature, or $G_E(X,Y)$ in Euclidean signature.

Thus:

1. external insertions are the fields whose correlator is being computed;
2. each internal line is the free CPS-normalized propagator;
3. each vertex is integrated with the background measure;
4. loops are ordinary Wick contractions;
5. coincident singularities are absorbed by local counterterms.

## 6. Diagram rules in position space

For Euclidean scalar theory:

1. A $\phi^3$ vertex contributes

$$\begin{align}
-\kappa\int d^{d+1}Z\sqrt g
\end{align}$$

   after including the expansion of $e^{-S_E^{\rm int}}$ and the $1/3!$ combinatorics.
2. A $\phi^4$ vertex contributes

$$\begin{align}
-\lambda\int d^{d+1}Z\sqrt g
\end{align}$$

   with the same convention.
3. Each line between $X$ and $Y$ contributes $G_E(X,Y)$.
4. Divide by graph automorphism factors, or equivalently derive the coefficient by expanding the exponential and counting Wick contractions.

For Lorentzian signature, replace the Euclidean signs by the corresponding $i$-weighted Feynman rules. The Euclidean route is often cleaner in global AdS examples because the propagator is a function of the invariant geodesic distance.

## 7. Example 1: $\phi^4$ tadpole

For

$$\begin{align}
S_E^{\rm int} = \int d^3X\sqrt g\, \frac{\lambda}{4!}\phi^4,
\end{align}$$

the first correction to the two-point function is

$$\begin{align}
G_{\lambda}^{(1)}(X,Y) = - \frac{\lambda}{4!} \int d^3Z\sqrt g\, \langle\phi(X)\phi(Y)\phi(Z)^4\rangle_{0,\rm conn}.
\end{align}$$

Wick theorem gives the connected factor $12$, hence

$$\begin{align}
G_{\lambda}^{(1)}(X,Y) = - \frac{\lambda}{2} \int d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Z)G_\nu(Z,Y).
\end{align}$$

After regulating the coincident propagator and adding $\delta m^2$,

$$\begin{align}
\delta m_{\rm eff}^2 = \frac{\lambda}{2}G_{\nu,\rm ren}(Z,Z)+\delta m_{\rm fin}^2.
\end{align}$$

The correction is

$$\begin{align}
G_{\nu,\rm tad}^{(1)}(X,Y) = - \delta m_{\rm eff}^2 \int d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y).
\end{align}$$

Using

$$\begin{align}
\int d^3Z\sqrt g\, G_\nu(X,Z)G_\nu(Z,Y) = - \frac{\partial G_\nu(X,Y)}{\partial m^2},
\end{align}$$

and $m^2=\nu^2-1$, one gets

$$\begin{align}
G_{\nu,\rm tad}^{(1)}(X,Y) = - \delta m_{\rm eff}^2 \frac{\operatorname{arccosh}\zeta}{2\nu} G_\nu(\zeta).
\end{align}$$

This is a local mass renormalization. Its finite part is fixed by the definition of the renormalized theory. If the bare mass is held fixed, it shifts

$$\begin{align}
\Delta=1+\nu \quad\longrightarrow\quad \Delta_{\rm eff} = 1+\nu+\frac{\delta m_{\rm eff}^2}{2\nu} +O(\lambda^2).
\end{align}$$

If instead the theory is defined at fixed physical $\Delta$ and fixed $\mathcal B_{\rm std}$, choose the finite mass counterterm so that $\delta m_{\rm eff}^2=0$ at this order. In that scheme the tadpole fixes the counterterm rather than changing the boundary falloff. These two renormalization conditions are alternative descriptions and must not be imposed simultaneously.

## 8. Example 2: $\phi^3$ bubble

For

$$\begin{align}
S_E^{\rm int} = \int d^3X\sqrt g\, \frac{\kappa}{3!}\phi^3,
\end{align}$$

first impose the one-point renormalization condition

$$\begin{align}
\langle\phi(X)\rangle_{\rm ren}=0.
\end{align}$$

The connected bubble contribution to the two-point function is

$$\begin{align}
G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int d^3Z\sqrt g \int d^3W\sqrt g\, G_\nu(X,Z)G_\nu(Z,W)^2G_\nu(W,Y).
\end{align}$$

On $\mathbb H^3$, introduce the harmonic functions

$$\begin{align}
\Omega_p(\rho) = \frac{p\sin(p\rho)}{2\pi^2\sinh\rho}, \qquad p\ge0.
\end{align}$$

They give the spectral representation

$$\begin{align}
G_\nu(\rho) = \int_0^\infty dp\, \frac{\Omega_p(\rho)}{p^2+\nu^2}.
\end{align}$$

The squared propagator has the expansion

$$\begin{align}
G_\nu(\rho)^2 = \int_0^\infty dp\, \Omega_p(\rho)b_\nu(p),
\end{align}$$

with

$$\begin{align}
b_\nu(p) = \frac{\operatorname{Im}\psi\!\left(\nu+\frac12+\frac{i p}{2}\right)} {4\pi p}.
\end{align}$$

Therefore

$$\begin{align}
\boxed{ G_{\nu,\rm bubble}^{(1)}(X,Y) = \frac{\kappa^2}{2} \int_0^\infty dp\, \Omega_p(\zeta) \frac{b_\nu(p)}{(p^2+\nu^2)^2}
}.
\end{align}$$

Unlike the $\phi^4$ tadpole, this is a genuinely nonlocal one-loop self-energy. In spectral language,

$$\begin{align}
\Sigma_{\rm bubble}(p) = \frac{\kappa^2}{2}b_\nu(p).
\end{align}$$

Local counterterms modify the numerator by polynomial terms in $p^2$:

$$\begin{align}
\frac{\kappa^2}{2}b_\nu(p) \quad\longrightarrow\quad \frac{\kappa^2}{2}b_\nu(p) - \delta m^2 - \delta Z(p^2+1).
\end{align}$$

The non-polynomial digamma dependence cannot be removed by local counterterms.

## 9. What embedding variables do

Embedding variables do not change the physics. They organize the answer by isometry invariants.

For two-point functions in $\mathbb H^3$, every invariant answer is a function of

$$\begin{align}
\zeta=-X\cdot Y=\cosh\rho.
\end{align}$$

Thus

$$\begin{align}
G_\nu(X,Y)=G_\nu(\zeta).
\end{align}$$

For tadpoles, this immediately reduces the answer to a derivative of $G_\nu(\zeta)$. For bubbles, harmonic analysis reduces the double bulk integral to a one-dimensional spectral integral. For four-point functions, the answer depends on cross-ratios, so a single $\zeta$ no longer suffices.

## 10. Practical checklist for a new calculation

For each new perturbative example, use this order:

1. Specify $(M,g,S_0,S_{\rm int},\mathcal B)$, the boundary action, and the allowed field space.
2. State the renormalization conditions, including whether the bare mass or the physical $\Delta$ is held fixed.
3. Verify the variational principle and symplectic-flux condition, then compute the free CPS form $\Omega_0^{\mathcal B}$; for derivative interactions, also record the interaction correction to the symplectic potential.
4. Solve the boundary-compatible free modes and normalize them by $\Omega_0^{\mathcal B}$.
5. Choose the state or positive-frequency split and quantize the oscillator coefficients with $\hbar=1$.
6. Build $W^+$ and the required $G_F^{\mathcal B}$ or $G_E^{\mathcal B}$; keep $G_R^{\mathcal B}$ for causal response calculations.
7. Expand the interacting correlator and use Wick theorem to convert every term into propagator integrals.
8. Determine coupling order, loop number, and symmetry factors separately.
9. Regulate coincident propagators and loop integrals.
10. Add the bulk- and boundary-local counterterms compatible with $\mathcal B$.
11. Impose the stated mass, residue, one-point, and composite-operator normalization conditions.
12. Take an AdS boundary limit only after deciding whether the falloff uses fixed $\Delta$ or the renormalized $\Delta_R$.
13. Rewrite the result in embedding or spectral variables when the background symmetry makes this useful.

## 11. pAQFT consistency backend

The pAQFT object

$$\begin{align}
R_V(F)
\end{align}$$

is a rigorous consistency definition of interacting observables. It is not a second computational pipeline here: its perturbative expansion must reproduce the CPS-normalized Wick calculation above. Its useful checks are:

1. the formal zero-loop part is the classical retarded tree solution;
2. loop corrections come from Wick contractions in the time-ordered expansion;
3. counterterms are local ambiguities in defining composite products at coincident points;
4. moving a boundary-compatible quadratic term between $S_0$ and $S_{\rm int}$ does not change renormalized predictions after matching renormalization conditions;
5. Ward identities and anomalies live in the renormalized current layer.

For the present calculations one can work directly with

$$\begin{align}
\frac{ \langle0|T\,\phi(x_1)\cdots\phi(x_n)
e^{i(S_{\rm int}+S_{\rm ct})}|0\rangle
}{ \langle0|T e^{i(S_{\rm int}+S_{\rm ct})}|0\rangle
}_{\rm ren},
\end{align}$$

provided the propagator is built from the CPS-normalized free modes, obeys $\mathcal B$, and the local products have been renormalized with the stated conditions.

## 12. Verification status

Verified:

1. The free-mode quantization step matches the existing scalar CPS quantization convention:

$$\begin{align}
\Omega_0=i\sum_N\delta a_N^\dagger\wedge\delta a_N, \qquad [a_N,a_M^\dagger]=\delta_{NM}.
\end{align}$$

2. The $\phi^4$ tadpole formula matches the dedicated embedding-space note.
3. The $\phi^3$ bubble formula matches the dedicated embedding-space note.
4. The bubble spectral density $b_\nu(p)$ has been checked separately by Mathematica against the $G_\nu(\rho)^2$ reconstruction.
5. Mathematica checked the one-loop identities $\nu_R=\nu+\delta m_{\rm eff}^2/(2\nu)$, $-\partial_{m^2}G_\nu=\rho G_\nu/(2\nu)$, and the first-order shifted boundary falloff used by the companion notes; all residuals vanish for $\nu>0$.

Assumptions:

1. The AdS radius is $L=1$.
2. The scalar is standard quantized and has $\nu>0$.
3. Gauge fields, BV-BRST, dynamical gravity, and dynamical boundary modes are outside this note.
4. The displayed AdS propagator uses standard quantization; other scalar boundary conditions require their own boundary-compatible kernel.

Not verified:

1. No new loop integral beyond the displayed tadpole and bubble reductions was evaluated in this note.
2. No explicit finite normal-mode cutoff computation was performed.
3. No four-point loop correction was computed here.
