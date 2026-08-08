Consider Maxwell theory defined on a manifold $\displaystyle{M=\mathbb{R}_{t}\times[-L,L]_{x}\times S_{y}^{1}}$, with the identification $\displaystyle{y\sim y+\ell_{y}}$, $\displaystyle{\ell_{y}=2\pi R}$, and a cut at the origin $\displaystyle{x=0}$, which separates the interval into two intervals

$$\begin{align}
I_{1} & =[-L,0] \\
I_{2} & =[0,L]
\end{align}$$

with flat metric $\displaystyle{ds^{2}=-dt^{2}+dx^{2}+dy^{2}}$. On each region $\displaystyle{M_{i}=\mathbb{R}_{t}\times I_{i}\times S_{y}^{1}}$ the Maxwell action is taken to be

$$\begin{align}
S_{i}[A_{i}] & =-\dfrac{1}{4}\int_{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\,F_{i,\mu\nu}F_{i}^{\mu\nu}
\end{align}$$

Define the field strengths

$$\begin{align}
E_{x}=F_{tx}, \qquad E_{y}=F_{ty}, \qquad B=F_{xy}
\end{align}$$

in terms of which

$$\begin{align}
S_{i} & =\dfrac{1}{2}\int_{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\left(E_{x}^{2}+E_{y}^{2}-B^{2}\right)
\end{align}$$

Taking a variation of the action

$$\begin{align}
\delta S_{i} & =\int_{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\,(\partial_{\mu}F_{i}^{\mu\nu})\delta A_{i,\nu} \\
 & \quad-\int_{\mathbb{R}_{t}\times S_{y}^{1}}\mathrm{d}t\mathrm{d}y\left[E_{x,i}\delta A_{t,i}+B_{i}\delta A_{y,i}\right]_{\partial I_{i}}+\left[\int_{\Sigma_{i}}\mathrm{d}x\mathrm{d}y\,E_{i}^{a}\delta A_{i,a}\right]_{t_{i}}^{t_{f}}
\end{align}$$

so the symplectic potential and the symplectic form on a slice $\displaystyle{\Sigma_{i}=I_{i}\times S_{y}^{1}}$ are

$$\begin{align}
\theta_{i} & =\int_{\Sigma_{i}}\mathrm{d}x\mathrm{d}y\left(E_{x,i}\delta A_{x,i}+E_{y,i}\delta A_{y,i}\right) \\
\omega_{i} & =\int_{\Sigma_{i}}\mathrm{d}x\mathrm{d}y\left(\delta E_{x,i}\wedge\delta A_{x,i}+\delta E_{y,i}\wedge\delta A_{y,i}\right)
\end{align}$$

which is the same covariant phase space organization as the scalar

$$\begin{align}
\theta=\int\dot{\phi}\,\delta\phi, \qquad \omega=\int\delta\dot{\phi}\wedge\delta\phi
\end{align}$$

The equations of motion are

$$\begin{align}
\partial_{\mu}F^{\mu\nu}=0
\end{align}$$

of which

$$\begin{align}
\partial_{x}E_{x}+\partial_{y}E_{y}=0
\end{align}$$

is the Gauss constraint. The proper gauge transformations

$$\begin{align}
\delta_{\lambda}A_{a}=\partial_{a}\lambda
\end{align}$$

act on the constraint surface as

$$\begin{align}
\iota_{\delta_{\lambda}}\omega\sim\int_{\partial\Sigma}\mathrm{d}y\,\lambda\,\delta E_{n}
\end{align}$$

a boundary term that will become the source of the cut zero-mode/edge sector.

Two boundary conditions make the variation boundary term vanish. The first fixes the pullback of $\displaystyle{A}$ on $\displaystyle{\partial M}$,

$$\begin{align}
\mathsf D_{M}: \qquad A_{t}|_{\partial M}=A_{y}|_{\partial M}=0, \qquad \iota^{*}A=0
\end{align}$$

and the second kills the normal flux

$$\begin{align}
\mathsf N_{M}: \qquad E_{x}|_{\partial M}=B|_{\partial M}=0, \qquad n_{\mu}F^{\mu\alpha}=0
\end{align}$$

## Maxwell and the Dual Scalar

Now comes the core simplification of the whole calculation. In the oscillator sector define the dual scalar $\displaystyle{\varphi}$ by

$$\begin{align}
E_{x}=-\partial_{y}\varphi, \qquad E_{y}=\partial_{x}\varphi, \qquad B=\dot{\varphi}
\end{align}$$

The Gauss law and the Maxwell dynamical equations are then satisfied automatically, while the Bianchi identity gives

$$\begin{align}
-\ddot{\varphi}+\partial_{x}^{2}\varphi+\partial_{y}^{2}\varphi=0
\end{align}$$

More importantly, consider the symplectic form. Integrating by parts

$$\begin{align}
\omega_{M}=\int_{\Sigma}\mathrm{d}x\mathrm{d}y\,\delta\dot{\varphi}\wedge\delta\varphi+\left[\int_{S_{y}^{1}}\mathrm{d}y\,\delta\varphi\wedge\delta A_{y}\right]_{\partial I}
\end{align}$$

For $\displaystyle{\mathsf D_{M}}$ we have $\displaystyle{\delta A_{y}|_{\partial I}=0}$, so

$$\begin{align}
\omega_{M}=\omega_{\varphi}
\end{align}$$

For the non-zero-frequency oscillator sector of $\displaystyle{\mathsf N_{M}}$, the boundary conditions $\displaystyle{E_{x}=B=0}$ imply $\displaystyle{\partial_{y}\varphi=\dot{\varphi}=0}$ on the boundary, hence each $\displaystyle{\omega>0}$ Fourier mode satisfies $\displaystyle{\varphi|_{\partial I}=0}$, and again

$$\begin{align}
\omega_{M}=\omega_{\varphi}
\end{align}$$

The boundary conditions map as

$$\begin{align}
\mathsf D_{M} \quad\Longleftrightarrow\quad \partial_{x}\varphi=0
\end{align}$$

because $\displaystyle{E_{y}=F_{ty}=\partial_{x}\varphi}$ and $\displaystyle{A_{t}=A_{y}=0}$ implies $\displaystyle{F_{ty}=0}$, and

$$\begin{align}
\mathsf N_{M} \quad\Longleftrightarrow\quad \varphi=0 \qquad(\omega>0)
\end{align}$$

because $\displaystyle{E_{x}=-\partial_{y}\varphi}$ and $\displaystyle{B=\dot{\varphi}}$. This is the key exchange

$$\begin{align}
\mathsf D_{M}\leftrightarrow\mathsf N_{\varphi}, \qquad \mathsf N_{M}\leftrightarrow\mathsf D_{\varphi}
\end{align}$$

## Fourier Decomposition on $\displaystyle{S_{y}^{1}}$

Define

$$\begin{align}
Y_{m}(y)=\dfrac{e^{iq_{m}y}}{\sqrt{\ell_{y}}}, \qquad q_{m}=\dfrac{2\pi m}{\ell_{y}}=\dfrac{m}{R}, \qquad m\in\mathbb{Z}
\end{align}$$

and expand

$$\begin{align}
\varphi(t,x,y)=\sum_{m}\varphi_{m}(t,x)Y_{m}(y)
\end{align}$$

Each $\displaystyle{m}$ sector then satisfies

$$\begin{align}
-\ddot{\varphi}_{m}+\varphi_{m}''-q_{m}^{2}\varphi_{m}=0
\end{align}$$

so it is precisely the $1+1$ massive scalar of the pure-scalar problem, with the replacement

$$\begin{align}
m^{2}\longrightarrow q_{m}^{2}
\end{align}$$

## Single-Interval Modes: Dirichlet Maxwell

Since $\displaystyle{\mathsf D_{M}\leftrightarrow\mathsf N_{\varphi}}$, use the scalar Neumann modes on an interval of length $\displaystyle{L}$. Let

$$\begin{align}
k_{n}=\dfrac{n\pi}{L}, \qquad \omega_{m,n}=\sqrt{q_{m}^{2}+k_{n}^{2}}
\end{align}$$

On the left interval

$$\begin{align}
U^{N}_{1,0}(x)=\dfrac{1}{\sqrt L}, \qquad u^{N}_{1,n}(x)=\sqrt{\dfrac{2}{L}}\cos\left(k_{n}(x+L)\right), \qquad n\geq1
\end{align}$$

and on the right

$$\begin{align}
U^{N}_{2,0}(x)=\dfrac{1}{\sqrt L}, \qquad u^{N}_{2,n}(x)=\sqrt{\dfrac{2}{L}}\cos\left(k_{n}x\right), \qquad n\geq1
\end{align}$$

The dual-scalar positive-frequency modes are

$$\begin{align}
\Phi^{D}_{i,m,n}=\dfrac{e^{-i\omega_{m,n}t}}{\sqrt{2\omega_{m,n}}}Y_{m}(y)u^{N}_{i,n}(x)
\end{align}$$

where the mode $\displaystyle{(m,n)=(0,0)}$ cannot be treated as a harmonic oscillator because $\displaystyle{\omega=0}$; it is handled separately below.

A convenient Maxwell representative is the temporal–Coulomb gauge

$$\begin{align}
\mathcal A_{t}=0, \qquad \mathcal A_{x}=\dfrac{q_{m}}{\omega}\Phi, \qquad \mathcal A_{y}=\dfrac{i}{\omega}\partial_{x}\Phi
\end{align}$$

for which one checks directly that

$$\begin{align}
\partial_{x}A_{x}+\partial_{y}A_{y}=0
\end{align}$$

and

$$\begin{align}
E_{x}=-iq_{m}\Phi, \qquad E_{y}=\partial_{x}\Phi, \qquad B=-i\omega\Phi
\end{align}$$

The scalar Neumann condition $\displaystyle{\partial_{x}\Phi|_{\partial I}=0}$ then indeed gives $\displaystyle{A_{y}|_{\partial I}=0}$ with $\displaystyle{A_{t}=0}$. Since $\displaystyle{\omega_{M}=\omega_{\varphi}}$, these modes are orthonormal

$$\begin{align}
(\mathcal A_{i,m,n},\mathcal A_{j,r,s})=\delta_{ij}\delta_{mr}\delta_{ns}
\end{align}$$

Expand

$$\begin{align}
A_{i}^{\mathrm{osc}}=\sum_{m,n}{}'\left(a^{D}_{i,m,n}\mathcal A^{D}_{i,m,n}+a^{D\dagger}_{i,m,n}\mathcal A^{D*}_{i,m,n}\right)+\text{proper gauge}
\end{align}$$

where the prime excludes $\displaystyle{(m,n)=(0,0)}$. The normalization and the Poisson brackets are identical to the scalar ones

$$\begin{align}
\omega_{D}^{\mathrm{osc}} & =i\sum_{i,m,n}{}'\delta a^{D\dagger}_{i,m,n}\wedge\delta a^{D}_{i,m,n} \\
[a^{D}_{i,m,n},a^{D\dagger}_{j,r,s}] & =\delta_{ij}\delta_{mr}\delta_{ns}
\end{align}$$

with the Hamiltonian

$$\begin{align}
H_{D}^{\mathrm{osc}}=\sum_{i,m,n}{}'\omega_{m,n}\left(a^{D\dagger}_{i,m,n}a^{D}_{i,m,n}+\dfrac{1}{2}\right)
\end{align}$$

## Single-Interval Modes: Neumann Maxwell

Now $\displaystyle{\mathsf N_{M}\leftrightarrow\mathsf D_{\varphi}}$, so use the scalar Dirichlet basis

$$\begin{align}
u^{D}_{1,n}(x)=\sqrt{\dfrac{2}{L}}\sin\left(k_{n}(x+L)\right), \qquad u^{D}_{2,n}(x)=\sqrt{\dfrac{2}{L}}\sin\left(k_{n}x\right), \qquad n=1,2,\dots
\end{align}$$

with the modes

$$\begin{align}
\Phi^{N}_{i,m,n}=\dfrac{e^{-i\omega_{m,n}t}}{\sqrt{2\omega_{m,n}}}Y_{m}u^{D}_{i,n}
\end{align}$$

Because $\displaystyle{\Phi|_{\partial I}=0}$,

$$\begin{align}
E_{x}=-iq_{m}\Phi=0, \qquad B=-i\omega\Phi=0
\end{align}$$

so the Maxwell Neumann condition is strictly satisfied. The oscillator sector is therefore

$$\begin{align}
\omega_{N}^{\mathrm{osc}} & =i\sum_{i,m,n}\delta a^{N\dagger}_{i,m,n}\wedge\delta a^{N}_{i,m,n} \\
[a^{N}_{i,m,n},a^{N\dagger}_{j,r,s}] & =\delta_{ij}\delta_{mr}\delta_{ns} \\
H_{N}^{\mathrm{osc}} & =\sum_{i,m,n}\omega_{m,n}\left(a^{N\dagger}_{i,m,n}a^{N}_{i,m,n}+\dfrac{1}{2}\right)
\end{align}$$

## Gluing Theories: Dirichlet Maxwell

This is the Neumann-scalar analogue missing from the pure-scalar calculation. The finite-$\displaystyle{\kappa}$ gluing is not unique: the two endpoint boundary theories are fixed, but the interface theory that connects them is not. Here we first perform the proper gauge quotient and glue the dual scalars on the reduced phase space following the scalar formalism, which is the choice under which all bulk photon modes can be obtained analytically. Writing the finite-$\displaystyle{\kappa}$ theory itself as a manifestly local, gauge-invariant $\displaystyle{A_{\mu}+}$edge-field action is a separate problem.

For dimensionally correct couplings introduce a dimensionless $\displaystyle{\kappa}$ and a fixed scale

$$\begin{align}
\mu>0, \qquad [\mu]=L^{-1}
\end{align}$$

The pure-scalar calculation corresponds to $\displaystyle{\mu=1}$. On the reduced Maxwell phase space take

$$\begin{align}
S_{\kappa,D}^{\mathrm{red}}=\dfrac{1}{2}\sum_{i}\int_{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\left[\dot\varphi_{i}^{2}-\varphi_{i}'^{2}-(\partial_{y}\varphi_{i})^{2}\right]-\dfrac{\mu\kappa}{2}\int_{\Gamma}\mathrm{d}t\mathrm{d}y\,(\varphi_{1}-\varphi_{2})^{2}
\end{align}$$

The outer endpoints always satisfy exactly

$$\begin{align}
\varphi_{1}'(-L)=0, \qquad \varphi_{2}'(L)=0
\end{align}$$

Variation at the cut gives

$$\begin{align}
-\varphi_{1}'-\mu\kappa(\varphi_{1}-\varphi_{2})=0, \qquad +\varphi_{2}'+\mu\kappa(\varphi_{1}-\varphi_{2})=0
\end{align}$$

i.e.

$$\begin{align}
\varphi_{1}'=\varphi_{2}'=-\mu\kappa(\varphi_{1}-\varphi_{2})
\end{align}$$

Therefore

$$\begin{align}
\kappa\to0: \qquad \varphi_{1}'=\varphi_{2}'=0
\end{align}$$

which is exactly two decoupled Maxwell Dirichlet theories, while

$$\begin{align}
\kappa\to\infty
\end{align}$$

forces $\displaystyle{\varphi_{1}=\varphi_{2}}$ in the finite-energy sector, and the boundary equations then give $\displaystyle{\varphi_{1}'=\varphi_{2}'}$, recovering the smooth global Maxwell gluing.

### Finite-$\displaystyle{\kappa}$ Modes

Using the reflection symmetry

$$\begin{align}
\varphi_{\sigma,2}(x)=\sigma\varphi_{\sigma,1}(-x), \qquad \sigma=\pm1
\end{align}$$

take

$$\begin{align}
\Phi^{D}_{\sigma,m,n,1} & =\mathcal N^{D}_{\sigma,m,n}e^{-i\omega t}Y_{m}\cos\left[k_{\sigma,n}(x+L)\right] \\
\Phi^{D}_{\sigma,m,n,2} & =\sigma\mathcal N^{D}_{\sigma,m,n}e^{-i\omega t}Y_{m}\cos\left[k_{\sigma,n}(L-x)\right]
\end{align}$$

with frequencies

$$\begin{align}
\omega_{\sigma,m,n}^{2}=q_{m}^{2}+k_{\sigma,n}^{2}
\end{align}$$

For $\displaystyle{\sigma=+1}$ the cut condition is automatically $\displaystyle{\sin(kL)=0}$, so

$$\begin{align}
k_{+,n}=\dfrac{n\pi}{L}, \qquad n=0,1,2,\dots
\end{align}$$

independent of $\displaystyle{\kappa}$. For $\displaystyle{\sigma=-1}$ one obtains

$$\begin{align}
k\sin(kL)=2\mu\kappa\cos(kL)
\end{align}$$

i.e.

$$\begin{align}
k_{-,n}\tan(k_{-,n}L)=2\mu\kappa
\end{align}$$

For $\displaystyle{\kappa>0}$, each $\displaystyle{n=0,1,2,\dots}$ has the unique root

$$\begin{align}
\dfrac{n\pi}{L}<k_{-,n}<\dfrac{(n+\frac{1}{2})\pi}{L}
\end{align}$$

Substituting back into the two boundary equations at the cut, both are satisfied identically. The normalization constant is

$$\begin{align}
\mathcal N^{D}_{\sigma,m,n}=\dfrac{1}{\sqrt{2\omega_{\sigma,m,n}}}\left[L+\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}\right]^{-1/2}
\end{align}$$

where the bracket approaches $\displaystyle{2L}$ as $\displaystyle{k\to0}$. Therefore

$$\begin{align}
\omega_{\kappa,D}^{\mathrm{osc}} & =i\sum_{\sigma,m,n}{}'\delta b^{D\dagger}_{\sigma,m,n}\wedge\delta b^{D}_{\sigma,m,n} \\
[b^{D}_{\sigma,m,n},b^{D\dagger}_{\tau,r,s}] & =\delta_{\sigma\tau}\delta_{mr}\delta_{ns}
\end{align}$$

and

$$\begin{align}
H_{\kappa,D}^{\mathrm{osc}}=\sum_{\sigma,m,n}{}'\omega_{\sigma,m,n}\left(b^{D\dagger}_{\sigma,m,n}b^{D}_{\sigma,m,n}+\dfrac{1}{2}\right)
\end{align}$$

The prime again excludes the genuine $\displaystyle{\omega=0}$ harmonic sector from the Fock-oscillator treatment.

### The $\displaystyle{\kappa\to0}$ Limit

Both towers degenerate

$$\begin{align}
k_{+,n}\to\dfrac{n\pi}{L}, \qquad k_{-,n}\to\dfrac{n\pi}{L}
\end{align}$$

recovering the two half-intervals. Using the right-interval basis above,

$$\begin{align}
b^{D}_{+,m,n} & \longrightarrow\dfrac{a^{D}_{1,m,n}+(-1)^{n}a^{D}_{2,m,n}}{\sqrt{2}} \\
b^{D}_{-,m,n} & \longrightarrow\dfrac{a^{D}_{1,m,n}-(-1)^{n}a^{D}_{2,m,n}}{\sqrt{2}}
\end{align}$$

Therefore

$$\begin{align}
\mathcal F_{\kappa\to0,D}^{\mathrm{osc}}=\mathcal F^{D}_{1}\otimes\mathcal F^{D}_{2}
\end{align}$$

### The $\displaystyle{\kappa\to\infty}$ Limit

Now

$$\begin{align}
k_{+,n}=\dfrac{n\pi}{L}, \qquad k_{-,n}\longrightarrow\dfrac{(n+\frac{1}{2})\pi}{L}
\end{align}$$

A global Maxwell Dirichlet theory on length $\displaystyle{2L}$ corresponds to scalar Neumann

$$\begin{align}
K_{r}=\dfrac{r\pi}{2L}, \qquad r=0,1,2,\dots
\end{align}$$

so the two towers interlace as

$$\begin{align}
b^{D}_{+,m,n}\to c^{D}_{m,2n}, \qquad b^{D}_{-,m,n}\to c^{D}_{m,2n+1}
\end{align}$$

The global modes are

$$\begin{align}
U^{N}_{0}(x)=\dfrac{1}{\sqrt{2L}}, \qquad U^{N}_{r}(x)=\dfrac{1}{\sqrt L}\cos\left[\dfrac{r\pi(x+L)}{2L}\right], \qquad r\geq1
\end{align}$$

with frequencies

$$\begin{align}
\Omega^{D}_{m,r}=\sqrt{q_{m}^{2}+\dfrac{r^{2}\pi^{2}}{4L^{2}}}
\end{align}$$

Only $\displaystyle{(m,r)=(0,0)}$ is not a photon oscillator.

## Gluing Theories: Neumann Maxwell

This part is almost exactly the pure-scalar calculation, sector by sector, with $\displaystyle{m_{\mathrm{scalar}}=|q_{m}|}$. On the reduced phase space take

$$\begin{aligned}
S_{\kappa,N}^{\mathrm{red}}={} & \dfrac{1}{2}\sum_{i}\int_{M_{i}}\mathrm{d}t\mathrm{d}x\mathrm{d}y\left[\dot\varphi_{i}^{2}-\varphi_{i}'^{2}-(\partial_{y}\varphi_{i})^{2}\right] \\
 & -\dfrac{\mu}{2\kappa}\int_{\Gamma}\mathrm{d}t\mathrm{d}y\,(\varphi_{1}^{2}+\varphi_{2}^{2})-\dfrac{\mu\kappa}{2}\int_{\Gamma}\mathrm{d}t\mathrm{d}y\,(\varphi_{1}-\varphi_{2})^{2}
\end{aligned}$$

This is the dimensionally corrected version of the scalar construction. The outer endpoints always satisfy exactly

$$\begin{align}
\varphi_{1}(-L)=0, \qquad \varphi_{2}(L)=0
\end{align}$$

and the cut equations are

$$\begin{align}
\varphi_{1}'+\dfrac{\mu}{\kappa}\varphi_{1}+\mu\kappa(\varphi_{1}-\varphi_{2})=0, \qquad \varphi_{2}'-\dfrac{\mu}{\kappa}\varphi_{2}+\mu\kappa(\varphi_{1}-\varphi_{2})=0
\end{align}$$

### Finite-$\displaystyle{\kappa}$ Modes

Take

$$\begin{align}
\Phi^{N}_{\sigma,m,n,1} & =\mathcal N^{N}_{\sigma,m,n}e^{-i\omega t}Y_{m}\sin\left[k_{\sigma,n}(x+L)\right] \\
\Phi^{N}_{\sigma,m,n,2} & =\sigma\mathcal N^{N}_{\sigma,m,n}e^{-i\omega t}Y_{m}\sin\left[k_{\sigma,n}(L-x)\right]
\end{align}$$

The cut conditions then give

$$\begin{align}
k_{+,n}\cot(k_{+,n}L)=-\dfrac{\mu}{\kappa}, \qquad k_{-,n}\cot(k_{-,n}L)=-\mu\left(\dfrac{1}{\kappa}+2\kappa\right)
\end{align}$$

or equivalently

$$\begin{align}
\tan(k_{+,n}L)=-\dfrac{\kappa k_{+,n}}{\mu}
\end{align}$$

and the corresponding minus-sector equation. For $\displaystyle{\mu=1}$ these are precisely the scalar transcendental equations. Each $\displaystyle{n=1,2,\dots}$ has the unique root in

$$\begin{align}
\dfrac{(n-\frac{1}{2})\pi}{L}<k_{\sigma,n}<\dfrac{n\pi}{L}
\end{align}$$

with frequencies

$$\begin{align}
\omega_{\sigma,m,n}=\sqrt{q_{m}^{2}+k_{\sigma,n}^{2}}
\end{align}$$

and normalization

$$\begin{align}
\mathcal N^{N}_{\sigma,m,n}=\dfrac{1}{\sqrt{2\omega_{\sigma,m,n}}}\left[L-\dfrac{\sin(2k_{\sigma,n}L)}{2k_{\sigma,n}}\right]^{-1/2}
\end{align}$$

Therefore

$$\begin{align}
\omega_{\kappa,N}^{\mathrm{osc}} & =i\sum_{\sigma,m,n}\delta b^{N\dagger}_{\sigma,m,n}\wedge\delta b^{N}_{\sigma,m,n} \\
[b^{N}_{\sigma,m,n},b^{N\dagger}_{\tau,r,s}] & =\delta_{\sigma\tau}\delta_{mr}\delta_{ns}
\end{align}$$

and

$$\begin{align}
H_{\kappa,N}^{\mathrm{osc}}=\sum_{\sigma,m,n}\omega_{\sigma,m,n}\left(b^{N\dagger}_{\sigma,m,n}b^{N}_{\sigma,m,n}+\dfrac{1}{2}\right)
\end{align}$$

### The $\displaystyle{\kappa\to0}$ Limit

Both towers have

$$\begin{align}
k_{\sigma,n}\to\dfrac{n\pi}{L}
\end{align}$$

so

$$\begin{align}
b^{N}_{+,m,n} & \longrightarrow\dfrac{a^{N}_{1,m,n}+(-1)^{n+1}a^{N}_{2,m,n}}{\sqrt{2}} \\
b^{N}_{-,m,n} & \longrightarrow\dfrac{a^{N}_{1,m,n}-(-1)^{n+1}a^{N}_{2,m,n}}{\sqrt{2}}
\end{align}$$

and

$$\begin{align}
\mathcal F_{\kappa\to0,N}^{\mathrm{osc}}=\mathcal F^{N}_{1}\otimes\mathcal F^{N}_{2}
\end{align}$$

### The $\displaystyle{\kappa\to\infty}$ Limit

Now

$$\begin{align}
k_{+,n}\to\dfrac{(n-\frac{1}{2})\pi}{L}, \qquad k_{-,n}\to\dfrac{n\pi}{L}
\end{align}$$

The global Maxwell Neumann theory on length $\displaystyle{2L}$ corresponds to scalar Dirichlet

$$\begin{align}
K_{r}=\dfrac{r\pi}{2L}, \qquad r=1,2,\dots
\end{align}$$

with modes

$$\begin{align}
U^{D}_{r}(x)=\dfrac{1}{\sqrt L}\sin\left[\dfrac{r\pi(x+L)}{2L}\right]
\end{align}$$

so the interlacing is

$$\begin{align}
b^{N}_{+,m,n}\to c^{N}_{m,2n-1}, \qquad b^{N}_{-,m,n}\to c^{N}_{m,2n}
\end{align}$$

and the global frequencies are

$$\begin{align}
\Omega^{N}_{m,r}=\sqrt{q_{m}^{2}+\dfrac{r^{2}\pi^{2}}{4L^{2}}}, \qquad r\geq1
\end{align}$$

## Harmonic and Zero-Mode Sector

The description is not yet complete, because the circle $\displaystyle{S_{y}^{1}}$ endows Maxwell with global modes that do not appear in the ordinary massive scalar calculation. This is where the two boundary conditions genuinely differ.

### Dirichlet Zero Mode

On an interval of length $\displaystyle{L}$ take

$$\begin{align}
A_{x}^{(0)}(t)=\dfrac{w(t)}{L}, \qquad A_{y}=A_{t}=0
\end{align}$$

Define the open Wilson-line coordinate

$$\begin{align}
w=\int_{I}A_{x}\,\mathrm{d}x
\end{align}$$

and the electric flux

$$\begin{align}
p=\int_{S_{y}^{1}}E_{x}\,\mathrm{d}y=\ell_{y}E_{x}
\end{align}$$

Then

$$\begin{align}
\theta_{0,D}=p\,\delta w, \qquad \omega_{0,D}=\delta p\wedge\delta w, \qquad H_{0,D}^{(L)}=\dfrac{L}{2\ell_{y}}p^{2}
\end{align}$$

This cannot be written as $\displaystyle{\omega(a^{\dagger}a+\frac{1}{2})}$ because it is a quantum-mechanical zero mode rather than a harmonic oscillator.

The two decoupled theories have

$$\begin{align}
\omega_{0,D}^{\mathrm{dec}}=\delta p_{1}\wedge\delta w_{1}+\delta p_{2}\wedge\delta w_{2}, \qquad H_{0,D}^{\mathrm{dec}}=\dfrac{L}{2\ell_{y}}(p_{1}^{2}+p_{2}^{2})
\end{align}$$

Strong gluing requires continuity of the normal electric field

$$\begin{align}
p_{1}=p_{2}=:p
\end{align}$$

while the relative Wilson line $\displaystyle{w_{1}-w_{2}}$ becomes the interface gauge direction; the genuine global coordinate is

$$\begin{align}
w=w_{1}+w_{2}
\end{align}$$

Pulling back the symplectic form,

$$\begin{align}
\omega_{0,D}^{\mathrm{glued}}=\delta p\wedge\delta(w_{1}+w_{2})=\delta p\wedge\delta w
\end{align}$$

with the global Hamiltonian

$$\begin{align}
H_{0,D}^{(2L)}=\dfrac{L}{\ell_{y}}p^{2}
\end{align}$$

which is also the direct answer computed on a single interval of length $\displaystyle{2L}$. This is the finite-region symplectic reduction

$$\begin{align}
\{p_{1}=p_{2}\}/(\text{relative interface gauge})
\end{align}$$

### Neumann Zero Mode

The boundary condition $\displaystyle{E_{x}=B=0}$ permits a flat holonomy around $\displaystyle{S_{y}^{1}}$

$$\begin{align}
A_{y}^{(0)}(t)=\dfrac{\alpha(t)}{\ell_{y}}
\end{align}$$

Define

$$\begin{align}
\alpha=\oint_{S_{y}^{1}}A_{y}\,\mathrm{d}y, \qquad p=\int_{I}E_{y}\,\mathrm{d}x
\end{align}$$

Then

$$\begin{align}
\theta_{0,N}=p\,\delta\alpha, \qquad \omega_{0,N}=\delta p\wedge\delta\alpha, \qquad H_{0,N}^{(L)}=\dfrac{\ell_{y}}{2L}p^{2}
\end{align}$$

The two decoupled theories have

$$\begin{align}
H_{0,N}^{\mathrm{dec}}=\dfrac{\ell_{y}}{2L}(p_{1}^{2}+p_{2}^{2})
\end{align}$$

Global smoothness requires

$$\begin{align}
\alpha_{1}=\alpha_{2}=:\alpha
\end{align}$$

and since $\displaystyle{E_{y}=\dot A_{y}}$,

$$\begin{align}
p_{1}=p_{2}=\dfrac{p}{2}, \qquad p=p_{1}+p_{2}
\end{align}$$

Hence

$$\begin{align}
\omega_{0,N}^{\mathrm{glued}}=\delta(p_{1}+p_{2})\wedge\delta\alpha=\delta p\wedge\delta\alpha, \qquad H_{0,N}^{(2L)}=\dfrac{\ell_{y}}{4L}p^{2}
\end{align}$$

For compact $\displaystyle{U(1)}$ with unit charge, $\displaystyle{\alpha\sim\alpha+2\pi}$, so this is a quantum rotor with discrete $\displaystyle{p}$; for non-compact $\displaystyle{\mathbb{R}}$ Maxwell it is an ordinary free particle.

## Summary

The full Maxwell Hilbert space is not a single Fock space but

$$\begin{align}
\mathcal H=\mathcal H_{0}\otimes\mathcal F_{\mathrm{photon}}
\end{align}$$

For the two boundary conditions

$$\begin{align}
\begin{array}{c|c|c}
 & \mathsf D_{M} & \mathsf N_{M} \\
\hline \text{Maxwell BC} & A_{t}=A_{y}=0 & E_{x}=B=0 \\
\text{dual scalar BC} & \partial_{x}\varphi=0 & \varphi=0 \\
x\text{-basis} & \cos(kx) & \sin(kx) \\
n & 0,1,2,\dots & 1,2,\dots \\
\text{global zero mode} & (w,p_{E}) & (\alpha,p_{y}) \\
\kappa\to0 & \mathcal H_{D,1}\otimes\mathcal H_{D,2} & \mathcal H_{N,1}\otimes\mathcal H_{N,2} \\
\kappa\to\infty & \text{global } \mathsf D_{M} & \text{global } \mathsf N_{M}
\end{array}
\end{align}$$

and the oscillator spectra are

$$\begin{align}
\mathsf D_{M}: \quad k_{+,n}=\dfrac{n\pi}{L}, \qquad k_{-,n}\tan(k_{-,n}L)=2\mu\kappa; \\
\mathsf N_{M}: \quad k_{+,n}\cot(k_{+,n}L)=-\dfrac{\mu}{\kappa}, \qquad k_{-,n}\cot(k_{-,n}L)=-\mu\left(\dfrac{1}{\kappa}+2\kappa\right)
\end{align}$$

with the unified dispersion

$$\begin{align}
\omega_{\sigma,m,n}^{2}=q_{m}^{2}+k_{\sigma,n}^{2}
\end{align}$$

The second line of spectra is the pure-scalar calculation mode by mode with an added $\displaystyle{q_{m}}$, while the first line is the Neumann-scalar counterpart missing from it. Up to the oscillator sector, this problem is essentially a copy of the scalar gluing, with all Maxwell-specific structure concentrated in the proper-gauge quotient and the harmonic/edge sector, namely

$$\begin{align}
\text{cut gauge symmetry}+\text{electric flux/holonomy zero modes}
\end{align}$$

This is the structure that persists in a $3+1$ Maxwell generalization, while the $2+1$ scalar duality merely simplifies the local oscillator calculation.
