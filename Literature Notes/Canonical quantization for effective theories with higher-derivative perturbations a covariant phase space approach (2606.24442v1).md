---
paper id: 2606.24442v1
title: "Canonical quantization for effective theories with higher-derivative perturbations: a covariant phase space approach"
authors: [Jie-qiang Wu, Jinan Zhao]
publication date: 2026-06-23T11:22
abstract: "The standard approach to canonical quantization encounters difficulties in dealing with higher-derivative perturbations that alter the kinetic structure of unperturbed theories. We show that the covariant phase space formalism provides a natural and technically efficient way to circumvent this obstruction. We illustrate the method with an exactly solvable model: a two-dimensional non-relativistic charged particle moving in a magnetic field and a harmonic confining potential, with its kinetic energy viewed as a perturbation. We quantize this model with covariant phase space formalism by constructing the solution perturbatively. We then calculate the energy spectrum and the unequal-time commutators of this system, and obtain the results that agree with the expansion of the exact theory. The procedure developed here is intended to serve as a systematic framework for the canonical quantization of more complex theories with higher-derivative perturbations."
comments: ""
pdf: "[[Attachments/Assets/Canonical quantization for effective theories with higher-derivative perturbations a covariant phase space approach (2606.24442v1).pdf]]"
url: https://arxiv.org/abs/2606.24442v1
summary: "A toy-model demonstration that covariant phase space can define a perturbative canonical quantization scheme directly on the slow solution space when higher-derivative or kinetic perturbations change the constraint structure."
tags: []
---

# definition of the problem

## effective higher-derivative perturbation

the paper studies perturbative canonical quantization for an effective theory whose Lagrangian has the schematic form

$$\begin{align}
L_{\lambda} & =L_{0}+\lambda L_{1}+\lambda^{2}L_{2}+\cdots ,
\end{align}$$

where the perturbing terms modify the kinetic structure of the theory. in field theory language this is the situation in which higher-derivative operators are treated as effective corrections below a cutoff. the point is not simply that the equations of motion receive corrections. the point is that the perturbation can change the order of the equations of motion, the Legendre map, and hence the constraint structure.

the paper uses a finite-dimensional model as an exactly solvable benchmark, but the conceptual target is broader:

- start from a theory whose low-energy sector is understood.
- add a small kinetic or higher-derivative correction.
- avoid treating the full higher-derivative theory as a new unconstrained phase space with extra high-energy modes.
- construct the quantum theory perturbatively on the branch of solutions continuously connected to the original theory.

the central assumption is that gauge redundancies are absent. in this setting the covariant phase space symplectic form is non-degenerate on the solution space, so its inverse directly defines the quantum commutators. extensions to first-class constraints and gauge symmetries are explicitly left for future work.

## slow branch and fast branch

when a higher-derivative or kinetic perturbation raises the differential order of the equations of motion, the exact solution space for $\lambda>0$ contains more integration constants than the $\lambda=0$ solution space. the extra modes usually have frequencies or masses that scale like inverse powers of $\lambda$. in the toy model the two exact frequencies are

$$\begin{align}
f_{1} & =\frac{\sqrt{1+4\lambda\omega}-1}{2\lambda},\\
f_{2} & =\frac{\sqrt{1+4\lambda\omega}+1}{2\lambda}.
\end{align}$$

as $\lambda\to 0$,

$$\begin{align}
f_{1} & =\omega(1-\lambda\omega+2\lambda^{2}\omega^{2})+O(\lambda^{3}),\\
f_{2} & \sim \lambda^{-1}.
\end{align}$$

the slow branch is analytic in $\lambda$ and continuously connected to the $\lambda=0$ dynamics. the fast branch is non-analytic at $\lambda=0$ and is interpreted as lying outside the low-energy effective description.

therefore the perturbative problem is not to quantize the whole $\lambda>0$ phase space and then expand every object. the problem is to construct the quantum mechanics of the slow branch as an effective phase space.

# standard canonical obstruction

## unperturbed constrained theory

the benchmark Lagrangian is

