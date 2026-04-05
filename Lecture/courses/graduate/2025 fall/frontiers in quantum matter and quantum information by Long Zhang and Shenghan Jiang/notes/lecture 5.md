last class what is MPS in tensor network???

use MPS to illustrate SSB... for example in Ising model, in the physical leg, we label as $\displaystyle{U(g)}$ and in the internal leg, we label as $\displaystyle{W(g)}$ and $\displaystyle{W^{\dagger}(g)}$. here $\displaystyle{U(g)}$ and $\displaystyle{W(g)}$ are some representation of the symmetry group $\displaystyle{g}$. contracting internal legs, and the symmetry only act on the physical legs as

$$\begin{align}
\bigotimes_{j}U_{j}(g)\ket{\psi} =\ket{\psi} 
\end{align}$$

consider the following state

$$\begin{align}
\ket{\uparrow\uparrow\dots \uparrow}+\ket{\downarrow\downarrow\dots \downarrow} 
\end{align}$$

the tensor representation of this state is

$$\begin{align}
\ket{\uparrow} _{j-\frac{1}{2}}\ket{\uparrow} _{j}\bra{\uparrow}_{j+\frac{1}{2}}+\ket{\downarrow} _{j-\frac{1}{2}}\ket{\downarrow} _{j}\bra{\downarrow} _{j+\frac{1}{2}}
\end{align}$$

the symmetry of this state are $\displaystyle{X}$ act on each leg, and $\displaystyle{Z}$ act $\displaystyle{j-\frac{1}{2}}$ and $\displaystyle{j}$ site or $\displaystyle{j-\frac{1}{2}}$ and $\displaystyle{j+\frac{1}{2}}$ site.

add some local perturbation to the Hamiltonian

$$\begin{align}
H & =-J\sum Z_{j}Z_{j+1}-h\sum X_{j}-\sum h'X_{j}X_{j+1}-\dots
\end{align}$$

the symmetry changes to $\displaystyle{W}$ act on the imaginary leg while $\displaystyle{X}$ act on the physical leg, and $\displaystyle{J}$ act on the $\displaystyle{j-\frac{1}{2}}$ and $\displaystyle{j+\frac{1}{2}}$ leg. and we have $\displaystyle{W^{2}=J^{2}=1, JW=-WJ}$. we will consider the following correlation function

$$\begin{align}
\lim_{ L\gg \ell \to \infty } \braket{ \psi|Z_{1}Z_{\ell}|\psi } & =\lim_{ L\gg \ell \to \infty } \mathrm{Tr}\left(\text{some tensor network diagram}\right) \\
 & =\lim_{ L\gg \ell \to \infty } \mathrm{Tr}(T^{L-\ell}T(Z)T^{\ell-2}T(Z))
\end{align}$$

where $\displaystyle{T_{\alpha \alpha',\beta \beta'}=\sum _{i}M^{i}_{\alpha \beta}(M^{*})^{i}_{\alpha'\beta'}}$, here $\displaystyle{M^{i}_{\alpha \beta}}$ is the tensor representation of the state. and $\displaystyle{T(Z)_{\alpha \alpha',\beta \beta'}=\sum _{ij}M^{i}_{\alpha \beta}Z_{ij}(M^{*})^{j}_{\alpha'\beta'}}$. take the eigenstate decomposation of $\displaystyle{T}$ as

$$\begin{align}
T & =\sum _{\alpha}\lambda _{\alpha}\ket{\lambda _{\alpha}} \bra{\lambda _{\alpha}} 
\end{align}$$

when thermodynamic limit is imposed, we have the leading term

$$\begin{align}
\lim_{ L\gg \ell \to \infty } \braket{ \psi|Z_{1}Z_{\ell}|\psi } & \sim \braket{ \lambda_{1}|T(Z)|\lambda_{1} } \braket{ \lambda_{1}|T(Z)|\lambda_{1} } 
\end{align}$$

where $\displaystyle{\lambda_{1}}$ is the largest eigenvalue. by symmetry, we have $\displaystyle{\lim_{ L\gg \ell \to \infty }\braket{ \psi|Z_{1}Z_{\ell}|\psi }=0}$ in the symmetric phase. however in the SSB phase, since

$$\begin{align}
\left\{J\otimes 1,W\otimes W\right\} & =0 \\
[J\otimes 1,T] & =\left\{W\otimes W,T\right\}=0
\end{align}$$

we have degeneracy 2. then

