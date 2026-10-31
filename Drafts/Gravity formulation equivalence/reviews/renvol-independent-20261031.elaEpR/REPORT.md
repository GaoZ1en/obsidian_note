# Independent investigation: renormalized volume, Weyl anomaly, and stress sources on a hyperbolic solid torus

## 1. Decisive results

The geometric Weyl law is

\[
\boxed{V_{\rm ren}[e^{2\sigma}\gamma]-V_{\rm ren}[\gamma]
=-\frac14\int_\Sigma\!\sqrt\gamma\,
\bigl(|\nabla\sigma|_\gamma^2+R_\gamma\sigma\bigr).}
\tag{1}
\]

The sign and the factor are fixed by the geodesic-cutoff definition, not by a presumed central charge. The volume expansion and subtraction are

\[
\operatorname{Vol}(\rho_\gamma\geq\epsilon)
=\frac{A_\gamma}{2\epsilon^2}
+\frac14\int_\Sigma\sqrt\gamma R_\gamma\,\log\epsilon
+V_{\rm ren}[\gamma]+o(1)
=\frac{A_\gamma}{2\epsilon^2}+\pi\chi(\Sigma)\log\epsilon+V_{\rm ren}+o(1).
\tag{2}
\]

Thus subtract **both** displayed divergent terms; equivalently the coefficient of \(\log(1/\epsilon)\) is \(-\pi\chi\). The torus has \(\chi=0\): no integrated logarithmic divergence, but a nonzero *local* Weyl anomaly is possible for a nonflat representative.

For the explicit smooth thermal filling,

\[
\rho=\frac{2}{r+\sqrt{1+r^2}},\qquad
r=\rho^{-1}-\rho/4,\qquad
\boxed{V_{\rm ren}[dx^2+dt_E^2]=-\pi\beta/2=-\pi^2\tau_2},
\quad \tau=\frac{\theta+i\beta}{2\pi}.
\tag{3}
\]

For the assumed source functional

\[
F[\gamma]=\log Z[\gamma]=\lambda V_{\rm ren}[\gamma]+f(\tau_\gamma,\bar\tau_\gamma),
\qquad
\delta F=\frac12\int\sqrt\gamma\,\mathcal T^{ij}\delta\gamma_{ij},
\tag{4}
\]

one obtains

\[
\boxed{\mathcal T^i{}_i=-\lambda R_\gamma/4.}
\tag{5}
\]

If, and only if, the central parameter is normalized by
\(\delta_\sigma\log Z=(c_F/24\pi)\int\sqrt\gamma\,\sigma R\), then

\[
\boxed{c_F=-6\pi\lambda.}\tag{6}
\]

This is a normalization map, not an independently assumed or computed numerical central charge.

The anomaly alone directly fixes a trace response. With diffeomorphism covariance and a genuine metric-source functional, it also fixes the universal nonlocal, nonzero-momentum quadratic kernel

\[
\mathcal K^{ij,kl}_{\rm central}(k)
=-\frac\lambda2 k^2P^{ij}(k)P^{kl}(k),
\qquad P^{ij}=\delta^{ij}-\frac{k^ik^j}{k^2},\quad k\neq0.
\tag{7}
\]

It does **not** fix the entire torus two-point function: the background stress, controlled by first modulus derivatives, contributes additional nonzero-momentum terms; second modulus derivatives supply global susceptibilities. Contact terms require a source and counterterm convention. On the plane with vacuum one-point function zero, appropriate decay conditions, and no extra local source terms, (7) is the full separated-point quadratic stress response.

A sharp counterexample to inferring this from flat thermal data alone is

\[
V_{\rm ren}[\gamma_{\rm flat}]=-\frac14 A_{\gamma_{\rm flat}}.
\]

The finite local area functional \(-\lambda A_\gamma/4\) agrees with \(\lambda V_{\rm ren}\) on **every canonical flat thermal torus**, yet has a completely different Weyl variation. The asserted identity (4) must therefore be an identity of metric-source functionals, not only an equality of numbers on the flat thermal family.

## 2. Scope, hypotheses, and conventions

