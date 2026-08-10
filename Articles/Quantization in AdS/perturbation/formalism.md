This note provide a operational pipeline for do quantum perturbation theory in the framework of canonical quantization in covariant phase space formalism. In the following discussion, we assume the spacetime $\displaystyle{M}$, with signature $\displaystyle{(-,+,+,\dots)}$, to be globally hyperbolic (or in the sense of AdS), sandwiched by initial and final Cauchy surfaces $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$, surrounded by the spatial boundary $\displaystyle{\Gamma}$, and of dimension $\displaystyle{d+1}$. We don't consider null boundaries here. Again we assume the matter field $\displaystyle{\Psi^{a}}$ satisfies boundary conditions on $\displaystyle{\Gamma}$ that make the action finite and the variational problem well-defined, together with the other properties needed for the free and interacting theories below. Non-Lagrangian theories are not considered. The perturbative construction assumes that any gauge redundancy has been quotiented when the physical mode basis is introduced, while the CPS definitions retain the pre-phase-space language before that quotient.

# Free Theory

## Covariant Phase Space Formalism

We first consider the free theory. Following the Harlow--Wu convention used throughout this workspace, retain the boundary Lagrangian because it fixes the variational problem and the boundary/corner contribution to the integrated pre-symplectic potential. Write the action as

$$\begin{align}
S & =\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }L[\Psi]+\int _{\Gamma}\mathrm{d}^{d}x\sqrt{ -\gamma }\ell[\Psi]
\end{align}$$

and vary it without using the equations of motion:

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d+1}x\sqrt{ -g }E_{a}\delta \Psi^{a}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
\theta & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\theta _{\mu}[\Psi,\delta \Psi]-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau ^{\mu}n^{\nu}\theta_{\mu \nu}[\Psi,\delta \Psi]
\end{align}$$

Terms supported on $\displaystyle{\Gamma}$ vanish on the allowed variations or have been integrated by parts to $\displaystyle{\partial\Sigma}$. We read out the eoms $\displaystyle{E_{a}=0}$ and the integrated pre-symplectic potential $\displaystyle{\theta}$. A further field-space variation gives the pre-symplectic form

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\delta \theta _{\mu}-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau ^{\mu}n^{\nu}\delta \theta_{\mu \nu}.
\end{align}$$

The solutions of $\displaystyle{E_{a}=0}$ satisfying the boundary conditions form the pre-phase space. Quotienting its gauge degeneracies, when present, gives the physical phase space used for quantization.

An infinitesimal transformation

$$\begin{align}
\Psi ^{a} & \to \Psi ^{a}+\lambda\Delta _{\lambda}\Psi ^{a}, & \lambda & \to 0
\end{align}$$

defines the field-space vector

$$\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d+1}x\,\Delta _{\lambda}\Psi ^{a}\dfrac{\delta}{\delta \Psi ^{a}}, & X_{\lambda}\cdot\delta\Psi ^{a} & =\Delta _{\lambda}\Psi ^{a}.
\end{align}$$

It is a symmetry when, off shell,

$$\begin{align}
X_{\lambda}\cdot\delta S & =\alpha _{\lambda}|_{\Sigma _{f}}-\alpha _{\lambda}|_{\Sigma _{i}}+\beta _{\lambda}|_{\Gamma} \\
\alpha _{\lambda} & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau _{\mu}\alpha _{\lambda}^{\mu}-\int _{\partial \Sigma}\mathrm{d}^{d-1}x\sqrt{ h }\tau _{\mu}n_{\nu}\alpha _{\lambda}^{\mu \nu},
\end{align}$$

where the possible classical anomaly is configuration-independent, $\displaystyle{\delta\beta _{\lambda}/\delta\Psi ^{a}=0}$. The corresponding Noether generator is

$$\begin{align}
H_{\lambda} & =X_{\lambda}\cdot\theta-\alpha _{\lambda}.
\end{align}$$

We solve the eom on the Cauchy surface $\displaystyle{\Sigma _{t}}$, and we assume we get the complete set of positive-frequency modes $\displaystyle{\left\{\Phi ^{a}_{I},I \in \mathcal{I}\right\}}$ on the physical phase space, in which every mode is normalizable in the sense of the symplectic form. For each mode $\displaystyle{\Phi _{I}^{a}}$ we define

$$\begin{align}
X_{I} & =\int \mathrm{d}^{d+1}x \Phi ^{a}_{I} \dfrac{\delta}{\delta \Psi^{a}} \\
X_{I}^{*} & =\int \mathrm{d}^{d+1}x\Phi ^{a*}_{I} \dfrac{\delta}{\delta \Psi^{a}}
\end{align}$$

