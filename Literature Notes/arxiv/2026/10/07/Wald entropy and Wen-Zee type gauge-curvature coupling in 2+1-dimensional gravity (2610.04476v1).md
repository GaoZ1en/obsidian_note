---
paper id: 2610.04476v1
title: "Wald entropy and Wen-Zee type gauge-curvature coupling in 2+1-dimensional gravity"
authors:
  - Aryan Bhatia
  - Giandomenico Palumbo
  - Suraj S. Hegde
publication date: 2026-10-03
abstract: |-
  A Lorentz-covariant mixed gauge-curvature coupling gives a horizon boost charge expressed as a projected loop integral. The paper studies its Maxwell gauge invariance, its conditional holonomy interpretation, a formal Euler-current comparison, and regular cosmological and AdS-Lorentz horizon representatives.
comments: "38 pages"
url: https://arxiv.org/abs/2610.04476v1
summary: "Derives a mixed-sector horizon boost charge while separating gauge completion, regularity, thermal lift and independent holonomy data."
tags: []
---

# A mixed curvature coupling as a horizon boost charge

For the first-order term $L_{\rm WZ}=\beta A_a\wedge R^a$, the curvature momentum is $\beta A_a$. With a smooth invertible frame, a smooth independent connection and a compatible geometric Lorentz lift of the horizon Killing field, its entropy contribution is

$$
S_{\rm WZ}=-2\pi\beta\oint_{\mathcal B}\widetilde n_a A^a.
$$

The dual binormal $\widetilde n$ is the unit tangent to the bifurcation circle, with the source's orientation. This charge can survive when $R^a=0$ and the mixed Lagrangian vanishes on shell. In the AdS–Lorentz theory the identification of this isolated term with the whole $\alpha_2$ block depends on the regular representative and the selected lift. The complete Chern–Simons charge, the lift and its discrete branch must be compared together.

**Status:** completed monograph reconstruction from official v1 PDF/TeX, including every technical appendix. Reasons: `T1-Wald-CPS; T1-charge; T1-boundary; T2-model`. The scope is classical horizon charges, not a derivation of microscopic entropy or a quantum Hall identification of every extra gauge field.

## How to read this long paper

Start with 3.1 and Appendix C for the action-to-potential-to-charge chain. Read 3.2 and D to determine which gauge transformations preserve the projected charge. Use 4.1 and E as the simplest exact benchmark. Then read 4.2, F and G together: the BMS and regular representatives cannot be interchanged while keeping a bare Lorentz compensator fixed. Sections 2.1, 3.3 and B supply a useful comparison and an explicit obstruction, rather than a second independent equilibrium-entropy derivation.

| Complete source tree | Purpose and later dependency |
| --- | --- |
| 1 Introduction | Separates an electromagnetic curvature response from a gravitational boost response. |
| 2 Relativistic Wen–Zee term; 2.1 Euler-current coupling | Nonrelativistic charge/shift normalization and the covariant timelike-field construction. Used in 3.3/B. |
| 2.2 Extended Maxwell algebra | Connection, pairing and action producing $A\wedge R$. Used in 3, 4.1, C–E. |
| 2.3 AdS–Lorentz extension | Semisimple deformation, dimensionless coframe and torsional field equations. Used in 4.2/F/G. |
| 3.1 Contribution from the mixed term | Combined Lorentz-diffeomorphism charge and horizon projection. |
| 3.2 Holonomy interpretation | Covariantly constant projection and small, single-valued Maxwell shifts. |
| 3.3 Euler-current curvature response | Coefficient matching and failure of a smooth stationary timelike field at a bifurcation surface. |
| 4.1 Flat cosmological spacetime | Null-frame projected entropy and Einstein normalization. |
| 4.2.1 Geometry and regular connection | Kruskal frame, three commuting factors and independent holonomy magnitude. |
| 4.2.2 Lift of horizon symmetry | Exact symmetry, thermal normalization, continuous lift freedom and discrete branch. |
| 4.2.3 Entropy | Full pairing and representative-dependent interpretation of the $\alpha_2$ sector. |
| 5 Discussion | Conical, interference and algebra-extension proposals; these remain future work. |
| A Conventions and algebraic identity | Null/orthonormal basis and the one-dimensional centralizer of a nonzero $\mathfrak{sl}(2)$ element. |
| B Metric Euler-current calculation | Double-binormal contraction underlying 3.3. |
| C.1–C.5 | Variation/potential, Lorentz charge, combined charge, geometric compensator, entropy. |
| D.1–D.3 | Lorentz invariance, Maxwell $Z$ shifts and generally noninvariant bare $P$ shifts. |
| E Cosmological evaluation | A smooth quotient construction justifying the horizon pullbacks in 4.1. |
| F Regular AdS–Lorentz fields; F.1 exterior/asymptotic equivalence; F.1.1 branch; F.2 pullbacks | Proves local regularity, constructs exterior gauge transport, records the ensemble data and derives the horizon values. |
| G.1–G.6 | BMS obstruction, Lorentz-only failure, full lift, normalization, factor solution and final contractions. |

Printed page numbers run 1–34 for the technical body; references follow. The PDF also has front matter, so printed p. 17 is PDF page 19 and printed p. 27 is PDF page 29.

