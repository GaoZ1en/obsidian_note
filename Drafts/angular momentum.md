in this note we consider a free complex scalar field on a background of the form

$$\begin{align}
M\times S^{d-1},
\end{align}$$

where $M$ is a two-dimensional manifold (time $t$ plus a radial coordinate $r$), and the spatial angular part is a round $S^{d-1}$. we assume that the metric and background are such that the Klein–Gordon operator is separable, so that the normal modes can be written as

$$\begin{align}
\phi_{n\ell \mathbf m}(x)

 = e^{-i\omega_{n\ell} t} R_{n\ell}(r) Y_{\ell \mathbf m}(\Omega_{d-1}),
\end{align}$$

with

- $n$ labelling radial/"overtone" quantum numbers,
- $\ell\in \mathbb N_0$ the total angular momentum on $S^{d-1}$,
- $\mathbf m$ a multi-index labelling the magnetic quantum numbers,
- $\omega_{n\ell}$ the corresponding (positive) one-particle energy eigenvalues.

we would like to perform canonical quantization and compute the partition function in a grand-canonical ensemble where, in addition to the Hamiltonian $H$, we also keep track of the angular momenta associated with the $SO(d)$ isometry of $S^{d-1}$, i.e. we introduce independent chemical potentials for the generators in a Cartan subalgebra of $\mathfrak{so}(d)$.

---

## representation theory and angular momentum quantum numbers

the isometry group of the round $(d-1)$-sphere is $SO(d)$, whose Lie algebra $\mathfrak{so}(d)$ has rank $r = \lfloor d/2 \rfloor$. we denote by

$$\begin{align}
H_i, \qquad i=1,\dots,r
\end{align}$$

the generators of a Cartan subalgebra of $\mathfrak{so}(d)$. the remaining generators are step operators $E_\alpha$ associated with roots $\alpha$ of $\mathfrak{so}(d)$.

the scalar spherical harmonics $Y_{\ell \mathbf m}(\Omega_{d-1})$ furnish an irreducible representation of $SO(d)$ of highest weight corresponding to the integer $\ell$. for each fixed $\ell$, the space spanned by $\{Y_{\ell \mathbf m}\}$ decomposes into weight spaces for the Cartan subalgebra, i.e. we can choose the multi-index $\mathbf m = (m_1,\dots,m_r)$ so that

$$\begin{align}
H_i\, Y_{\ell \mathbf m} = m_i(\ell,\mathbf m)\, Y_{\ell \mathbf m}, \qquad i=1,\dots,r.
\end{align}$$

in other words, for each mode $Y_{\ell \mathbf m}$ the angular momenta along the Cartan directions are given by the $r$-tuple of weights

$$\begin{align}
\mathbf m = (m_1,\dots,m_r)\in \Lambda_\text{wt}(\ell),
\end{align}$$

where $\Lambda_\text{wt}(\ell)$ is the set of weights of the $SO(d)$ representation of highest weight labelled by $\ell$. the precise structure of these weight sets depends on $d$ (i.e. whether $\mathfrak{so}(d)$ is of type $B_{r}$ or $D_{r}$), but for our purposes it is enough to know that for each $\ell$ there is a finite set of weight vectors $\mathbf m$ and a corresponding basis of harmonics simultaneously diagonalizing all $H_i$.

upon canonical quantization, the Noether charges associated with the Cartan generators are operators $J_i$ such that, on a one-particle state created by $\phi_{n\ell \mathbf m}$,

$$\begin{align}
J_i \ket{n,\ell,\mathbf m} = m_i(\ell,\mathbf m)\, \ket{n,\ell,\mathbf m}, \qquad i=1,\dots,r.
\end{align}$$

thus in the mode expansion the label $\mathbf m$ directly encodes the eigenvalues of the angular momentum operators along the Cartan directions.

---

## canonical quantization and mode operators

we consider a free complex scalar field. after separation of variables and mode expansion, canonical quantization yields creation and annihilation operators $a_{n\ell \mathbf m}$ and $a_{n\ell \mathbf m}^{\dagger}$ for particles, and $b_{n\ell \mathbf m}$ and $b_{n\ell \mathbf m}^{\dagger}$ for antiparticles, obeying the usual commutation relations