$$\begin{align}
\lim_{ L\gg \ell \to \infty } \braket{ \psi|Z_{1}Z_{\ell}|\psi } & \sim \mathrm{Tr}\left((\ket{\lambda_{1}} \bra{\lambda_{1}} +\ket{\lambda_{2}} \bra{\lambda_{2}} )T(z)(\ket{\lambda_{1}} \bra{\lambda_{1}} +\ket{\lambda_{2}} \bra{\lambda_{2}} )T(z)\right) \\
 & = \braket{ \lambda_{1}|T(Z)|\lambda_{1} } ^{2}+2|\braket{ \lambda_{1}|T(Z)|\lambda_{2} } |^{2}+\braket{ \lambda_{2}|T(Z)|\lambda_{2} } ^{2} \\
 & \neq 0
\end{align}$$

by duality, we can also do something about domain wall.

---

S(ymmetry) P(rotect) T(opological states). symmetry on local tensor$\displaystyle{\implies}$universal observable (ODLRO)

AKLT chain

$$\begin{align}
H & =-\sum _{j}Z_{j-1}X_{j}Z_{j+1}
\end{align}$$

each term in the Hamiltonian commutes with each other. then by diagonalizing each term, we get the total ground states.

$$\begin{align}
Z_{j-1}X_{j}Z_{j+1}\ket{\psi} =\ket{\psi} \implies\dots
\end{align}$$

add some perturbation

$$\begin{align}
H' & =H-\sum hX_{j}
\end{align}$$

the remain symmetry is $\displaystyle{\mathbb{Z}_{2}^{e}\times \mathbb{Z}_{2}^{o}}$, in which $\displaystyle{\mathbb{Z}_{2}^{e}}$ acts on the even sites, and $\displaystyle{\mathbb{Z}_{2}^{o}}$ acts on the odd sites, with generator

$$\begin{align}
g & =\prod _{j}X_{2j} \\
h & =\prod _{j}X_{2j-1}
\end{align}$$

$\displaystyle{Z_{j-1}X_{j}Z_{j+1}\ket{\psi} =\ket{\psi}}$ implies the wave function has the following symmetry, $\displaystyle{Z_{j-1}}$ acts on the physical leg of site $\displaystyle{j-1}$, and so on. impose the following symmetry that
* $\displaystyle{Z}$ acts on the physical leg and $\displaystyle{W}$ acts on the right imaginary leg
* $\displaystyle{X}$ acts on the physical leg, $\displaystyle{W}$ acts on the left imaginary leg, and $\displaystyle{V}$ acts on the right imaginary leg
* $\displaystyle{Z}$ acts on the physical leg and $\displaystyle{V}$ acts on the left imaginary leg
* $\displaystyle{\implies}$ $\displaystyle{X}$ acts on the left imaginary leg and $\displaystyle{Z}$ acts on the right imaginary leg

with $\displaystyle{W^{2}=V^{2}=1}$. one of the solution is $\displaystyle{W=Z}$ and $\displaystyle{V=X}$. then the act of $\displaystyle{g}$ or $\displaystyle{h}$ gives only $\displaystyle{X}$'s act on the physical leg of even or odd sites. we can use $\displaystyle{U_{j}(g),W_{j-\frac{1}{2}}(g),W_{j+\frac{1}{2}}(g)}$... to label above $\displaystyle{X}$ and $\displaystyle{Z}$'s. we have

$$\begin{align}
U_{j}^{2}(g) & =U_{j}^{2}(h) =1 \\
U_{j}(g)U_{j}(h) & =U_{j}(h)U_{j}(g) \\
W_{j-\frac{1}{2}}(g)W_{j-\frac{1}{2}}(h) & =-W_{j-\frac{1}{2}}(h)W_{j-\frac{1}{2}}(g)
\end{align}$$

this is a *projective* representation. this is a general feature of 1d SPT. 

string order parameter. consider the expectation of $\displaystyle{g}$

$$\begin{align}
0=\braket{ \psi|g|\psi }  & = \braket{ \psi|X_{0}X_{2}\dots X_{2L}|\psi }  \\
 & = \braket{ \psi|Z_{-1}Z_{1}Z_{1}Z_{3}\dots Z_{2L-1}Z_{2L+1}|\psi }  \\
 & = \braket{ \psi|Z_{-1}Z_{2L+1}|\psi } 
\end{align}$$

so we can consider

$$\begin{align}
\braket{ \psi|Z_{-1}gZ_{2L+1}|\psi } & =\braket{ \psi|\psi } =1 \\
\braket{ \psi|Z_{0}hZ_{2L}|\psi } & =\braket{ \psi|\psi } =1
\end{align}$$

and more generally

$$\begin{align}
\braket{ \psi|C_{0}(h)U_{1}(g)\dots U_{L}(g)C_{L+1}(h)|\psi }  & = C\neq 0 \\
\braket{ \psi|C_{0}(g)U_{1}(h)\dots U_{L}(h)C_{L+1}(g)|\psi }  & = C'\neq 0
\end{align}$$

where $\displaystyle{C_{j}(h)}$ creates a domain wall that carries $\displaystyle{h}$ charge. 