## Notation, geometry and action data

| Symbol | Meaning and convention |
| --- | --- |
| $e^a,\omega^a,A^a$ | Physical dreibein, independent dual Lorentz connection and extra Lorentz-vector one-form. $A^a$ is not the ordinary electromagnetic potential $A$. |
| $\bar e^a=e^a/\ell$ | Dimensionless coframe in the AdS–Lorentz theory. The Maxwell theory uses $e$ directly. |
| $R=d\omega+\tfrac12\omega\times\omega$, $T=D_\omega e$ | Independent curvature and physical torsion; $\mathring\omega$ denotes the Levi-Civita connection. |
| $(X\times Y)^a=\epsilon^a{}_{bc}X^b\wedge Y^c$ | Lorentz cross product, with form degrees retained. $X\cdot Y=\eta_{ab}X^aY^b$. |
| $\eta$ | Either $\operatorname{diag}(-,+,+)$ or the null basis $\eta_{01}=\eta_{10}=\eta_{22}=1$. |
| $\epsilon_{012}=+1$ | Thus $\epsilon^{012}=-1$. Swapping null legs changes orientation. |
| $\kappa_{\rm sg}$ versus $\kappa$ | Surface gravity versus Euler-current coupling. These are distinct. |
| $\rho,\Lambda,\Psi$ | Lorentz compensator, full gauge compensator, and $\Psi=\Lambda+\iota_\xi\mathcal A$. They coincide only in restricted circumstances. |
| $\widetilde n^a=\tfrac12\epsilon^{abc}n_{bc}$ | Dual binormal; $\widetilde n^2=1$, $\widetilde n^a=-e^a_\phi/\sqrt{g_{\phi\phi}}$ for the chosen angular orientation. |
| $k,\alpha_0,\alpha_1,\alpha_2,\beta$ | CS level, invariant-pairing coefficients, and $\beta=k\alpha_2/(2\pi)$ for the mixed term. |

The gauge convention is $\delta_\Lambda\mathcal A=d\Lambda+[\mathcal A,\Lambda]$. In particular,

$$
\delta_\rho e=-\rho\times e,\qquad
\delta_\rho\omega=D_\omega\rho,\qquad
\delta_\rho A=A\times\rho.
$$

### Nonrelativistic and Euler-current response data

For an Abelian quantum Hall effective theory,

$$
S_{\rm eff}=\frac\nu{4\pi}\int(A\wedge dA+2\bar s A\wedge d\omega)
+\left(\frac{\nu s^2}{4\pi}-\frac c{48\pi}\right)\int\omega\wedge d\omega.
$$

The coefficients are distinct: $\nu=t^TK^{-1}t$, $\nu\bar s=t^TK^{-1}s$ and $\nu s^2=s^TK^{-1}s$. In the conventions of (2.2), $\rho=\nu B/(2\pi)+\nu\bar s\mathcal R/(4\pi)$, hence $N_e=\nu N_\phi+\nu\bar s\chi$. This is background response, not yet a relativistic gravitational entropy statement.

For a smooth timelike unit vector $u^2=-1$, the Euler current is

$$
J^\mu=\frac1{8\pi}\varepsilon^{\mu\nu\rho}\varepsilon^{\alpha\beta\gamma}u_\alpha
\left(\nabla_\nu u_\beta\nabla_\rho u_\gamma-\frac12R_{\nu\rho\beta\gamma}\right),
\qquad S_{\rm EC}=\kappa\int\sqrt{-g}\,A_\mu J^\mu.
$$

The source uses $[\nabla_\mu,\nabla_\nu]V^\rho=R^\rho{}_{\lambda\mu\nu}V^\lambda$. It invokes off-shell conservation of the combined current; the two displayed pieces are not separately conserved. On a closed spatial slice with $u$ its future normal, $u\cdot J=-{}^{(2)}R/(8\pi)$, and the positively defined charge $-\int\sqrt h\,u\cdot J=\chi/2$. A magnetically dominated electromagnetic field permits $u^\mu=\varepsilon^{\mu\nu\rho}F_{\nu\rho}/(2b)$, $b^2=F^2/2>0$. This supplies a preferred fluid direction, not a boost-invariant vacuum. The quoted Hall-viscosity result $\eta_H=\kappa B/(8\pi)$ and the Dirac/nonrelativistic shift comparison are Source-derived background material.

### Maxwell algebra and its invariant action

The nonzero brackets are

$$
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[J_a,Z_b]=\epsilon_{ab}{}^cZ_c,\quad
[P_a,P_b]=\epsilon_{ab}{}^cZ_c.
$$

$[P,Z]=[Z,Z]=0$. In species order $(J,P,Z)$, the invariant form is $B_{IJ}\eta_{ab}$ with

$$
B_{\rm Max}=\begin{pmatrix}\alpha_0&\alpha_1&\alpha_2\\\alpha_1&\alpha_2&0\\\alpha_2&0&0\end{pmatrix},
\qquad\det B_{\rm Max}=-\alpha_2^3.
$$

For $\mathcal A=\omega^aJ_a+e^aP_a+A^aZ_a$, the CS action, modulo an exact form, becomes