and for two solutions $\displaystyle{\Phi _{I_{1}}^{a},\Phi _{I_{2}}^{a}}$, we have the orthonormal condition

$$\begin{align}
(\Phi _{I_{1}},\Phi _{I_{2}}) & =iX_{I_{2}}^{*}\cdot X_{I_{1}}\cdot\omega=\delta _{I_{1}I_{2}}
\end{align}$$

we expand the field $\displaystyle{\Psi^{a}}$ as

$$\begin{align}
\Psi^{a} & =\sum _{I\in \mathcal{I}} (a_{I} \Phi ^{a}_{I}+a^{\dagger}_{I}\Phi ^{a*}_{I})
\end{align}$$

therefore the symplectic form can be rewritten as

$$\begin{align}
\omega & =i\sum _{I\in \mathcal{I}}\delta a^{\dagger}_{I}\wedge \delta a_{I}
\end{align}$$

which gives the standard Poisson bracket

$$\begin{align}
\left\{a^{\dagger}_{I_{1}},a_{I_{2}}\right\} & =i\delta _{I_{1}I_{2}}
\end{align}$$

to define Poisson brackets between general operators, we introduce the Wightman function

$$\begin{align}
W^{ab}(x_{1},x_{2}) & =\sum _{I\in \mathcal{I}} \Phi^{a}_{I}(x_{1})\Phi ^{b*}_{I}(x_{2})
\end{align}$$

and the causal Green function

$$\begin{align}
iE^{ab}(x_{1},x_{2}) & =W^{ab}(x_{1},x_{2})-W^{ba}(x_{2},x_{1})
\end{align}$$

(microcausality is required here) then the Poisson bracket (or the well-known Peierls bracket) between operators $\displaystyle{\mathcal{O}_{1}[\Psi^{a}]}$ and $\displaystyle{\mathcal{O}_{2}[\Psi^{b}]}$ is defined as

$$\begin{align}
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{P}} & =E(\mathcal{O}_{1},\mathcal{O}_{2}) \\
 & = \int \mathrm{d}^{d+1}x_{1}\mathrm{d}^{d+1}x_{2} \dfrac{\delta \mathcal{O}_{1}}{\delta \Psi^{a}(x_{1})} E^{ab}(x_{1},x_{2}) \dfrac{\delta \mathcal{O}_{2}}{\delta \Psi^{b}(x_{2})}
\end{align}$$

this definition is familiar to the usual one.

Assume we have a timelike Killing vector $\displaystyle{\xi _{\mu}}$. Consider the diffeomorphism generated by $\displaystyle{\xi _{\mu}}$

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{d+1}x \mathcal{L}_{\xi}\Psi^{a} \dfrac{\delta}{\delta \Psi^{a}}
\end{align}$$

[[Articles/Quantization in AdS/gravitational energy/article/b_matter diffeomorphism current|b_matter diffeomorphism current]] proved that under some reasonable assumptions, the corresponding Noether charge can be written as

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}T^{\mu \nu}
\end{align}$$

where the Hilbert stress tensor is defined as

$$\begin{align}
T_{\mu \nu} & =-\frac{2}{\sqrt{-g}} \frac{\delta S}{\delta g^{\mu \nu}}
\end{align}$$

and satisfies

$$\begin{align}
\nabla _{\mu}T^{\mu \nu}=0
\end{align}$$

it will play a role as the Hamiltonian that time-translates operators along the flow of $\displaystyle{\xi}$. It is convenient to label the flow by a parameter $\displaystyle{t}$, the generator of t-translation is just $\displaystyle{H_{\xi}}$. For simplicity, we will drop the subscript $\displaystyle{\xi}$ in $\displaystyle{H_{\xi}}$, and just call it Hamiltonian, and the flow parameter $\displaystyle{t}$ time.

## Canonical Quantization

When lift to the quantum level, we will not dive into the details of perturbative algebraic quantum field theory or deformation quantization. Instead, we will follow our intuition from the usual canonical formalism. With the Poisson-bracket ordering used above, lift observables according to

$$\begin{align}
\left[\mathcal{O}_{1},\mathcal{O}_{2}\right] & =i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{P}}.
\end{align}$$

In particular,

$$\begin{align}
\left\{a^{\dagger}_{I_{1}},a_{I_{2}}\right\} & =i\delta _{I_{1}I_{2}} \implies
[a_{I_{2}},a^{\dagger}_{I_{1}}] =\delta _{I_{1}I_{2}}
\end{align}$$

vacuum state $\displaystyle{\ket{\Omega}}$ is defined as the state annihilated by all $\displaystyle{a_{I}}$. And we can give the Wightman function a more natural meaning as a two-point function