$$\begin{align}
[a_{n\ell \mathbf m}, a_{n'\ell' \mathbf m'}^{\dagger}] = \delta_{n n'}\delta_{\ell \ell'}\delta_{\mathbf m\mathbf m'}, \qquad [b_{n\ell \mathbf m}, b_{n'\ell' \mathbf m'}^{\dagger}] = \delta_{n n'}\delta_{\ell \ell'}\delta_{\mathbf m\mathbf m'},
\end{align}$$

and all other commutators vanishing. the free Hamiltonian is diagonal in this basis:

$$\begin{align}
H = \sum_{n,\ell,\mathbf m} \omega_{n\ell} \bigl( a_{n\ell \mathbf m}^{\dagger} a_{n\ell \mathbf m} + b_{n\ell \mathbf m}^{\dagger} b_{n\ell \mathbf m} \bigr) + E_0,
\end{align}$$

where $E_0$ is a possible vacuum (Casimir) energy which we will drop in the following, since it only multiplies the partition function by an overall factor. the angular momentum operators associated with the Cartan generators act by

$$\begin{align}
J_i = \sum_{n,\ell,\mathbf m} m_i(\ell,\mathbf m) \bigl( a_{n\ell \mathbf m}^{\dagger} a_{n\ell \mathbf m} + b_{n\ell \mathbf m}^{\dagger} b_{n\ell \mathbf m} \bigr), \qquad i=1,\dots,r.
\end{align}$$

for a real scalar field there is only one set of oscillators (no independent antiparticles), and the expressions above reduce accordingly with a single set of $a_{n\ell \mathbf m},a_{n\ell \mathbf m}^{\dagger}$.

---

## grand-canonical partition function with angular momentum chemical potentials

we now introduce chemical potentials $\mu_i$ for each Cartan generator $J_i$. more precisely, we consider the grand-canonical partition function

$$\begin{align}
Z(\beta,\boldsymbol{\mu}) = \operatorname{Tr}_{\mathcal H} \exp\Big( -\beta H + \sum_{i=1}^{r} \beta \mu_i J_i \Big),
\end{align}$$

where $\beta$ is the inverse temperature and $\boldsymbol{\mu}=(\mu_1,\dots,\mu_r)$ are the chemical potentials conjugate to the Cartan generators. it is often convenient to package the chemical potentials into an $r$-component vector and define the weight pairing

$$\begin{align}
\boldsymbol{\mu}\cdot\mathbf m = \sum_{i=1}^{r} \mu_i m_i(\ell,\mathbf m).
\end{align}$$

since the theory is free and the Hamiltonian and Cartan charges are diagonal in the occupation number basis, the trace factorizes into a product over independent harmonic oscillators labelled by $(n,\ell,\mathbf m)$. let us first write the one-particle "Boltzmann factor" for a given mode.

for the complex scalar, the contribution of a single particle oscillator $a_{n\ell \mathbf m}$ is

$$\begin{align}
Z_{n\ell \mathbf m}^{(a)} = \operatorname{Tr}_{\{a\}} \exp\Big[ -\beta \omega_{n\ell} \bigl(a^{\dagger} a\bigr) + \beta (\boldsymbol{\mu}\cdot\mathbf m) \bigl(a^{\dagger} a\bigr) \Big] = \sum_{N=0}^{\infty} \exp\bigl[-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)N\bigr],
\end{align}$$

which converges to

$$\begin{align}
Z_{n\ell \mathbf m}^{(a)} = \frac{1}{1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}}.
\end{align}$$

similarly, the antiparticle oscillator $b_{n\ell \mathbf m}$ carries the opposite Cartan weights (for a complex scalar transforming in the trivial representation of spatial rotations, particles and antiparticles have the same spatial angular momentum; if we also couple to a global $U(1)$ charge $Q$ with chemical potential $\mu_Q$, then the antiparticle contribution would involve $-\mu_Q$ but still the same angular momenta. here we focus only on spatial angular momenta, so the $b$-oscillators contribute with the same $\boldsymbol{\mu}\cdot\mathbf m$). thus its contribution is identical:

$$\begin{align}
Z_{n\ell \mathbf m}^{(b)} = \frac{1}{1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}}.
\end{align}$$

the total contribution from the pair of oscillators for a complex scalar is

$$\begin{align}
Z_{n\ell \mathbf m} = Z_{n\ell \mathbf m}^{(a)} Z_{n\ell \mathbf m}^{(b)} = \frac{1}{\bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\bigr)^{2}}.
\end{align}$$

for a real scalar there is only one oscillator and the square is absent.

since different $(n,\ell,\mathbf m)$ labels correspond to independent oscillators, the full grand-canonical partition function factorizes as a product over modes:

$$\begin{align}
Z(\beta,\boldsymbol{\mu}) = \prod_{n,\ell,\mathbf m} Z_{n\ell \mathbf m} = \prod_{n,\ell,\mathbf m} \frac{1}{\bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\bigr)^{\nu}},
\end{align}$$

where

- $\nu=2$ for a complex scalar (particles + antiparticles),
- $\nu=1$ for a real scalar.

equivalently, we can write

$$\begin{align}
\log Z(\beta,\boldsymbol{\mu}) = -\nu \sum_{n,\ell,\mathbf m} \log\Bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\Bigr).
\end{align}$$

to make the ranges of all quantum numbers explicit, we write

- $n$ runs over non-negative integers labelling the radial/overtone quantum number:

$$\begin{align}
n = 0,1,2,\dots;
\end{align}$$

- $\ell$ runs over non-negative integers labelling the total angular momentum on $S^{d-1}$:

$$\begin{align}
\ell = 0,1,2,\dots;
\end{align}$$

- for each fixed $\ell$, the multi-index $\mathbf m$ runs over all weights of the corresponding irreducible $SO(d)$ representation. we denote this finite set of weights as $\Lambda_\text{wt}(\ell)$, so that

$$\begin{align}
\mathbf m \in \Lambda_\text{wt}(\ell),
\end{align}$$

	and the sum over $\mathbf m$ is understood as a sum over all such weight vectors.

with this notation, the partition function can be written as

$$\begin{align}
Z(\beta,\boldsymbol{\mu}) = \prod_{n=0}^{\infty}\prod_{\ell=0}^{\infty}\prod_{\mathbf m\in\Lambda_\text{wt}(\ell)} \frac{1}{\bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\bigr)^{\nu}},
\end{align}$$

and

$$\begin{align}
\log Z(\beta,\boldsymbol{\mu}) = -\nu\sum_{n=0}^{\infty}\sum_{\ell=0}^{\infty}\sum_{\mathbf m\in\Lambda_\text{wt}(\ell)} \log\Bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\Bigr).
\end{align}$$

to make the ranges of all angular momentum quantum numbers completely explicit, it is useful to distinguish even and odd $d$.

### case 1: $d=2r$ (even, $SO(2r)$)

for $d=2r$ the isometry algebra of $S^{d-1}=S^{2r-1}$ is $\mathfrak{so}(2r)$ (type $D_r$). the Cartan subalgebra has rank $r$, and we can label the simultaneous eigenvalues of its generators by an $r$-tuple of integers

$$\begin{align}
\mathbf m = (m_1,\dots,m_r), \qquad m_i\in\mathbb Z.
\end{align}$$

for scalar spherical harmonics of degree $\ell$, the allowed values of $\mathbf m$ can be parameterized by nested inequalities

$$\begin{align}
\ell \ge m_1 \ge m_2 \ge \cdots \ge m_{r-1} \ge |m_r|,
\end{align}$$

which can be implemented as a sequence of discrete sums

$$\begin{align}
\sum_{\mathbf m\in\Lambda_\text{wt}(\ell)} (\cdots) = \sum_{m_1=-\ell}^{\ell}
	 \sum_{m_2=-m_1}^{m_1} \cdots
	 \sum_{m_{r-1}=-m_{r-2}}^{m_{r-2}}
	 \sum_{m_r=-m_{r-1}}^{m_{r-1}} (\cdots),
\end{align}$$