$$
I=\frac k{4\pi}\int\left[\alpha_0\operatorname{CS}(\omega)
+2\alpha_1e_a\wedge R^a
+\alpha_2(e_a\wedge T^a+2A_a\wedge R^a)\right].
$$

Nondegeneracy $\alpha_2\ne0$ makes the field equations equivalent to

$$
R=0,\qquad T=0,\qquad D_\omega A+\tfrac12e\times e=0.
$$

An explicit solution can still be evaluated at a degenerate coupling limit, but flatness is then no longer inferred from the degenerate action alone. The internal relation $[P,P]=Z$ does not assert noncommuting spacetime coordinates.

### AdS–Lorentz deformation and three factors

Now add $[Z,P]=\epsilon P$, $[Z,Z]=\epsilon Z$ and use $\bar e=e/\ell$. The species pairing is

$$
B_{\rm AdSL}=\begin{pmatrix}\alpha_0&\alpha_1&\alpha_2\\\alpha_1&\alpha_2&\alpha_1\\\alpha_2&\alpha_1&\alpha_2\end{pmatrix},
\quad
\det B_{\rm AdSL}=(\alpha_0-\alpha_2)(\alpha_2+\alpha_1)(\alpha_2-\alpha_1).
$$

The curvature components are

$$
\mathcal F=R^aJ_a+\mathcal T^aP_a+F_Z^aZ_a,
\quad
\mathcal T=D_\omega\bar e+A\times\bar e,
\quad
F_Z=D_\omega A+\tfrac12\bar e\times\bar e+\tfrac12A\times A.
$$

Thus $\mathcal T=0$ means $T=-A\times e$, not $T=0$. The $\alpha_2$ block of the action is

$$
\frac{k\alpha_2}{4\pi}\int\left[
\bar e\cdot D_\omega\bar e+2A\cdot R+A\cdot D_\omega A
+A\cdot(\bar e\times\bar e)+\tfrac13A\cdot(A\times A)\right].
$$

The $\alpha_1$ block is $k\alpha_1/(4\pi)$ times the integral of

$$
2\bar e\cdot(R+D_\omega A)+\bar e\cdot(A\times A)+\tfrac13\bar e\cdot(\bar e\times\bar e).
$$

The $\alpha_0$ block remains $k\alpha_0\operatorname{CS}(\omega)/(4\pi)$. The mixed term is one part of these gauge-completed expressions.

Define

$$
\widehat J=J-Z,\qquad J^\pm=\tfrac12(Z\pm P),\qquad
c_0=\alpha_0-\alpha_2,\quad c_\pm=\tfrac12(\alpha_2\pm\alpha_1).
$$

These are three commuting $\mathfrak{sl}(2,\mathbb R)$ factors. Their connections are $\omega$ and $\mathcal A_\pm=\omega+A\pm\bar e$. The flat equations imply $\omega+A=\mathring\omega$ for the invertible torsion-free metric connection, so

$$
\mathcal A_\pm=\mathring\omega\pm\bar e,\qquad A=\mathring\omega-\omega.
$$

This decomposition is the structural reason that one can change the independent connection and contorsion while keeping the metric fixed.

## From variation to the Lorentz-diffeomorphism charge

Appendix C starts before imposing $R=0$:

$$
\delta L_{\rm WZ}=\beta\delta A_a\wedge R^a+\beta A_a\wedge D_\omega\delta\omega^a.
$$

The one-form degree of $A$ fixes the integration-by-parts sign,

$$
A_a\wedge D\delta\omega^a=DA_a\wedge\delta\omega^a-d(A_a\wedge\delta\omega^a),
\qquad \Theta_{\rm WZ}=-\beta A_a\wedge\delta\omega^a.
$$

The sector contributes $E_{A,a}=\beta R_a$ and $E_{\omega,a}=\beta DA_a$. Its Lorentz current and charge are

$$
J_\rho=-\beta A_a\wedge D\rho^a
=d(\beta\rho^aA_a)-\rho^aE_{\omega,a},
\qquad Q_\rho=\beta\rho^aA_a.
$$

Using $\mathcal L_\xi\omega=\iota_\xi R+D(\iota_\xi\omega)$ gives

$$
Q_{(\xi,\rho)}=\beta(\iota_\xi\omega^a+\rho^a)A_a.
$$

The combination matters: the pure diffeomorphism charge alone vanishes at a smooth bifurcation surface and is not separately Lorentz covariant. It is the compensating boost that survives.

The frame-invariance equation can be written

$$
\iota_\xi T^a+D\xi^a-\epsilon^a{}_{bc}(\iota_\xi\omega^b+\rho^b)e^c=0,
\qquad \xi^a=\iota_\xi e^a.
$$

At $\mathcal B$, smoothness makes $\xi^a=\iota_\xi\omega=\iota_\xi T=0$. With $\nabla_a\xi_b=\kappa_{\rm sg}n_{ab}$, the remaining equation fixes

$$
\rho^a=-\kappa_{\rm sg}\widetilde n^a,
\qquad
S_{\rm WZ}=\frac{2\pi}{\kappa_{\rm sg}}\oint Q_{(\xi,\rho)}
=-2\pi\beta\oint\widetilde n_aA^a
=2\pi\beta\oint\frac{e^a_\phi A_{a\phi}}{\sqrt{g_{\phi\phi}}}\,d\phi.
$$