$$\begin{align}
W^{ab}(x_{1},x_{2}) & = \braket{ \Omega|\Psi^{a}(x_{1})\Psi^{b}(x_{2})|\Omega }
\end{align}$$

define the advanced, retarded and Feynman Green functions

$$\begin{align}
G_{A}^{ab}(x_{1},x_{2}) & =-\theta(x_{1}\prec x_{2}) \cdot E^{ab}(x_{1},x_{2}) \\
G_{R}^{ab}(x_{1},x_{2}) & =\theta(x_{2}\prec x_{1}) \cdot E^{ab}(x_{1},x_{2}) \\
G_{F}^{ab}(x_{1},x_{2}) & =\theta(x_{2}\prec x_{1}) \cdot W^{ab}(x_{1},x_{2})+\theta(x_{1}\prec x_{2}) \cdot W^{ba}(x_{2},x_{1})
\end{align}$$

here $\displaystyle{x_{2}\prec x_{1}}$ means $\displaystyle{x_{1}\in \overline{J^{+}(x_{2})}}$. These Green functions will be used later. The signs above follow the convention $\displaystyle{E=G_{R}-G_{A}}$.

# Interacting Theory

In this section we will assume the interaction is weak so that perturbation theory is possible.

## Old-Fashioned Perturbation Theory

### Interaction Picture and Dyson Expansion

We split the Hamiltonian $\displaystyle{H}$ to free and interacting parts

$$\begin{align}
H & =H_{0}+V
\end{align}$$

and change to interaction picture, i.e., perform the time translation of operators with $\displaystyle{H_{0}}$ and time evolution of state with the interaction:

$$\begin{align}
\ket{\psi}_{H}  & \to \ket{\psi(t)} _{I}=U(t,t_{0})\ket{\psi(t_{0})}_{I} \\
\mathcal{O}_{H} & \to \mathcal{O}_{I}(t)=e^{iH_{0}(t-t_{0})}\mathcal{O}_{I}(t_{0})e^{-iH_{0}(t-t_{0})}
\end{align}$$

here the time evolution operator is defined as

$$\begin{align}
U(t,t_{0}) & =\mathcal{T}\exp\left(-i \int _{t_{0}}^{t}\mathrm{d}t'\,V_{I}(t')\right)
\end{align}$$

here $\displaystyle{\mathcal{T}}$ is the usual time-order operator with respect to the flow parameter $\displaystyle{t}$.

The above Dyson expansion is the common finite-time construction. Old-fashioned perturbation theory begins when we insert the complete set of free Hamiltonian eigenstates

$$\begin{align}
H_{0}\ket{A} & =E_{A}^{(0)}\ket{A}, & \mathbf{1} & =\sum _{A}\ket{A}\bra{A}
\end{align}$$

between adjacent interaction vertices. For a continuous part of the spectrum, the sum should be replaced by the corresponding spectral integral. In a problem with an appropriate adiabatic or resolvent prescription, this gives

$$\begin{align}
T(E) & =V+V\frac{1}{E-H_{0}+i0}V +V\frac{1}{E-H_{0}+i0}V\frac{1}{E-H_{0}+i0}V+\cdots
\end{align}$$

the physical interpretation of this expansion depends on the asymptotic structure of spacetime.

## Asymptotically Flat Spacetime

For an asymptotically flat spacetime, assume that the interacting theory approaches the chosen free theory in the far past and future, and that the corresponding Moller operators exist. Define

$$\begin{align}
\Lambda _{\mathrm{in}} & =\underset{t\to-\infty}{\operatorname{s-lim}}\ e^{iHt}e^{-iH_{0}t} \\
\Lambda _{\mathrm{out}} & =\underset{t\to+\infty}{\operatorname{s-lim}}\ e^{iHt}e^{-iH_{0}t}
\end{align}$$

and the S-operator

$$\begin{align}
S & =\Lambda _{\mathrm{out}}^{\dagger}\Lambda _{\mathrm{in}}, & S_{\beta\alpha} & =\braket{\beta _{\mathrm{out}}|\alpha _{\mathrm{in}}}
\end{align}$$

when the one-particle poles and their residues exist, the LSZ reduction formula extracts $\displaystyle{S_{\beta\alpha}}$ from renormalized time-ordered correlation functions. Therefore, for the asymptotically flat branch, the operational endpoint is

$$\begin{align}
\text{CPS-normalized free modes} \longrightarrow G_{F} \longrightarrow \text{renormalized time-ordered correlators} \longrightarrow \text{LSZ} \longrightarrow S_{\beta\alpha}.
\end{align}$$

