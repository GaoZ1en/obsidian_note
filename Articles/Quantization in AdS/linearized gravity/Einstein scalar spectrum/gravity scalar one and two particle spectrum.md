Use the lowest physical single-scalar gap as the mass-renormalization condition:

$$\begin{align}
E^{(1)}_{00}&=\Delta_{\mathrm R}, & m_{\mathrm R}^2&=\Delta_{\mathrm R}(\Delta_{\mathrm R}-2).
\end{align}$$

AdS symmetry fixes the other gaps in this scalar representation:

$$\begin{align}
E^{(1)}_{nj}=\Delta_{\mathrm R}+2n+|j|, \qquad n\in\mathbb Z_{\geq0},\quad j\in\mathbb Z.
\end{align}$$

Write $\Delta=\Delta_{\mathrm R}$ below. The quadratic scalar action gives the free KG modes. Normalize their positive-frequency solutions with the integrated free symplectic form before expanding the field:

$$\begin{align}
\phi ^{(0)} & =\sum _{I}(b_{I}u_{I}+b^{\dagger}_{I}u^{*}_{I}), & [b_{I},b^{\dagger}_{J}] & =\delta _{IJ} \\
u_{I} & \propto e^{-i\omega _{I}t+ij_{I}\varphi}, & \omega _{I} & =\Delta+2n_{I}+|j_{I}| \\
H_{0} & =\sum _{I}\omega _{I}b^{\dagger}_{I}b_{I}
\end{align}$$

here $\displaystyle{I=(n_{I},j_{I})}$ is a complete mode label. The symbol $\displaystyle{\delta _{IJ}=\delta _{n_{I}n_{J}}\delta _{j_{I}j_{J}}}$ is the ordinart Kronecker delta. The normalized double particle state is

$$\begin{align}
\ket{IJ}  & =\dfrac{b^{\dagger}_{I}b^{\dagger}_{J}\ket{0} }{\sqrt{ 1+\delta _{IJ} }}, & E^{(0)}_{IJ} & =\omega _{I}+\omega _{J}
\end{align}$$

here $\displaystyle{IJ}$ is unordered pair labels, so that there is no double counting.

On the sourced branch with $\displaystyle{h=0}$ and the stated homogeneous-data convention, $\displaystyle{\phi ^{(1)}=0}$ but $\displaystyle{k=k _{\phi}}$ remains nonzero. The starting action is

$$\begin{align}
S_{\text{eff}} & =S^{(0)}_{\text{eff}}+\kappa ^{2}S^{(2)}_{\text{eff}}+\mathcal{O}(\kappa ^{3}), & S_{\text{eff}}^{(1)}=0 \\
S^{(0)}_{\text{eff}} & =-\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\mu}\phi ^{(0)}\nabla ^{(0)\mu}\phi ^{(0)}+m^{2}\phi ^{(0)2}\right) \\
S^{(2)}_{\text{eff}} & =\dfrac{1}{4}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }(k _{\phi})_{\mu \nu}T_{(0)}^{\mu \nu}[\phi ^{(0)}]
\end{align}$$

where $\displaystyle{k _{\phi}}$ is determined by

$$\begin{align}
\mathcal{E}^{(1)}[k _{\phi}] & =\dfrac{1}{2}T_{(0)}[\phi ^{(0)}] \\
\implies k _{\phi,\mu \nu}(x) & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x'\sqrt{ -g^{(0)}(x') }G_{\mu \nu,\mu'\nu'}(x,x')T^{\mu'\nu'}_{(0)}(x')
\end{align}$$

then

$$\begin{align}
S_{\text{eff}} & =\dfrac{\kappa ^{2}}{8}\int _{M}\mathrm{d}^{3}x\mathrm{d}^{3}x'\sqrt{ -g^{(0)}(x) }\sqrt{ -g^{(0)}(x') }T^{\mu \nu}_{(0)}(x)G_{\mu \nu,\mu'\nu'}(x,x')T^{\mu'\nu'}_{(0)}(x')
\end{align}$$

the interaction Hamiltonian is

$$\begin{align}
H^{(2)}(b,b^{\dagger}) & =-\dfrac{\kappa ^{2}}{4}\left<\int _{\Sigma}\mathrm{d}r\mathrm{d}\varphi r(k _{\phi})_{\mu \nu}T^{\mu \nu}_{(0)}\right>_{t}
\end{align}$$

here $\displaystyle{\left<\right>_{t}}$ means time average, which extracts the zero-frequency term. For instance, $\displaystyle{b^{\dagger}_{I}b^{\dagger}_{J}b_{K}b_{L}}$ gives