Smooth torsion does not alter this pointwise frame argument because its contraction with the vanishing vector vanishes. It can, however, obstruct extending that Lorentz-only lift to an exact symmetry of the other fields. In AdS–Lorentz gravity $Z$ also rotates $e$, so the frame determines only a total rotation until the lift is selected.

The full mixed-sector presymplectic current, useful for the vault, is

$$
\omega_{\rm WZ}(\delta_1,\delta_2)
=-\beta(\delta_1A_a\wedge\delta_2\omega^a-\delta_2A_a\wedge\delta_1\omega^a)
$$

for fixed $\beta$. This follows directly by antisymmetrizing the checked potential. It is a local contribution; boundary improvements and the remaining CS sectors must be included before quotienting by gauge transformations or computing an algebra of charges.

## Which gauge transformations preserve the projected circulation?

Let $a_{\mathcal B}=\widetilde n_aA^a|_{\mathcal B}$. Lorentz covariance of both factors gives $\delta_\rho a_{\mathcal B}=0$. For a Maxwell $Z$ shift,

$$
\delta_\zeta e=\delta_\zeta\omega=0,\qquad \delta_\zeta A=D\zeta,
\qquad
\delta_\zeta S=-2\pi\beta\oint[d(\widetilde n\cdot\zeta)-\zeta\cdot D\widetilde n].
$$

The bifurcation circle is a fixed-point geodesic, so $D_{\mathring\omega}\widetilde n=0$ along it. Therefore $D_\omega\widetilde n=0$ for zero contorsion or contorsion aligned with $\widetilde n$. With single-valued $\zeta$, the charge is invariant. This is an additive Abelian circulation. An exponentiated Wilson phase requires a global gauge group and a probe representation; the paper does not establish an interference experiment or a large-gauge identification of the real-valued entropy.

A bare $P$ shift has $\delta_\tau e=D\tau$, $\delta_\tau A=e\times\tau$, changing the projection direction. At fixed curve,

$$
\delta_\tau\widetilde n^a=-\frac{D_\phi\tau^a-\widetilde n^a(\widetilde n\cdot D_\phi\tau)}{\sqrt{g_{\phi\phi}}},
$$

and

$$
\delta_\tau S=2\pi\beta\oint
\frac{(D_\phi\tau)\cdot A-(\widetilde n\cdot D_\phi\tau)(\widetilde n\cdot A)}{\sqrt{g_{\phi\phi}}}\,d\phi.
$$

It is generally nonzero. Exact symmetry of one chosen lift does not imply invariance under arbitrary bare translations. In the AdS–Lorentz algebra a $Z$ transformation also moves the coframe, so Maxwell's argument cannot simply be imported.

## Euler-current comparison and its equilibrium obstruction

Only the explicitly curvature-dependent piece contributes to the displayed metric Wald functional:

$$
L_R=\frac{\kappa\sigma}{16\pi}A_\mu\varepsilon^{\mu\nu\rho}\varepsilon^{\alpha\beta\gamma}u_\alpha R_{\nu\rho\beta\gamma},\qquad \sigma=-1.
$$

Appendix B contracts its curvature derivative with the normal binormals. Each epsilon/binormal contraction supplies twice the tangent direction, so common orientation reversals cancel. With $\widehat t^\mu=\delta^\mu_\phi/\sqrt{g_{\phi\phi}}$ and $ds=\sqrt{g_{\phi\phi}}d\phi$,

$$
S_{\rm EC}^{\rm formal}=-\frac{\kappa\sigma}{2}\oint(A\cdot\widehat t)(u\cdot\widehat t)ds
=\frac\kappa2\oint(A\cdot\widehat t)(u\cdot\widehat t)ds.
$$

The effective embedding $A^a_{\rm eff}=A u^a$ gives $\widetilde n\cdot u=-u\cdot\widehat t$ and

$$
S_{\rm WZ}^{\rm eff}=2\pi\beta\oint(A\cdot\widehat t)(u\cdot\widehat t)ds.
$$

The two local responses agree for $\beta=\kappa/(4\pi)$. This is an equality of curvature-response functionals on the chosen embedding, not an off-shell identification of the bulk theories. Under $A\mapsto A+d\lambda$, the formal Euler expression changes by $-(\kappa/2)\oint\lambda\,d(u\cdot\widehat t)$ unless further conditions apply.

There is an exact local obstruction to interpreting this as ordinary equilibrium entropy at a nonextremal bifurcation circle. Smoothness and $\mathcal L_\xi u=0$ imply, at $\xi=0$,

$$
0=(\mathcal L_\xi u)^\mu=-u^\nu\nabla_\nu\xi^\mu.
$$

The kernel of the normal-plane boost is the spacelike tangent line. Thus $u$ would be tangent and could not satisfy $u^2=-1$. The boost-kernel calculation was independently reproduced. Future-horizon-only regularity could evade the bifurcation assumptions, but needs a separate complete surface-charge analysis.

## Flat cosmological solution and a smooth representative

