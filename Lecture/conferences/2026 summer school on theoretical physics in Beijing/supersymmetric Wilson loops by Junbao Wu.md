Part I

Consider a gauge theory with gauge group $\displaystyle{G}$ to be compact and connected whose Lie algebra is $\displaystyle{\mathfrak{g}}$. Some matter field $\displaystyle{\phi(x)}$ lies in the irrep $\displaystyle{R}$ of $\displaystyle{G}$ under local gauge transformation

$$\begin{align}
\phi ^{i}(x)\to M^{i}_{~j}(x)\phi ^{j}(x)
\end{align}$$

denote the gauge filed as $\displaystyle{A_{\mu}^{a}(x),a=1,\dots,\mathrm{dim}G}$, which lie in the irrep of $\displaystyle{\mathfrak{g}}$. Write the connection $\displaystyle{A_{\mu}(x)=A_{\mu}^{a}T^{a}}$, where $\displaystyle{T^{a}}$ are generators in rep $\displaystyle{R}$. The gauge transformation of the connection is

$$\begin{align}
A_{\mu} & \to MA_{\mu}M^{-1}+\dfrac{i}{g}M\partial _{\mu}M^{-1}
\end{align}$$

and the covariant derivatives is defined as

$$\begin{align}
D_{\mu}\phi ^{i} & =\partial _{\mu}\phi ^{i}-igA^{a}_{\mu}(T^{a})^{i}_{~j}\phi ^{j}
\end{align}$$

we want to consider operators such as $\displaystyle{\phi(x)\phi(y)}$, but it is not gauge invariant. The solution is to insert the Wilson line connecting $\displaystyle{x}$ and $\displaystyle{y}$ as

$$\begin{align}
\phi(x)\phi(y) & \to \phi(x)W_{R}(x,y)\phi(y) \\
W_{R}(x,y) & =\mathcal{P}\exp\left(ig \int_{x}^{y} A_{\mu}(z) dz^{\mu}\right)
\end{align}$$

therefore under a gauge transformation, the Wilson line transforms as $W(x,y)\to M(x)W(x,y)M^{-1}(y)$, so that $\phi(x)W(x,y)\phi(y)$ is gauge invariant.

For a contour $\displaystyle{C}$, we can define the Wilson loop

$$\begin{align}
W_{R}(C) & =\mathcal{P}\exp\left(ig\oint _{C} A_{\mu}\mathrm{d}x^{\mu}\right)
\end{align}$$

---

Part II: BPS Wilson lines/loops in $\displaystyle{\mathcal{N}=4}$ SYM

The $\displaystyle{\mathcal{N}=4}$ SYM in $\displaystyle{\mathbb{R}^{4}}$ can be obtained by dimensional reduction from $\displaystyle{\mathcal{N}=1}$ SYM in $\displaystyle{\mathbb{R}^{10}}$ to $\displaystyle{\mathbb{R}^{4}}$. In $\displaystyle{\mathcal{N}=1}$ SYM in $\displaystyle{\mathbb{R}^{10}}$, the field content is the gauge connection and a single Weyl spinor of $\displaystyle{\mathrm{Spin(10)}}$

$$\begin{align}
A_{M}(x^{N}), \quad \Psi(x^{N})
\end{align}$$

under dimensional reduction, the gauge connection $\displaystyle{A_{M}}$ becomes

$$\begin{align}
A_{M}(x^{N})\to \begin{cases}
A_{\mu}(x^{\mu}) \\
\Phi _{i}(x^{\mu})
\end{cases}
\end{align}$$

and the spinor $\displaystyle{\Psi}$ becomes

$$\begin{align}
\Psi(x^{N})\to \psi _{\alpha A}(x^{\mu})
\end{align}$$

the Gamma matrices becomes...

And finally the action is

$$\begin{align}
S & = \int \mathrm{d}^{4}x \mathrm{Tr}\left(\dfrac{1}{2}F_{\mu \nu}F^{\mu \nu}+(D_{\mu}\Phi ^{i})^{2}-\dfrac{1}{2}[\Phi ^{i},\Phi ^{j}][\Phi _{i},\Phi _{j}]+\Psi\Gamma ^{\mu}D_{\mu}\Phi+\Psi\Gamma _{i}[\Phi ^{i},\Psi]\right)
\end{align}$$

this theory is conformal invariance. The $\displaystyle{R}$-symmetry group is $\displaystyle{\mathrm{SU}(4)_{R}\sim \mathrm{Spin}(6)_{R}}$. The scalars $\Phi_i$ transform in the vector representation of $\mathrm{Spin}(6)_R$, and the spinors in the spinor representations.

The supersymmetry transfromation is

$$\begin{align}
\delta A_{\mu} & =\Psi\Gamma _{\mu}\varepsilon \\
\delta \Phi ^{i} & =\Psi\Gamma ^{i}\varepsilon \\
\delta \Psi & =F_{\mu\nu}\Gamma^{\mu\nu}\varepsilon+2[\Phi_i,\Phi_j]\Gamma^{ij}\varepsilon
\end{align}$$

see [[Lecture/conferences/2026 summer school on theoretical physics in Beijing/Junbao|Junbao]]
