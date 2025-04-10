## transition amplitude

a Euclidean path integral defines a transition amplitude under evolution by $\displaystyle{e^{-\beta H}}$

$$\tag{3.1}
\begin{align}
\braket{ \phi _{2}|e^{-\beta H}|\phi _{1} }  & =\int ^{\phi(\tau=\beta)=\phi _{2}}_{\phi(\tau=0)=\phi_{1}}\mathcal{D}\phi e^{-S_{E}[\phi]}
\end{align}
$$

and it can be visualized as ..

## wave function

the transition amplitude defines the wave function. for example

$$\tag{3.2}
\begin{align}
\ket{\Psi} & =\ket{\phi _{1}(\tau)}=e^{-\tau H}\ket{\phi _{1}} 
\end{align}
$$

## cutting the path integral

a "cut" is a Cauchy surface of the Euclidean manifold. to define the transition amplitude, we specified data on two cuts, at $\displaystyle{\tau=0}$ and $\displaystyle{\tau=\beta}$. we can formally write a state as

$$\tag{3.3}
\begin{align}
\ket{\Psi} =\int ^{\phi(\tau=\beta)=??}_{\phi(\tau=0)=\phi_{1}}\mathcal{D}\phi e^{-S_{E}[\phi]}
\end{align}
$$

in which we leave the final cut unspecified. seems like some TQFT.

we can also insert some operators in the path integral. then the path integral is weighted by $\displaystyle{O_{1}(x_{1})O(x_{2})e^{-S_{E}[\phi]}}$, instead of the usual $\displaystyle{e^{-S_{E}[\phi]}}$.

## the ground state

expand some state $\displaystyle{\ket{Y}}$ in energy eigenstates

$$\tag{3.4}
\begin{align}
\ket{Y}  & =\sum _{n}y_{n}\ket{n}, & H\ket{n} =E_{n}\ket{n} 
\end{align}
$$

then evolve over a long Euclidean time, only the lowest energy state remains

$$\tag{3.5}
\begin{align}
e^{-\tau H}\ket{Y} \approx e^{-\tau E_{0}}y_{0}\ket{n} , \tau\to \infty
\end{align}
$$

it follows that we can define ground state by doing a path integral that extends all the way to infinite in one direction.

$$\tag{3.6}
\begin{align}
\ket{0}  & =\int _{-\infty}\mathcal{D}\phi e^{-S_{E}[\phi]}
\end{align}
$$

## vacuum correlation functions

following the above discussion, we can define the vacuum-to-vacuum amplitude as

$$\tag{3.7}
\begin{align}
\braket{ 0|0 }  & =\int \mathcal{D}\phi e^{-S_{E}[\phi]}
\end{align}
$$

expectation values of local operator are computed by similar path integrals, but with extra operator insertions

$$\tag{3.8}
\begin{align}
\braket{ O_{1}(x_{1})O_{2}(x_{2}) }  & = \braket{ 0|O_{1}(x_{1})O_{2}(x_{2})|0 }  \\
 & =\int \mathcal{D}\phi O_{1}(x_{1})O_{2}(x_{2})e^{-S_{E}[\phi]}
\end{align}
$$

## density matrices

as definition, we have

$$\tag{3.9}
\begin{align}
\rho & \equiv e^{-\beta H}=\int _{\phi(\tau=0)=??}^{\phi(\tau=\beta)=??}\mathcal{D}\phi e^{-S_{E}[\phi]}
\end{align}
$$

## thermal partition function

as definition, the partition function is the trace of the density matrix

$$\tag{3.10}
\begin{align}
Z(\beta) & =\mathrm{Tr}e^{-\beta H}=\sum _{\phi}\braket{ \phi|e^{-\beta H}|\phi }  \\
 & =\sum _{\phi}\int _{\phi(\tau=0)=\phi}^{\phi(\tau=\beta)=\phi}\mathcal{D}\phi e^{-\beta H}
\end{align}
$$