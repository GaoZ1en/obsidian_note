# One- and Two-Particle Energies of the Einstein–Scalar System in Global AdS3

This note computes the leading connected gravitational two-scalar spectrum, with the physical single-scalar mass as input. Circular matrix elements and the free AdS representation decomposition give a finite algebraic recursion for every two-scalar primary shift. The recursion has been evaluated symbolically through $n+|\ell|\leq8$, giving 25 coefficients for general $\Delta$ and covering every primary with free energy at most $2\Delta+8$. The response-kernel formulation is retained as an alternative construction and a normalization check.

**Subsequent audits:** the [first closed-form audit](closed%20form%20spectrum%20audit.md) checks the all-radial-level formulas and channel calculations through level twelve. The [revision-2 audit](revision%202%20audit.md) closes the paired-exchange bridge and structural boundary-graviton branch argument under the stated non-null representation and no-extra-primary-collision assumptions, and independently verifies a general-mass noncircular entry. See the [current article](article/paper.tex) for the combined result. The table and calculation history below retain this note's original level-eight scope.

Use the real, minimally coupled scalar and conventions of [gravitation scalar interaction](gravitation%20scalar%20interaction.md): AdS radius one, signature $(-,+,+)$, $\kappa^2=16\pi G$, $m^2=\Delta(\Delta-2)$, and $\Delta>1$. Keep the fixed boundary cylinder, smooth centre, source-free scalar boundary condition and Brown–Henneaux metric falloffs. Work perturbatively near the vacuum orbit, with no independent scalar four-point contact coupling. The generic-parameter/no-radial-log domain of the response notes is understood. Infinite-mode convergence is outside this calculation.

All energies below are gaps above the interacting vacuum. An interacting particle label means continuation from the indicated free state or representation; particle number is not an exact symmetry of a real interacting scalar.

## Results and Mass Convention

Use the lowest physical single-scalar gap as the mass-renormalization condition:

$$
E^{(1)}_{00}=\Delta_{\mathrm R},\qquad
m_{\mathrm R}^2=\Delta_{\mathrm R}(\Delta_{\mathrm R}-2).
$$

For the scalar representation, AdS symmetry then gives

$$
\boxed{E^{(1)}_{nj}=\Delta_{\mathrm R}+2n+|j|.}
$$

Thus a bare-to-physical shift obeys $\delta m^2=2(\Delta-1)\delta\Delta$ to first order. At a regulator scale $\Lambda$, the condition fixes the sum of the one-particle self-energy and the mass counterterm. It does not assert that the unrenormalized self-energy vanishes. A bare-mass shift cannot be quoted independently of a regulator and a finite renormalization prescription. Below, write $\Delta=\Delta_{\mathrm R}$ in every $O(G)$ coefficient; the distinction from the bare value there affects only higher orders.

The lowest two-scalar level is

$$
\boxed{
E^{(2)}_{00}=2\Delta+\gamma_{00}+O(G^2),\qquad
\gamma_{00}=\frac{2G\Delta^2(7+2\Delta-8\Delta^2)}{4\Delta^2-1}.
}
$$

The first radially excited spin-zero two-scalar primary has

$$
\boxed{
E^{(2),\mathrm{primary}}_{10}=2\Delta+2+\gamma_{10}+O(G^2),\qquad
\gamma_{10}=-\frac{2G\Delta^2(8\Delta^2+46\Delta+47)}{(2\Delta+1)(2\Delta+3)}.
}
$$

The other spin-zero level at the same free energy is a global descendant of the lowest pair. Its energy is $2\Delta+2+\gamma_{00}+O(G^2)$, not $2\Delta+2+\gamma_{10}$.

The lowest nonzero-spin primary has $\ell=\pm2$:

$$
\boxed{
E^{(2),\mathrm{primary}}_{0,\pm2}=2\Delta+2+\gamma_{02}+O(G^2),\qquad
\gamma_{02}=-\frac{4G\Delta(\Delta+1)(4\Delta^2+4\Delta-1)}{(2\Delta+1)(2\Delta+3)}.
}
$$

For all even $|\ell|\geq4$, the universal tree graviton-exchange answer is

$$
\boxed{\gamma_{n\ell}=-4G\left[\Delta^2+2n(2\Delta+n-1)\right],\qquad |\ell|\geq4.}
$$

