force is doomed in modern physics
1. gravity is kind of the manifestation of curved spacetime in GR
2. when gravity is included, S-matrix is the only observable for asymptotically flat spacetime

# in states, out states and S-matrix

(need to be rewritten in our framework)

from the free field Hamiltonian $\displaystyle{H_{0}}$, we have constructed the Fock space $\displaystyle{\mathcal{F}}$. add interaction $\displaystyle{H=H_{0}+V}$, the corresponding Fock space is denoted as $\displaystyle{\mathcal{I}}$. in and out states $\displaystyle{\psi ^{\pm}_{\alpha}\in \mathcal{I}}$, where the $\displaystyle{\alpha}$ means that we add or reduce the interaction $\displaystyle{V}$ adiabatically, $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$ will evolve to $\displaystyle{\psi _{\alpha}^{+}\in \mathcal{I}}$ and $\displaystyle{\psi _{\alpha}^{-}\in \mathcal{I}}$ will evolve to $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$. more precisely in the Heisenberg picture we have

$$\begin{align}
e^{-iHt}\psi ^{+}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to-\infty \\
e^{-iHt}\psi ^{-}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to+\infty
\end{align}$$

let

$$\begin{align}
\Lambda(t) & =e^{-i(H-H_{0})t} \\
\Lambda(-\infty) & =\Lambda _{\mathrm{in}} \\
\Lambda(+\infty) & =\Lambda _{\mathrm{out}}
\end{align}$$

and the S-matrix is defined as

$$\begin{align}
S _{\beta \alpha} & =(\psi ^{-}_{\beta},\psi ^{+}_{\alpha})_{\mathcal{I}} \\
 & =(\Lambda _{\mathrm{out}}^{-1}\psi _{\beta},\Lambda _{\mathrm{in}}^{-1}\psi _{\alpha})_{\mathcal{I}} \\
 & =(\psi _{\beta},\Lambda _{\mathrm{out}}\Lambda ^{-1}_{\mathrm{in}}\psi _{\alpha})_{\mathcal{F}} \\
 & =(\psi _{\beta},S\psi _{\alpha})_{\mathrm{\mathcal{F}}}
\end{align}$$

$\displaystyle{S=\Lambda _{\mathrm{out}}\Lambda _{\mathrm{in}}^{-1}}$ is called the S-operator. for an operator $\displaystyle{\mathcal{O}:\mathcal{F}\to \mathcal{F}}$, we have two methods to induce it to $\displaystyle{\mathcal{I}}$:

$$\begin{align}
\Lambda ^{-1}_{\mathrm{out}}\mathcal{O}\Lambda _{\mathrm{out}} \\
\Lambda ^{-1}_\mathrm{in}\mathcal{O}\Lambda _{\mathrm{in}}
\end{align}$$

we want the definition to be unique, then we let $\displaystyle{\Lambda ^{-1}_{\mathrm{out}}\mathcal{O}\Lambda _{\mathrm{out}}=\Lambda _{\mathrm{in}}^{-1}\mathcal{O}\Lambda _{\mathrm{in}}\implies[S,\mathcal{O}]=0}$, then $\displaystyle{\mathcal{O}}$ is called a conserved quantity.

# Lippmann-Schwinger equation and old fashioned perturbation theory

since

$$\begin{align}
e^{-iHt}\psi ^{+}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to-\infty \\
e^{-iHt}\psi ^{-}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to+\infty
\end{align}$$

we have

$$\begin{align}
\psi _{g} ^{\pm}(\mp \infty) & =\psi _{g}(\mp \infty) \\
\phi _{g}(t) & =\int \mathrm{d}\alpha e^{-iE_{\alpha}t}g(\alpha)\phi _{\alpha}
\end{align}$$

assume

$$\begin{align}
\psi _{\alpha}^{\pm} & =\psi _{\alpha}+\phi
\end{align}$$

then act $\displaystyle{E_{\alpha}-H_{0}\pm i\varepsilon}$ on both side

$$\begin{align}
(E_{\alpha}-H_{0})\psi _{\alpha}^{\pm} & =(E_{\alpha}-H_{0}\pm i\varepsilon)\phi \\
\implies(E_{\alpha}-H+V)\psi _{\alpha}^{\pm} & =(E_{\alpha}-H_{0}\pm i\varepsilon)\phi \\
\implies \phi & =\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm}
\end{align}$$

and then the Lippmann-Schwinger equation

$$\begin{align}
\psi _{\alpha}^{\pm} & =\psi _{\alpha}+\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm} \\
 & =\psi _{\alpha}+\int\frac{\mathrm{d}\beta T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon} \\
T_{\beta \alpha}^{\pm} & =(\psi _{\beta},V\psi _{\alpha}^{\pm})
\end{align}$$

or

$$\begin{align}
\psi _{g}^{\pm}(t) & =\psi _{g}(t)+\int \mathrm{d}\alpha \mathrm{d}\beta  \frac{g(\alpha)e^{-iE_{\alpha}t}T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon}
\end{align}$$

this form also explain the signal of $\displaystyle{i\varepsilon}$. consider

$$\begin{align}
\psi _{g}^{\pm}(\pm \infty) & =\psi _{g}(\pm \infty)+\int \mathrm{d}\alpha \mathrm{d}\beta \frac{g(\alpha) e^{-iE_{\alpha}t}T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon} \\
 & =\psi _{g}(\pm \infty)\mp2\pi i \int \mathrm{d}\beta e^{-iE_{\beta}t}\int \mathrm{d}\alpha g(\alpha) T_{\beta \alpha}^{\pm}\delta(E_{\alpha}-E_{\beta}) \\
\implies \int \mathrm{d}\beta e^{-iE_{\beta}t}g(\beta)\psi ^{\pm}_{\beta} & =\int \mathrm{d}\beta e^{-iE_{\beta}t}g(\beta)\psi ^{\mp}_{\beta}\mp2\pi i \int \mathrm{d}\beta e^{-iE_{\beta}t}\int \mathrm{d}\alpha g(\alpha)T^{\pm}_{\beta \alpha}\delta(E_{\alpha}-E_{\beta}) \\
\implies \psi ^{\pm}_{\beta} & =\psi ^{\mp}_{\beta}\mp2\pi i \int \mathrm{d}\alpha g(\alpha)T_{\beta \alpha}^{\pm}\delta(E_{\alpha}-E_{\beta})
\end{align}$$
