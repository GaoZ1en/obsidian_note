# Explicit Characteristic Reconstruction and Mode Dictionaries

## 1. Direct Verdict

For every \((\ell,m,P)\) with \(\ell\geq1\), the Maxwell Goursat problem on a finite product rectangle is explicitly solvable. In the declared matched \(H^1\) data space, restriction and reconstruction are bounded inverse maps. On the smooth Maxwell core the harmonic sum is continuous in its natural Fréchet topology. Thus the former generic Goursat blocker is removed for the radiative sectors of the benchmark background.

The theorem is not imported from a general nonlinear characteristic theorem. It follows directly from the exact master equation

$$
(2\partial_u\partial_v+\lambda_\ell)\Phi=0.
\tag{1.1}
$$

The \(\ell=0\) sector is not covered by this statement because it has no radiative master field.

## 2. Finite-Rectangle Goursat Problem

Fix

$$
D_{U,V}=[0,U]_u\times[0,V]_v,
\qquad
a_\ell:=\frac{\lambda_\ell}{2}>0.
$$

Prescribe

$$
\Phi(u,0)=f(u),
\qquad
\Phi(0,v)=g(v),
\qquad
f(0)=g(0)=c.
\tag{2.1}
$$

Equation (1.1) is equivalent to the Volterra equation

$$
\Phi(u,v)=f(u)+g(v)-c
-a_\ell\int_0^u ds\int_0^v dr\,\Phi(s,r).
\tag{2.2}
$$

Define the Riemann kernel

$$
R_\ell(x,y)
:=J_0\!\left(2\sqrt{a_\ell xy}\right)
=J_0\!\left(\sqrt{2\lambda_\ell xy}\right).
\tag{2.3}
$$

It obeys

$$
(\partial_x\partial_y+a_\ell)R_\ell(x,y)=0,
\qquad
R_\ell(x,0)=R_\ell(0,y)=1.
\tag{2.4}
$$

The exact reconstruction formula is

$$
\boxed{
\begin{aligned}
\Phi(u,v)=\;&cR_\ell(u,v)\\
&+\int_0^u ds\,f'(s)R_\ell(u-s,v)\\
&+\int_0^v dr\,g'(r)R_\ell(u,v-r).
\end{aligned}}
\tag{2.5}
$$

