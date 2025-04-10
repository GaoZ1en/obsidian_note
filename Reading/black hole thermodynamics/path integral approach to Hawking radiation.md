## Rindler space and reduced density matrices

consider a 2d QFT on a line, and let the state of the full system by the Minkowski vacuum

$$\tag{4.1}
\begin{align}
\rho & =\ket{0} \bra{0} 
\end{align}
$$

let us divide the line into $\displaystyle{x>0}$ (region A) and $\displaystyle{x<0}$ (region B). the reduced density matrix in region $\displaystyle{A}$ is

$$\tag{4.2}
\begin{align}
\rho _{A}=\mathrm{Tr}_{B}\rho
\end{align}
$$

in path integral formalism, we glue the region $\displaystyle{B}$ in the path integral. now comes the key observation, we can reslice this path integral by going to polar coordinates $\displaystyle{\mathrm{d}R^{2}+R^{2}\mathrm{d}\phi ^{2}}$, and calling $\displaystyle{\phi}$ "time". let $\displaystyle{H_{\text{Rindler}}}$ be the operator that generates $\displaystyle{\phi}$-evolution, that is,

$$\tag{4.3}
\begin{align}
\frac{1}{\hbar}[H,O]=\partial _{\phi}O
\end{align}
$$

for ant operator $\displaystyle{O}$. then we can translate this same path integral back into operator language in a different way. we have

$$\tag{4.4}
\begin{align}
\rho _{A}=e^{-2\pi H_{\text{Rindler}}}
\end{align}
$$

this looks like just like a thermal state at temperature $\displaystyle{\frac{1}{2\pi}}$. when we go back to Minkowski space $\displaystyle{\phi\to i\eta}$, this becomes the boost generator corresponding to the causal development of the Rindler wedge. $\displaystyle{H_{\text{Rindler}}}$ is exactly what we called $\displaystyle{H_{\eta}}$ above.

and this is the complete path-integral derivation of the statement that the Minkowski vacuum leads to a thermal state in Rindler space.

### modular Hamiltonian

$\displaystyle{H_{\text{Rindler}}}$ is a special case of a modular Hamiltonian, which is defined as a log of a density matrix (up to normalization) and is useful for characterizing entanglement, both in quantum gravity and in condensed matter physics.

## example: free fields

a massless free field in 2d Rindler space obeys the wave equation

$$\tag{4.5}
\begin{align}
\nabla ^{2}\Phi & =0
\end{align}
$$

and we take the ansatz $\displaystyle{\Phi=e^{-i \omega \eta}f(R)}$, and we find the solution

$$\tag{4.6}
\begin{align}
\Phi _{k}=e^{-\iota m\eta+ik\log R}, \omega ^{2}=k^{2}, \omega>0
\end{align}
$$

as usual in quantum field theory, we expand the field operator in terms of creation and annihilation operators

$$\tag{4.7}
\begin{align}
\hat{\Phi}(\eta,R) & =\int \mathrm{d}k(b_{k}\Phi _{k}+b_{k}^{\dagger}\Phi ^{*}_{k})
\end{align}
$$

and the annihilation operators $\displaystyle{b_{k}}$ defines the vacuum state

$$\tag{4.8}
\begin{align}
b_{k}\ket{0} _{R}=0, \forall k
\end{align}
$$

it is clear that this is not the Minkowski vacuum state, which is defined as the Minkowski annihilation operators $\displaystyle{a_{k}^{\dagger}}$, which are not same as the Rindler ones.

the fact that Rindler space has a different choice of time means it has a different choice of energy and therefore a different notion of particle and vacuum...

we can define n-particle state just as Minkowski case... for example, the 1-Rindler-particle state

$$\tag{4.9}
\begin{align}
\ket{k} _{R} & =b_{k}^{\dagger}\ket{0} _{R}, & \text{with }H_{\text{Rindler}}\ket{k} _{R}=\omega \ket{k} _{R}
\end{align}
$$

we can use the density matrix $\displaystyle{\rho _{\text{Rindler}}=e^{-2\pi H_{\text{Rindler}}}}$ to calculate observables. for example, the occupation number of a mode