$$\begin{align}
L(x,y,\dot{x},\dot{y}) & = -\frac{\omega}{2}(x^{2}+y^{2}) -\frac{1}{2}(x\dot{y}-y\dot{x}) +\frac{\lambda}{2}(\dot{x}^{2}+\dot{y}^{2}),
\end{align}$$

with $\omega>0$ and $\lambda\geq 0$. the $\lambda$ term is the perturbation. in the magnetic-particle interpretation it is the kinetic energy, while the first-order magnetic term dominates in the strong-field regime.

the canonical momenta are

$$\begin{align}
\pi_{x} & =\frac{1}{2}y+\lambda\dot{x},\\
\pi_{y} & =-\frac{1}{2}x+\lambda\dot{y}.
\end{align}$$

at $\lambda=0$ these equations do not solve for $\dot{x}$ and $\dot{y}$. instead they impose the two primary second-class constraints

$$\begin{align}
\chi_{1} & \equiv \pi_{x}-\frac{1}{2}y\approx 0,\\
\chi_{2} & \equiv \pi_{y}+\frac{1}{2}x\approx 0.
\end{align}$$

their Poisson bracket is non-degenerate,

$$\begin{align}
[\chi_{1},\chi_{2}]_{P} & =-1,
\end{align}$$

so the $\lambda=0$ theory is a two-dimensional reduced phase space. the basic reduced bracket is

$$\begin{align}
[x,y]_{D} & =1,
\end{align}$$

and quantization gives

$$\begin{align}
[x_{0},y_{0}] & =i.
\end{align}$$

the unperturbed equations of motion are first order as a system,

$$\begin{align}
-\dot{y}_{0}-\omega x_{0} & =0,\\
\dot{x}_{0}-\omega y_{0} & =0,
\end{align}$$

or equivalently

$$\begin{align}
\ddot{x}_{0}+\omega^{2}x_{0} & =0.
\end{align}$$

with

$$\begin{align}
x_{0}(t) & =\frac{1}{\sqrt{2}}(ae^{-i\omega t}+a^{\dagger}e^{i\omega t}),\\
y_{0}(t) & =-\frac{i}{\sqrt{2}}(ae^{-i\omega t}-a^{\dagger}e^{i\omega t}),
\end{align}$$

the commutator $[a,a^{\dagger}]=1$ reproduces the reduced bracket, and the Hamiltonian is

$$\begin{align}
H_{0} & =\omega\left(a^{\dagger}a+\frac{1}{2}\right).
\end{align}$$

## perturbed exact theory

for $\lambda>0$ the Legendre map is invertible:

$$\begin{align}
\dot{x} & =\frac{1}{\lambda}\left(\pi_{x}-\frac{1}{2}y\right),\\
\dot{y} & =\frac{1}{\lambda}\left(\pi_{y}+\frac{1}{2}x\right).
\end{align}$$

there are no constraints. the exact Hamiltonian is

$$\begin{align}
H & = \frac{\omega}{2}(x^{2}+y^{2}) +\frac{1}{2\lambda}\left[ \left(\pi_{x}-\frac{1}{2}y\right)^{2} +\left(\pi_{y}+\frac{1}{2}x\right)^{2} \right].
\end{align}$$

this is a four-dimensional phase space with canonical commutators

$$\begin{align}
[x,\pi_{x}] & =i, & [y,\pi_{y}] & =i,\\
[x,y] & =0, & [\pi_{x},\pi_{y}] & =0.
\end{align}$$

the equations of motion are

$$\begin{align}
-\dot{y}-\omega x-\lambda\ddot{x} & =0,\\
\dot{x}-\omega y-\lambda\ddot{y} & =0.
\end{align}$$

eliminating $y$ gives a fourth-order equation for $x$,

$$\begin{align}
\lambda^{2}x^{(4)}+(1+2\lambda\omega)\ddot{x}+\omega^{2}x & =0.
\end{align}$$

therefore the full $\lambda>0$ theory has two oscillator modes. the Hamiltonian diagonalizes as

