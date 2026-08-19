# Maxwell Gluing in 1+1 Dimensions

This is the minimal gauge-theory gluing model. It has no local photon oscillator. Its purpose is to isolate Gauss law, the global electric flux, boundary gauge transformations and the interface reduction.

## 1. Boundary conditions and gauge group

Take an interval $[-L_1,L_2]$ and

$$\begin{align}
S&=\dfrac1{2e^2}\int dt\int_{-L_1}^{L_2}dx\,E^2, &
E&=\dot A_x-\partial_xA_0.
\end{align}$$

Fix $A_0$ at the two outer endpoints, so $\delta A_0=0$ there. Gauge transformations are required to vanish at the outer endpoints, up to the usual $2\pi$ identification for compact $U(1)$. These conditions allow nonzero electric flux while making the open Wilson line between the endpoints gauge invariant.

If instead gauge transformations were allowed to act freely at the outer endpoints, the endpoint charges and their boundary symplectic data would have to be included. That is a different boundary problem.

## 2. Global reduction

The momentum is

$$\begin{align}
\Pi(x)&=\dfrac{E(x)}{e^2}.
\end{align}$$

Variation of $A_0$ gives Gauss law

$$\begin{align}
\partial_x\Pi&=0.
\end{align}$$

Thus $\Pi(x)=\Pi$ is spatially constant. Define the open Wilson-line coordinate

$$\begin{align}
a&=\int_{-L_1}^{L_2}A_xdx.
\end{align}$$

The reduced symplectic form and Hamiltonian are

$$\begin{align}
\omega_{\mathrm{global}}&=\delta\Pi\wedge\delta a,\\
H_{\mathrm{global}}&=\dfrac{e^2}2(L_1+L_2)\Pi^2.
\end{align}$$

There is no $a^2$ restoring term. For compact $U(1)$, $a$ is an angular coordinate and the system is a quantum rotor. For a noncompact gauge group it is a free particle. Neither is a photon oscillator.

## 3. Regional phase spaces

After cutting at $x=0$, solve Gauss law separately in each region:

$$\begin{align}
\Pi_i(x)&=\Pi_i, &
a_i&=\int_{\Sigma_i}A_xdx.
\end{align}$$

Before interface reduction,

$$\begin{align}
\omega_{\mathrm{regional}}&=
\delta\Pi_1\wedge\delta a_1+
\delta\Pi_2\wedge\delta a_2,\\
H_{\mathrm{regional}}&=\dfrac{e^2}2
(L_1\Pi_1^2+L_2\Pi_2^2).
\end{align}$$

A gauge transformation whose value at the cut is $\eta$ acts as

$$\begin{align}
a_1&\mapsto a_1+\eta, &
a_2&\mapsto a_2-\eta.
\end{align}$$

The relative Wilson line is therefore gauge, while

$$\begin{align}
a&=a_1+a_2
\end{align}$$

is invariant.

## 4. Interface moment map and symplectic quotient

Allow the common interface value of $A_0$ to vary. Stationarity gives continuity of oriented electric flux,

$$\begin{align}
\mu&=\Pi_1-\Pi_2=0.
\end{align}$$

The constraint $\mu$ is the moment map generating the relative shift $(a_1,a_2)\mapsto(a_1+\eta,a_2-\eta)$. Gluing is the symplectic quotient

$$\begin{align}
\mathcal P_{\mathrm{glued}}
=\mu^{-1}(0)/U(1)_{\mathrm{interface}}.
\end{align}$$

On the constraint surface set

$$\begin{align}
\Pi_1=\Pi_2=\Pi.
\end{align}$$

After quotienting the relative Wilson line,

$$\begin{align}
\omega_{\mathrm{regional}}&\longrightarrow
\delta\Pi\wedge\delta(a_1+a_2),\\
H_{\mathrm{regional}}&\longrightarrow
\dfrac{e^2}2(L_1+L_2)\Pi^2.
\end{align}$$

This is exactly the uncut reduced phase space and Hamiltonian.

## 5. Compact-$U(1)$ quantization

Choose the $2\pi$ period convention for $a$. The uncut Hilbert space is

$$\begin{align}
\mathcal H_{\mathrm{global}}&=L^2(U(1)), &
\ket n&=e^{ina}, & n&\in\mathbb Z,
\end{align}$$

with

$$\begin{align}
\Pi\ket n&=n\ket n, &
E_n&=\dfrac{e^2}2(L_1+L_2)n^2.
\end{align}$$

The unreduced regional tensor product has basis $\ket{n_1,n_2}$. The interface constraint and gauge quotient keep precisely

$$\begin{align}
n_1&=n_2=n.
\end{align}$$

The surviving wavefunctions depend only on $a_1+a_2$ and have exactly the global energies above. There is one electric-flux label, not a tensor product of two independent fluxes and not an additional interface oscillator.

Charged matter localized at the interface would change the moment-map equation to a flux jump equal to the interface charge. No such charged degree of freedom is present here.

## 6. Verification and claim boundary

The script `numerics/maxwell_1p1.wl` verifies:

- that $\Pi_1-\Pi_2$ generates the relative interface gauge shift;
- pullback of the regional symplectic form to the reduced global form;
- equality of the reduced and uncut Hamiltonians;
- the canonical bracket of $a_1+a_2$ with the common flux;
- equality of compact-$U(1)$ flux-sector energies;
- absence of a Wilson-line restoring potential.

Verified: classical and quantum gluing of the source-free $1+1$ Maxwell flux sectors for the stated outer boundary conditions.

Assumptions: compact $U(1)$ with vanishing outer-endpoint gauge parameters for the rotor quantization; the noncompact version follows by replacing integer flux by a continuous one.

Not verified: endpoint charged sectors, interface matter, a theta angle, or non-Abelian generalization.