Use $\mathcal M>0$, $\mathcal N\ne0$ and

$$
a_\phi=J_1+\frac{\mathcal M}{2}J_0+\frac{\mathcal N}{2}P_0+\frac{\mathcal F}{2}Z_0,
\qquad r_c=\frac{|\mathcal N|}{2\sqrt{\mathcal M}},
\qquad\Xi=\mathcal F-\frac{\mathcal N^2}{4\mathcal M}.
$$

The horizon null-frame data are

$$
\omega_\phi=\left(\frac{\mathcal M}{2},1,0\right),\quad
e_\phi=\left(\frac{\mathcal N}{4},\frac{\mathcal N}{2\mathcal M},0\right),\quad
A_\phi=\left(\frac\Xi4,\frac\Xi{2\mathcal M},0\right).
$$

Direct null-metric contractions give

$$
e_\phi^2=r_c^2,\qquad
\widetilde n=-\operatorname{sgn}(\mathcal N)\left(\frac{\sqrt{\mathcal M}}2,\frac1{\sqrt{\mathcal M}},0\right),
\qquad
\widetilde n\cdot A_\phi=-\frac{\operatorname{sgn}(\mathcal N)\Xi}{2\sqrt{\mathcal M}}.
$$

Consequently,

$$
S_{\alpha_2}=\pi k\alpha_2\operatorname{sgn}(\mathcal N)
\left(\frac{\mathcal F}{\sqrt{\mathcal M}}-\frac{\mathcal N^2}{4\mathcal M^{3/2}}\right),
\quad S_{\rm EH}=2\pi k\alpha_1r_c,
$$

and the full geometric-boost charge is

$$
S_{\rm FSC}=2\pi k\operatorname{sgn}(\mathcal N)
\left[\alpha_0\sqrt{\mathcal M}+\frac{\alpha_1\mathcal N+\alpha_2\Xi}{2\sqrt{\mathcal M}}\right].
$$

Appendix E is needed because stationary angular data alone do not prove smoothness at $\mathcal B$. Set $r_0=r_c$, $v_0=\operatorname{sgn}(\mathcal N)\sqrt{\mathcal M}$, $c=\Xi/(2v_0r_0)$ and $z=(0,0,1)$. On Minkowski space $ds^2=dU\,dV+dY^2$, quotient by

$$
(U,V,Y)\sim(e^{-2\pi v_0}U,e^{2\pi v_0}V,Y+2\pi r_0).
$$

For $X_\perp=(V,U,0)/\sqrt2$ and $L=\exp[-(v_0Y/r_0)z\times]$, take

$$
\begin{aligned}
e&=L(dV/\sqrt2,dU/\sqrt2,dY),&\omega&=(v_0/r_0)z\,dY,\\
A&=L\left[-\tfrac12X_\perp\times dX_\perp-X_\perp\times z\,dY\right]+cz\,dY.
\end{aligned}
$$

The undressed exterior-form identity $dA+\tfrac12e\times e=0$ was checked exactly; dressing by $L$ supplies $R=T=0$ covariantly. At $U=V=0$, $\phi=Y/r_0$ gives $(e_\phi,\omega_\phi,A_\phi)=(r_0z,v_0z,cr_0z)$, a constant Lorentz rotation of the above collinear data. The boost has $\rho=\kappa_{\rm sg}z$. This supplies a smooth realization of the entropy calculation, not merely a formal substitution at a coordinate horizon.

## Regular AdS–Lorentz black hole: geometry, connection and lift

Let

$$
x=r_+/\ell,\qquad y=r_-/\ell,\qquad q=\sqrt{-b}>0,\qquad x>y\ge0.
$$

The extremal and parabolic limits are excluded. Use the BTZ metric

$$
ds^2=-N^2dt^2+\frac{dr^2}{N^2}+r^2(d\phi+N^\phi dt)^2,
\quad N^2=\frac{(r^2-r_+^2)(r^2-r_-^2)}{\ell^2r^2},
\quad N^\phi=-\frac{r_+r_-}{\ell r^2},
$$

with $\Omega_H=y/(\ell x)$ and $\kappa_{\rm sg}=(x^2-y^2)/(\ell x)>0$. Define

$$
G(r)=\frac{r-r_+}{r+r_+}\left(\frac{r-r_-}{r+r_-}\right)^{-r_-/r_+},
\quad r_*=\frac{\log G}{2\kappa_{\rm sg}},
\quad U=-e^{-\kappa_{\rm sg}(t-r_*)},\quad V=e^{\kappa_{\rm sg}(t+r_*)},
\quad\widetilde\phi=\phi-\Omega_Ht.
$$

Then $UV=-G$, $dr_*/dr=N^{-2}$, and $G'(r_+)\ne0$. Write the scalar metric coefficients as $\mathcal A=N^2/(\kappa_{\rm sg}^2G)$ and $H=-(\Omega_H+N^\phi)/(2\kappa_{\rm sg}G)$, distinguishing $\mathcal A$ from the Lie-algebra connection. The regular null coframe is

$$
e^0=-\sqrt{\mathcal A/2}\,dV,\qquad
e^1=\sqrt{\mathcal A/2}\,dU,\qquad
e^2=r[d\widetilde\phi+H(UdV-VdU)].
$$