$$\begin{align}
H & =f_{1}\left(a_{1}^{\dagger}a_{1}+\frac{1}{2}\right) +f_{2}\left(a_{2}^{\dagger}a_{2}+\frac{1}{2}\right).
\end{align}$$

the $a_{1}$ mode is the low-energy slow mode. the $a_{2}$ mode is the high-energy fast mode with excitation energy of order $\lambda^{-1}$.

## why ordinary perturbation theory does not start

there are two distinct obstructions to treating the $\lambda$ term by ordinary canonical perturbation theory.

first, the dimension and bracket structure of the phase space jump:

$$\begin{align}
\lambda=0 &: \quad \text{two-dimensional reduced phase space with Dirac brackets},\\
\lambda>0 &: \quad \text{four-dimensional unconstrained canonical phase space}.
\end{align}$$

there is no single fixed canonical algebra on which one can place a perturbative interaction.

second, the off-shell Hamiltonian has a pole at $\lambda=0$:

$$\begin{align}
H_{\lambda>0} & \supset \frac{1}{2\lambda}\left[ \left(\pi_{x}-\frac{1}{2}y\right)^{2} +\left(\pi_{y}+\frac{1}{2}x\right)^{2} \right].
\end{align}$$

so the standard split $H=H_{0}+\lambda V+\cdots$ is not available in the off-shell canonical variables of the $\lambda>0$ theory.

the exact theory still has a smooth low-energy limit after discarding the fast sector. the obstruction is not the absence of a low-energy expansion. the obstruction is that the usual Legendre-transform-first canonical formalism expands the wrong object.

# covariant phase space perturbation scheme

## variational data

the CPS construction begins with the variation of the Lagrangian form,

$$\begin{align}
\delta L_{\lambda} & =E_{i}^{(\lambda)}\delta q^{i}\,dt+d\Theta_{\lambda}.
\end{align}$$

the equations of motion are $E_{i}^{(\lambda)}=0$, and $\Theta_{\lambda}$ is the symplectic potential. the symplectic form is

$$\begin{align}
\Omega_{\lambda} & =\delta\Theta_{\lambda}
\end{align}$$

pulled back to the solution space. for the benchmark model,

$$\begin{align}
\Theta & =-\frac{1}{2}(x\delta y-y\delta x) +\lambda(\dot{x}\delta x+\dot{y}\delta y),\\
\Omega & =-\delta x\wedge\delta y +\lambda(\delta\dot{x}\wedge\delta x+\delta\dot{y}\wedge\delta y).
\end{align}$$

time translation is treated as a Noether flow on configuration space. for $\xi=\partial_{t}$, the Hamiltonian is obtained as the Noether current

$$\begin{align}
H=J_{\xi} & =X_{\xi}\cdot\Theta-\xi\cdot L\\
& =\frac{\omega}{2}(x^{2}+y^{2}) +\frac{\lambda}{2}(\dot{x}^{2}+\dot{y}^{2}).
\end{align}$$

this Hamiltonian is regular at $\lambda=0$ because it is defined from the covariant variational data on the solution space, not from the singular off-shell Legendre transform.

## perturbative solution space

the method then constructs a perturbative embedding of the slow solution space into the full solution space:

$$\begin{align}
I_{\lambda}:\mathcal{S}_{0} & \longrightarrow \mathcal{S}_{\lambda}^{\text{slow}},\\
q^{i}(t;\lambda) & = q_{0}^{i}(t)+\lambda q_{1}^{i}(t)+\lambda^{2}q_{2}^{i}(t)+\cdots .
\end{align}$$

the coefficients $q_{n}^{i}$ are solved order by order by expanding the equations of motion. schematically,

$$\begin{align}
\mathcal{D}_{0}q_{n} & =\text{source}(q_{0},q_{1},\ldots,q_{n-1}),
\end{align}$$

where $\mathcal{D}_{0}$ is the linearized operator inherited from the unperturbed equations. homogeneous pieces correspond to redefinitions of the unperturbed integration constants. in this paper they are fixed so that the final creation-annihilation variables satisfy the standard algebra after quantization.

in the benchmark model the second-order slow solution is