The radial recursion below independently reproduces this formula on every computed higher-spin primary. Its all-spin extension follows from the crossed-channel stress-tensor result of [Kraus–Sivaramakrishnan–Snively, section 4.2, equation (4.35)](https://arxiv.org/html/1810.01439#S4.SS2): set $h_1=h_2=\Delta/2$ and $c=3/(2G)$ in $-12[c^{-1}][C_2(\Delta+n)-2C_2(\Delta/2)]$. The inversion result applies above the exchanged spin, so it must not be used to replace the separately computed $\ell=0,2$ answers. No additional higher-derivative scalar contact coupling is included here.

For example:

| $\Delta$ | $\gamma_{00}/G$ | $\gamma_{10}/G$ |
|---|---:|---:|
| $3/2$ | $-9/2$ | $-201/8$ |
| $2$ | $-56/5$ | $-1368/35$ |
| $3$ | $-1062/35$ | $-514/7$ |
| $4$ | $-3616/63$ | $-11488/99$ |

These entries evaluate the displayed tree coefficients; additional accidental degeneracies, if present in a larger chosen sector, must still be treated as a block.

The sign of the lowest shift is not uniformly negative:

$$
\gamma_{00}\begin{cases}
>0,&1<\Delta<(1+\sqrt{57})/8,\\
=0,&\Delta=(1+\sqrt{57})/8,\\
<0,&\Delta>(1+\sqrt{57})/8.
\end{cases}
$$

The zero near $1.069$ is a zero of the interaction coefficient, not the exceptional de Donder value $(1+\sqrt5)/2$. At large $\Delta$, $\gamma_{00}=-4G\Delta^2+G\Delta+O(G)$, with the expected attractive leading term. The expansion requires the corrections to remain small on the retained states.

## Exact Circular Reduction and the Quartic Hamiltonian

The circular reduction suffices to compute the lowest pair and a diagonal entry needed for the first degenerate block. It is used as a computational gauge; the spectrum refers to the same prescribed boundary time as the de Donder construction.

Write

$$
ds^2=-F e^{-2D}dt^2+\frac{dr^2}{F}+r^2d\varphi^2,
\qquad F=1+r^2-\kappa^2 M,
\qquad \Pi=\frac{e^D}{F}\dot\phi.
$$

Here $D$ denotes the full lapse exponent; in the earlier perturbative solution it was written as $\kappa^2$ times the leading lapse response. The canonical scalar momentum after angular integration is $p=2\pi r\Pi$. In polar areal gauge the gravitational contribution $p^{ij}\delta\gamma_{ij}$ vanishes in the circular sector: $K_{\varphi\varphi}=0$ implies $p^{rr}=0$, and $\delta\gamma_{\varphi\varphi}=0$. With the fixed boundary-time prescription, the reduced potential and form are

$$
\theta_{\mathrm{red}}=2\pi\int_0^\infty dr\,r\Pi\,\delta\phi,
\qquad
\Omega_{\mathrm{red}}=2\pi\int_0^\infty dr\,r\delta\Pi\wedge\delta\phi.
$$

No perturbative Darboux correction is needed for these Cauchy-data coordinates. The exact constraints are

$$
\begin{aligned}
M'&=\frac r2\left[F(\Pi^2+\phi'^2)+m^2\phi^2\right],\\
D'&=-\frac{\kappa^2r}{2}(\Pi^2+\phi'^2),\\
\dot M&=rF\dot\phi\,\phi'.
\end{aligned}
$$

Regularity and the prescribed boundary clock fix $M(0)=0$ and $D(\infty)=0$. The vacuum-subtracted asymptotic mass is $H=2\pi M(\infty)$, consistently with $8GH=\kappa^2M(\infty)$ in the asymptotic BTZ parameter.

Put $f=1+r^2$ and $X=\Pi^2+\phi'^2$. Solving the first-order mass constraint gives the exact reduced Hamiltonian

$$
H=\pi\int_0^\infty dr\,r\bigl[fX+m^2\phi^2\bigr]
\exp\!\left[-\frac{\kappa^2}{2}\int_r^\infty ds\,sX(s)\right].
$$

For example, varying the constraint gives

