# Reduced Symplectic Form and Mode Normalization

## 1. Direct Verdict

For every \((\ell,m,P)\), \(\ell\geq1\), the proper Maxwell gauge quotient is symplectomorphic to one real massive master field. On the intrinsic complete two-sheet profile space of calculations 12--13 its action-derived two-form is weakly nondegenerate, and the global stationary modes satisfy

$$
\Omega_X(U_I,U_J)=0,
\qquad
\Omega_X(U_I^*,U_J^*)=0,
\qquad
\boxed{\Omega_X(U_I,U_J^*)=-i\delta(I,J)}.
\tag{1.1}
$$

The Dirac delta in (1.1) is obtained only after summing the two null sheets. Each sheet separately contains a principal-value term and is not an independently normalized copy of the global mode.

## 2. Finite Characteristic Cross

For one master sector define

$$
X_{U,V}=N_-\cup_{S_0}N_+,
\qquad
N_-=[0,U]_u,\quad N_+=[0,V]_v.
$$

For two solutions with profiles \(f_i(u)=\Phi_i(u,0)\), \(g_i(v)=\Phi_i(0,v)\), and \(f_i(0)=g_i(0)\), the reduced two-form is

$$
\boxed{
\begin{aligned}
\Omega_X(\Phi_1,\Phi_2)
=\;&\int_0^Udu\,(f_1'f_2-f_2'f_1)\\
&+\int_0^Vdv\,(g_1'g_2-g_2'g_1).
\end{aligned}}
\tag{2.1}
$$

Here “finite characteristic form” means the pullback of the master solution form to the local Goursat coordinates of Theorem I, with outer endpoint variations retained. It is not a declaration that the finite rectangle is an autonomous Maxwell gauge subsystem or that all charged frame directions at its outer cuts have undergone regional reduction.

Equation (2.1) follows independently from the reduced scalar action in `06-s2-harmonic-master-reduction.md` and by direct substitution of both field-strength maps into the raw Maxwell form (7.3) of `01-maxwell-double-null.md`. The latter includes the electric \(\delta E\wedge\delta A_{u,v}\) term and checks that electric dualization lost no boundary contribution.

For the full radiative Maxwell space,

$$
\Omega_X^{\mathrm{rad}}
=\sum_{P=E,B}\sum_{\ell\geq1,m}\Omega_X^P.
\tag{2.2}
$$

There is no additional \(\ell\geq1\) term \(\delta E_0\wedge\delta\lambda_{\mathrm{rel}}\): the corner curvatures are already common master values. A split-sheet relative frame belongs only to the optional extended polarization and is not added to (2.2).

## 3. Weak Nondegeneracy