$$\begin{align}
x(t) & = \left(1-\lambda\omega+\frac{5}{2}\lambda^{2}\omega^{2}\right)x_{0}(t) -\lambda\omega^{2}t\,y_{0}(t) +\lambda^{2}\left(3\omega^{3}t\,y_{0}(t)-\frac{1}{2}\omega^{4}t^{2}x_{0}(t)\right) +O(\lambda^{3}),\\
y(t) & = \left(1-\lambda\omega+\frac{5}{2}\lambda^{2}\omega^{2}\right)y_{0}(t) +\lambda\omega^{2}t\,x_{0}(t) +\lambda^{2}\left(-3\omega^{3}t\,x_{0}(t)-\frac{1}{2}\omega^{4}t^{2}y_{0}(t)\right) +O(\lambda^{3}).
\end{align}$$

this expansion is a slow-mode construction. it does not contain the fast mode with frequency $f_{2}\sim\lambda^{-1}$, because that mode is not analytic in $\lambda$ at $\lambda=0$.

the paper also states the finite-time domain of the perturbative solution:

$$\begin{align}
|t| & \ll \frac{1}{\lambda\omega^{2}}.
\end{align}$$

this is the usual secular-time limitation of a frequency-shift expansion written as a polynomial in $\lambda$ and $t$.

## pullback of the symplectic form

the effective symplectic form is not the full $\Omega_{\lambda}$ on the exact $\lambda>0$ phase space. it is the pullback to the slow perturbative solution space:

$$\begin{align}
\Omega_{\text{eff}}(\lambda) & =I_{\lambda}^{*}\Omega_{\lambda}.
\end{align}$$

in the benchmark model, substituting the second-order solution into the CPS symplectic form gives

$$\begin{align}
\Omega_{\text{eff}}(\lambda) & =-\delta x_{0}\wedge\delta y_{0}+O(\lambda^{3})\\
& =-i\,\delta a\wedge\delta a^{\dagger}+O(\lambda^{3}).
\end{align}$$

the important structural point is that the symplectic form is computed after imposing the perturbative equations of motion, not before. this is how the CPS method avoids the $1/\lambda$ pole of the off-shell Hamiltonian and the phase-space dimension jump.

in a more general theory the pullback need not be exactly equal to $\Omega_{0}$ at each order. one should expect

$$\begin{align}
\Omega_{\text{eff}}(\lambda) & =\Omega_{0}+\lambda\Omega_{1}^{\text{eff}} +\lambda^{2}\Omega_{2}^{\text{eff}}+\cdots .
\end{align}$$

if $\Omega_{\text{eff}}$ is non-degenerate, the inverse defines the perturbative Poisson bracket. if desired, one can then look for order-by-order Darboux variables or dressed creation-annihilation variables. the present toy model is especially clean because the chosen slow variables already give

$$\begin{align}
[a,a^{\dagger}] & =1+O(\lambda^{3}).
\end{align}$$

## quantization

after the pullback, quantization is performed by promoting the inverse symplectic form to commutators:

$$\begin{align}
[z^{A},z^{B}] & =i(\Omega_{\text{eff}}^{-1})^{AB}.
\end{align}$$

for the benchmark model this gives

$$\begin{align}
[a,a^{\dagger}] & =i\Omega^{-1}(\delta a,\delta a^{\dagger})=1.
\end{align}$$

the effective Hamiltonian is the pullback of the CPS Hamiltonian:

$$\begin{align}
H_{\text{eff}}(\lambda) & =I_{\lambda}^{*}H_{\lambda}.
\end{align}$$

to second order in the model,

$$\begin{align}
H_{\text{eff}} & =\omega(1-\lambda\omega+2\lambda^{2}\omega^{2}) \left(a^{\dagger}a+\frac{1}{2}\right) +O(\lambda^{3}).
\end{align}$$

therefore the slow-sector spectrum is

$$\begin{align}
E_{n} & =\omega(1-\lambda\omega+2\lambda^{2}\omega^{2}) \left(n+\frac{1}{2}\right) +O(\lambda^{3}).
\end{align}$$