$$\tag{4.10}
\begin{align}
\braket{ n_{k} } & =\frac{1}{Z}\mathrm{Tr}e^{-2\pi H_{\text{Rindler}}}b_{k}^{\dagger}b_{k} \\
 & =\left( \sum _{n\geqslant 0} ne^{-2\pi n|k|} \right)/\left(\sum _{n\geqslant 0}e^{-2\pi n|k|}\right) \\
 & = \frac{1}{e^{2\pi|k|}-1}
\end{align}
$$

which is of course the Planck blackbody spectrum (we will discuss grey body factor later (probably)).

### what does an observer actually see?

the proper time element of a Rindler observer is

$$\tag{4.11}
\begin{align}
\mathrm{d}\tau _{\text{obs}} & =R_{\text{obs}}\mathrm{d}\eta =\frac{1}{a}\mathrm{d}\eta
\end{align}
$$

so the observer will see a mode $\displaystyle{e^{-i\omega\eta}}$ to have energy

$$\tag{4.12}
\begin{align}
\omega _{\text{obs}} & =a\omega
\end{align}
$$

accordingly, the temperature shown on an accelerating thermometer will be

$$\tag{4.13}
\begin{align}
T_{\text{obs}} & =\frac{a}{2\pi}
\end{align}
$$

## importance of entanglement

...

#### exercise: entanglement warm-up

consider a pure state

$$\tag{4.14}
\begin{align}
\ket{\psi} & =\frac{1}{\sqrt{ 2 }}(\ket{0} _{A}\ket{1} _{B}+\ket{1} _{A}\ket{0} _{B})
\end{align}
$$

then calculate the entanglement entropy which defined as

$$\tag{4.15}
\begin{align}
S_{A}=-\mathrm{Tr}_{A}\rho _{A}\log \rho _{A}
\end{align}
$$

first we calculate the reduced density matrix

$$\tag{4.16}
\begin{align}
\rho _{A} & =\mathrm{Tr}_{B}\ket{ \psi }\bra{\psi}   \\
 & =\frac{1}{2}\mathrm{Tr}_{B}\left(\ket{0} _{A}\ket{1} _{B}+\ket{1} _{A}\ket{0} _{B}\right)\left(\bra {0} _{A}\bra {1} _{B}+\bra {1} _{A}\bra {0} _{B}\right) \\
 & =\frac{1}{2}(\ket{0} _{A}\bra{0} _{A}+\ket{1} _{A}\bra{1} _{A} )
\end{align}
$$

then the entanglement entropy is

$$\tag{4.17}
\begin{align}
S_{A} & =\frac{1}{2}\ln 2\mathrm{Tr}_{A}(\ket{0} _{A}\bra{0} _{A}+\ket{1} _{A}\bra{1} _{A} ) \\
 & =\ln 2
\end{align}
$$

#### exercise: thermofield double

consider a quantum system with Hilbert space $\displaystyle{\mathcal{H}}$. any mixed state $\displaystyle{\rho}$ can be thought of as a pure state in an enlarged system (purification?). that is, we can always add an auxiliary Hilbert space $\displaystyle{\mathcal{H}'}$ and find a pure state

$$\tag{4.18}
\begin{align}
\ket{\Psi} \in \mathcal{H}'\otimes \mathcal{H}
\end{align}
$$

such that

$$\tag{4.19}
\begin{align}
\rho & =\mathrm{Tr}_{\mathcal{H}'}\ket{\Psi} \bra{\Psi} 
\end{align}
$$

this is called purifying the mixed state. we will show that Minkowski space is a purification of Rindler space.

The Minkowski Hilbert space factorize into two copies of the Rindler Hilbert space

$$\tag{4.20}
\begin{align}
\mathcal{H}_{M} & =\tilde{\mathcal{H}}_{R}\otimes \mathcal{H}_{R}
\end{align}
$$

which are the Hilbert spaces associated to the left Rindler $\displaystyle{x<0}$ and the right Rindler $\displaystyle{x>0}$.

t