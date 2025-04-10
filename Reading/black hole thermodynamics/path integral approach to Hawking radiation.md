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