$$\begin{align}
\omega _{I}+\omega _{J} & =\omega _{K}+\omega _{L}
\end{align}$$

angular integration likewise requires

$$\begin{align}
j_{I}+j_{J} & =j_{K}+j_{L}
\end{align}$$

for normalized states $\displaystyle{\ket{IJ}}$, the finite matrix is explicitly

$$\begin{align}
V_{IJ,KL} & =\dfrac{\partial _{b^{\dagger}_{I}}\partial _{b^{\dagger}_{J}}\partial _{b_{K}}\partial _{b_{L}}H^{(2)}}{\sqrt{ (1+\delta _{IJ})(1+\delta _{KL}) }}{\Big|}_{b=b^{\dagger}=0}.
\end{align}$$

Restrict to $\displaystyle{\omega _{I}+\omega _{J}=\omega _{K}+\omega _{L}=E_{0}}$ and $\displaystyle{j_{I}+j_{J}=j_{K}+j_{L}=J}$. The leading energy gaps are

$$\begin{align}
E^{(2)}_{E_{0},J,\alpha} & =E_{0}+\lambda _{\alpha}(V_{E_{0},J})+\mathcal{O}(G^{2})
\end{align}$$

here $\displaystyle{\alpha}$ labels different degenerate blocks.

## Direct Calculation

Conisder only the lowest pair

$$\begin{align}
\phi(t,r) & =\dfrac{f^{-\Delta/2}}{\sqrt{ 2\pi }}(b_{0,0}e^{-i\Delta t}+b^{\dagger}_{0,0}e^{i\Delta t})
\end{align}$$

which gives

$$\begin{align}
H^{(2)} & =\kappa ^{2} \dfrac{\Delta ^{2}(7+2\Delta-8\Delta ^{2})}{16\pi(4\Delta ^{2}-1)} (b^{\dagger}_{0,0})^{2}b_{0,0}^{2}
\end{align}$$

upon normal ordering

$$\begin{align}
(b^{\dagger}_{0,0})^{2}b_{0,0}^{2} & =N(N-1), \\
 & =2 & N=b^{\dagger}_{0,0}b_{0,0}=2
\end{align}$$

consequently

$$\begin{align}
E^{(2)}_{00} & =2\Delta+\gamma _{00}+\mathcal{O}(G^{2}) \\
 & =2\Delta+\kappa ^{2} \dfrac{\Delta ^{2}(7+2\Delta-8\Delta ^{2})}{8\pi(4\Delta ^{2}-1)}+\mathcal{O}(G^{2})
\end{align}$$

at free energy $\displaystyle{2\Delta+2}$ and vanishing angular momentum, the two scalar product states are

$$\begin{align}
\ket{A}  & =b^{\dagger}_{0,0}b^{\dagger}_{1,0}\ket{0} , & \ket{B}  & =b^{\dagger}_{0,1}b^{\dagger}_{0,-1}\ket{0}
\end{align}$$

we have

$$\begin{align}
H^{(2)}_{E_{0}=2\Delta+2,J=0} & =\dfrac{\kappa ^{2}}{2}\begin{pmatrix}
\gamma _{00}+\gamma _{10} & \gamma _{00}-\gamma _{10} \\
\gamma _{00}-\gamma _{10} & \gamma _{00}+\gamma _{10}
\end{pmatrix}
\end{align}$$

direct calculation gives

$$\begin{align}
\braket{ A|H^{(2)}|A }  & =-\dfrac{\Delta ^{2}(8\Delta ^{3}+26\Delta ^{2}+7\Delta-17)}{4\pi(2\Delta-1)(2\Delta+1)(2\Delta+3)} \\
\implies \gamma _{10} & =2\kappa ^{2}\braket{ A|H^{(2)}|A } -\gamma _{00}
\end{align}$$

---

## Algebraic Reconstruction of the General Primary Spectrum

The general recursion repeats the preceding subtraction with several new primaries at each level. The dynamical input is a circular matrix $\mathsf R^{(N)}$. Free representation theory fixes its overlaps with all primary descendants; these overlaps allow the unknown primary shifts to be recovered without treating the circular subspace as a closed physical block.

### Single-Particle Labels and Two-Particle Primary Labels

For a single scalar, replace the radial/angular labels $(n,j)$ by left and right descendant levels $(p,q)$:

$$\begin{aligned}
p&=n+\max(j,0), & q&=n+\max(-j,0),\\
E&=\Delta+p+q, & j&=p-q.
\end{aligned}$$

