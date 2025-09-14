force is doomed in modern physics
1. gravity is kind of the manifestation of curved spacetime in GR
2. when gravity is included, S-matrix is the only observable for asymptotically flat spacetime

# in states, out states and S-matrix

(need to be rewritten in our framework)

from the free field Hamiltonian $\displaystyle{H_{0}}$, we have constructed the Fock space $\displaystyle{\mathcal{F}}$. add interaction $\displaystyle{H=H_{0}+V}$, the corresponding Fock space is denoted as $\displaystyle{\mathcal{I}}$. in and out states $\displaystyle{\psi ^{\pm}_{\alpha}\in \mathcal{I}}$, where the $\displaystyle{\alpha}$ means that we add or reduce the interaction $\displaystyle{V}$ adiabatically, $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$ will evolve to $\displaystyle{\psi _{\alpha}^{+}\in \mathcal{I}}$ and $\displaystyle{\psi _{\alpha}^{-}\in \mathcal{I}}$ will evolve to $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$. then we write

$$\begin{align}
\Lambda _{\mathrm{in}}\psi _{\alpha}^{+} & =\psi _{\alpha} \\
\Lambda _{\mathrm{out}}\psi _{\alpha}^{-} & =\psi _{\alpha}
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