For $f=((x-y)/(x+y))^{y/x}$, the removable limits are

$$
\mathcal A(0)=\frac{4\ell^2x^2}{x^2-y^2}f>0,\qquad
H(0)=-\frac{2y}{x^2-y^2}f.
$$

The coframe transforms as $\mathcal L_\xi(e^0,e^1,e^2)=\kappa_{\rm sg}(e^0,-e^1,0)$, so the geometric compensator is $\rho=(0,0,\kappa_{\rm sg})=-\kappa_{\rm sg}\widetilde n$ with $\widetilde n=(0,0,-1)$. Solving the torsion-free equations at the circle yields

$$
\mathring\omega_\phi=(0,0,2H(0)r_+^2/\mathcal A(0))=(0,0,-y)=y\widetilde n.
$$

The other horizon connection components in (F.7), including their signs, satisfy all three antisymmetric coordinate-pair torsion equations; this was checked explicitly. Choose the independent flat connection

$$
\omega=-s_0q\widetilde n\,d\widetilde\phi,\qquad s_0=\pm1,
\qquad A=\mathring\omega-\omega.
$$

It is regular and aligned with the boost. Thus the same Lorentz-only lift preserves the full connection near the circle. Its pullbacks are

$$
\bar e_\phi=-x\widetilde n,\quad
\mathring\omega_\phi=y\widetilde n,\quad
\omega_\phi=-s_0q\widetilde n,\quad
A_\phi=(y+s_0q)\widetilde n.
$$

### Exact symmetry does not fix the thermal ensemble

The gauge-covariant identity is

$$
(\mathcal L_\xi+\delta_\Lambda)\mathcal A=\iota_\xi\mathcal F+D_{\mathcal A}\Psi,
\qquad \Psi=\Lambda+\iota_\xi\mathcal A.
$$

For a flat solution, exact symmetry is $D\Psi=0$. Smoothness gives $\Psi|_\mathcal B=\Lambda|_\mathcal B$. The geometric $J$ lift fixes

$$
\Psi_0|_\mathcal B=\Psi_+|_\mathcal B=\Psi_-|_\mathcal B=-\kappa_{\rm sg}\widetilde n,
\qquad\Psi_i^2=\kappa_{\rm sg}^2.
$$

With $\operatorname{tr}(J_aJ_b)=\eta_{ab}/2$, the dimensionless thermal generator $h_i=2\pi\Psi_i/\kappa_{\rm sg}$ obeys $\operatorname{tr}h_i^2=2\pi^2$. This is a normalization condition; actual Euclidean holonomy identifications additionally depend on continuation and the global group.

The frame alone leaves $\Psi_0=C\widetilde n$ free because $\widehat J=J-Z$ commutes with $P$. The source therefore obtains a family

$$
S(C)=2\pi k\left[\alpha_1x-\alpha_2y-s_0\frac C{\kappa_{\rm sg}}(\alpha_0-\alpha_2)q\right].
$$

$C=0$ corresponds to a $Z$ lift and removes the independent-sector contribution. Selecting the geometric boost generated by $J$ fixes $C=-\kappa_{\rm sg}$. Choosing $s_0=+1$ is further discrete ensemble data. Neither choice follows from the BTZ metric alone. The source states a corresponding first law for each potential choice; a full integration over arbitrary field-dependent choices of $C$ is not independently established here.

### Complete charge and its decomposition

At the regular circle,

$$
Q_{\mathcal B}=\frac k{2\pi}\rho_a(\alpha_1\bar e^a+\alpha_0\omega^a+\alpha_2A^a),
$$

which gives

$$
\boxed{S=2\pi k\left[\alpha_1x-\alpha_2y+s_0(\alpha_0-\alpha_2)q\right].}
$$

For $s_0=+1$ the mixed term accounts for

$$
S_{\alpha_2}=-2\pi k\alpha_2(y+q).
$$

The $\alpha_0$ piece is the exotic CS charge, whose Lorentz variation is an exact form; it must use the CS surface-charge prescription rather than treating the Lagrangian as strictly Lorentz invariant. At $8G_N=1$, the source's normalization becomes $S=4\pi[\alpha_1r_+-\alpha_2r_-+(\alpha_0-\alpha_2)\ell\sqrt{-b}]$. In particular, setting $\alpha_2=0$ leaves the exotic $q$ term; the entire torsional contribution cannot be attributed to Wen–Zee coupling.

## Exterior transport and the invariant branch

Appendix F starts with $\omega_{\rm ext}=X\,d\phi_{\rm BMS}$, $X=(q^2/2,1,0)$, $X^2=q^2$. In the overlap,

$$
u=t-r_*,\qquad\phi_{\rm BMS}=\phi+g(r)=\widetilde\phi+F(t,r),
\quad g'=N^\phi/N^2,\quad F=\Omega_Ht+g(r).
$$