this agrees with the low-energy expansion of the exact two-oscillator theory after the fast oscillator is removed.

## observables and response functions

the method also computes time-dependent observables directly from the perturbative Heisenberg solution. for operators $A(t)$ and $B(t)$, the retarded response is determined by

$$\begin{align}
G_{R}(t_{1},t_{2}) & =-i\theta(t_{1}-t_{2})\langle[A(t_{1}),B(t_{2})]\rangle .
\end{align}$$

the paper checks the method by computing the unequal-time commutators of $x(t)$ and $y(t)$ to $O(\lambda^{2})$. source-derived examples are

$$\begin{align}
[x(t_{1}),x(t_{2})] & = -i(1-2\lambda\omega+6\lambda^{2}\omega^{2}) \sin\!\left[\omega(1-\lambda\omega+2\lambda^{2}\omega^{2})(t_{1}-t_{2})\right] +O(\lambda^{3}),\\
[y(t_{1}),y(t_{2})] & = -i(1-2\lambda\omega+6\lambda^{2}\omega^{2}) \sin\!\left[\omega(1-\lambda\omega+2\lambda^{2}\omega^{2})(t_{1}-t_{2})\right] +O(\lambda^{3}).
\end{align}$$

the mixed commutator is sign-sensitive. using the CPS perturbative calculation printed as Eq. (4.21), one has

$$\begin{align}
[x(t_{1}),y(t_{2})] & = i(1-2\lambda\omega+6\lambda^{2}\omega^{2}) \cos\!\left[\omega(1-\lambda\omega+2\lambda^{2}\omega^{2})(t_{1}-t_{2})\right] +O(\lambda^{3}).
\end{align}$$

however, the exact low-energy benchmark printed as Eq. (3.50) has the opposite sign. this sign should be checked before using the mixed commutator as an input in a sign-sensitive calculation. the method-level claim does not depend on this isolated printed sign, because the energy spectrum and the symplectic pullback are independent checks of the same slow-sector construction.

# section map

## sec. 1

the introduction states the general obstruction and gives the CPS algorithm:

1. vary the Lagrangian and read off $E_{i}$, $\Theta$, $\Omega$, and the Noether Hamiltonian.
2. solve the equations of motion perturbatively around the low-energy branch.
3. pull the symplectic form back to that perturbative solution space.
4. quantize by inverting the pulled-back symplectic form.
5. compute observables from the resulting quantum theory.

this section also positions the paper relative to Basu's earlier CPS perturbation theory. Basu considered a perturbation that deforms the Poisson brackets but does not change the dimension of phase space. this paper targets the harder case where the perturbation changes the kinetic structure and hence the constraint structure.

## sec. 2

the model is introduced. the role of the model is not to represent a realistic field theory, but to isolate the phase-space jump caused by a kinetic perturbation. the kinetic term is first order in derivatives in the Lagrangian, but it raises the equations of motion from first order as a coupled system to second order as a coupled system, which reproduces the structural effect of higher-derivative perturbations.

## sec. 3

the standard canonical quantization is worked out in two separate theories:

- at $\lambda=0$, the theory has second-class constraints and is quantized with Dirac brackets.
- at $\lambda>0$, the theory has no constraints and is quantized on a four-dimensional canonical phase space.

the exact $\lambda>0$ theory is used only as a benchmark. the key conclusion is that the exact theory has a smooth low-energy expansion, but the usual off-shell canonical formalism does not provide the perturbative variables in which to compute it.

## sec. 4

this is the real technical core. the CPS construction gives a regular Hamiltonian, a perturbative slow solution, a pulled-back symplectic form, and a quantum theory whose spectrum and unequal-time commutators match the slow-sector expansion of the exact theory through $O(\lambda^{2})$.

## appendices

appendix A computes the Dirac brackets of the $\lambda=0$ constrained theory.

appendix B checks the exact $\lambda>0$ diagonalization and canonical commutators.

appendix C performs the explicit algebra showing that the pulled-back symplectic form becomes

$$\begin{align}
\Omega & =-\delta x_{0}\wedge\delta y_{0}+O(\lambda^{3}),
\end{align}$$

