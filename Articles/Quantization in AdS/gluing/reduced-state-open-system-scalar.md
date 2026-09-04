# Finite-Port Reduced State and Open-System Reduction

Consider the centered massive scalar and its conforming shared-port Galerkin action in [[Articles/Quantization in AdS/gluing/formalism|formalism]]. At finite $N$, we first construct the exact glued ground state, then restrict it to the regional factors, and finally eliminate region 2 from the Heisenberg equations. We do not use a sharp regional product-Fock representation as the definition, and we do not introduce a gauge field.

The calculation follows

$$\begin{align}
\text{finite glued Hamiltonian} &\longrightarrow \text{exact Gaussian ground state}\nonumber\\
&\longrightarrow \text{overlapping shared-port regional algebras and restrictions}\nonumber\\
&\longrightarrow \text{entropy and finite modular data}\nonumber\\
&\longrightarrow \text{operator elimination with memory and noise}\nonumber\\
&\longrightarrow \text{continuum connected-vacuum state restriction on fixed bulk smearings}.
\end{align}$$

For the last arrow, we use the Mosco, strong-resolvent, and functional-calculus results in [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]], together with the fixed-smeared-observable ground-state theorem in [[Articles/Quantization in AdS/gluing/gluing formalism|gluing formalism]]. This arrow gives a state restriction on fixed bulk smearings, not a trace-class limit of regional density matrices.

## Setup

Take

$$\begin{align}
L&>0,&m&>0,&k_n&=\frac{n\pi}{L},&\omega_n^2&=k_n^2+m^2,\\
u_n(y)&=\sqrt{\frac2L}\sin(k_ny),& A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi},&h(y)&=\frac yL.
\end{align}$$

Both local coordinates $y_i\in[0,L]$ increase from the physical outer boundary toward the cut, so

$$\begin{align}
\partial_x&=+\partial_{y_1}\quad\text{on region 1},& \partial_x&=-\partial_{y_2}\quad\text{on region 2},
\end{align}$$

and the interface equation obtained from the action is

$$\begin{align}
\phi_1'(L)+\phi_2'(L)&=0,
\end{align}$$

Here each prime denotes the literal derivative with respect to the corresponding $y_i$.

Define

$$\begin{align}
\boldsymbol A&=(A_1,\ldots,A_N)^{\mathrm T},& D_0&=\operatorname{diag}(\omega_1^2,\ldots,\omega_N^2),\\
\boldsymbol b&=(A_1k_1^2,\ldots,A_Nk_N^2)^{\mathrm T},& \boldsymbol d&=(\boldsymbol A,\boldsymbol A)^{\mathrm T},& \boldsymbol g&=(\boldsymbol b,\boldsymbol b)^{\mathrm T}.
\end{align}$$

And introduce the regulator variables

$$\begin{align}
\boldsymbol c&=(\boldsymbol c_1,\boldsymbol c_2)^{\mathrm T},& \boldsymbol C&=\boldsymbol c+\boldsymbol d q,& \boldsymbol V&=\dot{\boldsymbol C},\\
\rho_N&=\frac{2L}{3}-\boldsymbol d^{\mathrm T}\boldsymbol d =\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}>0,& \pi_q&=\rho_N\dot q.
\end{align}$$

If $[\phi]$ denotes the field dimension and time has length dimension, then $[C_{i,n}]=[\phi]L^{1/2}$, $[q]=[\phi]$, $[\rho_N]=L$, $[b_n]=L^{-3/2}$, and $[\kappa_N]=L^{-1}$. Every term in the Hamiltonian below therefore has the same dimension.

## Finite Hamiltonian

The finite Lagrangian in $(\boldsymbol c,q)$ is

$$\begin{align}
L_N={}&\frac12\left( \dot{\boldsymbol c}^{\mathrm T}\dot{\boldsymbol c} +2\dot q\,\boldsymbol d^{\mathrm T}\dot{\boldsymbol c} +\frac{2L}{3}\dot q^2\right)\nonumber\\
&-\frac12\left[ \boldsymbol c^{\mathrm T}D\boldsymbol c +2m^2q\,\boldsymbol d^{\mathrm T}\boldsymbol c +\left(\frac2L+\frac{2m^2L}{3}\right)q^2\right],
\end{align}$$

where $D=D_0\oplus D_0$. Substitute $\boldsymbol c=\boldsymbol C-\boldsymbol d q$ to obtain

$$\begin{align}
L_N={}&\frac12\boldsymbol V^{\mathrm T}\boldsymbol V +\frac{\rho_N}{2}\dot q^2 -\frac12\boldsymbol C^{\mathrm T}D\boldsymbol C +q\,\boldsymbol g^{\mathrm T}\boldsymbol C -\frac{\kappa_N}{2}q^2,
\end{align}$$

where

$$\begin{align}
\kappa_N&=\frac2L+\boldsymbol d^{\mathrm T} \operatorname{diag}(k_1^2,\ldots,k_N^2,k_1^2,\ldots,k_N^2) \boldsymbol d+m^2\rho_N\nonumber\\
&=\frac{4N+2}{L}+m^2\rho_N.
\end{align}$$

We read out the canonical one-form and symplectic form

$$\begin{align}
\Theta_N&=\boldsymbol V^{\mathrm T}\delta\boldsymbol C+\pi_q\delta q,\\
\omega_N&=\delta\boldsymbol V^{\mathrm T}\wedge\delta\boldsymbol C +\delta\pi_q\wedge\delta q.
\end{align}$$

Then the Hamiltonian is

$$
\boxed{\begin{align}
H_N={}&\frac12\boldsymbol V^{\mathrm T}\boldsymbol V
+\frac{\pi_q^2}{2\rho_N}
+\frac12\boldsymbol C^{\mathrm T}D\boldsymbol C
-q\,\boldsymbol g^{\mathrm T}\boldsymbol C
+\frac12\kappa_Nq^2.
\end{align}}
$$

Upon quantization, use the dynamical brackets

$$\begin{align}
[C_{i,n},V_{j,m}]&=\mathrm i\delta_{ij}\delta_{nm},& [q,\pi_q]&=\mathrm i,
\end{align}$$

with all cross commutators zero. Once $q$ is released, we cannot reuse the fixed-history brackets of $(c_{i,n},\dot c_{i,n})$.

We next define

$$\begin{align}
\boldsymbol C_\pm&=\frac{\boldsymbol C_1\pm\boldsymbol C_2}{\sqrt2},& \boldsymbol V_\pm&=\frac{\boldsymbol V_1\pm\boldsymbol V_2}{\sqrt2}.
\end{align}$$

This transformation is orthogonal and symplectic. The Hamiltonian becomes

$$
\boxed{\begin{align}
H_N&=H_-+H_{+q},\\
H_-&=\frac12\boldsymbol V_-^{\mathrm T}\boldsymbol V_-
+\frac12\boldsymbol C_-^{\mathrm T}D_0\boldsymbol C_-,\\
H_{+q}&=\frac12\boldsymbol V_+^{\mathrm T}\boldsymbol V_+
+\frac{\pi_q^2}{2\rho_N}
+\frac12\boldsymbol C_+^{\mathrm T}D_0\boldsymbol C_+
-\sqrt2q\,\boldsymbol b^{\mathrm T}\boldsymbol C_+
+\frac12\kappa_Nq^2.
\end{align}}
$$

