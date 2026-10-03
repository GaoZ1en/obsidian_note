# A hyperbolic Virasoro orbit from the bulk covariant phase space

## Result and domain

For three-dimensional Einstein gravity with Brown--Henneaux Dirichlet data, fix one chiral constant representative

$$
b_0=\frac{c\alpha^2}{24},\qquad c=\frac{3\ell}{2G}>0,\qquad \alpha>0.
$$

The boundary-graviton leaf generated from this representative has the exact KKS form below. Its global stabilizer is precisely the group of target rotations, and its reduced orbit is the space of degree-one orientation-preserving circle diffeomorphisms modulo those rotations. This includes the hyperbolic chiral sector of a nonextremal BTZ solution. The second chiral sector is independent and can be treated with the same construction.

The bulk statement concerns a fixed-topology, fixed-monodromy leaf. Other asymptotic ends or inner boundaries are held fixed, with zero symplectic flux and zero charge variation there. One concrete realization uses a timelike inner cylinder outside the seed horizon: extend the asymptotic transformations smoothly through a collar and set them to the identity near that cylinder. Different extensions with the same boundary data differ by proper degeneracies. No horizon entropy or sewing construction is involved. Varying the BTZ parameters, adding relative-time variables, or changing the interior topology enlarges this phase space and is outside this theorem.

The argument derives the orbit two-form from the bulk Hamiltonian identity and the bulk charge normalization. It does not identify the pointwise on-shell invariant presymplectic current with the nonzero reduced two-form.

## Action, variation, and charge normalization

Use signature $(-,+,+)$, outward spacelike normal $n$, and $K_{ab}=\gamma_a{}^\mu\gamma_b{}^\nu\nabla_\mu n_\nu$. On a radial regulator, retain

$$
S=\frac1{16\pi G}\int_M\sqrt{-g}\,(R+2/\ell^2)
+\frac1{8\pi G}\int_\Gamma\sqrt{-\gamma}\,(K-1/\ell)
+S_{\rm caps,corners}.
$$

The caps have their usual oriented Gibbons--Hawking terms and the joint terms appropriate to fixed induced metrics. Choose orthogonal regulator intersections and the Dirichlet corner prescription. On the allowed variations, the action variation has the form

$$
\delta S=\int_M E^{\mu\nu}\delta g_{\mu\nu}
+\theta_{\Sigma_f}-\theta_{\Sigma_i},\qquad
\Omega=\delta\theta_\Sigma,\qquad
\iota_{X_\epsilon}\Omega=-\delta Q_\epsilon.
$$

The last identity follows from the off-shell diffeomorphism Noether identity after restriction to solutions and to boundary-preserving variations; the integrated potential includes the corner term. With this sign convention the boundary stress tensor is

$$
T_{ab}=\frac1{8\pi G}(K\gamma_{ab}-K_{ab}-\ell^{-1}\gamma_{ab}).
$$

Near infinity write the Bañados metric

$$
ds^2=\ell^2\frac{dr^2}{r^2}
-\left(rdx^+-\frac{\ell^2L_-(x^-)}r dx^-\right)
 \left(rdx^--\frac{\ell^2L_+(x^+)}r dx^+\right),\qquad x^\pm=t/\ell\pm\phi.
$$

It obeys $R_{\mu\nu}+2\ell^{-2}g_{\mu\nu}=0$. Since $n=(r/\ell)\partial_r$, $K_{ab}=r\partial_r\gamma_{ab}/(2\ell)$. Substitution into the regulated stress tensor gives

$$
T_{++}\longrightarrow\frac{\ell L_+}{8\pi G},\quad
T_{--}\longrightarrow\frac{\ell L_-}{8\pi G},\quad T_{+-}\longrightarrow0.
$$

Thus, in one chirality, set $b=cL/6$ and

$$
Q_\epsilon=\frac1{2\pi}\int_0^{2\pi}\epsilon(x)b(x)\,dx.
$$

All charges in this note use the cylinder normalization: the vacuum has $b=-c/24$, whereas the hyperbolic seed has positive $b_0$. The vacuum subtraction will be made explicitly when needed.