Each single-particle chiral representation has lowest weight $\Delta/2$. A circular mode has $j=0$ and hence $p=q=n$.

Now couple the two particles on the left and on the right separately. Label the resulting chiral primaries by $k,l\geq0$. Their weights and global primary labels are

$$\begin{aligned}
(h_P,\bar h_P)&=(\Delta+k,\Delta+l),\\
E_P^{(0)}&=2\Delta+k+l, & \ell&=k-l,\\
n&=\min(k,l), & |\ell|&=|k-l|.
\end{aligned}$$

Thus $k,l$ label a two-particle primary, whereas $p,q$ label a single-particle descendant. Identical bosons require $k+l$ even, as follows from exchange parity below. The theory is parity invariant, so the two signs of spin have the same $\gamma_{n\ell}$.

At total left/right levels $(N,N)$, every primary with $k,l\leq N$ contributes a descendant obtained by raising it $N-k$ times on the left and $N-l$ times on the right. That descendant has free energy $2\Delta+2N$ and total spin zero, but inherits the shift $\gamma_{\min(k,l),|k-l|}$. In particular, a spinning primary can contribute to a spin-zero matrix through its descendants. For $(k,l)=(2,0)$, two right raisings produce such a descendant.

### The Circular Matrix Is the Dynamical Input

At these total levels, choose the normalized circular pair states

$$\begin{align}
|r;N\rangle= \frac{b^\dagger_{r,0}b^\dagger_{N-r,0}|0\rangle}{\sqrt{1+\delta_{2r,N}}}, \qquad r=0,\ldots,\lfloor N/2\rfloor.
\end{align}$$

Here $r$ is an integer mode index, not the radial coordinate. The subscripts on $b$ still denote $(n,j)$. Compute

$$\begin{align}
\mathsf R^{(N)}_{rs}=\kappa^2\langle r;N|H_4|s;N\rangle.
\end{align}$$

The exact circular Hamiltonian and finite radial sums below supply these entries. This is a compression of the full resonant interaction: omitted states include pairs of opposite nonzero single-particle angular momenta. Its eigenvalues alone are not the spectrum.

### Constructing the Chiral Change of Basis

Consider just the left sector, with orthonormal product basis $|p,N-p\rangle$ at total level $N$. Define

$$\begin{align}
|k;N\rangle_L=\sum_{p=0}^N U^{(N)}_{pk}|p,N-p\rangle.
\end{align}$$

The column $k$ is the normalized level-$(N-k)$ descendant of the chiral primary of weight $\Delta+k$. The row $p$ specifies how the level is distributed between the two particles. These are two orthonormal bases of the same chiral tensor-product level, so real phases give $(U^{(N)})^TU^{(N)}=1$.

To compute $U$, first construct the primary at level $k$:

$$\begin{align}
|k;k\rangle_L=\sum_{p=0}^k c_p|p,k-p\rangle, \qquad (L_1^{(1)}+L_1^{(2)})|k;k\rangle_L=0.
\end{align}$$

The normalized single-particle ladders are

$$\begin{align}
L_1|p\rangle=\sqrt{p(\Delta+p-1)}|p-1\rangle, \qquad L_{-1}|p\rangle=\sqrt{(p+1)(\Delta+p)}|p+1\rangle.
\end{align}$$

Equating the coefficient of each $|p,k-1-p\rangle$ to zero gives

$$\begin{align}
\frac{c_{p+1}}{c_p} =-\sqrt{\frac{(k-p)(\Delta+k-p-1)}{(p+1)(\Delta+p)}}, \qquad 0\leq p<k.
\end{align}$$

Normalize $\sum_p|c_p|^2=1$ and choose $c_0>0$. Raise this primary to the required level:

$$\begin{align}
|k;N\rangle_L= \frac{(L_{-1}^{(1)}+L_{-1}^{(2)})^{N-k}} {\sqrt{(N-k)!(2\Delta+2k)_{N-k}}}|k;k\rangle_L.
\end{align}$$

Here $(a)_s=a(a+1)\cdots(a+s-1)$ and $(a)_0=1$. Reading its product-basis coefficients gives the column $U^{(N)}_{pk}$. This construction uses only the free representation; no energy-shift coefficient enters it. The finite Hahn-polynomial formula below is an equivalent direct evaluation of these same coefficients.

Particle exchange acts as

$$\begin{align}
U^{(N)}_{N-p,k}=(-1)^kU^{(N)}_{pk}.
\end{align}$$