Let \((f,g)\in\mathcal G^1_{U,V}\) lie in the kernel of (2.1). Test against \((h,0)\) with \(h(0)=0\) and compact support in \((0,U)\). Integration by parts gives \(f'=0\) distributionally. Allowing arbitrary \(h(U)\) then gives \(f(U)=0\), hence \(f=0\). The same argument gives \(g=0\), including the shared trace. Thus

$$
\ker\Omega_X^P=\{0\}
\tag{3.1}
$$

on the matched \(H^1\) master data with outer endpoint variations retained. This is weak nondegeneracy: the map from \(\mathcal G^1\) to its full Banach dual need not be onto.

At potential level, every \(\ell\geq1\) Maxwell solution maps to a unique pair of masters, while the kernel consists exactly of the declared proper gauge transformations. Hence (3.1) proves weak nondegeneracy after the proper gauge quotient in every radiative harmonic sector.

If one fixes outer endpoint values, the allowed tangent space must be changed before repeating this argument. Dropping endpoint terms while leaving endpoint variations free gives a different and generally degenerate form.

## 4. Finite Cutoff Versus Global Normalization

For \(U=V=L=\sqrt2T\), \(X_L\) is the two-sided null boundary from the corner to the endpoints of

$$
\Sigma_T=\{t=T,\ -T\leq z\leq T\}.
$$

Together with the spacelike segment, it bounds the compact triangle \(u,v\geq0\), \(u+v\leq\sqrt2T\). Stokes' theorem gives the exact finite identity

$$
\Omega_{X_L}=\Omega_{\Sigma_T}.
\tag{4.1}
$$

At finite \(T\), plane waves have finite-interval sinc kernels. A finite diamond is therefore not an autonomous stationary Fock system and does not itself produce \(\delta(k-k')\).

The endpoint limit is now a theorem, not a policy. For \(\mu^2=\lambda_\ell>0\), the null-frequency Plancherel identities imply

$$
\|f\|_{H^1(\mathbb R_+)}^2+\|g\|_{H^1(\mathbb R_+)}^2
\leq
\sqrt2\left(1+\frac2{\mu^2}\right)
\int_{\mathbb R}\omega_k|a(k)|^2dk.
\tag{4.2}
$$

Hence both symplectic tails vanish by Cauchy--Schwarz. On the Schwartz spectral core, the mass shell has no finite stationary point in \(|z|\geq t\), and a bounded/high-momentum split gives rapid decay up to the null directions. Density in \(L^2(\omega dk)\), together with the uniform energy bound on exterior Cauchy flux, then gives

$$
\lim_{T\to\infty}\Omega_{|z|>T}(\Phi_1,\Phi_2)=0.
\tag{4.3}
$$

Therefore

$$
\boxed{
\lim_{L\to\infty}\Omega_{X_L}
=\Omega_X
=\Omega_\Sigma.}
\tag{4.4}
$$

The full proof, including the exact trace weights and the density argument, is Lemma 4.1 and Theorem II of `12-global-characteristic-completion.md`. The mass gap is essential; no uniform \(\mu\to0\) conclusion is made.

## 5. Distributional Normalization on the Complete Cross

Let

$$
U_k=N_k e^{-i\alpha_ku-i\beta_kv},
\qquad
N_k=(4\pi\omega_k)^{-1/2},
$$

$$
\omega_k=\sqrt{k^2+\lambda},
\quad
\alpha_k=\frac{\omega_k+k}{\sqrt2},
\quad
\beta_k=\frac{\omega_k-k}{\sqrt2},
\quad
\alpha_k\beta_k=\frac\lambda2=:a.
\tag{5.1}
$$

On the two half-rays, (2.1) gives

$$
\begin{aligned}
\Omega_X(U_k,U_{k'}^*)
=-iN_kN_{k'}\bigg[&
(\alpha_k+\alpha_{k'})
\int_0^\infty du\,e^{i(\alpha_{k'}-\alpha_k)u}\\
&+(\beta_k+\beta_{k'})
\int_0^\infty dv\,e^{i(\beta_{k'}-\beta_k)v}
\bigg].
\end{aligned}
\tag{5.2}
$$

Using

$$
\int_0^\infty e^{ixs}ds
=\pi\delta(x)+i\,\operatorname{PV}\frac1x,
\tag{5.3}
$$

the principal-value coefficients cancel exactly:

$$
\frac{\alpha+\alpha'}{\alpha'-\alpha}
+\frac{\beta+\beta'}{\beta'-\beta}=0,
\qquad
\beta=\frac a\alpha,
\quad
\beta'=\frac a{\alpha'}.
\tag{5.4}
$$

The two delta terms are equal after

$$
\delta(\beta'-\beta)=\frac\alpha\beta\delta(\alpha'-\alpha),
\qquad
\delta(\alpha'-\alpha)=\frac\omega\alpha\delta(k'-k).
\tag{5.5}
$$

Consequently

$$
\Omega_X(U_k,U_{k'}^*)
=-i\,4\pi\alpha N_k^2\frac\omega\alpha\delta(k'-k)
=-i\delta(k-k').
\tag{5.6}
$$

For two positive-frequency modes there is no delta support because \(\alpha+\alpha'>0\) and \(\beta+\beta'>0\). Their principal values cancel by

$$
\frac{\alpha-\alpha'}{\alpha+\alpha'}
+\frac{\beta-\beta'}{\beta+\beta'}=0,
\tag{5.7}
$$

so \(\Omega_X(U_k,U_{k'})=0\). Complex conjugation gives the remaining relation. Restoring labels,

$$
\Omega_X(U^P_{k\ell m},U^{P'}_{k'\ell'm'})=0,
$$

$$
\boxed{
\Omega_X(U^P_{k\ell m},U^{P'*}_{k'\ell'm'})
=-i\delta_{PP'}\delta_{\ell\ell'}\delta_{mm'}\delta(k-k').}
\tag{5.8}
$$

The cancellation (5.4) is the precise reason the two sheets are one normalization problem rather than two independent Hilbert spaces.

## 6. Characteristic Projection and Inverse Expansion

For a real master solution \(\Phi\) in the intrinsic profile space of calculation 13, define

$$
\boxed{a_I=-i\Omega_X(U_I^*,\Phi),\qquad a_I^*=i\Omega_X(U_I,\Phi).}
\tag{6.1}
$$

Then (5.8) gives

$$
\Phi=\sum_{P,\ell,m}\int_{-\infty}^{\infty}dk
\left(a^P_{k\ell m}U^P_{k\ell m}
+a^{P*}_{k\ell m}U^{P*}_{k\ell m}\right).
\tag{6.2}
$$

The sign in (6.1) is forced by (5.8). The simultaneous pair \(\Omega(U,U^*)=-i\) and \(a=+i\Omega(U^*,\Phi)\) would extract \(-a\) from (6.2), so it is inconsistent. The action-derived convention is (5.8) together with (6.1).

In profile variables, (6.1) is formula (7.1) of `07-characteristic-mode-reconstruction.md`, equivalently (2.1) of calculation 13. It uses both sheets. Applying it to only one sheet leaves a principal-value term and does not define the global annihilation coefficient. The inverse and Plancherel identities are explicit there, so completeness is no longer phrased circularly as completeness “on the image.”

## 7. Symplectic Transform Versus Bogoliubov Transform

On the intrinsic complete profile space defined by the fixed-point projector of calculation 13, any real Goursat wave packet \(G_A\) and the stationary complex basis \(\{U_k,U_k^*\}\) are related by

$$
A_{kA}=-i\Omega_X(U_k^*,G_A),
\qquad
B_{kA}=i\Omega_X(U_k,G_A),
\tag{7.1}
$$

and completeness gives

$$
G_A=\int dk\,(A_{kA}U_k+B_{kA}U_k^*).
\tag{7.2}
$$

For the finite basis \(\{G_{n,-},G_{n,+},G_0\}\), formulas (7.2)--(7.4) of calculation 07 give only the restricted overlap/Gram kernels. Finite-cross data have no unique global stationary coefficients until an outer-endpoint extension is supplied, and the resulting coefficient choice is extension dependent even though all choices agree on the finite diamond.

Neither relation is a Bogoliubov transformation between two Fock representations because the real Goursat coordinates have no chosen complex structure. A Bogoliubov \((\alpha,\beta)\) pair exists only after a second compatible complex structure is supplied. Independent sheetwise Fourier splittings are incompatible: they assign two independent frequencies where the bulk equation requires \(\alpha\beta=\lambda/2\).

## 8. Corner and Zero-Mode Accounting

For \(\ell\geq1\),

$$
E_{0,\ell m}=-\sqrt{\lambda_\ell}\,\Phi^E_{\ell m}(0,0),
\qquad
B_{0,\ell m}=-\sqrt{\lambda_\ell}\,\Phi^B_{\ell m}(0,0).
\tag{8.1}
$$

These are evaluation functionals of (6.2), not extra canonical coordinates. Adding a second oscillator for them would double count. Only the \(\ell=0\) electric-flux sector can support a separate extended-frame representation, if deliberately retained; the fixed-Chern magnetic integer is always a discrete label.

## 9. Status

**Proved:** the reduced two-form, weak nondegeneracy in every radiative sector, full-cross stationary normalization, and characteristic/stationary symplectic projection.

**Checked symbolically:** both principal-value cancellations, all Jacobian relations, and the normalization coefficient.

**Proved at the endpoint boundary:** the Schwartz-core null decay, the finite-energy trace bound, density extension, and equality of the complete-half-cross and global Cauchy forms.

**Not included:** a larger non-energy characteristic class with prescribed nonzero massive flux at null infinity, or a uniform massless limit.