and that the pulled-back Hamiltonian becomes

$$\begin{align}
H & = \omega(1-\lambda\omega+2\lambda^{2}\omega^{2}) \left(a^{\dagger}a+\frac{1}{2}\right) +O(\lambda^{3}).
\end{align}$$

# checked points

the following checks were done independently in Mathematica for this note.

1. the slow frequency expansion is correct:

$$\begin{align}
\frac{\sqrt{1+4\lambda\omega}-1}{2\lambda} & = \omega-\lambda\omega^{2}+2\lambda^{2}\omega^{3} +O(\lambda^{3}).
\end{align}$$

2. using the perturbative solution (4.14), the unperturbed relations

$$\begin{align}
\dot{x}_{0} & =\omega y_{0},\\
\dot{y}_{0} & =-\omega x_{0},
\end{align}$$

and keeping terms through $O(\lambda^{2})$, the coefficient of $\delta x_{0}\wedge\delta y_{0}$ in

$$\begin{align}
-\delta x\wedge\delta y +\lambda(\delta\dot{x}\wedge\delta x+\delta\dot{y}\wedge\delta y)
\end{align}$$

is $-1$. equivalently,

$$\begin{align}
\Omega_{\text{eff}} & = -\delta x_{0}\wedge\delta y_{0}+O(\lambda^{3}).
\end{align}$$

not independently checked here:

- the full exact canonical diagonalization in appendix B.
- the full unequal-time commutator algebra in sec. 4.4.
- any extension to first-class constraints, gauge symmetries, boundary charges, or field-theory renormalization.

# relation to covariant phase space quantization

the paper gives a concrete perturbative quantization recipe inside CPS:

$$\begin{align}
(L_{\lambda},\Theta_{\lambda},\Omega_{\lambda},H_{\lambda}) \quad\longrightarrow\quad (I_{\lambda}^{*}\Omega_{\lambda},I_{\lambda}^{*}H_{\lambda}) \quad\longrightarrow\quad \text{commutators and spectrum}.
\end{align}$$

this is directly relevant to any project where the CPS formalism is already used to define symplectic normalization and canonical commutators. the new ingredient is the perturbative embedding $I_{\lambda}$ of the low-energy solution space into the corrected solution space.

in the usual CPS quantization of a free field one proceeds as follows:

1. solve the linear equations of motion with chosen boundary conditions.
2. insert the mode expansion into the symplectic form.
3. normalize the modes so that the inverse symplectic form gives the desired oscillator algebra.
4. compute Hamiltonians, charges, correlators, or partition functions.

this paper adds the perturbative version:

1. solve the corrected equations of motion order by order in the effective coupling.
2. express the corrected solution in terms of the original low-energy mode data.
3. pull back the corrected symplectic form and Hamiltonian to that mode data.
4. invert the corrected symplectic form order by order.
5. compute the corrected oscillator algebra, energy spectrum, and response functions.

therefore it is fair to view this paper as a perturbation theory for CPS canonical quantization, not just as a toy-model calculation.

# limitations and possible extensions

## gauge symmetry

the paper assumes no gauge redundancies. for gauge theories and gravity, the CPS form is usually presymplectic, and one must quotient gauge directions or keep boundary degrees of freedom. a direct extension would need to specify:

- the perturbative solution space modulo gauge.
- the treatment of zero modes and residual gauge transformations.
- whether $I_{\lambda}^{*}\Omega_{\lambda}$ is non-degenerate after the quotient.
- whether boundary terms are needed for finiteness and integrability.

this is the main missing ingredient for applying the method to actual gravitational perturbation theory.

## boundary conditions and charges

in field theory the slow branch is not just a local solution space. it is also defined by boundary conditions. if the higher-derivative correction changes falloffs, flux terms, or boundary symplectic structure, then the perturbative embedding must preserve the chosen boundary phase space.

a CPS version of this method for AdS or asymptotic boundaries would need to track

$$\begin{align}
\Omega_{\Sigma,\lambda}^{\text{ren}} & = \int_{\Sigma}\omega_{\lambda} +\int_{\partial\Sigma}\omega_{\partial,\lambda},
\end{align}$$