$$
\delta H=2\pi\int_0^\infty dr\,r e^{-D}
\left[F\Pi\delta\Pi+F\phi'\delta\phi'+m^2\phi\delta\phi\right].
$$

Together with $\Omega_{\mathrm{red}}$, this reproduces
$\dot\phi=e^{-D}F\Pi$ and
$\dot\Pi=r^{-1}\partial_r(re^{-D}F\phi')-e^{-D}m^2\phi$.
Thus the lapse and the energy normalization have not been chosen independently.

Expansion now supplies the required $O(\kappa^2)$ interaction directly:

$$
\begin{aligned}
H&=H_0+\kappa^2 H_4+O(\kappa^4),\\
H_0&=\pi\int_0^\infty dr\,r\bigl[fX+m^2\phi^2\bigr],\\
M_0(r)&=\frac12\int_0^r ds\,s\bigl[f(s)X(s)+m^2\phi(s)^2\bigr],\\
\boxed{H_4&=-\pi\int_0^\infty dr\,r X(r)M_0(r).}
\end{aligned}
$$

This quartic Hamiltonian includes the circular gravitational constraints already. Adding a second exchange contribution to it would double count. It is not obtained by identifying the leading classical mass $2\pi M_0(\infty)$ with a spectral shift.

## Lowest-Mode Integral and Quantization

At a reference time, use the canonically normalized free mode

$$
u(r)=\frac{f^{-\Delta/2}}{\sqrt{2\pi}},\qquad
\phi=u(b+b^*),\qquad
\Pi=-\frac{i\Delta}{f}u(b-b^*).
$$

The integrated free symplectic form is $i\delta b^*\wedge\delta b$, so $[b,b^\dagger]=1$. In these variables,

$$
M_0=\frac{\Delta}{4\pi}
\left[2bb^*(1-f^{1-\Delta})-r^2f^{-\Delta}(b^2+b^{*2})\right].
$$

Taking the coefficient of $b^2b^{*2}$ in $H_4$ gives

$$
\begin{aligned}
C_{00}
&=\int_0^\infty dr\,
\frac{\Delta^3 r\,[2+3r^2+3r^4-2f^{1+\Delta}]}{4\pi f^{2+2\Delta}}\\
&=\boxed{\frac{\Delta^2(7+2\Delta-8\Delta^2)}{16\pi(4\Delta^2-1)}}.
\end{aligned}
$$

The other quartic monomials have nonzero free frequency and do not contribute at first order to this isolated level. Use normal ordering for the connected tree interaction, with the separate one-body renormalization condition specified above. Then

$$
H_{\mathrm{eff}}-E_{\mathrm{vac}}
=\Delta N+\kappa^2 C_{00}N(N-1)+\cdots,
\qquad N=b^\dagger b.
$$

Consequently the interaction vanishes on $N=1$, while
$\langle 2|(b^\dagger)^2b^2|2\rangle=2$ gives
$\gamma_{00}=2\kappa^2C_{00}$. This separation removes the one-body contribution by a stated renormalization condition, not by interpreting a classical coherent field as a one-particle state.

There are two useful independent checks.

First, the on-shell gravitational response gives the same coefficient from

$$
H_{4,\mathrm{res}}=-\frac14\left\langle\int_\Sigma dr\,d\varphi\,r\,
q_{\mu\nu}[\phi,\phi]T^{\mu\nu}[\phi]\right\rangle_t.
$$

For the lowest mode the mixed-frequency and same-sign contributions to $C_{00}$ are respectively

$$
C_{00}^{+-}=-\frac{\Delta^2(\Delta-1)}{4\pi(2\Delta-1)},\qquad
C_{00}^{\mathrm{same}}=-\frac{\Delta^2(2\Delta-3)}{16\pi(4\Delta^2-1)}.
$$

The second term must be retained for the real scalar in this model. It explains why keeping only the static stress tensor gives a different answer, especially near the BF bound.

Second, insert the known real-mode response into the scalar equation at $O(\kappa^2)$. For $\phi^{(0)}=A f^{-\Delta/2}\cos(\Delta t)$, cancellation of the resonant forcing gives

$$
\omega(A)=\Delta+
\kappa^2 A^2\frac{\Delta^2(7+2\Delta-8\Delta^2)}{16(4\Delta^2-1)}+O(\kappa^4 A^4).
$$

Since the leading action variable is $I=|b|^2=\pi A^2/2$, this agrees with $\partial_I(\Delta I+\kappa^2C_{00}I^2)$. This amplitude-dependent classical frequency is a check of the quartic interaction, not a calculation of a quantum one-particle self-energy.

## First Degenerate Spin-Zero Block

At free energy $2\Delta+2$ and total angular momentum zero, the two scalar product states are

$$
|A\rangle=b^\dagger_{00}b^\dagger_{10}|0\rangle,
\qquad
|B\rangle=b^\dagger_{0,1}b^\dagger_{0,-1}|0\rangle.
$$

The subscripts on $b$ are the radial and angular labels $(n,j)$. After resolving nonresonant dressing and imposing AdS symmetry, their resonant interaction matrix is

$$
\boxed{
V_{J=0,\,E_0=2\Delta+2}
=\frac12
\begin{pmatrix}
\gamma_{00}+\gamma_{10}&\gamma_{00}-\gamma_{10}\\
\gamma_{00}-\gamma_{10}&\gamma_{00}+\gamma_{10}
\end{pmatrix}.
}
$$

To derive it, the two global raising operators applied to the lowest pair produce $|A\rangle+|B\rangle$. The difference $|A\rangle-|B\rangle$ is annihilated by both lowering operators. Therefore the normalized eigenvectors are

$$
|D\rangle=\frac{|A\rangle+|B\rangle}{\sqrt2},\qquad
|P\rangle=\frac{|A\rangle-|B\rangle}{\sqrt2}.
$$

The descendant must inherit $\gamma_{00}$. The remaining eigenvalue follows by evaluating the $A$ diagonal directly with the circular Hamiltonian. In $x=1/f$ coordinates,

$$
u_{10}=\frac{x^{\Delta/2}}{\sqrt{2\pi}}[\Delta-(\Delta+1)x],
$$

and coefficient extraction gives

$$
\langle A|H_4|A\rangle
=-\frac{\Delta^2(8\Delta^3+26\Delta^2+7\Delta-17)}
{4\pi(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
$$

Thus $\gamma_{10}=2\kappa^2\langle A|H_4|A\rangle-\gamma_{00}$, yielding the result above. The angular entries of this block are fixed here by the global symmetry argument; they have not been independently integrated using a noncircular metric response. The circular calculation alone, without this argument, would give a product-state expectation value rather than an eigenvalue.

## Algebraic Reconstruction of the General Primary Spectrum

The circular Hilbert subspace is not a closed two-particle angular-momentum block. Instead, its matrix elements are a compression of the full resonant interaction. The multiplicity-one decomposition of the free scalar tensor product lets us recover the primary eigenvalues from these compressed entries. This extends the symmetry argument used for the first spin-zero block.

Label a single scalar by its two chiral descendant levels $(p,q)$, so $E=\Delta+p+q$ and $j=p-q$. At total chiral levels $(N,N)$, the circular pair states are

$$
|r;N\rangle=
\frac{b^\dagger_{r,0}b^\dagger_{N-r,0}|0\rangle}{\sqrt{1+\delta_{2r,N}}},
\qquad 0\leq r\leq\lfloor N/2\rfloor.
$$

Their common free energy is $2\Delta+2N$. Define the energy-shift compression
$\mathsf R^{(N)}_{rs}=\kappa^2\langle r;N|H_4|s;N\rangle$.
Its eigenvalues alone are not the spectrum: the omitted noncircular states matter.

### All radial integrals reduce to finite sums

Set $x=(1+r^2)^{-1}$, and use the radial Jacobi polynomials

$$
P_i(x)=P_i^{(\Delta-1,0)}(1-2x),\qquad E_i=\Delta+2i.
$$

For two signed scalar legs, define the kinetic polynomial

$$
A_{ij}^{\sigma\tau}(x)
=4(1-x)\left(\frac\Delta2P_i+xP_i'\right)
\left(\frac\Delta2P_j+xP_j'\right)
-\sigma\tau E_iE_jxP_iP_j.
$$

If $A_{ij}^{\sigma\tau}+m^2P_iP_j=\sum_k c_kx^k$, the integrated mass polynomial is

$$
B_{ij}^{\sigma\tau}(x)=\sum_k\frac{c_kx^k}{\Delta-1+k},\qquad
M_{ij}^{\sigma\tau}(x)=\frac{B_{ij}^{\sigma\tau}(1)-x^{\Delta-1}B_{ij}^{\sigma\tau}(x)}{8\pi}.
$$

For any polynomial $P(x)=\sum_k P_kx^k$, its Mellin moment is the finite sum

$$
\mathcal I_a[P]=\int_0^1 dx\,x^{a-1}P(x)=\sum_k\frac{P_k}{a+k}.
$$

Take four labelled legs $(i,-),(j,-),(k,+),(l,+)$. For each of the six two-element subsets $ab$ of these four legs, let $cd$ be its complement, and use the mode indices and signs of those legs in $A_{ab},B_{cd}$. The normalized circular matrix element is

$$
\boxed{
\kappa^2\langle ij|H_4|kl\rangle
=-\frac{\kappa^2}{8\pi\sqrt{(1+\delta_{ij})(1+\delta_{kl})}}
\sum_{ab}\left[
B_{cd}(1)\mathcal I_\Delta[A_{ab}]
-\mathcal I_{2\Delta-1}[A_{ab}B_{cd}]
\right].
}
$$

Use $i+j=k+l=N$ for $\mathsf R^{(N)}$. The six subsets are retained even when mode indices coincide: they are the Wick/derivative combinatorics of four labelled legs. This formula comes directly from the exact circular $H_4$ and leaves no radial differential equation or integral to solve.

### Chiral decomposition and invertible recursion

Let $U^{(N)}_{pk}$ be the real orthogonal matrix that decomposes two chiral scalar representations at total level $N$. The column $k$ is the level-$(N-k)$ descendant of the chiral two-particle primary of weight $\Delta+k$. An explicit finite expression is

$$
\begin{aligned}
Q_k^{(N)}(p)&=\sum_{a=0}^{\min(k,p)}
\frac{(-k)_a(k+2\Delta-1)_a(-p)_a}{(\Delta)_a(-N)_a\,a!},\\
w_p^{(N)}&=\binom Np\frac{(\Delta)_p(\Delta)_{N-p}}{(2\Delta)_N},\\
\nu_k^{(N)}&=\sum_{p=0}^Nw_p^{(N)}[Q_k^{(N)}(p)]^2,\\
U^{(N)}_{pk}&=\sqrt{w_p^{(N)}/\nu_k^{(N)}}\,Q_k^{(N)}(p).
\end{aligned}
$$

These are finite Hahn polynomials. Their weighted orthogonality gives $U^TU=1$, and particle exchange gives $U_{N-p,k}=(-1)^kU_{pk}$. Thus identical bosons retain $k+l$ even in the product of the two chiral decompositions. The corresponding global primary has labels $(n,|\ell|)=(\min(k,l),|k-l|)$.

Set $s_r=\sqrt{2/(1+\delta_{2r,N})}$ and
$C_{r;kl}=s_rU_{rk}^{(N)}U_{rl}^{(N)}$. The full compression identity is

$$
\mathsf R^{(N)}_{rs}
=\sum_{\substack{0\leq k,l\leq N\\k+l\ \mathrm{even}}}
C_{r;kl}C_{s;kl}\,\gamma_{\min(k,l),|k-l|}.
$$

At recursion level $N$, all terms with $k,l<N$ were determined at earlier levels. Subtract their contribution and call the remainder $\mathsf R_{\mathrm{new}}^{(N)}$. Only pairs with one index equal to $N$ remain. Define

$$
\mathsf D_N=\operatorname{diag}_{r=0}^{\lfloor N/2\rfloor}(U_{rN}^{(N)}),
\qquad
(\mathsf O_N)_{rk}=s_rU_{rk}^{(N)},
\quad k=N,N-2,\ldots.
$$

The restricted parity basis obeys $\mathsf O_N^T\mathsf O_N=1$. Also

$$
Q_N^{(N)}(r)=(-1)^r\frac{(\Delta)_N}{(\Delta)_r(\Delta)_{N-r}}
$$

never vanishes for $\Delta>1$, so $\mathsf D_N$ is invertible at every finite $N$. Therefore

$$
\boxed{
\mathsf O_N^T\mathsf D_N^{-1}\mathsf R_{\mathrm{new}}^{(N)}
\mathsf D_N^{-1}\mathsf O_N
=\operatorname{diag}_{k=N,N-2,\ldots}
\left[(2-\delta_{kN})\gamma_{k,N-k}\right].
}
$$

This supplies each new primary shift by finite sums and matrix multiplication; there is no eigenvalue search or fitted functional ansatz. The factor of two counts the two opposite-spin primaries when $k<N$. Starting at $N=0$ determines every $(n,\ell)$ with even $|\ell|$ at level $N=n+|\ell|$.

The reconstruction uses the AdS-invariant connected resonant Hamiltonian after the mass and dressing conventions already stated. Its diagonal form follows from the multiplicity-one global representation decomposition. The algebraic invertibility above is an all-$N$ argument; the explicit evaluations and residual checks reported below stop at $N=8$. Every unused off-diagonal element of the displayed transformed matrix is a consistency check. The implementation returns a failure rather than a spectrum if one of these residuals is nonzero.

### Evaluated spectrum and executable calculation

The [radial-block implementation](scripts/gravity_scalar_radial_blocks.wl) evaluates all sums exactly. In Mathematica, after loading that file, run

```wl
TwoScalarPrimarySpectrum[8, 2]
```

to obtain all primary energy gaps through $2\Delta+8$ at $\Delta=2$, or use a symbolic parameter instead of `2`. `ReconstructPrimaryShifts[8, del]` returns the 25 coefficients with $n+|\ell|\leq8$ and their residuals. Exact rational or symbolic input is intended. The [saved symbolic coefficients](scripts/gravity_scalar_primary_spectrum_data.wl) contain those 25 results without requiring another calculation.

For the complete primary set with $2n+|\ell|\leq8$, the following table displays $\Delta=2$. Each positive spin has a parity partner with the same energy. Descendants are obtained by adding integer levels to the shifted primary energy, not by diagonalizing the circular compression alone.

| $n$ | $|\ell|$ | Free energy | $\gamma_{n\ell}/G$ at $\Delta=2$ |
|---:|---:|---:|---:|
| 0 | 0 | 4 | $-56/5$ |
| 1 | 0 | 6 | $-1368/35$ |
| 0 | 2 | 6 | $-552/35$ |
| 2 | 0 | 8 | $-416/5$ |
| 1 | 2 | 8 | $-1000/21$ |
| 0 | 4 | 8 | $-16$ |
| 3 | 0 | 10 | $-11040/77$ |
| 2 | 2 | 10 | $-7352/77$ |
| 1 | 4 | 10 | $-48$ |
| 0 | 6 | 10 | $-16$ |
| 4 | 0 | 12 | $-31400/143$ |
| 3 | 2 | 12 | $-68360/429$ |
| 2 | 4 | 12 | $-96$ |
| 1 | 6 | 12 | $-48$ |
| 0 | 8 | 12 | $-16$ |

The auxiliary circular states used to reconstruct a spin-$\ell$ primary can have higher free energy than that primary. This is a symmetry-based extraction in the full leading-order theory, not a claim that a hard cutoff retaining only circular modes preserves AdS symmetry. Ordinary accidental mixing with other physical sectors, if present, must still be treated with the full projected Hamiltonian.

## General Finite-Mode Spectrum from the Response Kernel

The following is an alternative finite-matrix answer for arbitrary retained scalar modes, useful for checking or extending the primary reconstruction above.

At tree order with four external scalars and no external free graviton, write the full metric response as $g=g^{(0)}+\kappa^2q+\cdots$. The terms of the action at order $\kappa^2$ that can contribute are

$$
\kappa^2\left(I_2[q]+\frac12\int dV\,q_{\mu\nu}T^{\mu\nu}\right).
$$

Because $\mathcal E^{(1)}[q]=T/2$ and $\delta I_2[q]=-\int dV\,\mathcal E^{(1)\mu\nu}[q]\delta q_{\mu\nu}$, quadratic homogeneity gives $I_2[q]=-\frac14\int qT$, up to the retained canonical endpoints. Consequently

$$
S_{\mathrm{eff},4}=\frac{\kappa^2}{4}\int dV\,qT
=\frac{\kappa^2}{8}\int dV_xdV_{x'}\,T(x)G(x,x')T(x').
$$

This derives the factor of one half relative to inserting $q$ into the matter coupling alone. The Einstein cubic term and the $h^2\phi^2$ matter term start at higher order on this sourced branch. One need not expand every coefficient of the unreduced CPS to obtain this connected four-scalar interaction: circular canonical reduction and the on-shell resonant effective interaction provide the needed $O(G)$ information. This does not discard the one-body loop problem; that is accounted for separately by the physical-mass condition.

Use $q=\mathcal B[\phi,\phi]$ from the [scalar response prescription](Einstein%20scalar%20response%20prescription.md), with its analytic assumptions. The time average below means extraction of the zero-frequency coefficient from a finite harmonic sum. For bounded harmonic responses and matched reflecting boundary conditions, the Einstein Green identity makes the resonant source pairing reciprocal. Pure-gauge additions change it by endpoints; a smooth homogeneous vacuum response $\mathcal L_\zeta g^{(0)}$ also has

$$
\int dV\,(\mathcal L_\zeta g^{(0)})_{\mu\nu}T^{\mu\nu}
=2\int dV\,\nabla_\mu(\zeta_\nu T^{\mu\nu}),
$$

whose radial term vanishes for these scalar falloffs and whose bounded time endpoint has zero average. This is the relevant on-shell pairing statement; it does not claim that the finite source-space kernel is a symmetric distribution on arbitrary histories. At a genuine resonance requiring unbounded responses, keep the resonant degrees of freedom in the Hamiltonian block instead of time-averaging a secular term.

Introduce independent commuting symbols $z_I,\bar z_I$ and put

$$
\phi_z=\sum_I(z_Iu_I+\bar z_Iu_I^*),\qquad
\mathscr V(z,\bar z)
=-\frac{\kappa^2}{4}\left\langle
\int_\Sigma dr\,d\varphi\,r\,
T^{\mu\nu}[\phi_z]\mathcal B_{\mu\nu}[\phi_z,\phi_z]
\right\rangle_t.
$$

This is the connected resonant quartic Hamiltonian symbol in canonical normal form. The sign follows from the first perturbative Legendre transform: terms from correcting the free velocities cancel, leaving minus the effective interaction Lagrangian evaluated on free canonical modes. Canonical endpoint changes do not alter the resonant eigenvalues.

For normalized unordered pair states $|IJ\rangle=b_I^\dagger b_J^\dagger|0\rangle/\sqrt{1+\delta_{IJ}}$, the finite matrix is explicitly

$$
\boxed{
V_{IJ,KL}
=\left.
\frac{\partial_{\bar z_I}\partial_{\bar z_J}\partial_{z_K}\partial_{z_L}\mathscr V}
{\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}}
\right|_{z=\bar z=0}.
}
$$

Restrict to $E_I+E_J=E_K+E_L=E_0$ and $j_I+j_J=j_K+j_L=J$. The leading energy gaps are

$$
\boxed{E^{(2)}_{E_0,J,\alpha}=E_0+\lambda_\alpha(V_{E_0,J})+O(G^2).}
$$

The matrix includes the same-sign and both crossed source pairings automatically. There is no additional mass-renormalization contribution to subtract after expressing $E_0$ in terms of $\Delta_{\mathrm R}$. This is an explicit quadrature-and-eigenvalue prescription using the previously constructed responses, not a numerical evaluation of all those quadratures.

Choose independent input modes with $E_I<E_{\mathrm{cut}}$ and retain complete degenerate blocks for spectral interpretation. Do not truncate the frequencies or radial tails produced by their products. A cutoff on free input modes and a cutoff on total Fock energy are different operations. If other particle sectors are degenerate and coupled, the projected block must contain them as well.

In the unreduced description, the same matrix combines direct $O(\kappa^2)$ terms with the second-order $O(\kappa)$ interaction. Once exchange has been incorporated into $\mathscr V$, adding the old-fashioned intermediate-state exchange sum again would double count it. A classical retarded response alone is not a prescription for quantum self-energy loops.

## Boundary Gravitons and Descendants

Physical boundary gravitons remain in the theory. Their vacuum-module energy gaps are the integer Virasoro levels; a change of the physical central charge changes norms and the vacuum reference, not those level spacings. For a scalar or two-scalar primary of energy $E_P$, a non-null descendant has energy $E_P+N_L+N_R$. Thus scalar–boundary-graviton and pure-boundary-graviton states should be organized into the corresponding modules when interpreting a truncated Fock calculation.

For example, above the lowest pair, $L_{-2}|P_{00}\rangle$ and $L_{-1}^2|P_{00}\rangle$ are two independent states with $J=2$ and energy $2\Delta+2+\gamma_{00}+O(G^2)$. The first includes the physical boundary-graviton excitation. The new $\ell=2$ primary instead has energy $2\Delta+2+\gamma_{02}+O(G^2)$. Thus, when this boundary-graviton sector is included, the first positive-spin block contains two levels with shift $\gamma_{00}$ and one with shift $\gamma_{02}$; the negative-spin block is its parity image. The level-two Gram matrix is nonsingular for the generic large-$c$, positive-weight representations used here. Keeping the boundary graviton changes the multiplicity, while descendant energy spacings remain fixed by the Virasoro algebra.

At zero coupling, the global two-scalar primaries have energies $2\Delta+2n+|\ell|$, with even $\ell$ for identical real bosons. Their interacting primary energies take the form $2\Delta+2n+|\ell|+\gamma_{n\ell}$. The algebraic recursion above gives these leading coefficients and the computed table covers the stated finite range. A source-dependent homogeneous redefinition is a choice of perturbative coordinates; it does not remove the physical modules.

## Verification and Remaining Scope

- **Verified:** xAct/xTras/xCoba give zero residuals for the exact circular $tt,tr,rr$ Einstein constraints. The exact integrating-factor solution and its variation yield the reduced Hamiltonian and scalar Hamilton equations.
- **Verified:** Mathematica evaluates $C_{00}$ from the canonical mass constraint and independently from $-\frac14\langle qT\rangle$, and checks the scalar resonant frequency against it. The KG normalization, two-boson factor, channel split, sign-change root, radial product-state integral and free global raising/lowering relations also pass. See [the verification script](scripts/gravity_scalar_spectrum_checks.wl), with cases `constraints`, `ground`, `resonance`, and `mixing`. These contain 25 labelled scalar checks when the three Einstein components are counted separately.
- **Verified:** [the radial-block checks](scripts/gravity_scalar_radial_block_checks.wl) evaluate 25 primary coefficients at symbolic $\Delta$ through $N=8$. All 755 scalar residual entries vanish, including orthogonality, exchange parity, Hermiticity, off-diagonal reconstruction residuals, the earlier low-level coefficients and every computed $|\ell|\geq4$ comparison with the universal result. This is finite symbolic evidence, not an infinite-level numerical test.
- **Verified:** an independent [Sage representation check](scripts/gravity_scalar_representation_checks.sage) uses exact rational arithmetic at $\Delta=3/2,2,7/3$ and $N=0,\ldots,8$, checking positive orthogonal norms, exchange parity, the two-particle Casimir and reconstruction invertibility. The general inversion argument is given in the text. A direct symbolic-radical implementation exceeded the Mathematica connector's time limit; a local run was stopped after the equivalent rational Hahn implementation eliminated that bottleneck.
- **Assumptions:** symmetry-preserving on-shell mass renormalization; the minimal Einstein–real-scalar action with no independent $O(G)$ scalar contact interaction; regular centre and the fixed reflecting boundary conditions; the generic analytic domain of the response construction. The first mixed block uses AdS symmetry to infer its noncircular entries.
- **Not computed:** a regulator-specific bare one-particle self-energy or explicit coefficient tables beyond $n+|\ell|=8$. The algorithm applies at any finite level under the stated symmetry assumptions, and the high-spin formula has independent analytic support. The single-particle spectrum is given in a physical-mass scheme, not as a prediction of the bare-to-renormalized mass relation. Higher-loop corrections, exceptional-parameter limits and infinite-mode convergence are not included. General noncircular response integrals have been bypassed by representation reconstruction rather than independently evaluated.

The interpretation of connected two-particle shifts as binding energies follows the canonical approach of [Fitzpatrick–Shih](https://arxiv.org/abs/1104.5013). For a related explicit separation of one-body and tree binding contributions see [Andriolo–Michel–Palti](https://arxiv.org/abs/2211.04477), which studies AdS4/AdS5 and a charged scalar. Neither reference is used as a source for the AdS3 real-scalar coefficients derived here.
