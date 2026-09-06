This note asks a question that is separate from canonical gluing:

> If the two strict-Dirichlet regional quantizations are declared to form a tensor-product reference representation, does the connected vacuum define a vector in that representation after the sharp-cut regulator is removed?

The answer is no. The finite port pair repairs the canonical algebra at every finite $N$, but it does not make the sharp regional product representation unitarily equivalent to the connected representation in the continuum.

## Complete Finite Canonical Variables

Use the finite truncated regional fields:

$$\begin{align}
\phi_i(t,y)&=\sum_{n=1}^Nc_{i,n}(t)u_n(y)+\frac yLq(t)
\end{align}$$

and the Schur variables

$$\begin{align}
r_{i,n}&=c_{i,n}+A_nq, &\pi_{r,i,n}&=\dot r_{i,n},\\
\pi_q&=\rho_N\dot q, & \rho_N&=\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}>0.
\end{align}$$

The finite symplectic form is

$$\begin{align}
\omega_N&=\sum_{i=1}^2\sum_{n=1}^N \delta\pi_{r,i,n}\wedge\delta r_{i,n} +\delta\pi_q\wedge\delta q.
\end{align}$$

Thus the full reference system must contain $2N+1$ oscillator pairs. Introduce

$$\begin{align}
Q_{q,N}&=\sqrt{\rho_N}\,q, & P_{q,N}&=\frac{\pi_q}{\sqrt{\rho_N}}.
\end{align}$$

These are Darboux variables at finite $N$, although their definition is singular as $N\to\infty$.

## Declared Factorized Reference

The strict-Dirichlet regional annihilation operators are

$$\begin{align}
b_{i,n}&=\sqrt{\frac{\omega_n}{2}}r_{i,n} +\frac{i}{\sqrt{2\omega_n}}\pi_{r,i,n}, & \omega_n&=\sqrt{m^2+\left(\frac{n\pi}{L}\right)^2}.
\end{align}$$

They define $2N$ regional oscillator pairs. Extending them to the complete finite port phase space requires an additional declaration,

$$\begin{align}
b_{q,N}^{(\nu)} &=\sqrt{\frac{\nu_N}{2}}Q_{q,N} +\frac{i}{\sqrt{2\nu_N}}P_{q,N}, &\nu_N&>0.
\end{align}$$

The port action does not choose $\nu_N$: its Schur stiffness matrix couples $q$ to the common regional modes and does not split into a regional Hamiltonian plus one port oscillator. Hence this factorized port vacuum is auxiliary regulator data.

Let $a_{\alpha,N}$ be the annihilation operators of the full port Hamiltonian. Relative to the declared reference,

$$\begin{align}
a_{\alpha,N}={}&\sum_{i,n} \left(\alpha^{\mathrm D}_{\alpha,in}b_{i,n} +\beta^{\mathrm D}_{\alpha,in}b_{i,n}^{\dagger}\right)\\
&+\alpha^q_{\alpha,N}b_{q,N}^{(\nu)} +\beta^q_{\alpha,N}b_{q,N}^{(\nu)\dagger}.
\end{align}$$

The complete matrices obey

$$\begin{align}
\alpha_N\alpha_N^{\dagger}-\beta_N\beta_N^{\dagger}&=\mathbf1, & \alpha_N\beta_N^{\mathrm T}-\beta_N\alpha_N^{\mathrm T}&=0.
\end{align}$$

The port column is required for these identities. Changing $\nu_N$ changes that column but leaves the regional block $(\alpha^{\mathrm D},\beta^{\mathrm D})$ unchanged.

Let

$$\begin{align}
\boldsymbol B_N&=(b_{1,1},\ldots,b_{1,N},b_{2,1},\ldots,b_{2,N},b_{q,N}^{(\nu)})^{\mathrm T},\\
Z_N&=\alpha_N^{-1}\beta_N.
\end{align}$$

At every finite $N$,

$$\begin{align}
Z_N^{\mathrm T}&=Z_N, &\mathbf1-Z_NZ_N^{\dagger}&>0.
\end{align}$$

Therefore the connected finite-$N$ vacuum is the normalized vector

$$\begin{align}
|0_{\mathrm g,N}\rangle ={}&\det(\mathbf1-Z_NZ_N^{\dagger})^{1/4} \exp\left(-\frac12\boldsymbol B_N^{\dagger}Z_N\boldsymbol B_N^{\dagger\mathrm T}\right)
|0_{1,N}\rangle\otimes|0_{2,N}\rangle\otimes|0_{q,N}^{(\nu)}\rangle,
\end{align}$$

up to phase. It is generally entangled among the two regional factors and the auxiliary port factor. Thus the tensor-product reference is a presentation of the connected state, not an ansatz that the connected vacuum factorizes.

## Continuum Obstruction

Pass to the common and relative combinations

$$\begin{align}
r_{\pm,n}&=\frac{r_{1,n}\pm r_{2,n}}{\sqrt2}.
\end{align}$$

The relative sector remains Dirichlet--Dirichlet and has no creation block. The common sector compares the half-interval bases

$$\begin{align}
u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}, & v_p(y)&=\sqrt{\frac2L}\sin\frac{(p+\frac12)\pi y}{L}.
\end{align}$$

Their frequencies are

$$\begin{align}
\omega_n&=\sqrt{m^2+\left(\frac{n\pi}{L}\right)^2}, & \Omega_p&=\sqrt{m^2+\left(\frac{(p+\frac12)\pi}{L}\right)^2},
\end{align}$$

and their exact overlap is

$$\begin{align}
U_{pn}&=\int_0^L\mathrm dy\,v_p(y)u_n(y) =(-1)^{n+p+1}\frac{2n}{\pi[n^2-(p+\frac12)^2]}.
\end{align}$$

The regional creation coefficient is

$$\begin{align}
\beta_{pn}^{\mathrm D} &=\frac12\left( \sqrt{\frac{\Omega_p}{\omega_n}} -\sqrt{\frac{\omega_n}{\Omega_p}} \right)U_{pn}.
\end{align}$$

For every fixed $p$,

$$\begin{align}
|\beta_{pn}^{\mathrm D}|^2 &=\frac{1}{\pi L\Omega_p}\frac1n+O(n^{-2}),\\
\sum_{n=1}^N|\beta_{pn}^{\mathrm D}|^2 &=\frac{1}{\pi L\Omega_p}\log N+O(1).
\end{align}$$

One divergent row is sufficient to violate the Shale--Stinespring criterion:

$$\begin{align}
\|\beta\|_{\mathrm{HS}}^2 &\geq\sum_{n=1}^{\infty}|\beta_{pn}^{\mathrm D}|^2 =\infty.
\end{align}$$

Adding one port column cannot cancel a sum of nonnegative squared regional entries. Because the regional block is independent of $\nu_N$, the conclusion holds for every positive factorized port frequency.

Therefore the finite squeezed vectors do not define a continuum vector in this sharp regional product Fock representation. This statement does not obstruct the intrinsic connected vacuum or its restriction to a regional algebra.

## Numerical Results

Verified analytically and by `numerics/port_product_fock_checks.wl`:

- exact finite-$N$ Bogoliubov CCR when the port column is retained;
- a nonzero CCR defect when that column is omitted;
- symmetry and finite-$N$ normalizability of the squeezing kernel;
- independence of the regional creation block from the auxiliary frequency $\nu_N$;
- the exact overlap $U_{pn}$ and fixed-row logarithmic divergence.