Choose a constant proper Lorentz transformation $R$ with $R^{-1}XR=-s_0q\widetilde n$ and $h=e^{-FX}R$. Then $h^{-1}(d+\omega_{\rm ext})h=-s_0q\widetilde n\,d\widetilde\phi$. A common frame rotation $g_L$ acts on both gravitational factors, so $(h,g_L,g_L)$ preserves the BTZ metric. The source interpolates this transformation to the identity in an exterior annulus. The connection remains flat, the coframe invertible, and asymptotic fields unchanged. The interpolation may introduce time dependence into connection components; the transported lift is what remains an exact symmetry.

The transformation law needed for this statement is

$$
\mathcal A^g=g^{-1}\mathcal A g+g^{-1}dg,\quad
\Lambda^g=g^{-1}\Lambda g-g^{-1}\mathcal L_\xi g,\quad
\Psi^g=g^{-1}\Psi g.
$$

For the independent angular holonomy $H_0=\mathcal P\exp(-\oint\omega)$, choose the real hyperbolic logarithm $X_\Sigma=-(2\pi)^{-1}\log H_0$. The branch is characterized by

$$
s_0=\operatorname{sgn}(\Psi_0\cdot X_\Sigma),\qquad
\Psi_0\cdot X_\Sigma=s_0\kappa_{\rm sg}q.
$$

Both objects conjugate at the same base point. Changing representative together with the lift preserves this sign. Reimposing a geometric boost after flipping the independent connection can instead change the ensemble. The construction is local to the outer horizon and adjoining exterior; it does not prove an extension through the inner horizon or all global gauge bundles.

## BMS fields: obstruction and the full compensator

Appendix G uses the stationary circle $\mathcal C_H=\{u=\text{const},r=r_+\}$ on the **past** horizon, because $u=t-r_*$ is retarded. It is not the bifurcation circle. In the null basis,

$$
\omega_\phi=(q^2/2,1,0),\quad
A_\phi=((y^2-q^2)/2,0,0),\quad
\bar e_\phi=(-xy,0,x),\quad
\mathring\omega_\phi=(y^2/2,1,0).
$$

For contorsion $K=\omega-\mathring\omega=-A$,

$$
\iota_\xi K=\left(\frac{y(q^2+2x^2-y^2)}{2\ell x},0,-\frac x\ell\right),
\qquad (\iota_\xi K)^2=\frac{x^2}{\ell^2}>0.
$$

A continuous tensor at $\mathcal B$ would have zero contraction with $\xi=0$. Its nonzero constant scalar norm is Lorentz invariant, so a Lorentz frame change cannot repair this representative's extension. The independent-sector transformation above changes the contorsion itself and avoids that obstruction.

A stationary Lorentz-only compensator must commute with both $\omega_\phi$ and $e_\phi$. These nonparallel vectors have no common nonzero centralizer in $\mathfrak{sl}(2)$, hence this bare compensator vanishes. The resulting $\Psi=\iota_\xi\mathcal A$ has independent-sector norm $qy/(\ell x)$, generically not $\kappa_{\rm sg}$. Retain the exceptional locus $qy=x^2-y^2$, explicitly identified in G.3; the inequality in the surrounding discussion is a generic statement.

For $s_0=+1$, transport of the regular thermal lift instead gives

$$
\Lambda_{\rm stat}=\mu_w\omega_\phi^a(J_a-Z_a),\qquad
\mu_w=\frac{\kappa_{\rm sg}}q-\Omega_H.
$$

Write the components of **$\Psi$**, not $\Lambda_{\rm stat}$, as $(\rho,\tau,\zeta)$ and set $\chi=\rho+\zeta$. The three angular equations are

$$
\omega\times\rho=0,\quad
\mathring\omega\times\tau+\bar e\times\chi=0,\quad
\omega\times\zeta+A\times\chi+\bar e\times\tau=0.
$$

The first equation reduces the third to $\mathring\omega\times\chi+\bar e\times\tau=0$. Taking sums and differences then decouples the system:

$$
\omega\times\rho=0,\qquad
\mathcal A_\pm\times\Psi_\pm=0,\qquad
\mathcal A_\pm=\mathring\omega\pm\bar e,\quad \Psi_\pm=\chi\pm\tau.
$$

The geometric gravitational-sector transport fixes

$$
\Psi_+=\frac{\kappa_{\rm sg}}{x-y}\mathcal A_{+\phi},\quad
\Psi_-=-\frac{\kappa_{\rm sg}}{x+y}\mathcal A_{-\phi},\quad
\rho=\frac{\kappa_{\rm sg}}q\omega_\phi.
$$

The signs in the $\pm$ sectors are inherited from $\iota_\xi\mathcal A_\pm=(\pm x+y)\mathcal A_{\pm\phi}/(\ell x)$; only the independent-sector normalization is additional input. With $\gamma=\kappa_{\rm sg}/(x^2-y^2)$,

$$
\rho=\kappa_{\rm sg}(q/2,1/q,0),\quad
\chi=\gamma((y^3-2x^2y)/2,y,x^2),\quad
\tau=\gamma(-xy^2/2,x,xy),\quad\zeta=\chi-\rho.
$$

Direct substitution verifies all nine components of the three equations. It also gives

$$
\chi^2=\kappa_{\rm sg}^2,\quad \tau^2=\chi\cdot\tau=0,\quad
\rho^2=\Psi_+^2=\Psi_-^2=\kappa_{\rm sg}^2,
$$

and

