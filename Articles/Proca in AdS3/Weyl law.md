the main idea of Weyl law is to provide a relation between the geometry of a domain (or manifold) and the asymptotic distribution of the eigenvalues of some elliptic operator defined on it, typically the Laplacian.

# formalism

let $\displaystyle{M}$ be a compact Riemannian manifold of dimension $\displaystyle{d}$ with boundary $\displaystyle{\partial M}$, and the Laplace-Beltrami operator $\displaystyle{\Delta}$ (exactly the Laplacian acting on the scalar field) on $\displaystyle{M}$ with Dirichlet or Neumann boundary conditions. consider the eigenvalue problem:

$$\begin{align}
-\Delta u_n &= \lambda_n u_n  & \text{with}\quad & \begin{cases}
u_n|_{\partial M}= 0 &  \text{(Dirichlet BC)} \\
\frac{\partial u_n}{\partial n}|_{\partial M}= 0 & \text{(Neumann BC)}
\end{cases}
\end{align}$$

a problem is that does the spectrum $\displaystyle{\left\{\lambda _{n}\right\}}$ completely determine the geometry of $\displaystyle{M}$? Milnor gives a counterexample in 1964, showing that there exist two non-isometric flat tori with the same spectrum. however, Weyl's law provides a link between the asymptotic distribution of eigenvalues and the geometry of the manifold.

denote $\displaystyle{N(\lambda)}$ as the counting function of eigenvalues:

$$\begin{align}
N(\lambda) &= \#\{n : \lambda_n \leq \lambda\}
\end{align}$$

Weyl proves in 1910 that as $\displaystyle{\lambda \to \infty}$, the counting function $\displaystyle{N(\lambda)}$ behaves asymptotically as:

$$\begin{align}
N(\lambda)\sim \frac{\omega _{n}\mathrm{Vol}(M)}{(2\pi)^{n}}\lambda ^{n/2}+\mathcal{O}(\lambda ^{(n-1)/2})
\end{align}$$

where $\displaystyle{\omega _{n}=\frac{\pi ^{n/2}}{\Gamma\left( 1+\frac{b}{2} \right)}}$ is the volume of the unit ball in $\displaystyle{\mathbb{R}^{n}}$, and $\displaystyle{\mathrm{Vol}(M)}$ is the volume of the manifold $\displaystyle{M}$.

Weyl law can be generalized to Schrödinger operators and other elliptic operators. for example, consider the Schrödinger operator $\displaystyle{H=-\hbar ^{2}\Delta + V(x)}$ on $\displaystyle{M}$ with potential $\displaystyle{V(x)}$, we have:

$$\begin{align}
N(E,\hbar)\sim (2\pi \hbar)^{-n}\int _{\left\{|\xi ^{2}|+V(x)<E\right\}}\mathrm{d}x\mathrm{d}\xi
\end{align}$$

where the RHS is the classical phase space volume of the energy surface $\displaystyle{H(x,\xi)<E}$.

# proof sketch

here we present a heat kernel proof. the heat kernel trace has the following asymptotic expansion as $\displaystyle{t \to 0^{+}}$:

$$\begin{align}
\mathrm{Tr}e^{-t\Delta} & =\sum _{n}e^{-t\lambda _{n}}=\int ^{\infty}_{0}e^{-t\lambda}\mathrm{d}N(\lambda) \\
 & =(4\pi t)^{-n/2}\sum _{n=0}^{\infty}a_{n}t^{n}
\end{align}$$

where the Seelay-DeWitt coefficients $\displaystyle{a_{n}}$ depend on the geometry of $\displaystyle{M}$ and its boundary. the leading term is given by:

$$\begin{align}
a_{0}=\mathrm{Vol}(M)
\end{align}$$

Karamata' Tauberian theorem states that let $\displaystyle{N(\lambda)}$ be a monotone function satisfying

$$\begin{align}
\int ^{\infty}_{0}e^{-t\lambda}\mathrm{d}N(\lambda)\sim Ct^{-\alpha} \quad (t \to 0^{+})
\end{align}$$

then

$$\begin{align}
\mu(\lambda)\sim \frac{C\lambda ^{\alpha}}{\Gamma(1+\alpha)} \quad (\lambda \to \infty)
\end{align}$$

so we have

$$\begin{align}
N(\lambda) & \sim \frac{(4\pi)^{-n/2}\mathrm{Vol}(M)}{\Gamma\left( 1+\frac{n}{2} \right)}\lambda ^{n/2} \\
 & =\frac{\omega _{n}\mathrm{Vol}(M)}{(2\pi)^{n}}\lambda ^{n/2}\quad(\lambda\to \infty)
\end{align}$$

# remarks

if we consider manifolds with boundary, the next leading term in Weyl law involves the area of the boundary:

$$\begin{align}
N(\lambda) & \sim \frac{\omega _{n}\mathrm{Vol}(M)}{(2\pi)^{n}}\lambda ^{n/2}\pm\frac{\omega _{n-1}\mathrm{Vol}(\partial M)}{4(2\pi)^{n-1}}\lambda ^{(n-1)/2}
\end{align}$$

where $\displaystyle{+}$ is for Neumann boundary conditions and $\displaystyle{-}$ is for Dirichlet boundary conditions.