The formal expression $\displaystyle{U(+\infty,-\infty)}$ is not sufficient by itself: the Moller operators, the asymptotic particle interpretation, and the infrared or adiabatic limit must exist.

## (Asymptotically) AdS Spacetime

For an asymptotically AdS spacetime, the boundary condition on $\displaystyle{\Gamma}$ is part of the definition of the theory. It must make the variational problem well-defined and the symplectic flux vanish on the allowed variations. All Green functions and counterterms used below must satisfy the same boundary condition.

For horizonless global AdS with reflecting boundary conditions, free excitations return from the timelike boundary and the normal-mode spectrum is discrete. The interaction does not become irrelevant in the limits $\displaystyle{t\to\pm\infty}$. Therefore there is no ordinary in/out S-matrix analogous to the asymptotically flat one.

Instead, we use the same $\displaystyle{U(t_{f},t_{i})}$ and $\displaystyle{H=H_{0}+V}$ to compute the following objects.

### Finite-Time Transition Amplitudes

For two free Fock states $\displaystyle{\ket{A}}$ and $\displaystyle{\ket{B}}$, define

$$\begin{align}
\mathcal{A}_{BA}(t_{f},t_{i}) & =\braket{B|U(t_{f},t_{i})|A}
\end{align}$$

which at first order is

$$\begin{align}
\mathcal{A}_{BA}^{(1)}(t_{f},t_{i}) & =-i\int _{t_{i}}^{t_{f}}\mathrm{d}t\, e^{i(E_{B}^{(0)}-E_{A}^{(0)})t}\braket{B|V(0)|A}.
\end{align}$$

At exact resonance, a term proportional to $\displaystyle{t_{f}-t_{i}}$ signals mixing between resonant states. It should be treated by degenerate perturbation theory rather than interpreted as an S-matrix element.

### Energy Levels and Mixing

Write

$$\begin{align}
H & =H_{0}+gV_{1}+g^{2}V_{2}+O(g^{3}).
\end{align}$$

For an isolated free eigenstate $\displaystyle{\ket{A}}$,

$$\begin{align}
E_{A}^{(1)} & =\braket{A|V_{1}|A} \\
E_{A}^{(2)} & =\braket{A|V_{2}|A} +\sum _{B\neq A}\frac{|\braket{B|V_{1}|A}|^{2}}{E_{A}^{(0)}-E_{B}^{(0)}}.
\end{align}$$

If a group of free states is degenerate, one should construct the effective Hamiltonian in that subspace and diagonalize it. Exact zero denominators are mixing or resonance problems, while divergence of the high-energy sum is a UV-renormalization problem.

In AdS/CFT language, after the normalization of the global Hamiltonian is fixed, vacuum-subtracted energy gaps map to scaling dimensions, and perturbative energy shifts map to anomalous dimensions.

### Bulk and Boundary Correlation Functions

The bulk time-ordered correlation functions are computed with the same Dyson expansion and the boundary-compatible $\displaystyle{G_{F}^{ab}}$. Expanding $\displaystyle{G_{F}^{ab}}$ into the modes $\displaystyle{\Phi _{I}^{a}}$ decomposes a covariant bulk diagram into global-time orderings and intermediate-state sums. Therefore a bulk Witten diagram and an OFPT mode sum are two representations of the same bulk correlator when they use the same state, boundary condition, operator prescription, and counterterms.

If a holographic observable is desired, one must further apply the renormalized boundary extrapolate map. For a scalar field in standard quantization, schematically,

$$\begin{align}
\mathcal{O}(x) & =(2\nu)Z_{\mathcal{O}}\lim _{r\to\infty}r^{\Delta}\Psi(r,x), & \Delta & =\frac{d}{2}+\nu.
\end{align}$$

this boundary extraction is additional to the bulk CPS quantization. boundary counterterms may change contact terms and scheme-dependent local pieces. a matrix element such as $\displaystyle{\braket{B|V|A}}$ is an OFPT vertex and is not automatically the same number as a canonically normalized boundary OPE coefficient.

Therefore, for the horizonless global AdS branch, the operational endpoints are

1. finite-time transition amplitudes;
2. vacuum-subtracted energy gaps and perturbative energy shifts;
3. degenerate mixing matrices and resonant effective Hamiltonians;
4. renormalized bulk time-ordered correlation functions;
5. boundary correlation functions after the extrapolate normalization is fixed.

For AdS black holes or nonstationary asymptotically AdS backgrounds, the discrete normal-mode and self-adjoint Hamiltonian assumptions above may fail. In those cases one should use thermal, retarded, or in-in correlation functions and quasinormal poles instead of copying the horizonless global AdS spectral construction.