At \(v=0\), (2.5) gives \(c+\int_0^u f'=f(u)\); at \(u=0\) it gives \(g(v)\). Differentiating under the integrals and using (2.4) proves (1.1). Formula (2.5) is therefore the Riemann/Volterra/Bessel reconstruction requested for the benchmark.

## 3. Existence, Uniqueness and Continuous Dependence

Define the matched data space

$$
\mathcal G^1_{U,V}
:=\{(f,g)\in H^1(0,U)\oplus H^1(0,V):f(0)=g(0)\}.
\tag{3.1}
$$

Equip this closed subspace with

$$
\|(f,g)\|_{\mathcal G^1}:=\|f\|_{H^1(0,U)}+\|g\|_{H^1(0,V)}.
$$

The common trace exists because \(H^1\) on an interval embeds continuously into \(C^0\). Define the solution graph space by

$$
\mathcal E^1_{U,V}:=\left\{
\begin{array}{l|l}
\Phi&\Phi\in C^0(\overline D_{U,V}),\\
&\partial_u\Phi\in L^\infty_vL^2_u,\\
&\partial_v\Phi\in L^\infty_uL^2_v,\\
&\partial_u\partial_v\Phi\in L^2(D_{U,V})
\end{array}
\right\},
\tag{3.2}
$$

with the equation imposed distributionally and with graph norm

$$
\|\Phi\|_{\mathcal E^1}
:=\|\Phi\|_{C^0}
+\|\partial_u\Phi\|_{L^\infty_vL^2_u}
+\|\partial_v\Phi\|_{L^\infty_uL^2_v}
+\|\partial_u\partial_v\Phi\|_{L^2(D_{U,V})}.
\tag{3.3}
$$

### Theorem 3.1 — finite-sector Goursat isomorphism

For every \(\lambda_\ell>0\), restriction

$$
\operatorname{Res}:\mathcal E^1_{U,V}\longrightarrow\mathcal G^1_{U,V},
\qquad
\Phi\longmapsto(\Phi(\cdot,0),\Phi(0,\cdot)),
$$

is a bounded bijection whose inverse is (2.5).

### Proof

Let

$$
F_0:=\|f\|_{L^\infty}+\|g\|_{L^\infty}+|c|.
$$

The Volterra operator

$$
(Th)(u,v)=\int_0^u ds\int_0^vdr\,h(s,r)
$$

satisfies

$$
\|T^nh\|_\infty
\leq\frac{(UV)^n}{(n!)^2}\|h\|_\infty.
$$

Hence the Neumann series for \((1+a_\ell T)^{-1}\) converges absolutely in \(C^0\), proves existence, and gives the conservative estimate

$$
\|\Phi\|_\infty
\leq I_0(2\sqrt{a_\ell UV})F_0.
\tag{3.4}
$$

The sharper Bessel formula and \(|J_0(x)|\leq1\) for real \(x\) give

$$
\|\Phi\|_\infty
\leq |c|+\sqrt U\,\|f'\|_{L^2}
+\sqrt V\,\|g'\|_{L^2}.
\tag{3.5}
$$

Differentiating (2.2),

$$
\partial_u\Phi(u,v)=f'(u)-a_\ell\int_0^v\Phi(u,r)dr,
$$

$$
\partial_v\Phi(u,v)=g'(v)-a_\ell\int_0^u\Phi(s,v)ds.
\tag{3.6}
$$

Therefore

$$
\sup_v\|\partial_u\Phi(\cdot,v)\|_{L^2_u}
\leq\|f'\|_{L^2}+a_\ell V\sqrt U\,\|\Phi\|_\infty,
\tag{3.7}
$$

$$
\sup_u\|\partial_v\Phi(u,\cdot)\|_{L^2_v}
\leq\|g'\|_{L^2}+a_\ell U\sqrt V\,\|\Phi\|_\infty,
\tag{3.8}
$$

and

$$
\|\partial_u\partial_v\Phi\|_{L^2}
=a_\ell\|\Phi\|_{L^2}
\leq a_\ell\sqrt{UV}\,\|\Phi\|_\infty.
\tag{3.9}
$$

These estimates prove bounded reconstruction. Conversely,
\(\partial_u\Phi\in H^1(0,V;L^2(0,U))\) and
\(\partial_v\Phi\in H^1(0,U;L^2(0,V))\), because the graph norm controls each first derivative and its transverse derivative. The Bochner trace theorem therefore controls \(f'\) and \(g'\), while the \(C^0\) term controls \(f\), \(g\), and their common corner value. Hence restriction is bounded into \(\mathcal G^1_{U,V}\). Integrating the distributional equation twice recovers (2.2). If the data vanish, the convergent Volterra resolvent gives \(\Phi=0\), proving uniqueness. \(\square\)

For \(C^k\) data, differentiating (2.5) gives a \(C^k\) solution with continuous dependence. For smooth Maxwell data on \(S^2\), harmonic coefficients decrease faster than every power of \(1+\lambda_\ell\). The polynomial \(\lambda_\ell\) losses in (3.7)--(3.9) are absorbed by the neighboring Fréchet seminorms, so the direct harmonic sum is a continuous smooth reconstruction map.

This proves the benchmark Goursat theorem sectorwise and on the smooth radiative Maxwell core. It does **not** assert a uniform same-order Sobolev bound over the full \(\ell\)-tower without angular derivative weights.

## 4. Maxwell Characteristic Data Dictionary

Project the sheet profiles onto the vector harmonics:

$$
r^E_{\ell m}(v)=\int dS\,\mathbb E^{A,\ell m*}r_A(v),
\qquad
r^B_{\ell m}(v)=\int dS\,\mathbb B^{A,\ell m*}r_A(v),
$$

$$
p^E_{\ell m}(u)=\int dS\,\mathbb E^{A,\ell m*}p_A(u),
\qquad
p^B_{\ell m}(u)=\int dS\,\mathbb B^{A,\ell m*}p_A(u).
\tag{4.1}
$$

Write

$$
E_{0,\ell m}=\int dS\,Y_{\ell m}^*E_0,
$$

$$
B_0:=\frac12\epsilon^{AB}b^0_{AB},
\qquad
B_{0,\ell m}=\int dS\,Y_{\ell m}^*B_0.
\tag{4.2}
$$

For the electric master,

$$
c^E_{\ell m}=-\frac{E_{0,\ell m}}{\sqrt{\lambda_\ell}},
$$

$$
f^E_{\ell m}(u)
=c^E_{\ell m}+\int_0^u p^E_{\ell m}(s)ds,
$$

$$
g^E_{\ell m}(v)
=c^E_{\ell m}-\int_0^v r^E_{\ell m}(r)dr.
\tag{4.3}
$$

For the magnetic master,

$$
c^B_{\ell m}=-\frac{B_{0,\ell m}}{\sqrt{\lambda_\ell}},
$$

$$
f^B_{\ell m}(u)
=c^B_{\ell m}+\int_0^u p^B_{\ell m}(s)ds,
$$

$$
g^B_{\ell m}(v)
=c^B_{\ell m}+\int_0^v r^B_{\ell m}(r)dr.
\tag{4.4}
$$

Equations (4.3)--(4.4), followed by (2.5) and the field-strength maps (5.3)--(5.4) of `06-s2-harmonic-master-reduction.md`, give the explicit chain

$$
(r,p;E_0,b^0)_{\ell\geq1}
\longleftrightarrow
(f^P,g^P;c^P)
\longleftrightarrow
\Phi^P
\longleftrightarrow
F_{\ell\geq1}.
\tag{4.5}
$$

The shared corner variables are the values of the same master solution. They are not added again as oscillators.

At potential level, (5.5) of the previous note lifts each electric master to a gauge orbit of potentials; the magnetic master has the displayed coexact representative. Since \(H^1(S^2)=0\), two such representatives with the same \(F\) differ by a scalar gauge transformation in the fixed bundle sector. This closes the proper potential quotient once the same outer-endpoint gauge policy is imposed.

## 5. A Goursat-Adapted Basis on a Finite Cross

Every matched pair decomposes as

$$
f(u)=c+f_0(u),\qquad g(v)=c+g_0(v),
\qquad f_0(0)=g_0(0)=0.
$$

For a finite interval use the Dirichlet-at-corner/Neumann-at-outer-end basis

$$
e_n^{(U)}(u)=\sqrt{\frac2U}
\sin\!\left(\frac{(n+\tfrac12)\pi u}{U}\right),
\qquad n=0,1,\ldots,
\tag{5.1}
$$

and analogously \(e_n^{(V)}\). This basis is complete for the corner-zero \(H^1\) profile space and does not impose a false Dirichlet condition at the outer endpoint.

Define

$$
G_{n,-}^{\ell P}:=\mathcal R_\ell[e_n^{(U)},0;0],
\qquad
G_{n,+}^{\ell P}:=\mathcal R_\ell[0,e_n^{(V)};0],
\tag{5.2}
$$

where \(\mathcal R_\ell\) is (2.5), and the shared-corner solution

$$
G_0^{\ell P}:=\mathcal R_\ell[1,1;1]
=J_0(\sqrt{2\lambda_\ell uv}).
\tag{5.3}
$$

Thus the local Goursat basis has three logical classes:

- \(N_-\) profile modes with zero corner value;
- \(N_+\) profile modes with zero corner value;
- one shared-corner coordinate per master sector.

These are coordinates on one solution space. They are not two independent oscillator Hilbert spaces. The pure shared-corner solution (5.3) is a valid finite-rectangle mode, but by itself it is not a normalizable global stationary mode on the half-infinite cross.

## 6. Global Stationary Modes

For each \(P=E,B\), \(\ell\geq1\), define

$$
\omega_{k\ell}=\sqrt{k^2+\lambda_\ell},
$$

$$
U^P_{k\ell m}(t,z,x)
=\frac{1}{\sqrt{4\pi\omega_{k\ell}}}
e^{-i\omega_{k\ell}t+ikz}Y_{\ell m}(x).
\tag{6.1}
$$

In null coordinates,

$$
U^P_{k\ell m}
=\frac{Y_{\ell m}}{\sqrt{4\pi\omega_{k\ell}}}
e^{-i\alpha_{k\ell}u-i\beta_{k\ell}v},
$$

$$
\alpha_{k\ell}=\frac{\omega_{k\ell}+k}{\sqrt2}>0,
\qquad
\beta_{k\ell}=\frac{\omega_{k\ell}-k}{\sqrt2}>0,
$$

$$
\boxed{\alpha_{k\ell}\beta_{k\ell}=\frac{\lambda_\ell}{2}.}
\tag{6.2}
$$

The restrictions are therefore

$$
U|_{N_-}=\frac{Y_{\ell m}}{\sqrt{4\pi\omega}}e^{-i\alpha u},
\qquad
U|_{N_+}=\frac{Y_{\ell m}}{\sqrt{4\pi\omega}}e^{-i\beta v}.
\tag{6.3}
$$

One global label \(k\) fixes both sheet frequencies. Assigning independent \(\alpha\) and \(\beta\) violates (6.2) and does not define a bulk mode.

The corresponding Maxwell radiative profiles are

$$
\begin{array}{c|cc}
&p_{\ell m}|_{N_-}&r_{\ell m}|_{N_+}\\ \hline
E&-i\alpha U\,\mathbb E_A&+i\beta U\,\mathbb E_A\\
B&-i\alpha U\,\mathbb B_A&-i\beta U\,\mathbb B_A
\end{array}
\tag{6.4}
$$

with electric or magnetic corner curvature fixed by the common value \(U(0,0)\).

## 7. Local-to-Stationary Transform and Completeness

Let \(X_\infty\) denote the two half-rays \(u\geq0,v=0\) and \(v\geq0,u=0\) with the finite-energy/no-null-infinity-flux endpoint completion defined in `08-symplectic-mode-normalization.md`. If \(f,g\) are the two harmonic master profiles, the stationary coefficient is

$$
\boxed{
\begin{aligned}
a^P_{k\ell m}=-iN_{k\ell}\bigg[&
\int_0^\infty du\,e^{i\alpha u}
(i\alpha f^P_{\ell m}(u)-\partial_uf^P_{\ell m}(u))\\
&+\int_0^\infty dv\,e^{i\beta v}
(i\beta g^P_{\ell m}(v)-\partial_vg^P_{\ell m}(v))
\bigg],
\end{aligned}}
\tag{7.1}
$$

where \(N_{k\ell}=(4\pi\omega_{k\ell})^{-1/2}\). The integrals are ordinary for a dense Schwartz class and distributional in the energy completion. Equation (7.1) is the genuine symplectic transform on the complete characteristic energy image.

For the finite Goursat profile modes (5.2), one can instead compute exact overlaps with restricted stationary modes. Put

$$
\kappa_n^{(U)}=\frac{(n+\tfrac12)\pi}{U},
\qquad
\kappa_n^{(V)}=\frac{(n+\tfrac12)\pi}{V},
\qquad
s_n=(-1)^n.
$$

Then

$$
\begin{aligned}
\mathcal A^{-,\ell}_{kn}(U)
&:=-iN_{k\ell}\int_0^Udu\,e^{i\alpha u}
(i\alpha e_n^{(U)}-\partial_ue_n^{(U)})\\
&=-iN_{k\ell}\sqrt{\frac2U}\,
\frac{2i\alpha\kappa_n^{(U)}
-s_n\bigl(\alpha^2+(\kappa_n^{(U)})^2\bigr)e^{i\alpha U}}
{(\kappa_n^{(U)})^2-\alpha^2},
\end{aligned}
\tag{7.2}
$$

$$
\begin{aligned}
\mathcal A^{+,\ell}_{kn}(V)
&:=-iN_{k\ell}\int_0^Vdv\,e^{i\beta v}
(i\beta e_n^{(V)}-\partial_ve_n^{(V)})\\
&=-iN_{k\ell}\sqrt{\frac2V}\,
\frac{2i\beta\kappa_n^{(V)}
-s_n\bigl(\beta^2+(\kappa_n^{(V)})^2\bigr)e^{i\beta V}}
{(\kappa_n^{(V)})^2-\beta^2}.
\end{aligned}
\tag{7.3}
$$

The apparent poles at \(\alpha=\kappa_n^{(U)}\) or \(\beta=\kappa_n^{(V)}\) are removable and are defined by continuous limits. For the shared-corner mode (5.3), the finite-cross overlap is

$$
\mathcal A^0_k(U,V)
=-iN_{k\ell}\left(e^{i\alpha U}+e^{i\beta V}-2\right).
\tag{7.4}
$$

Equations (7.2)--(7.4) are finite-cross overlap/Gram kernels, not global annihilation coefficients: data on \(X_{U,V}\) do not determine the continuation beyond the two outer endpoints. A chosen extension into \(X_\infty\) turns finite data into global coefficients through (7.1), but different extensions can differ outside the finite diamond. No such extension is part of the regional B1 data.

On the complete characteristic energy image, the inverse of (7.1) is

$$
f^P_{\ell m}(u)=\int_{-\infty}^{\infty}dk
\left[a^P_{k\ell m}N_{k\ell}e^{-i\alpha u}
+a^{P*}_{k\ell m}N_{k\ell}e^{i\alpha u}\right],
\tag{7.5}
$$

$$
g^P_{\ell m}(v)=\int_{-\infty}^{\infty}dk
\left[a^P_{k\ell m}N_{k\ell}e^{-i\beta v}
+a^{P*}_{k\ell m}N_{k\ell}e^{i\beta v}\right].
\tag{7.6}
$$

The same coefficient appears on both sheets, so (7.5)--(7.6) automatically share the corner value.

The complete-cross map (7.1), (7.5)--(7.6) is a real symplectic coordinate transform. It is not a Bogoliubov transformation from the finite Goursat basis because that basis has neither a chosen complex structure nor a canonical global extension. Independent positive-frequency splittings on the two sheets would violate (6.2) and overcount. The stationary complex structure is instead pulled back through (7.1) in the quantization note.

Fourier completeness on \(H^1(\mathbb R_z)\oplus L^2(\mathbb R_z)\) proves completeness of (6.1) for each massive master. Equations (7.1), (7.5)--(7.6) pull that complete basis to the image characteristic energy space. This proves global mode completeness for the declared stationary finite-energy sector, not for every arbitrary nondecaying pair of half-line profiles and not a unique stationary expansion of finite-cross data without extension input.

## 8. Status and Remaining Boundary

**Proved:** exact finite-rectangle reconstruction; uniqueness; continuous dependence in the stated \(H^1\) graph norm; smooth full-tower reconstruction; the complete master/Maxwell data dictionary; stationary dispersion and restriction relations.

**Proved on the declared global energy image:** stationary mode completeness and the characteristic/stationary symplectic transform.

**Not a blocker for this benchmark:** the generic Rácz/Rendall theorem. Those sources remain structural comparisons for nonlinear or curved systems, while the product-background theorem is now direct.

**Still conditional outside the benchmark:** a same-order Sobolev isomorphism for arbitrary curved double-null Maxwell backgrounds, caustics, non-product cuts, and a sum over topological sectors.