$$
\tau\cdot\mathring\omega=\tau\cdot\bar e=0,\quad
\chi\cdot\bar e=\kappa_{\rm sg}x,\quad
\chi\cdot\mathring\omega=-\kappa_{\rm sg}y,\quad
\rho\cdot\omega=\kappa_{\rm sg}q.
$$

These reproduce the boxed complete entropy. In contrast, the Lorentz part of the isolated mixed term gives

$$
\frac{2\pi\beta}{\kappa_{\rm sg}}\oint_{\mathcal C_H}\rho\cdot A
=\pi k\alpha_2\frac{y^2-q^2}{q},
$$

which differs from $-2\pi k\alpha_2(y+q)$. This is the concrete counterexample to treating that term as a separately invariant AdS–Lorentz entropy sector in every representative.

## Equation ledger and use in current CPS work

| Reusable chain | Source locations | What it establishes |
| --- | --- | --- |
| $L_{\rm WZ}\to\Theta\to Q_{(\xi,\rho)}\to S$ | (3.3)–(3.14), C.1–C.5 | Curvature momentum gives a geometric boost charge, including the sign. |
| $D_{\mathcal B}\widetilde n=0\to\delta_Z S=0$ | 3.2, D.2 | Small Maxwell gauge invariance of projected circulation under explicit geometric assumptions. |
| Double-binormal contraction and timelike-field obstruction | (3.16)–(3.24), B | A local response matches; equilibrium entropy of the full fluid theory does not follow. |
| Maxwell null contractions plus smooth quotient | (4.5)–(4.9), E | A regular benchmark with nonzero entropy despite $R=0$. |
| Factorization, regular frame and thermal lift | (4.15)–(4.26), F | Full entropy requires metric, independent flat connection, lift normalization and branch. |
| BMS obstruction, factor equations and complete pairing | G.1–G.6 | Explains why a singular geometric representative and an unchanged Lorentz lift give a misleading sector split. |

For a regional boundary calculation, the first thing to carry over is the pair $(\Theta_{\rm WZ},Q_{(\xi,\rho)})$, with the full gauge completion and admissible boundary transformations. The finite-dimensional Maxwell/AdS–Lorentz algebra and its pairing provide exact tests of a proposed charge algebra. The example also separates three pieces of data that are often conflated: the metric, the independent connection and the lifted symmetry. The paper does not construct regional observable-algebra sewing, a corner-state pairing or a quantum charge representation; those require additional boundary and state data.

## Verification ledger and remaining boundaries

| Status | Independent check or source boundary |
| --- | --- |
| Source-derived | Complete sections 1–5/A–G reconstructed from PDF and TeX. Quoted quantum Hall transport coefficients, full historical comparisons and proposed conical/interference extensions are source-based. |
| Checked — Sage | All 729 basis triples for the Jacobi identity and all 729 invariant-pairing triples in each of the two nine-dimensional algebras; zero failures. Species determinants, three-factor closure and all mixed-factor brackets checked exactly. |
| Checked — direct exterior derivation | Variation of $A\wedge R$, potential sign, Lorentz and combined charges, horizon compensator and field-space antisymmetrization. |
| Checked — xAct | Lorentz invariance of $\widetilde n\cdot A$ and covariant integration by parts for the $Z$ shift return zero under `canonical_contract`. |
| Checked — Mathematica | Double-epsilon/binormal curvature contraction; normal-boost kernel is the spacelike tangent; FSC norm/projection; tortoise derivative and horizon limits; nine torsion residual components and six frame-boost residual components; BMS exact-symmetry equations, norms, contractions, entropy pairing and nonzero contorsion invariant. |
| Checked — Sage exterior algebra | Three components of the undressed smooth FSC Maxwell-flatness identity vanish identically as polynomial differential forms; the source's gauge dressing then gives the covariant construction. An initial constructor-signature error was fixed by using `ExteriorAlgebra(R,names=...)`; the final result has no error. |
| Failed — none in the checked central formulas | The paper's own BMS Lorentz-only route and stationary timelike-field construction fail under their stated requirements; those are reconstructed obstructions, not new contradictions of its qualified main claim. The exceptional thermal-norm locus is kept explicit. |
| Blocked — none for scoped computations | Both PDF and TeX retrieved. Extraction font warning was handled using TeX plus rendered PDF pages 19 and 29, visually confirming (4.24)–(4.27) and (F.1)–(F.7). |
| Not independently verified | General Euler-current conservation on arbitrary curved backgrounds, complete asymptotic first-law integrability for every continuous lift choice, global bundle/large-gauge identifications, inner-horizon extension, Euclidean conical derivation, microscopic entropy and physical probe interference. |

**Verified:** the specified algebra, local charge chain, horizon benchmark identities and representative comparison. **Assumptions:** invertible coframe, smooth fields at a nonextremal bifurcation circle for the Wald evaluation, fixed orientation, nondegenerate pairing when deriving flatness, $x>y\ge0$, $q>0$, chosen thermal lift and discrete branch. **Not verified:** that the metric uniquely determines the entropy, that the isolated mixed term is invariant under the full AdS–Lorentz group, or that the formal Euler-current response defines an equilibrium entropy without a regular full solution.