The antisymmetric sector therefore contains $N$ uncoupled oscillators with frequencies $\omega_n$, while only the symmetric sector couples to the retained port.

The symmetric-plus-port mass and stiffness matrices are

$$\begin{align}
M_{+q}&=\begin{pmatrix}\mathbf1_N&0\\
0&\rho_N\end{pmatrix},&
K_{+q}&=\begin{pmatrix}D_0&-\sqrt2\boldsymbol b\\
-\sqrt2\boldsymbol b^{\mathrm T}&\kappa_N\end{pmatrix}.
\end{align}$$

Both matrices are positive definite. For the stiffness matrix, this follows from its origin as the restriction of

$$\begin{align}
\int_{-L}^{L}\mathrm dx\left[(\partial_x\phi_N)^2+m^2\phi_N^2\right]
\end{align}$$

to an injective conforming ansatz. Equivalently, its Schur complement is

$$\begin{align}
\kappa_N-2\boldsymbol b^{\mathrm T}D_0^{-1}\boldsymbol b &=\frac2L+m^2\rho_N +\frac{4m^2}{L}\sum_{n=1}^N\frac1{k_n^2+m^2}>0.
\end{align}$$

Set $z=k^2=\Omega^2-m^2$. The $N+1$ symmetric-plus-port momenta satisfy

$$
\boxed{\begin{align}
R_N(z)&=\frac2L-\rho_Nz
-2z\sum_{n=1}^N\frac{A_n^2k_n^2}{k_n^2-z}=0.
\end{align}}
$$

Away from its poles,

$$\begin{align}
R_N'(z)&=-\rho_N-2\sum_{n=1}^N \frac{A_n^2k_n^4}{(k_n^2-z)^2}<0.
\end{align}$$

Since $R_N(0)=2/L$, its one-sided limits alternate at every pole, and $R_N(z)\to-\infty$ as $z\to+\infty$, we obtain one simple root in each interval

$$\begin{align}
(0,k_1^2),\ (k_1^2,k_2^2),\ldots, (k_{N-1}^2,k_N^2),\ (k_N^2,\infty).
\end{align}$$

Together with the antisymmetric frequencies $m^2+k_n^2$, these give the $2N+1$ positive Ritz eigenvalues of the conforming finite system. Their convergence to the connected spectrum follows from the existing Galerkin result. We do not delete any finite Ritz value by hand.

## Finite Regional Objects

Since $\rho_N>0$, the finite symplectic space decomposes as

$$\begin{align}
\mathcal S_N&=\mathcal S_{1,N}^{\mathrm{int}} \oplus^\sigma\mathcal S_{2,N}^{\mathrm{int}} \oplus^\sigma\mathcal S_{\Gamma,N},
\end{align}$$

with the three factors generated respectively by

$$\begin{align}
(\boldsymbol C_1,\boldsymbol V_1),\qquad (\boldsymbol C_2,\boldsymbol V_2),\qquad (q,\pi_q).
\end{align}$$

In the regular finite Schrödinger representation, we have

$$\begin{align}
\mathcal H_N&\simeq \mathcal H_{1,N}^{\mathrm{int}}\otimes \mathcal H_{2,N}^{\mathrm{int}}\otimes \mathcal H_{\Gamma,N},\\
\mathcal H_{i,N}^{\mathrm{int}}&=L^2(\mathbb R^N),& \mathcal H_{\Gamma,N}&=L^2(\mathbb R).
\end{align}$$

This tensor factorization uses finite $N$, $\rho_N>0$, the dynamical variables $(C,V,q,\pi_q)$, and a regular representation of their nondegenerate CCR. It fails if we delete the port pair or treat the noncanonical fixed-history variables $(c,\dot c)$ as Darboux variables after gluing.

We must distinguish three finite objects associated with region 1.

### Interior Factor

The first is the interior factor algebra

$$\begin{align}
\mathfrak A_{1,N}^{\mathrm{int}} &=B(\mathcal H_{1,N}^{\mathrm{int}})\otimes\mathbf1,
\end{align}$$

generated only by $(\boldsymbol C_1,\boldsymbol V_1)$. Trace over region 2 and the port to obtain

$$\begin{align}
\rho_{1,N}^{\mathrm{int}} &=\operatorname{Tr}_{2,\Gamma}\rho_N^{\mathrm{gl}}.
\end{align}$$

This factor is a choice of regulator coordinates, not the full algebra generated by the reconstructed regional field.

### Port-Complete Factor

The second is generated by

$$\begin{align}
(\boldsymbol C_1,\boldsymbol V_1,q,\pi_q),
\end{align}$$

with density matrix

$$\begin{align}
\rho_{1\Gamma,N}&=\operatorname{Tr}_{2}\rho_N^{\mathrm{gl}}.
\end{align}$$

This is an exact finite tensor factor. It records the complete finite conforming coordinate system, but it does not turn the port into a continuum boundary oscillator.

### Reconstructed-Field Algebra

Let $P_N^0$ denote the strict-Dirichlet sine projection, and define the residual lift

$$\begin{align}
e_N(y)&=h(y)-P_N^0h(y),& 2\|e_N\|_{L^2(0,L)}^2&=\rho_N.
\end{align}$$

Then the reconstructed field and its velocity are

$$\begin{align}
\phi_{1,N}(y)&=\sum_{n=1}^NC_{1,n}u_n(y)+q e_N(y),\\
\dot\phi_{1,N}(y)&=\sum_{n=1}^NV_{1,n}u_n(y)+\frac{\pi_q}{\rho_N}e_N(y).
\end{align}$$

For real spatial smearings $f,g\in L^2(0,L)$, define

$$\begin{align}
\Phi_{1,N}(f)&=\sum_{n=1}^N(f,u_n)C_{1,n}+(f,e_N)q,\\
\Pi_{1,N}(g)&=\sum_{n=1}^N(g,u_n)V_{1,n} +\frac{(g,e_N)}{\rho_N}\pi_q.
\end{align}$$

The generated Weyl algebra depends on the declared smearing class. Let $\mathcal W(\mathcal S_{1\Gamma,N},\sigma)$ be the abstract finite-pair Weyl $C^*$-algebra, and let $\pi_N$ be its irreducible regular Schrödinger representation. If we allow all regulator-dependent smearings in $\operatorname{span}\{u_1,\ldots,u_N,e_N\}$, then $e_N$ isolates $q$ and $\pi_q$, so

$$\begin{align}
\pi_N\!\left(\mathcal W(\mathcal S_{1\Gamma,N},\sigma)\right)'' &=B(\mathcal H_{1,N}^{\mathrm{int}}\otimes\mathcal H_{\Gamma,N})
\end{align}$$

inside the declared Schrödinger representation. This does not identify the abstract Weyl $C^*$-algebra with the Type-I von Neumann factor. If instead we keep fixed, $N$-independent bulk smearings supported inside region 1, we obtain the directed physical family used in the continuum theorem. In that family, $e_N$ does not become a new continuum point mode.

## Overlapping Regional Algebras

Restore the identity factors in the finite regular Schrödinger representation:

$$\begin{align}
\mathcal H_N&=\mathcal H_{1,N}^{\mathrm{int}}\otimes \mathcal H_{2,N}^{\mathrm{int}}\otimes\mathcal H_{\Gamma,N},\nonumber\\
\mathfrak A_{1\Gamma,N} &=B(\mathcal H_{1,N}^{\mathrm{int}})\,\bar\otimes\, \mathbf1_2\,\bar\otimes\,B(\mathcal H_{\Gamma,N}),\\
\mathfrak A_{2\Gamma,N} &=\mathbf1_1\,\bar\otimes\, B(\mathcal H_{2,N}^{\mathrm{int}})\,\bar\otimes\, B(\mathcal H_{\Gamma,N}).
\end{align}$$

These regional von Neumann algebras overlap and are not complementary tensor factors. The first acts trivially on $\mathcal H_{2,N}^{\mathrm{int}}$, while the second acts trivially on $\mathcal H_{1,N}^{\mathrm{int}}$. Taking normal slices on the two interior factors, or equivalently intersecting their commutants, gives

$$
\boxed{\begin{align}
\mathfrak A_{1\Gamma,N}\cap\mathfrak A_{2\Gamma,N}
&=\mathbf1_1\,\bar\otimes\,\mathbf1_2\,\bar\otimes\,
B(\mathcal H_{\Gamma,N}).
\end{align}}
$$

They do not commute elementwise because the common algebra contains both $q$ and $\pi_q$, with $[q,\pi_q]=\mathrm i\mathbf1$. By contrast,

$$\begin{align}
\mathfrak A_{1,N}^{\mathrm{int}} &=B(\mathcal H_{1,N}^{\mathrm{int}})\bar\otimes\mathbf1_2 \bar\otimes\mathbf1_\Gamma,\\
\mathfrak A_{2,N}^{\mathrm{int}} &=\mathbf1_1\bar\otimes B(\mathcal H_{2,N}^{\mathrm{int}}) \bar\otimes\mathbf1_\Gamma
\end{align}$$

commute and generate the ordinary interior tensor product.

To take an ordinary partial trace, choose a genuine complementary split. Two choices are

$$\begin{align}
(1+\Gamma)|2:&\qquad \rho_{1\Gamma,N}=\operatorname{Tr}_2\rho_N^{\mathrm{gl}},\\
1|(2+\Gamma):&\qquad \rho_{1,N}^{\mathrm{int}}=\operatorname{Tr}_{2,\Gamma}\rho_N^{\mathrm{gl}}.
\end{align}$$

There is also the distinct split $(2+\Gamma)|1$. No tensor factorization assigns an independent copy of the same port pair to both regions.

The two port-complete regional states agree on the overlap. Define

$$\begin{align}
\rho_{2\Gamma,N}&=\operatorname{Tr}_1\rho_N^{\mathrm{gl}},& \rho_{\Gamma,N}&=\operatorname{Tr}_{1,2}\rho_N^{\mathrm{gl}},
\end{align}$$

then

$$\begin{align}
\operatorname{Tr}_1\rho_{1\Gamma,N} =\rho_{\Gamma,N} =\operatorname{Tr}_2\rho_{2\Gamma,N}.
\end{align}$$

The two restrictions therefore agree on $\mathfrak A_{1\Gamma,N}\cap\mathfrak A_{2\Gamma,N}$. After choosing a normal state $\tau_1$ on the region-1 interior factor, a normal conditional expectation onto the overlap is $E_{1\to\Gamma}^{\tau_1}=\tau_1\bar\otimes\operatorname{id}_\Gamma$, and similarly on the other side. This expectation depends on that choice. The state restrictions and partial traces above do not.

## Glued Ground State

Order the canonical variables as

$$\begin{align}
X&=(\boldsymbol C_1,\boldsymbol C_2,q)^{\mathrm T},& P&=(\boldsymbol V_1,\boldsymbol V_2,\pi_q)^{\mathrm T}.
\end{align}$$

Then

$$\begin{align}
H_N&=\frac12P^{\mathrm T}M_C^{-1}P+\frac12X^{\mathrm T}K_CX,\\
M_C&=\operatorname{diag}(\mathbf1_{2N},\rho_N),&
K_C&=\begin{pmatrix}
D_0&0&-\boldsymbol b\\
0&D_0&-\boldsymbol b\\
-\boldsymbol b^{\mathrm T}&-\boldsymbol b^{\mathrm T}&\kappa_N
\end{pmatrix}.
\end{align}$$

And define the positive mass-normalized dynamical matrix

$$\begin{align}
\mathcal A_N&=M_C^{-1/2}K_CM_C^{-1/2}.
\end{align}$$

For the zero-mean ground state, take the covariance convention

$$\begin{align}
(\mathsf V_N)_{ab}&=\frac12\langle R_aR_b+R_bR_a\rangle,&R&=(X,P),
\end{align}$$

then the covariance blocks are

$$
\boxed{\begin{align}
\langle XX^{\mathrm T}\rangle
&=\frac12M_C^{-1/2}\mathcal A_N^{-1/2}M_C^{-1/2},\\
\langle PP^{\mathrm T}\rangle
&=\frac12M_C^{1/2}\mathcal A_N^{1/2}M_C^{1/2},\\
\frac12\langle XP^{\mathrm T}+PX^{\mathrm T}\rangle&=0.
\end{align}}
$$

Equivalently, let the columns of $Z_N$ be the generalized eigenvectors

$$\begin{align}
K_CZ_N&=M_CZ_N\Omega_N^2,& Z_N^{\mathrm T}M_CZ_N&=\mathbf1.
\end{align}$$

Then

$$\begin{align}
\langle XX^{\mathrm T}\rangle &=Z_N\frac1{2\Omega_N}Z_N^{\mathrm T},\\
\langle PP^{\mathrm T}\rangle &=M_CZ_N\frac{\Omega_N}{2}Z_N^{\mathrm T}M_C.
\end{align}$$

No regional reference vacuum enters these expressions. They obey

$$\begin{align}
\langle XX^{\mathrm T}\rangle\langle PP^{\mathrm T}\rangle &=\frac14\mathbf1_{2N+1},
\end{align}$$

which is the purity identity for the full covariance with zero $XP$ block.

## Reduced State and Entropy

Let $S_{1,N}$ select $(\boldsymbol C_1,\boldsymbol V_1)$ from $R$, and let $S_{1\Gamma,N}$ select $(\boldsymbol C_1,q,\boldsymbol V_1,\pi_q)$. The reduced covariances are

$$\begin{align}
\mathsf V_{1,N}&=S_{1,N}\mathsf V_NS_{1,N}^{\mathrm T},\\
\mathsf V_{1\Gamma,N}&=S_{1\Gamma,N}\mathsf V_NS_{1\Gamma,N}^{\mathrm T}.
\end{align}$$

These are the covariance matrices of $\rho_{1,N}^{\mathrm{int}}$ and $\rho_{1\Gamma,N}$ respectively. For either reduction $A$, Williamson's theorem gives a symplectic matrix $S_A$ with

$$\begin{align}
\mathsf V_A&=S_A\operatorname{diag} (\nu_{A,1},\ldots,\nu_{A,r},\nu_{A,1},\ldots,\nu_{A,r})S_A^{\mathrm T},\\
\nu_{A,j}&\ge\frac12.
\end{align}$$

Equivalently, the eigenvalues of $\mathrm iJ_A\mathsf V_A$ occur as $\pm\nu_{A,j}$. We count the absolute values once on the positive branch. This is not the standard operator modulus $|\mathrm iJ_A\mathsf V_A|=\sqrt{(\mathrm iJ_A\mathsf V_A)^\dagger(\mathrm iJ_A\mathsf V_A)}$. Since the displayed covariances have zero $XP$ block, we may also compute