For the left/right product, the exchange sign is $(-1)^{k+l}$, which gives the bosonic restriction $k+l$ even.

### Resolving the Circular Matrix into Primary Contributions

Set

$$\begin{align}
s_r=\sqrt{\frac{2}{1+\delta_{2r,N}}}, \qquad C_{r;kl}=s_rU^{(N)}_{rk}U^{(N)}_{rl}.
\end{align}$$

The two factors of $U$ come from coupling the left and right sectors. The factor $s_r$ comes from symmetrizing the two particle labels: it is $\sqrt2$ for distinct circular modes and $1$ for coincident modes. Thus $C_{r;kl}$ is the overlap of $|r;N\rangle$ with the normalized descendant of primary $(k,l)$ at total levels $(N,N)$.

The connected resonant Hamiltonian is used after the stated mass and nonresonant dressing conventions, in a form respecting the AdS representation decomposition. Each irreducible global representation appears once in the free two-scalar product. Its descendants inherit one primary shift. Consequently

$$\begin{align}
\boxed{ \mathsf R^{(N)}_{rs}= \sum_{\substack{0\leq k,l\leq N\\
k+l\ \mathrm{even}}} C_{r;kl}C_{s;kl}\,\gamma_{\min(k,l),|k-l|}.
}
\end{align}$$

This is a linear equation for the primary shifts: $\mathsf R$ is the calculated dynamical input and all $C$ are known representation coefficients. Multiplicity one here concerns the free two-scalar product. It does not establish multiplicity one in the full gravity–matter Hilbert space; the physical branch assumptions are discussed below.

### Subtracting Known Descendants and Solving for New Shifts

At level $N$, any term with $k,l<N$ has already appeared at level $\max(k,l)<N$. Subtract these known terms:

$$\begin{align}
(\mathsf R_{\mathrm{new}}^{(N)})_{rs} =\mathsf R^{(N)}_{rs} -\sum_{\substack{0\leq k,l<N\\
k+l\ \mathrm{even}}} C_{r;kl}C_{s;kl}\,\gamma_{\min(k,l),|k-l|}.
\end{align}$$

Only pairs with one label equal to $N$ remain. Combining the two opposite-spin terms gives

$$\begin{align}
\mathsf R_{\mathrm{new}}^{(N)} =\sum_{k=N,N-2,\ldots} (2-\delta_{kN})\,C_{;kN}C_{;kN}^{T}\,\gamma_{k,N-k}.
\end{align}$$

The notation $C_{;kN}$ means the column vector with entries $C_{r;kN}$. For $k<N$, $(k,N)$ and $(N,k)$ contribute equally and produce the factor two. For $k=N$ there is one spin-zero primary.

Define

$$\begin{align}
\mathsf D_N=\operatorname{diag}_{r=0}^{\lfloor N/2\rfloor}(U^{(N)}_{rN}), \qquad (\mathsf O_N)_{rk}=s_rU^{(N)}_{rk},\quad k=N,N-2,\ldots.
\end{align}$$

Since $C_{;kN}=\mathsf D_N(\mathsf O_N)_{;k}$, the previous equation factors as

$$\begin{align}
\mathsf R_{\mathrm{new}}^{(N)} =\mathsf D_N\mathsf O_N \operatorname{diag}_{k=N,N-2,\ldots} \left[(2-\delta_{kN})\gamma_{k,N-k}\right] \mathsf O_N^T\mathsf D_N.
\end{align}$$

Both inversions are justified. For columns of parity $(-1)^N$, the paired rows $r,N-r$ give equal products; the weights $s_r^2$ therefore turn the half-range sum into the full orthogonality sum. Hence $\mathsf O_N^T\mathsf O_N=1$. Also, $U^{(N)}_{rN}$ is a coefficient of the level-$N$ chiral primary. The lowering recursion gives

$$\begin{align}
U^{(N)}_{rN}\propto (-1)^r\sqrt{\binom Nr\frac{(\Delta+N-r)_r}{(\Delta)_r}},
\end{align}$$

with one nonzero common normalization. For $\Delta>1$ every displayed factor is finite and positive before the sign, so no diagonal entry of $\mathsf D_N$ vanishes. Thus

$$\begin{align}
\boxed{ \mathsf O_N^T\mathsf D_N^{-1}\mathsf R_{\mathrm{new}}^{(N)} \mathsf D_N^{-1}\mathsf O_N =\operatorname{diag}_{k=N,N-2,\ldots} \left[(2-\delta_{kN})\gamma_{k,N-k}\right].
}
\end{align}$$