with the understanding that only those tuples satisfying $\ell \ge m_1 \ge m_2 \ge \cdots \ge m_{r-1} \ge |m_r|$ actually contribute (equivalently, one can take the sums exactly over that constrained set).

in this case the grand-canonical partition function can be written explicitly as

$$\begin{align}
Z(\beta,\boldsymbol{\mu}) = \prod_{n=0}^{\infty}\prod_{\ell=0}^{\infty}
	 \prod_{m_1=-\ell}^{\ell}
	 \prod_{m_2=-m_1}^{m_1} \cdots
	 \prod_{m_{r-1}=-m_{r-2}}^{m_{r-2}}
	 \prod_{m_r=-m_{r-1}}^{m_{r-1}} \frac{1}{\bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\bigr)^{\nu}},
\end{align}$$

where $\mathbf m=(m_1,\dots,m_r)$ in the exponent and $\boldsymbol{\mu}\cdot\mathbf m = \sum_{i=1}^{r}\mu_i m_i$.

### case 2: $d=2r+1$ (odd, $SO(2r+1)$)

for $d=2r+1$ the isometry algebra of $S^{d-1}=S^{2r}$ is $\mathfrak{so}(2r+1)$ (type $B_r$). again the Cartan subalgebra has rank $r$, and we label weights by an $r$-tuple

$$\begin{align}
\mathbf m = (m_1,\dots,m_r).
\end{align}$$

for scalar spherical harmonics of degree $\ell$, one convenient parameterization is

$$\begin{align}
\ell \ge m_1 \ge m_2 \ge \cdots \ge m_r \ge 0,
\end{align}$$

with all $m_i\in\mathbb Z$. equivalently, the sum over $\mathbf m$ can be written as a nested sum

$$\begin{align}
\sum_{\mathbf m\in\Lambda_\text{wt}(\ell)} (\cdots) = \sum_{m_1=0}^{\ell}
	 \sum_{m_2=0}^{m_1} \cdots
	 \sum_{m_r=0}^{m_{r-1}} (\cdots).
\end{align}$$

with this choice, the grand-canonical partition function becomes

$$\begin{align}
Z(\beta,\boldsymbol{\mu}) = \prod_{n=0}^{\infty}\prod_{\ell=0}^{\infty}
	 \prod_{m_1=0}^{\ell}
	 \prod_{m_2=0}^{m_1} \cdots
	 \prod_{m_r=0}^{m_{r-1}} \frac{1}{\bigl(1-\mathrm{e}^{-\beta(\omega_{n\ell}-\boldsymbol{\mu}\cdot\mathbf m)}\bigr)^{\nu}},
\end{align}$$

again with $\mathbf m=(m_1,\dots,m_r)$ and $\boldsymbol{\mu}\cdot\mathbf m = \sum_{i=1}^{r}\mu_i m_i$.

these explicit formulas show, for each $d$,从 $n,\ell$ 到所有 Cartan 方向的角动量量子数 $m_i$ 的取值范围以及求和/求积结构，而不再依赖抽象的记号 $\Lambda_\text{wt}(\ell)$。

---

## remarks

1. in many practical applications one rewrites the sum over $\mathbf m$ for fixed $\ell$ as a character of the corresponding $SO(d)$ representation evaluated on an element of the maximal torus parametrized by angles $\boldsymbol{\theta}$ related to the chemical potentials by $\mu_i = i\theta_i/\beta$. then

$$\begin{align}
\sum_{\mathbf m} \mathrm{e}^{\beta\boldsymbol{\mu}\cdot\mathbf m} = \chi_{\ell}(\mathrm{e}^{i\boldsymbol{\theta}}),
\end{align}$$

	where $\chi_{\ell}$ is the character. this is another way of packaging the same information.

2. if, in addition to angular momenta, one also couples a chemical potential $\mu_Q$ to a global $U(1)$ charge $Q$, then in the exponent one simply replaces $-\beta \omega_{n\ell}$ by $-\beta(\omega_{n\ell}-\mu_Q q - \boldsymbol{\mu}\cdot\mathbf m)$ for charge $q$, and the above formulas generalize straightforwardly.