$$\begin{align}
\{\nu_{A,j}^2\}&=\operatorname{spec} \left(\langle X_AX_A^{\mathrm T}\rangle \langle P_AP_A^{\mathrm T}\rangle\right).
\end{align}$$

Define

$$\begin{align}
\epsilon_{A,j}&=\log\frac{\nu_{A,j}+1/2}{\nu_{A,j}-1/2} =2\operatorname{arccoth}(2\nu_{A,j}).
\end{align}$$

When $\nu_{A,j}=1/2$, the corresponding factor is the pure oscillator vacuum and $\epsilon_{A,j}=+\infty$ in the limiting notation. In the Williamson oscillator basis, the density matrix is

$$
\boxed{\begin{align}
\rho_A&=U_{S_A}\left[
\bigotimes_{j=1}^{r}
(1-e^{-\epsilon_{A,j}})e^{-\epsilon_{A,j}b_j^\dagger b_j}
\right]U_{S_A}^{\dagger}.
\end{align}}
$$

then the modular Hamiltonian is

$$\begin{align}
-\log\rho_A&=\sum_j\epsilon_{A,j}b_j^\dagger b_j+\text{constant}\\
&=\frac12R_A^{\mathrm T}G_AR_A+\text{constant},\\
G_A&=S_A^{-\mathrm T}\operatorname{diag} (\epsilon_{A,1},\ldots,\epsilon_{A,r}, \epsilon_{A,1},\ldots,\epsilon_{A,r})S_A^{-1}.
\end{align}$$

And the von Neumann entropy is

$$
\boxed{\begin{align}
S(\rho_A)=\sum_j\left[
(\nu_{A,j}+\tfrac12)\log(\nu_{A,j}+\tfrac12)
-(\nu_{A,j}-\tfrac12)\log(\nu_{A,j}-\tfrac12)
\right].
\end{align}}
$$

The full ground state is pure and invariant under exchanging the two regions. Apply Gaussian Schmidt pairing to $1|(2+\Gamma)$ and to $(1+\Gamma)|2$. Exchange symmetry identifies the two $N$-mode interior spectra. Hence $\rho_{1,N}^{\mathrm{int}}$ and $\rho_{1\Gamma,N}$ have the same nontrivial Williamson spectrum, while the larger $(N+1)$-mode reduction has one additional $\nu=1/2$ factor. Therefore

$$\begin{align}
S(\rho_{1,N}^{\mathrm{int}})&=S(\rho_{1\Gamma,N}).
\end{align}$$

The extra pure Williamson mode is a collective symplectic linear combination inside $(1+\Gamma)$. In general, $S_{1\Gamma,N}$ mixes $(\boldsymbol C_1,\boldsymbol V_1)$ with $(q,\pi_q)$. Thus $\nu=1/2$ does not imply that the original port pair is pure or disentangled.

For the port alone, let $S_{\Gamma,N}$ select $(q,\pi_q)$. We obtain

$$\begin{align}
\mathsf V_{\Gamma,N} &=S_{\Gamma,N}\mathsf V_NS_{\Gamma,N}^{\mathrm T}
=\begin{pmatrix}
\langle q^2\rangle&0\\
0&\langle\pi_q^2\rangle
\end{pmatrix},\\
\nu_{\Gamma}(N)&=\sqrt{\det\mathsf V_{\Gamma,N}} =\sqrt{\langle q^2\rangle\langle\pi_q^2\rangle},\\
S_{\Gamma}(N)&=s(\nu_\Gamma(N)),
\end{align}$$

where $s(\nu)$ is the one-mode entropy function above. For $L=m=1$, the numerical values are

| $N$ | $\langle q^2\rangle$ | $\langle\pi_q^2\rangle$ | $\nu_\Gamma(N)$ | $S_\Gamma(N)$ |
|---:|---:|---:|---:|---:|
| 8 | 0.793340 | 0.586769 | 0.682281 | 0.508247 |
| 16 | 0.898771 | 0.586185 | 0.725841 | 0.585649 |
| 32 | 1.006622 | 0.586004 | 0.768039 | 0.654030 |
| 64 | 1.115702 | 0.585951 | 0.808546 | 0.714704 |

At $N=32$, $\nu_\Gamma(32)=0.768039>1/2$, so the port is mixed. It is therefore not the collective pure Williamson factor.

## Entropy Growth

For $L=m=1$, the low-$N$ values are

| $N$ | $\rho_N$ | largest nontrivial $\nu$ | $S(\rho_{1,N}^{\mathrm{int}})=S(\rho_{1\Gamma,N})$ |
|---:|---:|---:|---:|
| 2 | 0.160061 | 0.560211 | 0.232101 |
| 4 | 0.0896988 | 0.594984 | 0.327101 |
| 8 | 0.0476258 | 0.637978 | 0.431903 |
| 16 | 0.0245552 | 0.687276 | 0.542039 |
| 32 | 0.0124693 | 0.741153 | 0.654889 |

The high-precision continuation gives

| $N$ | $S_N$ | $(S_N-S_{N/2})/\log2$ | $S_N-\frac16\log N$ |
|---:|---:|---:|---:|
| 32 | 0.654889028025 | -- | 0.077266377558 |
| 64 | 0.769087847711 | 0.164754070837 | 0.075940667151 |
| 128 | 0.883954000288 | 0.165716828688 | 0.075282289634 |
| 256 | 0.999150830861 | 0.166193896193 | 0.074954590114 |

At several masses, the same calculation gives

| $mL$ | slope at $128$ | slope at $256$ | $S_{256}-\frac16\log256$ |
|---:|---:|---:|---:|
| 0.5 | 0.165727914250 | 0.166197039835 | 0.110311789676 |
| 1 | 0.165716828688 | 0.166193896193 | 0.074954590114 |
| 2 | 0.165676375720 | 0.166182301232 | -0.005625943384 |
| 4 | 0.165536369685 | 0.166141420029 | -0.116610499939 |

The checked coefficient is stable under changing $mL$, while the offset changes. Numerically,

$$\begin{align}
S_N&=\frac16\log N+s_0(mL)+o(1)
\end{align}$$

This is a strongly supported asymptotic diagnostic, not a theorem of this note.

