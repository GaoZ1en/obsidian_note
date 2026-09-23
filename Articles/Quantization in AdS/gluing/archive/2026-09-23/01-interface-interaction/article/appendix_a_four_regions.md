# Four-region gluing

This appendix asks whether the same local interface interaction can be assembled edge by edge. It is a robustness check of the finite-coupling prescription, not a second route through the main interval argument and not a general associativity theorem.

## Four quadrants and independent edge couplings

Divide the square

$$
\Omega=[-L,L]_x\times[-L,L]_y
$$

into four quadrants

$$
\Omega_{ab}=I_a^x\times I_b^y,
\qquad
a,b\in\{-,+\},
$$

where $I_-=[-L,0]$ and $I_+=[0,L]$. Put one massive scalar $\phi_{ab}$ on each quadrant and impose homogeneous Neumann conditions on the physical outer boundary. The vertical and horizontal half-axes carry four independent nonnegative couplings

$$
g_x^-,\quad g_x^+,\quad g_y^-,\quad g_y^+.
$$

The Hamiltonian is

$$
\begin{aligned}
H_{\boldsymbol g}
={}&\frac12\sum_{a,b}\int_{\Omega_{ab}}\mathrm dx\mathrm dy\,
\left[
\pi_{ab}^2+(\partial_x\phi_{ab})^2
+(\partial_y\phi_{ab})^2+m^2\phi_{ab}^2
\right]\\
&+\frac12\sum_{b=\pm}g_x^b\int_{I_b^y}\mathrm dy\,
\left(\phi_{-,b}(0,y)-\phi_{+,b}(0,y)\right)^2\\
&+\frac12\sum_{a=\pm}g_y^a\int_{I_a^x}\mathrm dx\,
\left(\phi_{a,-}(x,0)-\phi_{a,+}(x,0)\right)^2.
\end{aligned}
$$

Varying the associated action gives, on each vertical half-axis,

$$
\partial_x\phi_{-,b}\big|_{0}
=\partial_x\phi_{+,b}\big|_{0}
=-g_x^b(\phi_{-,b}-\phi_{+,b})\big|_{0},
$$

and, on each horizontal half-axis,

$$
\partial_y\phi_{a,-}\big|_{0}
=\partial_y\phi_{a,+}\big|_{0}
=-g_y^a(\phi_{a,-}-\phi_{a,+})\big|_{0}.
$$

The form domain contains one $H^1$ field on each quadrant. The central point has zero measure in the four interface integrals, and this model includes no independent point interaction or junction oscillator there.

Because the interface terms contain no time derivatives, the CPS form is the direct sum of the four bulk forms,

$$
\Omega_{\boldsymbol g}
=\sum_{a,b}\int_{\Omega_{ab}}\mathrm dx\mathrm dy\,
\delta\dot\phi_{ab}\wedge\delta\phi_{ab}.
$$

Each edge coupling may be changed independently. Sending only $g_x^-$ and $g_x^+$ to infinity joins the left and right quadrants into two rectangles while leaving the horizontal interface intact. Sending all four couplings to infinity with bounded quadratic-form energy suppresses every edge mismatch and gives the full-square Neumann field. This is the precise partial-gluing statement tested here.

## Separable Kronecker structure

When the coupling is constant along each full coordinate axis,

$$
g_x^-=g_x^+=g_x,
\qquad
g_y^-=g_y^+=g_y,
$$

the continuum profiles separate. If $\chi_{\sigma,n}^{(g_z)}(z)$ denotes the one-dimensional interval profile of Section $\ref{sec:two-intervals}$, then

$$
u_I^{(g_x,g_y)}(x,y)
=\chi_{\sigma_x,n_x}^{(g_x)}(x)
\chi_{\sigma_y,n_y}^{(g_y)}(y),
$$

and

$$
\Omega_I^2
=m^2+\left(k_{\sigma_x,n_x}^{(g_x)}\right)^2
+\left(k_{\sigma_y,n_y}^{(g_y)}\right)^2.
$$

The same separation survives exactly after product-mode truncation. With $N+1$ Neumann modes in each coordinate on each quadrant, the matrix dimension is

$$
4(N+1)^2.
$$

A vertical half-axis interaction is rank one in the retained $x$ coefficients for each fixed $y$ mode; a horizontal interaction is rank one in $y$ for each fixed $x$ mode. For equal half-axis couplings the full stiffness matrix is exactly a Kronecker sum of the two one-dimensional interval matrices. At $N=4$, the recorded spectral residual of this identity is

$$
6.3\times10^{-13}.
$$

In the fully joined limit the profiles become

$$
\Phi_{r,s}^{\rm square}(t,x,y)
=\frac{e^{-i\Omega_{r,s}t}}{\sqrt{2\Omega_{r,s}}}
U_r(x)U_s(y),
$$

with

$$
\Omega_{r,s}
=\sqrt{m^2+K_r^2+K_s^2},
\qquad
K_r=\frac{r\pi}{2L}.
$$

## Nonseparable finite-matrix checks

Four unrelated edge couplings make the coefficients jump at the central point, so the mode problem is not a tensor product. The local response match is nevertheless applied edge by edge:

$$
\frac1{g_{e,N}}
=\frac1{g_e}+\frac{4L}{\pi^2}\psi_1(N+1)
$$

for each half-axis $e$. Positivity is preserved because every edge update is positive semidefinite.

With

$$
(g_x^-,g_x^+,g_y^-,g_y^+)
=(0.4,1.1,0.7,2.0),
\qquad
L=m=1,
$$

the maximum absolute error among the first twelve frequencies, measured against a matched $N=36$ reference, is

$$
\begin{array}{c|cc}
N&\text{direct error}&\text{response-matched error}\\ \hline
4&8.6549\times10^{-2}&1.9633\times10^{-3}\\
8&4.3075\times10^{-2}&2.8252\times10^{-4}\\
16&2.1578\times10^{-2}&3.5314\times10^{-5}\\
24&1.4403\times10^{-2}&8.2818\times10^{-6}
\end{array}
$$

Exchanging $x$ and $y$ together with the corresponding coupling pairs preserves the spectrum to $1.2\times10^{-12}$, and the spatially constant mode remains exact. The separable Kronecker statement is an exact finite-matrix identity; the unequal-coupling table is a refinement test against a high-cutoff numerical reference, not an analytic continuum proof.