1. The bulk is orientable, smooth, complete, hyperbolic, with sectional curvature \(-1\), hence \(\operatorname{Ric}(g)=-2g\), and is conformally compact with a single compact torus conformal boundary. Cusps and singular/conical fillings are excluded. Conformal compactness is needed for the defining function in the question.
2. A primitive oriented contractible boundary cycle is fixed. To write \(\tau\), choose an oriented complementary cycle as well. If only the meridian is fixed, \(\tau\mapsto\tau+n\) is the residual choice of longitude. An \(S\)-transformation changes the filling and is not an allowed change of representative.
3. \(\gamma\) is a smooth positive boundary metric. Its geodesic defining function is only required in a collar: \(g=\rho^{-2}(d\rho^2+h_\rho)\), \(h_0=\gamma\). No global extension of this coordinate to the core is required.
4. Scalar curvature is positive on a round sphere, \(\int_\Sigma R\,dA=4\pi\chi(\Sigma)\). Write \(\Delta=\nabla^i\nabla_i\), whose flat Fourier symbol is \(-k^2\), and \(L=-\Delta\geq0\).
5. \(\lambda\) is left symbolic. No spectral determinant identity, determinant sign, or numerical value of \(\lambda\) is proved here. The conclusions concerning \(F\) are conditional on (4). The function \(f\) is at least twice differentiable near the modulus being varied.
6. The stress tensor in (4) is the **plus, covariant-metric source convention**: \(\mathcal T^{ij}=2\,\delta F/(\sqrt\gamma\,\delta\gamma_{ij})\). If another author defines \(\delta F=-\tfrac12\int\sqrt\gamma\,T^{ij}\delta\gamma_{ij}\), that tensor is \(T=-\mathcal T\). No sign convention is left implicit.
7. Closed surfaces have no spatial boundary. Plane statements below require the stated decay/infrared conditions; a physical boundary would add boundary curvature terms and boundary-condition data.

A complete hyperbolic solid torus is \(\mathbb H^3/\langle g\rangle\), because its universal cover is \(\mathbb H^3\) and its deck group is \(\mathbb Z\). Freeness excludes elliptic generators; compact conformal boundary excludes the parabolic case. The generator is loxodromic. Coordinates about its axis give the thermal metric used below, with length \(\beta>0\) and twist \(\theta\). Thus the explicit metric is not just a small example of the allowed smooth cyclic filling; it realizes its marked conformal moduli.

No parent candidates, previous project reports, or reviews were read. Only the root rules and applicable computation-skill instructions were consulted. No PDF or external literature source was needed. There is no claimed PDF/version verification. No parent source note was modified.

## 3. Proof of the volume expansion and finite Weyl law

### 3.1 Einstein expansion and Euler characteristic

In geodesic gauge, the three-dimensional Einstein expansion is

\[
h_\rho=\gamma+\rho^2g_{(2)}+\rho^4g_{(4)},\qquad
g_{(4)}=\tfrac14g_{(2)}\gamma^{-1}g_{(2)},
\]

with the constraint equations

\[
a:=\operatorname{tr}_\gamma g_{(2)}=-\frac12R_\gamma,
\qquad
\nabla^ig_{(2)ij}=\nabla_j a.
\tag{8}
\]

For the required orders, these follow directly from Gauss–Codazzi. With outward normal \(n=-\rho\partial_\rho\), the shape operator is
\(K^i{}_j=\delta^i{}_j-\rho^2(\gamma^{-1}g_{(2)})^i{}_j+O(\rho^4)\). The Gauss equation reads
\(R[H]=-2+K^2-|K|^2=-2\rho^2a+O(\rho^4)\), where \(H=\rho^{-2}h_\rho\), giving the trace equation. The momentum constraint gives the divergence equation. The radial Einstein equation supplies the displayed \(g_{(4)}\); it is not needed to obtain the anomaly.

Consequently

\[
dV_g=\rho^{-3}\left(1+\frac12a\rho^2+O(\rho^4)\right)d\rho\,dA_\gamma
=\left(\rho^{-3}-\frac14R_\gamma\rho^{-1}+O(\rho)\right)d\rho\,dA_\gamma.
\tag{9}
\]

Integrating from \(\epsilon\) inward proves (2). Changing the log subtraction to \(\pi\chi\log(\mu\epsilon)\) changes the finite part by \(-\pi\chi\log\mu\), a topological scheme constant. This ambiguity is absent on the torus.

### 3.2 Direct change of geodesic defining function