and then compute

$$\begin{align}
I_{\lambda}^{*}\Omega_{\Sigma,\lambda}^{\text{ren}}
\end{align}$$

on the perturbative mode space. this is where the method would meet boundary charges, edge modes, and integrability.

## higher-derivative gravity

for higher-derivative gravity the extra modes may be massive spin-2 modes, scalar modes, or gauge-related modes depending on the degeneracy structure of the theory. the toy model suggests the following question:

can one define a slow gravitational solution space and pull the higher-derivative CPS form back to it, thereby obtaining a corrected low-energy graviton symplectic form without quantizing the extra Ostrogradsky sector?

the answer is not established in this paper. the model supports the strategy, but the gravity problem also requires gauge reduction, boundary conditions, and a check of whether the discarded modes are truly outside the effective regime.

## interacting perturbation theory

the paper works with an exactly solvable quadratic model. for interacting theories, the same conceptual scheme would have to be combined with ordinary perturbation theory in amplitudes or correlators. the CPS part gives the corrected symplectic structure and Hamiltonian on the slow phase space; it does not by itself solve loop renormalization, operator ordering beyond the quadratic example, or non-linear secular growth.

## useful next calculation

the closest follow-up calculation is to take a CPS-quantized free field model and add a controlled higher-derivative correction. the workflow would be:

1. derive $\Theta_{\lambda}$ and $\Omega_{\lambda}$ from the corrected Lagrangian.
2. solve the corrected EOMs for slow modes order by order.
3. pull back $\Omega_{\lambda}$ to the original mode coefficients.
4. compute the corrected mode normalization.
5. compute the corrected Hamiltonian or charge spectrum.
6. compare with an exact solution if one exists, or with an EFT expectation for the dispersion relation.

this would turn the present toy-model argument into a reusable CPS perturbation-theory template.

## project marker: diagrammatic rules for CPS perturbation theory

a useful next direction is to formulate diagrammatic rules for the perturbative CPS construction. the object would not be ordinary quantum Feynman diagrams at first, but a diagrammatic calculus for the classical solution-space expansion, the pullback of the symplectic form, and the perturbative inverse of that symplectic form.

the basic ingredients should be:

1. propagators from the inverse of the unperturbed linearized equation operator on the slow solution branch.
2. vertices from the higher-derivative or kinetic perturbations in the equations of motion.
3. special marked insertions for the symplectic potential or symplectic form.
4. special marked insertions for the Hamiltonian or other charges.
5. external legs labeled by the unperturbed mode coefficients.

schematically, the perturbative solution is generated by tree diagrams for the embedding

$$\begin{align}
I_{\lambda}:\mathcal{S}_{0}\to\mathcal{S}_{\lambda}^{\text{slow}},
\end{align}$$

while the corrected commutators are generated by the geometric inverse expansion

$$\begin{align}
\Omega_{\text{eff}}^{-1} & = \Omega_{0}^{-1} -\Omega_{0}^{-1}\Delta\Omega\,\Omega_{0}^{-1} +\Omega_{0}^{-1}\Delta\Omega\,\Omega_{0}^{-1}\Delta\Omega\,\Omega_{0}^{-1} -\cdots ,
\end{align}$$

where

$$\begin{align}
\Delta\Omega & = I_{\lambda}^{*}\Omega_{\lambda}-\Omega_{0}.
\end{align}$$

the main structural choices to make before such rules become useful are:

- a normalization condition that fixes the homogeneous-solution ambiguity at each order.
- a projection prescription that keeps the analytic slow branch and removes non-analytic fast modes.
- a treatment of secular terms, possibly by a frequency-renormalized or normal-form expansion.
- for gauge theories, a reduced or gauge-fixed propagator together with boundary symplectic insertions.

if this can be made precise, the result would be an all-order computational language for CPS perturbative quantization: trees compute the corrected slow solution space, marked insertions compute pulled-back symplectic and Hamiltonian data, and the inverse-symplectic expansion computes the corrected oscillator algebra.