The conditional interpretation is the following. The ultraviolet fixed point of the $1+1$ dimensional real scalar has $c=1$. The half-interval touches one physical Dirichlet boundary and has one entangling cut, so the boundary-CFT coefficient is $c/6$, rather than the $c/3$ for an interval with two entangling endpoints. The corresponding CFT and massive-field scaling laws are derived by Calabrese and Cardy in [arXiv:hep-th/0405152](https://arxiv.org/abs/hep-th/0405152). If the Galerkin cutoff can be matched to $a_N=\alpha L/N+o(N^{-1})$ without changing the universal logarithmic term, their result gives $(1/6)\log N$. The unknown $\alpha$, the mass, the outer geometry, and the regulator scheme enter the constant. This comparison explains the numerical coefficient, but it does not prove it for the present covariance sequence.

To prove the asymptotic formula, we still need to

1. Prove a cutoff comparison between the restricted Galerkin covariances and a continuum ultraviolet regularization with $a_N=\alpha L/N+o(N^{-1})$, uniformly on a collar of the cut.
2. Convert that covariance control into estimates on the symplectic eigenvalue counting measure strong enough for the entropy function, whose derivative is singular at $\nu=1/2$.
3. Show that replacing the massive finite interval by the $c=1$ boundary-CFT scaling operator changes the entropy by $O(1)$, so mass and the physical outer boundary cannot alter the logarithmic coefficient.
4. Prove convergence of the subtracted entropy and identify the regulator-dependent constant $s_0(mL)$, or weaken the last statement to boundedness plus an $o(\log N)$ remainder if the constant does not converge.

The existing Mosco and fixed-smeared-covariance theorems do not give Steps 1--3. They control fixed observables, while the entropy sums over an $N$-dependent ultraviolet family. We have checked the entropy growth numerically; the $1/6$ coefficient remains conditional on the additional spectral estimates.

## Modular Hamiltonian

### Finite Matrix Generator

For a faithful finite Gaussian reduction $A$, write the zero-$XP$ covariance as

$$\begin{align}
\mathsf V_{A,N}&=X_{A,N}\oplus P_{A,N}.
\end{align}$$

Choose a real invertible matrix $A_N$ such that

$$\begin{align}
X_{A,N}&=A_N\operatorname{diag}(\boldsymbol\nu_N)A_N^{\mathrm T},\\
P_{A,N}&=A_N^{-\mathrm T}\operatorname{diag}(\boldsymbol\nu_N)A_N^{-1}.
\end{align}$$

For example, diagonalize

$$\begin{align}
X_{A,N}^{1/2}P_{A,N}X_{A,N}^{1/2} &=U_N\operatorname{diag}(\boldsymbol\nu_N^2)U_N^{\mathrm T},\\
A_N&=X_{A,N}^{1/2}U_N \operatorname{diag}(\boldsymbol\nu_N^{-1/2}).
\end{align}$$

Set $\epsilon_{j,N}=\log[(\nu_{j,N}+1/2)/(\nu_{j,N}-1/2)]$. In the original regional canonical coordinates, we have

$$
\boxed{\begin{align}
K_{A,N}:=-\log\rho_{A,N}
&=\frac12R_A^{\mathrm T}G_{A,N}R_A+\text{constant},\\
G_{A,N}&=G_{X,N}\oplus G_{P,N},\\
G_{X,N}&=A_N^{-\mathrm T}\operatorname{diag}(\boldsymbol\epsilon_N)A_N^{-1},\\
G_{P,N}&=A_N\operatorname{diag}(\boldsymbol\epsilon_N)A_N^{\mathrm T}.
\end{align}}
$$

This reconstructs the Williamson formula in the original basis. On the Schwartz core, define

$$\begin{align}
J_A&=\begin{pmatrix}0&\mathbf1\\
-\mathbf1&0\end{pmatrix},
\end{align}$$

then the modular derivation acts as

$$
\boxed{\begin{align}
\delta_N(R_A):=\mathrm i[K_{A,N},R_A]
&=J_AG_{A,N}R_A
=\begin{pmatrix}0&G_{P,N}\\-G_{X,N}&0\end{pmatrix}R_A.
\end{align}}
$$

The numerical script verifies the covariance reconstruction and

$$\begin{align}
(J_AG_{A,N})\mathsf V_{A,N} +\mathsf V_{A,N}(J_AG_{A,N})^{\mathrm T}&=0,
\end{align}$$

which is the stationarity condition for the reduced state under its modular flow.

The faithfulness condition matters here. In the checked finite systems, the interior reduction $\rho_{1,N}^{\mathrm{int}}$ has $\nu_{j,N}>1/2$, so the matrix logarithm is finite. The port-complete reduction $\rho_{1\Gamma,N}$ has the collective $\nu=1/2$ mode above and is not faithful on all of $B(\mathcal H_{1,N}^{\mathrm{int}}\otimes\mathcal H_{\Gamma,N})$. Its $-\log\rho$ is infinite away from the support of the pure factor. We may discuss a modular automorphism after compressing to the support, but not an everywhere finite quadratic generator on the full port-complete Type-I factor. Thus the finite port-complete density matrix is not the continuum regional modular object.

### Fixed Bulk Labels

For the faithful interior reduction, define

$$\begin{align}
\Phi_{1,N}^{\mathrm{int}}(f)&=\sum_{n\leq N}f_nC_{1,n},& \Pi_{1,N}^{\mathrm{int}}(g)&=\sum_{n\leq N}g_nV_{1,n},\\
f_n&=(f,u_n),&g_n&=(g,u_n).
\end{align}$$

Then

$$\begin{align}
\delta_N\!\left(\Phi_{1,N}^{\mathrm{int}}(f)\right) &=(G_{P,N}\boldsymbol f)^{\mathrm T}\boldsymbol V_1,\\
\delta_N\!\left(\Pi_{1,N}^{\mathrm{int}}(g)\right) &=-(G_{X,N}\boldsymbol g)^{\mathrm T}\boldsymbol C_1.
\end{align}$$

For smooth smearings compactly supported away from the cut, these approximate the reconstructed bulk observables. The omitted terms are $(f,e_N)q$ and $(g,e_N)\pi_q/\rho_N$. For the piecewise-polynomial $C^2$ bumps below, the sine coefficients decay fast enough that these residual-lift contributions vanish in the finite vacuum covariance, even though $\rho_N\sim N^{-1}$ and $\langle q^2\rangle\sim\log N$.

For $L=m=1$, take the $L^2$-normalized bumps

$$\begin{align}
f(y)&\propto(y-\tfrac14)^3(\tfrac34-y)^3 \mathbf1_{[1/4,3/4]}(y),\\
g(y)&\propto(y-\tfrac15)^3(\tfrac23-y)^3 \mathbf1_{[1/5,2/3]}(y).
\end{align}$$

We test the generator only on this fixed family. Here $\epsilon_{\max,N}$ is the largest finite modular frequency, $g^{\mathrm T}G_{P,N}f$ and $-f^{\mathrm T}G_{X,N}g$ are fixed-label commutator coefficients, and $(G_{P,N}f)^{\mathrm T}P_Ng$ is a fixed-label symmetrized covariance pairing.

| $N$ | $\epsilon_{\max,N}$ | $g^{\mathrm T}G_{P,N}f$ | $-f^{\mathrm T}G_{X,N}g$ | $(G_{P,N}f)^{\mathrm T}P_Ng$ | $\|G_{X,N}g\|_2$ |
|---:|---:|---:|---:|---:|---:|
| 4 | 21.8367 | 1.93943 | -63.5338 | 5.11386 | 115.691 |
| 8 | 48.5670 | 2.34976 | -109.187 | 7.18470 | 267.579 |
| 12 | 75.9221 | 2.44897 | -118.563 | 7.62045 | 323.279 |
| 20 | 131.270 | 2.51639 | -123.631 | 7.87978 | 353.654 |
| 28 | 186.986 | 2.54281 | -125.410 | 7.97439 | 363.022 |

This table is numerical evidence, not a limit theorem. The matrix generator develops large ultraviolet modular frequencies, and $\|G_{X,N}g\|_2$ has not stabilized on this range. The fixed-label commutator and covariance pairings do stabilize. The candidate topology is therefore pointwise convergence of

$$\begin{align}
\omega_N\!\left(O_{a,N}\,\delta_N(O_{b,N})\right), \qquad \omega_N\!\left([O_{a,N},\delta_N(O_{b,N})]\right)
\end{align}$$

for every fixed finite family of smooth labels supported away from the cut. The data do not prove norm convergence of $G_{A,N}$, convergence of the full modular group, or a Type-III modular theorem.

We do not impose a local modular-flow ansatz for the massive scalar on a finite interval. Direct numerics for an adjacent interval on the half-line also find a generically nonlocal massive-scalar modular Hamiltonian, with local behavior only in special massless limits; see [Minz--Tonni, arXiv:2512.04659](https://arxiv.org/abs/2512.04659). We therefore keep the matrix flow above instead of guessing a local weight.

To obtain a continuum modular action, we still need uniform graph estimates for $G_{A,N}$ on a dense test-function core, convergence of the two pairings for every finite family, closability and essential skew-adjointness of the limiting symplectic derivation in the one-particle covariance norm, and compatibility with the limiting regional quasifree state. For now, the fixed-family table is `Checked`, while the continuum modular automorphism is `Open`.

## Eliminating Region 2

The Heisenberg equations in the canonical variables are

$$\begin{align}
\ddot{\boldsymbol C}_1+D_0\boldsymbol C_1-\boldsymbol bq&=0,\\
\ddot{\boldsymbol C}_2+D_0\boldsymbol C_2-\boldsymbol bq&=0,\\
\rho_N\ddot q+\kappa_Nq -\boldsymbol b^{\mathrm T}(\boldsymbol C_1+\boldsymbol C_2)&=0.
\end{align}$$

Define

$$\begin{align}
\Omega_0&=D_0^{1/2},& G_B^R(t)&=\theta(t)\Omega_0^{-1}\sin(\Omega_0t).
\end{align}$$

At the initial time $t_0$, solve the second equation as

$$\begin{align}
\boldsymbol C_2(t)&=\boldsymbol C_2^{\mathrm h}(t) +\int_{t_0}^{t}\mathrm ds\,G_B^R(t-s)\boldsymbol bq(s),\\
\boldsymbol C_2^{\mathrm h}(t)&=\cos[\Omega_0(t-t_0)]\boldsymbol C_2(t_0) +\Omega_0^{-1}\sin[\Omega_0(t-t_0)]\boldsymbol V_2(t_0).
\end{align}$$

Substitute this solution into the port equation. The region-1-plus-port system becomes

$$
\boxed{\begin{align}
\ddot{\boldsymbol C}_1+D_0\boldsymbol C_1-\boldsymbol bq&=0,\\
\rho_N\ddot q(t)+\kappa_Nq(t)-\boldsymbol b^{\mathrm T}\boldsymbol C_1(t)
-\int_{t_0}^{t}\mathrm ds\,K_{B,N}^R(t-s)q(s)&=\xi_{B,N}(t),
\end{align}}
$$

where

$$
\boxed{\begin{align}
K_{B,N}^R(t)&=\theta(t)\boldsymbol b^{\mathrm T}
\Omega_0^{-1}\sin(\Omega_0t)\boldsymbol b,\\
\xi_{B,N}(t)&=\boldsymbol b^{\mathrm T}\boldsymbol C_2^{\mathrm h}(t).
\end{align}}
$$

There are finitely many canonical pairs, while the Schrödinger Hilbert space $L^2(\mathbb R^{2N+1})$ remains infinite-dimensional. These unbounded-operator identities hold on the common invariant Schwartz core $\mathscr S(\mathbb R^{2N+1})$. Equivalently, we may state their integrated linear content with Weyl operators. No product initial state is assumed.

The noise commutator is independent of the state:

$$\begin{align}
[\xi_{B,N}(t),\xi_{B,N}(s)] &=-\mathrm i\boldsymbol b^{\mathrm T}\Omega_0^{-1} \sin[\Omega_0(t-s)]\boldsymbol b\\
&=-\mathrm i\left[K_{B,N}^R(t-s)-K_{B,N}^R(s-t)\right].
\end{align}$$

## Noise and FDR

We now evaluate $\xi_{B,N}$ in two different states.

### Isolated Region-2 KMS State

Let

$$\begin{align}
H_B^0&=\frac12\boldsymbol V_2^{\mathrm T}\boldsymbol V_2 +\frac12\boldsymbol C_2^{\mathrm T}D_0\boldsymbol C_2
\end{align}$$

and take $\tau_{B,\beta}\propto e^{-\beta H_B^0}$. Then

$$
\boxed{\begin{align}
N_{B,N}^{(\beta)}(t-s)
&:=\frac12\operatorname{Tr}\left[
\tau_{B,\beta}\{\xi_{B,N}(t),\xi_{B,N}(s)\}\right]\\
&=\frac12\boldsymbol b^{\mathrm T}\Omega_0^{-1}
\coth\left(\frac{\beta\Omega_0}{2}\right)
\cos[\Omega_0(t-s)]\boldsymbol b.
\end{align}}
$$

With the Fourier convention $\widehat f(\omega)=\int_{\mathbb R}\mathrm dt\,e^{\mathrm i\omega t}f(t)$, we obtain the finite discrete FDR

$$
\boxed{\begin{align}
\widehat N_{B,N}^{(\beta)}(\omega)
&=\coth\left(\frac{\beta\omega}{2}\right)
\operatorname{Im}\widehat K_{B,N}^R(\omega),
\end{align}}
$$

as an equality of distributions supported at $\omega=\pm\omega_n$. Its ground-state limit is $\beta\to\infty$.

### Glued Ground State

Next evaluate the same operator $\xi_{B,N}$ in the glued ground state. Let $X_{22}$ and $P_{22}$ be the region-2 blocks of the full covariances, and define

$$\begin{align}
C_0(t)&=\cos[\Omega_0(t-t_0)],& G_0(t)&=\Omega_0^{-1}\sin[\Omega_0(t-t_0)].
\end{align}$$

Then

$$\begin{align}
N_{B,N}^{\mathrm{gl}}(t,s) &=\boldsymbol b^{\mathrm T}\left[ C_0(t)X_{22}C_0(s)+G_0(t)P_{22}G_0(s) \right]\boldsymbol b.
\end{align}$$

This kernel is generally not a function of $t-s$. The operator $\boldsymbol C_2^{\mathrm h}$ evolves with the isolated $H_B^0$, while the state is stationary under the full glued Hamiltonian. In addition,

$$\begin{align}
\frac12\langle\{\xi_{B,N}(t_0),R_{1\Gamma}(t_0)\}\rangle_{\mathrm{gl}}\neq0
\end{align}$$

in general. Hence the isolated-bath KMS FDR does not describe the glued-vacuum reduction. The commutator identity remains exact, but we must retain the symmetrized kernel and the initial cross correlations separately.

## Regional Boundary Response

The literal endpoint derivative satisfies

$$\begin{align}
u_n'(L)&=-A_nk_n^2=-b_n.
\end{align}$$

Therefore

$$\begin{align}
\phi_i'(L)&=\frac qL-\boldsymbol b^{\mathrm T}\boldsymbol c_i,\\
\mathcal F_N&=\phi_1'(L)+\phi_2'(L) =\frac{2q}{L}-\boldsymbol b^{\mathrm T}(\boldsymbol c_1+\boldsymbol c_2).
\end{align}$$

This is the orientation convention of `formalism.md`: both $y_i$ derivatives point toward the cut, and their sum vanishes.

The regional variables obey

$$\begin{align}
\ddot{\boldsymbol c}_2+D_0\boldsymbol c_2 &=-\boldsymbol A(\ddot q+m^2q).
\end{align}$$

Integrate the $\ddot q$ convolution twice by parts. Using $G_B^R(0)=0$, $\partial_tG_B^R(0)=\mathbf1$, and the compatible initial data

$$\begin{align}
\boldsymbol C_2(t_0)&=\boldsymbol c_2(t_0)+\boldsymbol Aq(t_0),\\
\boldsymbol V_2(t_0)&=\dot{\boldsymbol c}_2(t_0)+\boldsymbol A\dot q(t_0),
\end{align}$$

we obtain

$$\begin{align}
\boldsymbol c_2^{\mathrm h}(t) -\int_{t_0}^{t}\mathrm ds\,G_B^R(t-s)\boldsymbol A
(\ddot q(s)+m^2q(s))+\boldsymbol Aq(t)\\
=\boldsymbol C_2^{\mathrm h}(t) +\int_{t_0}^{t}\mathrm ds\,G_B^R(t-s)\boldsymbol bq(s).
\end{align}$$

Thus eliminating $\boldsymbol C_2$ in the canonical equations and eliminating $\boldsymbol c_2$ in the forced regional equations are the same operation in two coordinate systems. Substitute either expression into

$$\begin{align}
\rho_N(\ddot q+m^2q)+\mathcal F_N&=0
\end{align}$$

to obtain the same operator equation.

The same equality holds in frequency space. For $z=k^2$ away from the regional poles, the canonical Schur response is

$$\begin{align}
\kappa_N-\rho_N(m^2+z) -2\sum_{n=1}^N\frac{b_n^2}{k_n^2-z},
\end{align}$$

and the regional flux expression is

$$\begin{align}
\frac2L-\rho_Nz -2z\sum_{n=1}^N\frac{A_n^2k_n^2}{k_n^2-z}.
\end{align}$$

Using $b_n=A_nk_n^2$ and $2\sum_{n\le N}A_n^2k_n^2=4N/L$, the two expressions agree. This reproduces the finite retarded boundary response in `formalism.md`, including the port-inertia term. It is not the strong truncation $\mathcal F_N=0$.

## Three Different Constructions

### State Restriction

For the global finite state $\rho_N^{\mathrm{gl}}$, define the restriction to a subalgebra by

$$\begin{align}
\omega_{A,N}(a)&=\operatorname{Tr}(\rho_N^{\mathrm{gl}}a),&a&\in\mathfrak A_{A,N}.
\end{align}$$

For the two tensor factors above, ordinary partial traces represent this restriction as $\rho_{1,N}^{\mathrm{int}}$ and $\rho_{1\Gamma,N}$. This construction concerns one global state at one time.

### Operator-Level Elimination

To obtain the memory equation, solve the region-2 Heisenberg equation and substitute the solution back. The result is an equality on the common Schwartz core, or in integrated Weyl/Heisenberg form. It is independent of the state later used to compute its moments, and it does not define a map on arbitrary regional density matrices.

### Open-System Channel

Let $U_N(t)$ be the full glued unitary. To define a dynamical map on arbitrary states of the chosen system factor, first choose an assignment

$$\begin{align}
\mathcal E_N:\rho_S\longmapsto\rho_{SB},& \operatorname{Tr}_B\mathcal E_N(\rho_S)&=\rho_S,
\end{align}$$

then define

$$\begin{align}
\Phi_{N,t}(\rho_S)&=\operatorname{Tr}_B\left[ U_N(t)\mathcal E_N(\rho_S)U_N(t)^\dagger \right].
\end{align}$$

The product assignment $\mathcal E_N(\rho_S)=\rho_S\otimes\tau_B$ gives a CPTP map on the full system state space and produces the isolated-bath noise kernel. The glued vacuum instead gives one correlated $\rho_{SB}^{\mathrm{gl}}$ and one reduced trajectory. Without another assignment or a compatibility-domain prescription, it does not define a state-independent CPTP channel on arbitrary $\rho_S$. Thus the reduction of the glued vacuum is not a product-environment channel.

## Continuum Limit

Take

$$\begin{align}
H&=L^2(-L,L),&V&=H_0^1(-L,L),& A&=-\partial_x^2+m^2,
\end{align}$$

with $D(A)=H^2(-L,L)\cap H_0^1(-L,L)$. Let $W_N\subset V$ be the nested centered conforming port spaces, and let $A_N$ be their Galerkin operators. We use the previously proved assumptions:

1. $W_N$ are nested and form-dense in $V$;
2. the restricted forms Mosco-converge and the embedded resolvents converge strongly;
3. $m>0$, so the inverse square-root functional calculus is bounded on the common spectral half-line;
4. all finite states are the ground states of the same conforming Hamiltonians, not independently chosen regional vacua;
5. observable labels are fixed bulk-spatial smearings supported in region 1, or phase-space labels $z=(u,v)$ with $u\in V$, $v\in H$, support in region 1, and approximants converging in the corresponding covariance/form topology.

For a fixed finite family of these labels, let $\mathfrak A_{1,N}^{\mathrm{bulk}}$ be the finite Weyl algebra generated by their Galerkin approximants. Whenever an observable lies in the corresponding finite factor, either finite partial trace may represent the global ground-state restriction. Its expectation is

$$\begin{align}
\omega_{1,N}(a_N)&=\omega_N^{\mathrm{gl}}(a_N).
\end{align}$$

For $f,g\in L^2(-L,0)$ extended by zero to the connected interval, strong functional calculus gives

$$\begin{align}
\frac12(P_Nf,A_N^{-1/2}e^{-\mathrm i\tau A_N^{1/2}}P_Ng)_H \longrightarrow
\frac12(f,A^{-1/2}e^{-\mathrm i\tau A^{1/2}}g)_H
\end{align}$$

locally uniformly for $\tau$ in compact sets. The fixed-Weyl-label theorem also gives

$$\begin{align}
\omega_N^{\mathrm{gl}} \left(W_N(z_{1,N})\cdots W_N(z_{r,N})\right) \longrightarrow
\omega_{\mathrm{conn}} \left(W(z_1)\cdots W(z_r)\right).
\end{align}$$

Since every $z_j$ is supported in region 1, the right-hand side is the connected global vacuum restricted to the region-1 bulk algebra:

$$
\boxed{\begin{align}
\omega_{1,N}&\longrightarrow
\omega_{\mathrm{conn}}|_{\mathfrak A_1^{\mathrm{bulk}}}
\end{align}}
$$

in the directed cylindrical/pointwise state topology above. This proves convergence for each declared fixed finite family of bulk/Weyl labels. We do not use arbitrary extensions or infer a unique weak-* limit on a common inductive $C^*$-algebra. Such a result would require specified embeddings or compatible extensions and convergence on a norm-dense $*$-subalgebra. We also do not obtain universal Weyl $C^*$-norm convergence of moving generators.

The residual port direction is

$$\begin{align}
\phi_{1,N}&=\sum_{n\le N}C_{1,n}u_n+qe_N,& 2\|e_N\|_{L^2}^2&=\rho_N\longrightarrow0.
\end{align}$$

For every fixed $L^2$ bulk smearing $f$, $(f,e_N)\to0$. The full smeared covariance converges by functional calculus, although the unsmeared point variance of $q$ diverges logarithmically and the pure residual direction is not bounded in the energy norm. The finite port factor is therefore part of the regulator at each $N$. It does not survive as a continuum tensor factor or point oscillator.

We do not claim that $\rho_{1,N}^{\mathrm{int}}$ or $\rho_{1\Gamma,N}$ converges in trace norm to a continuum density matrix. The continuum object is the positive normalized functional $\omega_{\mathrm{conn}}|_{\mathfrak A_1^{\mathrm{bulk}}}$ and its intrinsic GNS representation.

## Status

| Statement | Status | Evidence and boundary |
|---|---|---|
| Exact Hamiltonian in $(C,V,q,\pi_q)$ | Proved | Direct substitution in the finite action; symbolic matrix identity. |
| $H_N=H_-+H_{+q}$ | Proved | Orthogonal symplectic $\pm$ transformation; exact block diagonalization. |
| Positivity and finite spectrum | Proved | Positive conforming form, positive Schur complements, and monotone secular response with one root between successive poles. |
| Finite canonical tensor factors | Proved | $\rho_N>0$ and exact Darboux direct sum in the regular finite Schrödinger representation. |
| Abstract Weyl algebra versus Type-I factor | Proved | Stone--von Neumann regular representation: the von Neumann closure of the represented full finite-pair Weyl algebra is the Type-I factor; the abstract Weyl $C^*$-algebra is not $B(\mathcal H)$. |
| Distinction among interior, port-complete, and bulk-smeared regional objects | Proved | Explicit generators and residual-lift reconstruction; the represented von Neumann closure is port-complete only for the full regulator-dependent smearing class. |
| Shared-port regional overlap | Proved | $\mathfrak A_{1\Gamma,N}\cap\mathfrak A_{2\Gamma,N}=B(\mathcal H_{\Gamma,N})$ in the displayed embedding; the algebras do not commute, while the interior factors do. |
| Compatibility of overlapping regional states | Proved at finite Type I | Both port-complete reductions have the same port marginal. Conditional expectations onto the overlap require a chosen interior normal state and are not canonical. |
| Full and reduced Gaussian covariances | Proved | Positive quadratic-Hamiltonian functional calculus/generalized eigenbasis. |
| Williamson density matrices, modular Hamiltonians, and entropy formulas | Proved | Finite-dimensional Williamson theorem applied to the selected covariance blocks. |
| Extra $\nu=1/2$ in $\rho_{1\Gamma,N}$ | Proved | Gaussian Schmidt pairing and dimension count. It is a collective mode, not the original port pair. |
| Port-only mixedness | Checked | Direct one-mode covariance extraction through $N=64$; at $N=32$, $\nu_\Gamma=0.768039>1/2$. |
| Entropy growth | Checked | High-precision $L=m=1$ calculation through $N=256$; doubling slope $0.166193896$ at $N=256$. Several $mL$ values preserve the slope and change the offset. |
| $S_N=(1/6)\log N+s_0(mL)+o(1)$ | Conditional/open | Strong numerical evidence and $c=1$ BCFT universality interpretation. The Galerkin-to-short-distance cutoff comparison and entropy-sensitive spectral estimates are not proved. |
| Finite interior modular generator | Proved | Explicit $G_X,G_P$ reconstruction from $X_N,P_N$; exact linear derivation on the Schwartz core. |
| Port-complete modular generator on the full factor | Excluded | The exact collective $\nu=1/2$ mode makes the reduced state nonfaithful; only support compression/nontrivial Schmidt modes have finite modular frequencies. |
| Fixed-family modular-generator pairings | Checked | Support-away-from-cut normalized bumps through $N=28$ at high precision. Pairings stabilize while ultraviolet modular frequencies and an unsmeared coefficient norm grow. |
| Continuum modular automorphism | Open | No norm/full-group/Type-III convergence is inferred; the candidate is pointwise convergence of covariance and commutator pairings on a fixed smooth test family. |
| Region-2 elimination and memory/noise operator | Proved | Exact finite Duhamel solution and substitution. |
| Equality with the existing $c_i,q$ boundary response and oriented flux equation | Proved | Twice-integrated Duhamel identity and exact frequency-domain response equality. |
| Noise commutator | Proved | Finite CCR. |
| KMS/FDR | Proved conditionally | Exact for the isolated $H_B^0$ KMS reference state, including the ground-state limit. It is not asserted for the actual correlated glued vacuum under the isolated free-noise split. |
| Glued-vacuum symmetrized noise and initial correlations | Proved as formulas; checked numerically | Extracted from the full covariance; nonstationarity under free $B$ evolution and nonzero initial system-noise correlations checked at finite $N$. |
| State restriction and finite partial trace | Proved | Ordinary finite tensor-factor restriction. |
| A CPTP map for arbitrary regional states | Conditional | Requires a declared assignment; product assignment gives one CPTP map. The correlated glued vacuum alone does not. |
| Continuum bulk-smeared regional state | Proved under the displayed existing hypotheses | Mosco/strong-resolvent/functional-calculus and fixed-smeared-Weyl state theorems. |
| Weak-* convergence after arbitrary extensions | Not proved and not used | Established convergence is only directed cylindrical/pointwise convergence for every fixed finite label family. |
| Trace-class continuum regional density matrix | Not claimed | The established target is algebraic state restriction, not a density-operator limit. |
| Unsmeared cut-field covariance, pointwise flux operator, or continuum port oscillator | Excluded from the proved scope | Existing continuum theorem covers fixed bulk smearings and weak/graph-core flux statements only. |

At each finite $N$, the reduced state has a density matrix and its entropy grows with the regulator. At the same time, the state on every fixed finite family of bulk observables converges. These statements concern different limits and are compatible. For the modular action, only the fixed-family numerical check is available; the continuum statement remains open.

## Check

Run from `Articles/Quantization in AdS/gluing/numerics/`:

```sh
wolframscript -file reduced_state_open_system_scalar_checks.wl
```

The script checks

- exact Schur and $\pm$ sector matrix identities;
- positivity, antisymmetric frequencies, symmetric response roots, and interlacing;
- full covariance purity, CCR uncertainty bound, reduced Williamson spectra, and Gaussian Schmidt pairing;
- the port-only covariance and mixedness table;
- the $L=m=1$ entropy table through $N=256$, doubling slopes, subtracted entropies, and the displayed $mL$ dependence;
- the finite interior modular-matrix reconstruction, stationary covariance identity, ultraviolet modular-frequency growth, and fixed-family pairings;
- time-domain region-2 elimination;
- the noise commutator and isolated-bath KMS/FDR spectral weights;
- nonstationarity and initial cross correlation of the same free-noise split in the actual glued ground state.

Verified: all exact identities and finite checks above pass in `numerics/reduced_state_open_system_scalar_checks.wl`.

Assumptions: centered cut, physical outer Dirichlet conditions, $L,m>0$, lifting $h(y)=y/L$, one common conforming cutoff, and the connected finite Hamiltonian ground state.

Not verified: a theorem for the $1/6$ entropy coefficient or the subtracted constant, a continuum modular automorphism or full modular-flow limit, a trace-class continuum reduced density matrix, a point-field continuum covariance, a state-independent channel for arbitrary correlated initial states, interactions, gauge theory, Maxwell/Yang--Mills, or gravity.
