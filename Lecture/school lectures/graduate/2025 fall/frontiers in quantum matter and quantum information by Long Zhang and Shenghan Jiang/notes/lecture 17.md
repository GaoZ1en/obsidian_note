last lecture, surface code and homology theory

color code, which allows one to place $\displaystyle{Z}$ plaquette and $\displaystyle{X}$ plaquette operator on the same plaquette...

color each plaquette in RGB, and every two adjacent plaquette are in the different color. the stabilizers are

$$\begin{align}
X_{p} & =\prod _{\ell \in p}X_{p} \\
Z_{p} & =\prod _{\ell \in p}Z_{p}
\end{align}$$

assume we consider a lattice defined on a 2-dim closed surface with genus $\displaystyle{g}$. the number of physical qubits is just the number of vertices $\displaystyle{V}$. notice that

$$\begin{align}
\prod _{p \in R} X_{p} & =\prod _{p \in G}X_{p} =\prod _{p \in B} X_{p} \\
\prod _{p \in R} Z_{p} & =\prod _{p \in G}Z_{p} =\prod _{p \in B} Z_{p}
\end{align}$$

the number of independent stabilizer generator is just $\displaystyle{2F-4}$. then the number of logical qubits is

$$\begin{align}
k & =V-(2F-4) \\
 & =V-2F+4
\end{align}$$

consider the R/G/B-shrank lattice,

$$\begin{align}
\tilde{V} & = F_{R/G/B} \\
2\tilde{E} & =V \\
\tilde{F} & =F_{G/B/R}+F_{B/R/G}
\end{align}$$

then

$$\begin{align}
k & =V-2F+4 \\
 & =2\tilde{E}-2(\tilde{V}+\tilde{F})+4 \\
 & =4-2\tilde{\chi} \\
 & =4g
\end{align}$$

here we use $\displaystyle{\chi=2-2g}$. the ground states are constructed by non-contractible RGB loops on the shrank lattice. notice that for a loop, define

$$\begin{align}
X_{C}^{R,G,B}=\prod _{\ell \in C,\ell \in R,G,B}X_{\ell}
\end{align}$$

then we have

$$\begin{align}
X_{C}^{R}X_{C}^{G}X_{C}^{B}=I
\end{align}$$

we can only use $\displaystyle{R,B}$ to describe all the string/loop operators. for example, consider a color code defined on a torus, we can construct

$$\begin{align}
X_{R,B,1,2},Z_{R,B,1,2}
\end{align}$$

that satisfies the following algebra

$$\begin{align}
\left\{X_{R,2},X_{B,1}\right\}=0,\dots
\end{align}$$

which form the Pauli algebra for 4 logical qubits. the code distance is $\displaystyle{4}$. boundary?

the Steane's code is actually a kind of planar color code. 

3d color code. the construction is similar, but with 4 colors, and the simpliest 3d color code realized universal quantum gate transversally for logical qubits. it is good.

# topological quantum computing

anyon. can only appear in 2+1-dim spacetime. world line braiding.

anyon can be viewed as a bound state of electric particle and magnetic flux. topological spin and anyon statistics, somehow spin-statistics theorem.

toric code, e-particle and m-particle and their bound state. Abelian anyon, FQHE, Laughling states, double fermion model. 

Abelian anyon cannot be used to do topological quantum computing. non-Abelian anyon...