The diagonal entries determine the new shifts. Every off-diagonal entry must vanish and is an additional consistency check on the circular calculation and the assumed invariant form. The implementation returns a failure if one does not vanish. This is an all-finite-$N$ inversion argument; it is separate from the finite list of explicitly evaluated coefficients.

### First Recursion Levels

| Recursion level $N$ | Circular states | Newly determined shifts |
|---:|---:|---|
| $0$ | $1$ | $\gamma_{00}$ |
| $1$ | $1$ | $\gamma_{10}$ |
| $2$ | $2$ | $\gamma_{20},\gamma_{02}$ |
| $3$ | $2$ | $\gamma_{30},\gamma_{12}$ |
| $4$ | $3$ | $\gamma_{40},\gamma_{22},\gamma_{04}$ |

At $N=0$, $\mathsf R^{(0)}=\gamma_{00}$. At $N=1$, $\mathsf R^{(1)}=(\gamma_{00}+\gamma_{10})/2$, reproducing the first spin-zero block. A primary $(n,|\ell|)$ is first recovered at

$$\begin{align}
N=\max(k,l)=n+|\ell|,
\end{align}$$

not at its own free excitation energy $2n+|\ell|$. The recursion can use higher-energy descendants to extract a lower-energy primary shift.

For a concrete two-dimensional step, take $N=2$ and $\Delta=2$. In the circular basis

$$\begin{align}
|0;2\rangle=b_{0,0}^\dagger b_{2,0}^\dagger|0\rangle, \qquad |1;2\rangle=\frac{(b_{1,0}^\dagger)^2}{\sqrt2}|0\rangle,
\end{align}$$

the radial calculation gives

$$\begin{align}
\frac{\mathsf R^{(2)}}G=
\begin{pmatrix}-32&-264\sqrt2/35\\
-264\sqrt2/35&-1376/35\end{pmatrix}.
\end{align}$$

The already known contributions are precisely $\gamma_{00}C_{;00}C_{;00}^T+\gamma_{10}C_{;11}C_{;11}^T$. After subtracting them, the known matrices are

$$\begin{align}
\mathsf D_2&=\operatorname{diag}(1/\sqrt5,-\sqrt{3/5}),\\
\mathsf O_2&=\begin{pmatrix}\sqrt{2/5}&\sqrt{3/5}\\
-\sqrt{3/5}&\sqrt{2/5}\end{pmatrix},
\qquad (k=2,0).
\end{align}$$

They give

$$\begin{align}
\frac1G\mathsf O_2^T\mathsf D_2^{-1}\mathsf R_{\mathrm{new}}^{(2)} \mathsf D_2^{-1}\mathsf O_2 =\operatorname{diag}\left(-\frac{416}{5},-\frac{1104}{35}\right) =\frac1G\operatorname{diag}(\gamma_{20},2\gamma_{02}).
\end{align}$$

Therefore $\gamma_{20}/G=-416/5$ and $\gamma_{02}/G=-552/35$. These are evaluations of the connected coefficients; the use of a special numerical mass does not remove possible extra matter-primary collisions in a larger physical sector.

---

## Results and Mass Convention

The final result is

$$\begin{align}
E^{(2),\text{primary}}_{n,\ell} & =2\Delta+2n+|\ell|+\gamma _{n|\ell|}+\mathcal{O}(G^{2})
\end{align}$$

where

$$\begin{align}
\gamma _{n\ell} & =\begin{cases}
-4G(\Delta ^{2}+2n(2\Delta+n-1)) \dfrac{2\Delta+2n-2}{2\Delta+2n-1}-G\dfrac{2((\Delta+n)(\Delta+n-1)+\Delta(\Delta-2))^{2}}{(2\Delta+2n-3)(2\Delta+2n-1)(2\Delta+2n+1)}, & \ell=0 \\
-4G(\Delta ^{2}+2n(2\Delta+n-1))+\dfrac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}{(2\Delta+2n-1)(2\Delta+2n+1)(2\Delta+2n+3)}, & \ell=2 \\
-4G(\Delta ^{2}+2n(2\Delta+n-1)), & \ell\geqslant 4
\end{cases}
\end{align}$$

and all the descendants share the same correction with their primaries

$$\begin{align}
E^{(2)}_{n,\ell;r_{L},r_{R}} & =2\Delta+2n+|\ell|+r_{L}+r_{R}+\gamma _{n|\ell|}+\mathcal{O}(G^{2})
\end{align}$$