Set \(\rho'=e^{\omega(\rho,y)}\rho\), where \(\omega(0,y)=\sigma(y)\). The geodesic defining-function condition is

\[
(1+\rho\partial_\rho\omega)^2+\rho^2|d_y\omega|_{h_\rho}^2=1.
\]

It implies

\[
\omega=\sigma-\frac14\rho^2|\nabla\sigma|_\gamma^2+O(\rho^4),
\]

and hence the new cutoff surface, written in the old collar coordinates, is

\[
\rho_{\rm cut}(y)=\epsilon e^{-\sigma(y)}
+\frac14\epsilon^3 e^{-3\sigma(y)}|\nabla\sigma|_\gamma^2+O(\epsilon^5).
\tag{10}
\]

The relevant local antiderivative of (9), evaluated at a lower cutoff, is

\[
\frac{1}{2\rho_{\rm cut}^2}+\frac14R_\gamma\log\rho_{\rm cut}.
\]

Its finite change, after subtracting the transformed leading area and unchanged Euler log coefficient, is

\[
-\frac14|\nabla\sigma|^2-\frac14R_\gamma\sigma.
\]

This proves (1) for arbitrary finite smooth \(\sigma\), not merely infinitesimally. Higher powers in (10) contribute only vanishing terms. The filling is unchanged throughout: only its asymptotic regulator changes. This is not a hard-wall Dirichlet problem with a newly prescribed induced cutoff metric.

Checks on the formula:

- Constant \(\sigma=c\): \(V'_{\rm ren}-V_{\rm ren}=-\pi\chi c\). The torus is invariant under uniform rescaling.
- The Liouville expression in (1) obeys the Weyl cocycle identity, using \(R_{e^{2\sigma}\gamma}=e^{-2\sigma}(R_\gamma-2\Delta\sigma)\) and integration by parts.
- For a flat torus, every nonconstant real Weyl factor decreases \(V_{\rm ren}\) by a nonnegative Dirichlet energy.

## 4. Full geometric source variation

For a smooth family of the marked Einstein fillings and boundary sources,

\[
\boxed{
\delta V_{\rm ren}
=-\frac14\int\sqrt\gamma\,
\bigl(g_{(2)}^{ij}-a\gamma^{ij}\bigr)\delta\gamma_{ij},
\qquad a=-R_\gamma/2.
}
\tag{11}
\]

Here is a direct derivation fixing its sign. Let \(q_{ab}=\delta g_{ab}\) in a family of geodesic gauges. The linearized scalar-curvature identity, with \(\delta R[g]=0\) and \(\operatorname{Ric}=-2g\), is

\[
2\operatorname{tr}_gq=\Delta_g\operatorname{tr}_gq-\nabla^a\nabla^bq_{ab}.
\]

At a finite cutoff this gives the Schläfli-type boundary identity

\[
\delta\operatorname{Vol}_\epsilon
=\frac14\int_{\rho=\epsilon}\sqrt H\,
\left(2\delta K+K^{ij}\delta H_{ij}\right).
\tag{12}
\]

The normal is outward, \(-\rho\partial_\rho\); in Gaussian gauge \(\delta K=\tfrac12 n(\operatorname{tr}_H\delta H)\), which fixes the signs in (12). Expanding it yields

\[
\delta\operatorname{Vol}_\epsilon
=\frac14\int\sqrt\gamma\left[
\epsilon^{-2}\operatorname{tr}_\gamma\delta\gamma
+\frac a2\operatorname{tr}_\gamma\delta\gamma
-\operatorname{tr}_\gamma\delta g_{(2)}\right]+o(1).
\]

Subtract the area variation. The log coefficient has zero variation on a closed fixed-topology surface. Finally use
\(\operatorname{tr}_\gamma\delta g_{(2)}=-\tfrac12\delta R+g_{(2)}^{ij}\delta\gamma_{ij}\) and
\(\int\sqrt\gamma\,\delta R=-\tfrac12\int\sqrt\gamma R\gamma^{ij}\delta\gamma_{ij}\), to obtain (11).

Its trace and divergence agree independently with (1) and (8):

\[
\delta_\sigma V_{\rm ren}=-\tfrac14\int\sqrt\gamma\,\sigma R,
\qquad
\nabla_i\bigl(g_{(2)}^{ij}-a\gamma^{ij}\bigr)=0.
\]

For (4), the complete first variation is

\[
\delta F=-\frac\lambda4\int\sqrt\gamma\,
(g_{(2)}^{ij}-a\gamma^{ij})\delta\gamma_{ij}
+f_\tau\delta\tau+f_{\bar\tau}\delta\bar\tau.
\tag{13}
\]

The last term is traceless and conserved as a source stress. It is not fixed by Weyl variations at one fixed modulus.

Writing lower-index source stresses, the finite Weyl transformation is particularly simple:

\[
\boxed{
\mathcal T'_{ij}=\mathcal T_{ij}-\frac\lambda2
\left[\nabla_i\nabla_j\sigma-\nabla_i\sigma\nabla_j\sigma
+\frac12\gamma_{ij}|\nabla\sigma|^2-\gamma_{ij}\Delta\sigma\right].}
\tag{14}
\]

The conformally invariant \(f\)-stress has unchanged lower components. Raised components acquire the corresponding metric factors. Equation (14) follows by varying (1) with \(\sigma\) held fixed. In particular, variation of \(\int\sqrt\gamma\,\sigma R\) contributes \(\nabla^i\nabla^j\sigma-\gamma^{ij}\Delta\sigma\), not its negative.

As an analytic conservation check, on a flat reference let the bracket in (14) be \(A_{ij}\). Then
\(\partial^iA_{ij}=-(\Delta\sigma)\partial_j\sigma\) and \(\operatorname{tr}A=-\Delta\sigma\). Under \(e^{2\sigma}\delta\), the two terms cancel in the covariant divergence. Its trace gives exactly (5). A nonconstant polynomial instance of the complete curvature/trace/conservation identity was also checked with xAct; see the evidence section.

## 5. Exact thermal and arbitrary-representative checks

The specified metric is

\[
g=(1+r^2)dt_E^2+\frac{dr^2}{1+r^2}+r^2dx^2,
\quad x\sim x+2\pi,
\quad (x,t_E)\sim(x+\theta,t_E+\beta),\quad\beta>0.
\]

At \(r=0\), the \((r,x)\) plane is smooth because the angular period is \(2\pi\), and the longitudinal identification acts freely. With the coordinate (3),

\[
g=\rho^{-2}\left[d\rho^2+(1+\rho^2/4)^2dt_E^2+(1-\rho^2/4)^2dx^2\right],
\tag{15}
\]

so \(\gamma_0=dx^2+dt_E^2\), \(g_{(2),xx}=-1/2\), \(g_{(2),tt}=1/2\). Since \(\sqrt{\det g}=r\), the quotient fundamental domain gives

\[
\operatorname{Vol}_\epsilon
=\pi\beta\left(\epsilon^{-2}-\frac12+\frac{\epsilon^2}{16}\right).
\tag{16}
\]

The twist does not affect this integral. The finite part is (3). The geodesic coordinate happens to reach \(\rho=2\) at the core; this global property is not assumed for a Weyl-deformed defining function.

For every smooth twisted-periodic \(\sigma\), the same filling has

\[
V_{\rm ren}[e^{2\sigma}\gamma_0]
=-\frac{\pi\beta}{2}-\frac14\int_{\rm FD}dx\,dt_E\,
[(\partial_x\sigma)^2+(\partial_t\sigma)^2].
\tag{17}
\]

For example on the rectangular torus, \(\sigma=a\cos(mx)\), \(m\in\mathbb Z\), gives the exact finite answer
\(-\pi\beta/2-\pi\beta a^2m^2/4\). Its local anomaly is nonzero even though the integrated Euler/log coefficient vanishes.

More generally choose the marked flat representative
\(\widehat\gamma=(A/\tau_2)|du+\tau dv|^2\), \(u,v\in[0,1]\). Uniformization gives, up to a marking-preserving diffeomorphism,
\(\gamma=e^{2\sigma}\widehat\gamma\), and

\[
V_{\rm ren}[\gamma]=-\pi^2\tau_2-\frac14\int\sqrt{\widehat\gamma}\,|\nabla\sigma|^2.
\tag{18}
\]

The constant in \(\sigma\), and hence the arbitrary flat area \(A\), drops out.

There is an exact intrinsic form on the torus. Define \(L_\gamma^{-1}\) on mean-zero functions. Since \(\int R\,dA=0\), it is applicable to \(R\). Then

\[
\boxed{
V_{\rm ren}[\gamma]=-\pi^2\tau_2
-\frac1{16}\int\sqrt\gamma\,R_\gamma L_\gamma^{-1}R_\gamma,
\qquad
F[\gamma]=H(\tau,\bar\tau)-\frac\lambda{16}\int\sqrt\gamma\,R L^{-1}R,
}
\tag{19}
\]

where \(H=f-\lambda\pi^2\tau_2\). Indeed \(R_\gamma=2e^{-2\sigma}L_{\widehat\gamma}\sigma\), so \(L_\gamma^{-1}R=2\sigma+\text{constant}\), and the integral in (19) is four times the Dirichlet energy. This also shows directly why a counterterm local in \(\sigma\) relative to a fixed reference is not an intrinsic local functional of the metric.

## 6. Quadratic metric-source functional: central part and zero modes

Let \(\gamma(\eta)=\delta+\eta h\) be an **affine covariant-metric source path** on a fixed flat marked torus. The source parameter \(\eta\) is distinct from the bulk cutoff \(\epsilon\). Use flat coordinates with period vectors \((2\pi,0)\), \((\theta,\beta)\), area \(A=2\pi\beta\), and Fourier convention \(h(x)=\sum_k h(k)e^{ik\cdot x}\).

At first order,

\[
h_{ij}=b_{ij}+2s\delta_{ij}+\partial_i\xi_j+\partial_j\xi_i,
\quad b=\langle h\rangle,
\quad\langle s\rangle=\langle\xi\rangle=0.
\tag{20}
\]

The constant trace of \(b\) is a scale variation; its two real traceless components are Teichmüller variations. For \(k\neq0\),

\[
s(k)=\tfrac12P^{ij}(k)h_{ij}(k),\qquad
\xi_j(k)=-\frac{i}{k^2}\left[k^ih_{ij}(k)-\frac12k_jh^i{}_i(k)\right].
\tag{21}
\]

There are no nonzero-momentum TT metric deformations in two dimensions: two diffeomorphism components and one Weyl component exhaust the three metric components. The linearized scalar curvature is

\[
R^{(1)}=\partial_i\partial_jh_{ij}-\Delta h^i{}_i,
\qquad R^{(1)}(k)=k^2P^{ij}h_{ij}=2k^2s(k).
\]

The universal quadratic part is therefore

\[
F^{(2)}_{\rm central}
=-\frac\lambda4\int|\nabla s|^2
=-\frac\lambda{16}\int R^{(1)}L^{-1}R^{(1)}
=-\frac{\lambda A}{16}\sum_{k\neq0}k^2(P:h(k))(P:h(-k)).
\tag{22}
\]

Define the normalized source Hessian at the flat background by

\[
\mathcal K^{ij,kl}(x,y)=4\frac{\delta^2F}{\delta\gamma_{ij}(x)\delta\gamma_{kl}(y)},
\qquad
F^{(2)}=\frac18\int h\,\mathcal K\,h.
\tag{23}
\]

Equation (22) gives (7). Its single trace is a polynomial,

\[
\delta_{ij}\mathcal K^{ij,kl}_{\rm central}
=-\frac\lambda2(k^2\delta^{kl}-k^kk^l),
\tag{24}
\]

so the trace response is contact-supported. Nevertheless the untraced tensor contains the nonlocal term
\(-\tfrac\lambda2 k^ik^jk^kk^l/k^2\). It cannot be discarded as a contact term.

On the plane, \(L^{-1}(x)=-\log|x|/(2\pi)\). With \(z=x+it\),

\[
\mathcal K_{zz,zz}(z,0)=-\frac{3\lambda}{4\pi z^4}
=\frac{c_F}{8\pi^2z^4},\qquad z\neq0.
\tag{25}
\]

If \(F\) really generates a local boundary theory, and \(\mathsf T(z)=-2\pi\mathcal T_{zz}(z)\), the central separated-point coefficient is
\(\langle\mathsf T(z)\mathsf T(0)\rangle_c\sim c_F/(2z^4)\). This last operator interpretation needs the additional local-theory/source-coupling assumption; (22)–(25) themselves are unambiguous statements about the stipulated functional.

### 6.1 Flat one-point function and modulus derivatives

For a constant positive metric matrix \(B\) in the above fixed coordinates,

\[
\tau(B)=\tau_1+\tau_2\frac{B_{xt}}{B_{xx}}
+i\tau_2\frac{\sqrt{\det B}}{B_{xx}}.
\tag{26}
\]

Let \(\mathscr H(B)=H(\tau(B),\bar\tau(B))\). Its flat source stress is

\[
\boxed{
\mathcal T^{(0)}=\frac1{4\pi^2}
\begin{pmatrix}-H_{\tau_2}&H_{\tau_1}\\H_{\tau_1}&H_{\tau_2}\end{pmatrix}_{(x,t)}.
}
\tag{27}
\]

For the volume term alone this is \(\operatorname{diag}(\lambda/4,-\lambda/4)\). Neither a fixed-modulus Weyl variation nor the anomaly determines the additional \(f\)-part.

For \(b=\begin{pmatrix}a&b_\times\\b_\times&d\end{pmatrix}\), the constant-source expansion is

\[
\tau(I+\eta b)=\tau+
\eta\tau_2\left[b_\times+\frac i2(d-a)\right]
+\eta^2\tau_2\left[-ab_\times+
\frac i8(3a^2-2ad-d^2-4b_\times^2)\right]+O(\eta^3).
\tag{28}
\]

Thus the zero-mode quadratic coefficient \(\tfrac12D^2\mathscr H[b,b]\) is explicitly

\[
\begin{split}
&\tau_2\left[-H_1ab_\times+
\frac{H_2}{8}(3a^2-2ad-d^2-4b_\times^2)\right]\\
&\qquad+\frac{\tau_2^2}{2}
\left[H_{11}b_\times^2+H_{12}b_\times(d-a)
+\frac{H_{22}}4(d-a)^2\right],
\end{split}
\tag{29}
\]

where \(H_1,H_2\) are derivatives with respect to the real modulus coordinates. It vanishes for a pure constant rescaling \(a=d,b_\times=0\).

## 7. Why nonzero Fourier sources can still probe the global function

It is incorrect to infer that \(f\) contributes only at zero momentum merely because its *first* modulus variation is a zero mode. The second modulus variation of a nonzero-mode metric source need not vanish.

Here is a complete quadratic formula in the affine source convention. Choose a uniformization parametrization

\[
\gamma(\eta)=e^{2\sigma(\eta)}\Phi_\eta^*B(\eta),\quad
\sigma=\eta s+\eta^2s_2+\cdots,\quad
B=I+\eta b+\eta^2b_2+\cdots,
\]

with \(\Phi_\eta\) generated by \(\eta\xi+\eta^2\zeta+\cdots\), and \(\langle s\rangle=\langle s_2\rangle=0\). Expanding the metric and taking its average gives

\[
\boxed{
b_2=-\left\langle\frac12\mathcal L_\xi^2\delta
+2s\mathcal L_\xi\delta+2s^2\delta\right\rangle.
}
\tag{30}
\]

The omitted terms \(\mathcal L_\xi b\), \(2sb\), and \(\mathcal L_\zeta\delta\) have zero average. Consequently

\[
\boxed{
F[\delta+\eta h]=H(\tau)+\eta D\mathscr H[b]
+\eta^2\left[
\frac12D^2\mathscr H[b,b]+D\mathscr H[b_2]
-\frac\lambda4\int|\nabla s|^2
\right]+O(\eta^3),
}
\tag{31}
\]

with
\(D\mathscr H[b_2]=(A/2)\mathcal T^{(0)ij}(b_2)_{ij}\).
This separates the diffeomorphism/Weyl/Teichmüller pieces, including the nonlinear source-coordinate terms. Along an exact diffeomorphism path rather than the affine path, its quadratic metric source contributes the compensating first-variation term, as required by diffeomorphism invariance. If \(\mathcal T^{(0)}=0\), the mixed/background term in (31) disappears, leaving precisely the central kernel and global zero-mode Hessian.

### 7.1 Explicit exact-uniformization counterexample

On a rectangular torus, consider the positive metric for sufficiently small \(\eta\),

\[
\gamma=(1+\eta a\cos kx)dx^2
+2\eta b\cos kx\,dx\,dt
+(1+\eta d\cos kx)dt^2,\quad k\in\mathbb Z\setminus\{0\}.
\]

Put \(E=1+\eta a\cos kx\), \(F=\eta b\cos kx\), \(G=1+\eta d\cos kx\). The exact changes of local coordinates

\[
X'=\frac{\sqrt{EG-F^2}}G,\qquad
Y=t+\int^x\frac FG\,dx
\]

give \(\gamma=G(dX^2+dY^2)\). Their periods determine

\[
\boxed{
\tau_\gamma=i\tau_2+
\eta^2\tau_2\left[-\frac{bd}{2}
+\frac i{16}(a^2+2ad-3d^2+4b^2)\right]+O(\eta^3).
}
\tag{32}
\]

This was derived directly and checked symbolically against the expansion of the exact periods. For \(b=d=0\), the local first-order perturbation is pure diffeomorphism, yet the affine metric path shortens the contractible circumference at order \(\eta^2\), producing \(\delta\tau_2=\eta^2\tau_2a^2/16\). It probes \(H_2\).

### 7.2 A genuinely nonlocal background term, not only a seagull

The preceding phenomenon has a transparent Beltrami form. Write
\(ds^2=e^{2\varphi}|dz+\mu d\bar z|^2\), and let \(\langle\mu\rangle=0\). Normalize a uniformizing coordinate as
\(w=z+B\bar z+v(z,\bar z)\), with periodic \(v\). From \(\bar\partial w=\mu\partial w\),

\[
v^{(1)}=\bar\partial^{-1}\mu,
\qquad B^{(2)}=\langle\mu\,\partial\bar\partial^{-1}\mu\rangle,
\qquad
\delta^{(2)}\tau=-2i\tau_2B^{(2)}.
\tag{33}
\]

All inverses act on nonzero Fourier modes. Therefore the global functional contributes

\[
F^{(2)}_{\rm global}
=-2i\tau_2H_\tau\langle\mu\partial\bar\partial^{-1}\mu\rangle
+2i\tau_2H_{\bar\tau}
\langle\bar\mu\bar\partial\partial^{-1}\bar\mu\rangle.
\tag{34}
\]

The ratio \(\partial/\bar\partial\) is not a polynomial in momentum. Hence this cannot all be removed as a local contact term. Locally \(\partial\bar\partial^{-1}\) has kernel \(-1/(\pi z^2)\). With the holomorphic normalization after (25), the background term is the familiar local contribution \(2\langle\mathsf T\rangle/z^2\), whereas the leading \(z^{-4}\) coefficient is controlled only by \(\lambda\). On the torus the inverse operators are periodized and projected off their zero modes; the remaining constant/global data involve modulus susceptibilities.

Thus “only a trace response” and “the full nonzero-momentum torus two-point function is fixed by \(\lambda\)” are both too strong in opposite directions. The correct statement is: a fixed universal central/nonlocal kernel, plus background- and modulus-dependent terms, plus scheme/source contact terms.

## 8. Contact terms and what is meant by a stress two-point function

The functional Hessian (23) is the primary unambiguous object. At a general background, use invariant delta functions and define
\(\mathcal K=4(\sqrt\gamma_x\sqrt\gamma_y)^{-1}\delta^2F/\delta\gamma(x)\delta\gamma(y)\). The response of the **normalized one-point tensor** is not identical to it:

\[
\frac{2}{\sqrt\gamma_y}\frac{\delta\mathcal T^{ij}(x)}{\delta\gamma_{kl}(y)}
=\mathcal K^{ij,kl}(x,y)
-\gamma^{kl}(x)\mathcal T^{ij}(x)\,\delta_\gamma(x,y).
\tag{35}
\]

Lowering stress indices produces further algebraic contact terms. An underlying path integral can also have local metric dependence of the stress operator itself (“seagulls”). Away from coincident points, for a local source coupling, these distinctions disappear. Without such an underlying theory being specified, the rigorous conclusion is a metric-source Hessian, not proof of existence, positivity, or operator locality of a boundary CFT.

The plane limit requires more than formally replacing a sum by an integral. Specify the state, zero modes/infrared prescription, and behavior at infinity. For the vacuum, \(\mathcal T^{(0)}=0\), and decaying sources, the central kernel fixes the separated-point result. Nonzero holomorphic one-point data or boundary conditions at infinity add state-dependent solutions of the Ward identities.

## 9. Finite local terms, counterexamples, and bulk coupling changes

### 9.1 Intrinsic boundary/source counterterms

For covariant local functionals regular near a flat source:

- \(a\int\sqrt\gamma\) changes \(\mathcal T^i{}_i\) by \(2a\) and has finite Weyl change \(a\int\sqrt\gamma(e^{2\sigma}-1)\). Its quadratic metric-source terms are contact terms. It is disallowed if one insists on exactly the Weyl law of (4), but it is an explicit alternative scheme/source functional if a scale-dependent area term is admitted.
- \(b\int\sqrt\gamma R=4\pi b\chi\) is topological on a closed surface. It changes neither local source stress nor the central coefficient; on the torus its value is zero.
- \(d\int\sqrt\gamma R^2\) changes the trace by \(d(-2R^2-4\Delta R)\). Around flat space it contributes \(d\int(R^{(1)})^2\), a polynomial \(k^4P^{ij}P^{kl}\) source kernel, hence only contact terms. It introduces a dimensionful coupling and is not part of the exact ansatz (4).
- Higher regular local curvature terms have the analogous higher-derivative/contact effect. No smooth intrinsic local metric counterterm changes the coefficient of the nontrivial two-dimensional \(\int\sigma R\) anomaly: the candidate two-derivative counterterm \(\int R\) is topological. Singular terms such as \(R\log R\) at a flat background, reference-metric dependent functionals, compensator fields, and nonlocal Polyakov terms change the admissible problem and are not exceptions to this statement.

Distinguish source counterterms from cutoff-polynomial counterterms. With cutoff-independent coefficients, \(\int\sqrt H\) is divergent and its subtraction coefficient is fixed, \(\int\sqrt H R[H]\) is topological, and \(\int\sqrt H R[H]^2\to0\) as \(\epsilon\to0\). A nonzero finite source \(\int\sqrt\gamma R^2\) requires an additional renormalization scale/cutoff dependence. Under conformal power counting with no additional scale, the ordinary finite intrinsic two-dimensional curvature counterterm is only the Euler term.

Two counterexamples are useful:

1. On canonical flat thermal sources, \(\lambda V_{\rm ren}=-\lambda A/4\). An area term is indistinguishable there but not on arbitrary smooth representatives. Flat thermal partition values cannot alone prove the Weyl anomaly.
2. Choosing \(f=\lambda\pi^2\tau_2\) makes \(H=0\), so all canonical flat thermal values of \(F\) vanish while the nonzero \(\lambda\) anomaly and central kernel remain. Conversely, changing \(f\) changes flat free energies and stresses without changing the anomaly.

### 9.2 Changing an Einstein coupling is not a boundary scheme change

A change of the bulk Einstein coefficient, together with the Gibbons–Hawking term and compatible renormalization, changes the coefficient multiplying the renormalized on-shell volume. It is not an intrinsic local functional of the boundary metric; (19) displays its nonlocal metric dependence.

For orientation, adopt

\[
I_E=-\frac1{16\pi G}\int(R+2)\,dV
-\frac1{8\pi G}\int K\,dA+I_{\rm ct}.
\]

On the torus the standard finite on-shell result is \(I_{E,\rm ren}=V_{\rm ren}/(4\pi G)\). Thus \(\log Z=-I_E\) has \(\lambda_{\rm EH}=-1/(4\pi G)\), and applying the derived normalization (6) gives \(c_{\rm EH}=3/(2G)\). This is a consistency check after the derivation, not input to it. On other topologies an Euler-scheme constant can accompany the volume relation.

A bulk renormalization of \(1/G\), unlike an ordinary finite intrinsic boundary counterterm, can shift the central coefficient. Consequently a symbolic one-loop determinant density \(\lambda\) is not automatically the total physical central coefficient unless the bulk coupling and its renormalization convention have also been fixed. Extrinsic-curvature boundary modifications that change the variational principle are likewise not the same as ordinary intrinsic Dirichlet-source counterterms.

## 10. Verification, actual returns, and failures

All authored work is confined to this newly created private directory. The directory was created with mode 0700. Every kernel run exported into a fresh private subdirectory, never over a prior result. The server-managed raw response records were copied here so the evidence does not rely on a transient tool display.

### Successful checks

- [Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/checks_wolfram.wl>) checks the exact thermal FG metric and volume, the finite-cutoff Weyl constant, the general nonzero-mode metric decomposition/projector, trace locality/conservation of the central kernel, the constant-metric modulus series, the independently exact one-dimensional uniformization series (32), and the \(zz\) normalization. [Actual text return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/wolfram-return.fclxVD/actual-return.txt>) reports every residual zero, `AllResidualsZero -> True`, and `Messages -> {}`. [Exact WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/wolfram-return.fclxVD/result.wxf>); [raw server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/wolfram-server-return.json>).
- [Thermal xAct source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/checks_xact.wl>) computes the actual Ricci tensor with xCoba. [Corrected-run actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/xact-return.TExUiy/actual-return.txt>) gives \(\operatorname{Ric}+2g=0\), \(R=-6\), and no messages. [Raw server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/xact-server-return.json>).
- [Conformal xAct source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/checks_conformal_xact.wl>) checks curvature, anomaly trace, and covariant stress conservation for a five-parameter nonconstant polynomial Weyl factor, with arbitrary constant traceless background stress. Its [actual text return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/conformal-xact-return.XhwmFf/actual-return.txt>) and [raw server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/conformal-server-return.json>) are preserved. All three residuals are exactly zero, with `AllResidualsZero -> True` and no messages. This is a meaningful local component test; it is not substituted for the arbitrary-smooth-factor analytic proof.

All successful runs used Wolfram Engine 14.3.0 for Mac OS X ARM (64-bit), July 8, 2025. xAct and the ordinary Wolfram check share the same computational engine and are **not** claimed to be independent implementations. Direct geometric derivation, exact uniformization of a separate nontrivial family, and component checks are distinct checks of the argument.

### Preserved failures / diagnostics

1. The first thermal xAct run passed the curvature checks but used unqualified `$Version`; an xAct package symbol shadowed the engine version. The original [source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/checks_xact_attempt1.wl>), [actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/xact-return.uWvJXb/actual-return.txt>), and [raw server record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/xact-attempt1-server-return.json>) are preserved. The corrected fresh run uses ``System`$Version``; no mathematical claim depended on the mislabeled metadata.
2. The first general conformal xAct attempt was **not a verification**: it returned `$Failed` at the server level, and its internally exported report had nonzero/unevaluated residuals, `ValidateSymbol::used`, and `CTensor::unknown` messages. Its [original source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/checks_conformal_xact_attempt1.wl>), [actual diagnostic report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/conformal-xact-return.EJoQmB/actual-return.txt>), and [raw server failure](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/conformal-attempt1-server-return.json>) are preserved. The corrected source uses unique tensor symbols and ordinary coordinate differentiation before chart substitution; it deliberately tests a nonconstant polynomial instead of pretending that the failed generic-function calculation proved the general identity.

### Reproduction

Run each script in a fresh kernel. The ordinary source can be run with `wolframscript -file` or `mcp__mathematica__evaluate_mathematica` using `Get[absolute source path]`. For the two xAct sources, use `mcp__xact__xact_run` with `profile: "components"` and the same `Get[...]`; a CLI run requires xAct/xCoba installed on the Wolfram package path. The scripts create fresh `mktemp -d` export directories beside themselves and preserve exact WXF plus readable actual returns. No previously computed kernel variable is required.

## 11. Limitations and what remains to be supplied

- The Weyl and volume results, and the geometric source formulas, are derived under the stated smooth conformally compact Einstein hypotheses. The torus Polyakov representation (19) is exact there.
- No determinant formula or value of \(\lambda\) was checked. Determinant zero-mode measures, scale dependence, and any additional area dependence must be verified separately: the ansatz (4) assumes that all remaining source dependence really is only through the modulus. If (4) is known only on a canonical flat family, the off-flat conclusions are not established; the area counterexample is decisive.
- To determine a complete torus stress response, supply the marked filling, \(f\) and its first two modulus derivatives, the source/contact prescription, and any allowed finite local source terms. Large-diffeomorphism constraints may constrain \(f\), but are not assumed or solved here.
- To identify the response with correlators of a local, unitary CFT, supply that physical interpretation and operator normalization. Positivity, spectrum, modular completion, and reflection positivity do not follow from the geometric anomaly.
- The arbitrary-smooth Weyl proof is analytic. CAS checks include exact algebra, the nontrivial inhomogeneous modulus example, thermal curvature, and a local nonconstant conformal curvature/stress example. No claim is based on a failed CAS return.
- This investigator was a fresh independent subagent relative to the parent material. Recursive delegation was unavailable at the supplied depth, so no additional fresh reviewing subagent was started inside this investigation.

**Bottom line:** the geometric definition gives the Liouville Weyl law with coefficient \(-1/4\); the assumed functional gives anomaly \(-\lambda R/4\) and central normalization \(-6\pi\lambda\). It supplies a real universal nonlocal stress kernel, not just a trace number, but neither flat thermal values nor that coefficient alone determine the full torus two-point function or the physical bulk-coupling renormalization.