The metric Einstein equation, outward extrinsic curvature, and all three boundary stress components were independently checked with xAct/xCoba. The general Dirichlet CPS Hamiltonian identity is a variational input, not a result of those component checks. The bulk surface-charge formula agrees with equations (2.12), (2.15)--(2.17) of [Compère--Mao--Seraj--Sheikh-Jabbari](https://arxiv.org/html/1511.06079).

## Finite orbit and exact two-form

Let $f\in C^\infty(\mathbb R)$ satisfy

$$
f'(x)>0,\qquad f(x+2\pi)=f(x)+2\pi.
$$

The finite asymptotic transformation of the stress tensor is

$$
b_f=b_0 f'^2-\frac c{12}\{f,x\},\qquad
\{f,x\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
$$

For a tangent $v=\delta f$ put $\epsilon=v/f'$. Direct differentiation, including the Schwarzian term, gives

$$
\delta b_f=\epsilon b_f'+2\epsilon'b_f-\frac c{12}\epsilon'''.
$$

This also follows by composing $f$ on the right with $x\mapsto x+s\epsilon(x)$. Every tangent of the selected bulk leaf is generated this way, modulo a proper diffeomorphism. Consequently the Hamiltonian identity fixes the entire pullback:

$$
\begin{aligned}
\Omega_f(X_\epsilon,X_\eta)
&=-\delta_\eta Q_\epsilon\\
&=\frac1{2\pi}\int_0^{2\pi}
\left[b_f(\eta\epsilon'-\epsilon\eta')+\frac c{12}\epsilon\eta'''\right]dx.
\end{aligned}
$$

Periodic integration by parts proves antisymmetry. Substituting $\epsilon=\delta f/f'$ gives the equivalent field-space form

$$
\boxed{\quad
\Omega=\frac1{2\pi}\int_0^{2\pi}
\left[b_0\,\delta f'\wedge\delta f
-\frac c{24}\,\delta\log f'\wedge\delta(\log f')'\right]dx.
\quad}
$$

This is the KKS form in the convention $\iota_X\Omega=-\delta Q$. Both terms are closed field-space two-forms. Their equality to the bulk pullback follows on every pair of tangents, so no expansion in the amplitude of $f-x$ is used. The boundary counterterm and the corner prescription enter before this comparison through $Q_\epsilon$ and the Hamiltonian identity.

The finite-diffeomorphism transport gives an independent way to organize the same pullback. Write $g[f]=\Phi_f^*g_0$ and transport a variation back to the seed. Its boundary vector is $W_i=\delta_i f\circ f^{-1}$. Covariance of the complete integrated CPS, with its boundary/corner prescription transported together, gives $\Omega_f(\delta_1f,\delta_2f)=\Omega_0(W_1,W_2)$; surface transport is harmless under the stated zero-flux conditions. In the seed integral change variables to $y=f(x)$. The two identities

$$
\partial_yW_i=\frac{\partial_x\delta_i f}{f'},\qquad
\partial_y^2W_i=\frac{1}{f'}\partial_x\left(\frac{\partial_x\delta_i f}{f'}\right)
$$

turn the seed $b_0$ term into $b_0\delta f'\wedge\delta f$ and the integrated central term into $-c\,\delta\log f'\wedge\delta(\log f')'/24$. This reproduces the boxed form using the same finite-transport mechanism as the vacuum calculation. A bare bulk current with discarded corner contributions would not justify this step.

At the seed, with $\epsilon_m=e^{imx}$,

$$
\Omega_0(X_m,X_n)=i\frac c{12}m(m^2+\alpha^2)\delta_{m+n,0}.
$$

There is exactly one infinitesimal stabilizer, $m=0$. In particular, the $m=\pm1$ directions are physical here. The formula reduces to the familiar vacuum coefficient $icm(m^2-1)/12$ after replacing $b_0$ by $-c/24$; that replacement changes the orbit and its stabilizer.

With $\{Q_\epsilon,Q_\eta\}=-\Omega(X_\epsilon,X_\eta)$, the Fourier charges satisfy

$$
\{Q_m,Q_n\}=-i(m-n)Q_{m+n}-i\frac c{12}m^3\delta_{m+n,0}.
$$

For $H_m=Q_m+(c/24)\delta_{m0}$ the central polynomial becomes $m(m^2-1)$. This shift does not turn the hyperbolic seed into the vacuum: its $H_0$ is $c(1+\alpha^2)/24$.

## Global stabilizer and monodromy

An infinitesimal calculation is insufficient to exclude disconnected stabilizers. Suppose a degree-one orientation-preserving $h$ fixes $b_0$. The Schwarzian chain rule gives

$$
\{e^{\alpha h(x)},x\}=-\frac{\alpha^2}{2}=\{e^{\alpha x},x\}.
$$

Two developing maps with the same Schwarzian differ by a real projective transformation. With $z=e^{\alpha x}$, write

$$
e^{\alpha h(x)}=\frac{Az+B}{Cz+D},\qquad AD-BC\ne0.
$$

Degree one requires $F(qz)=qF(z)$ for every positive $z$, where $q=e^{2\pi\alpha}>1$. Comparing the coefficients after clearing denominators forces $AC=BD=BC=0$. Invertibility then forces $B=C=0$, and positivity forces $A/D>0$. Therefore

$$
h(x)=x+a.
$$

Conversely every target rotation fixes $b_0$. If $b_f=b_g$, composition with $f^{-1}$ shows that $g=h\circ f$ for such a rotation. Hence the fibers of the orbit map are exactly $f\mapsto f+a$, including its global identifications. In the convention of this pullback action the quotient is by postcomposition; it is isomorphic to the usual $\mathrm{Diff}^+(S^1)/S^1$ orbit. On the universal cover the stabilizer is $\mathbb R$. The condition $f(0)=0$ gives one global representative of each class.

The associated Hill equation and a globally defined pair of solutions are

$$
\psi''-\frac6c b_f\psi=0,\qquad
\psi_\pm=\frac{e^{\pm\alpha f/2}}{\sqrt{f'}}.
$$

Their Wronskian, in the order $\psi_+\psi'_--\psi'_+\psi_-$, is $-\alpha$. Their monodromy eigenvalues are $e^{\pm\pi\alpha}$. The positive developing map and degree-one condition also fix the winding sector. Monodromy alone would not classify every hyperbolic orbit, so neither the winding condition nor the positivity condition may be dropped.

## A global Darboux chart

Define the quasiperiodic real function

$$
u=\alpha f+\log f',\qquad u(x+2\pi)=u(x)+2\pi\alpha.
$$

A target rotation shifts $u$ by a constant. Conversely any smooth $u$ with this quasiperiodicity determines

$$
F(x)=\frac{\int_x^{x+2\pi}e^{u(s)}ds}{e^{2\pi\alpha}-1},\qquad
f(x)=\frac1\alpha\log\bigl(\alpha F(x)\bigr).
$$

Indeed $F>0$, $F'=e^u$, and $F(x+2\pi)=e^{2\pi\alpha}F(x)$, so $f'>0$ and $f$ has degree one. This proves both surjectivity and injectivity modulo additive constants, without a local inverse-function argument. Fix the additive constant by requiring the periodic part of $u-\alpha x$ to have zero mean.

Direct substitution gives

$$
b_f=\frac c{24}u'^2-\frac c{12}u'',\qquad
\boxed{\Omega=-\frac c{48\pi}\int_0^{2\pi}\delta u\wedge\delta u'\,dx.}
$$

For two variations $v,w$ of $f$, the difference between the two integrands is

$$
-\frac{c\alpha}{24}\partial_x\left(\frac{vw'-wv'}{f'}\right),
$$

before the common factor $1/(2\pi)$. Periodicity removes this derivative. Thus this is a global Darboux chart on the smooth orbit, with its weak symplectic form; no Banach completion is asserted.

For $u=\alpha x+\sum_{n\ne0}u_ne^{inx}$, $u_{-n}=u_n^*$, our Fourier convention gives

$$
\Omega=i\frac c{12}\sum_{n>0}n\,\delta u_n\wedge\delta u_{-n},\qquad
Q_0=b_0+\frac c{12}\sum_{n>0}n^2|u_n|^2.
$$

Set $a_n=\sqrt{cn/12}\,u_{-n}$. Then $\Omega=i\sum_{n>0}\delta a_n^*\wedge\delta a_n$ and $Q_0=b_0+\sum_{n>0}n|a_n|^2$. The nondegeneracy on the quotient, positivity of the rotation Hamiltonian above its minimum, and the absence of additional null directions follow at once. Right rotations act by $a_n\mapsto e^{-in\theta}a_n$.

The global-coordinate idea is due to [Alekseev--Chekeres--Youmans](https://arxiv.org/pdf/2210.15233), section 3.2. Their coadjoint stress convention has the opposite sign; here the stress sign and the factor $1/(2\pi)$ are fixed by the bulk charge. The Fourier sign above was independently evaluated from the displayed integral. It is not copied from their Fourier equality in equation (21), whose printed sign does not agree with the stated $e^{inx}$ expansion and the ordinary wedge convention.

## Verification and completion boundary

**Verified:** xAct/xCoba returns zero for all nine Einstein residuals, the extrinsic-curvature comparison, and the boundary stress normalization. Mathematica returns zero for ten labelled identities: the Miura stress, Darboux transformation up to a periodic derivative, arbitrary coadjoint tangent, both Hill solutions, their Wronskian, the seed Fourier pairing, the Darboux Fourier sign, the cocycle Jacobi identity, and the exponential Schwarzian identity. A separate symbolic integration-by-parts check verifies the arbitrary-tangent Hamiltonian identity for the boxed two-form. Exact requests and raw outputs are in `verification/`.

**Assumptions:** smooth degree-one orientation-preserving lifts; $G,\ell,\alpha>0$; fixed cylinder source and fixed monodromy/topology; the specified Dirichlet CPS including corner terms; no varying charge or flux at another boundary. The global stabilizer, quotient, and inverse Darboux map are proved in the text, rather than inferred from finite checks.

**Not verified:** quantum corrections, global Hilbert-space quantization of the hyperbolic orbit, mass-varying multi-boundary phase spaces, or a classification of all hyperbolic winding sectors. None is required by the classical acceptance criterion of rr-003. The result is a derivation of the specified classical benchmark, not a claim of a new orbit-classification theorem.

**Source inspection:** the arXiv v1 PDF of Alekseev--Chekeres--Youmans was text-extracted; pages 7 and 9 were rendered and visually inspected. The bulk-charge reference was inspected in HTML. Machine verification refers only to the explicitly recorded computations above.
