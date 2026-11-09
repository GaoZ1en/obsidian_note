---
paper id: 2611.08934v1
title: "AdS3/BCFT2 correspondence and 't Hooft anomaly of U(1) symmetry"
authors:
  - Hikaru Toya
  - Satoshi Yamaguchi
publication date: 2026-11-06T03:22:37Z
abstract: |-
  A probe U(1) Maxwell–Chern–Simons system in AdS3/BCFT2 realizes the obstruction to symmetry-preserving boundary conditions associated with a U(1) anomaly. An explicit family satisfying Dirichlet conditions on the end-of-the-world brane and a corner magnetic-flux condition has nonzero normal BCFT current. The paper also constructs separated gauge-field modes in AdS2 slicing.
comments: '12 pages, no figure'
url: https://arxiv.org/abs/2611.08934v1
summary: 'A checked example in which the flat/massive split, finite-cutoff corner condition and order of limits determine a nonvanishing boundary current; the separated modes are not yet a boundary-condition spectrum.'
tags: []
---

# An Anomalous Current Cannot Simply Be Reflected at the BCFT Boundary

The paper's concrete deliverable is a family of allowed probe configurations with $J^x(t,0)\ne0$, not a classification of all end-of-the-world (EoW) brane theories. For koishi, it is useful because it makes three ordinarily conflated operations explicit: imposing a bulk gauge-field boundary condition, selecting the flat connection that sources the current, and requiring absence of magnetic flux at a corner. It also gives a reusable Maxwell–Chern–Simons mode reconstruction in AdS2 slicing.

Read [arXiv v1](https://arxiv.org/abs/2611.08934v1), §§1–3, PDF/printed pp. 1–10; pp. 10–12 contain references and there are no appendices. Eqs. (2.5)–(3.21), especially the cutoff relation and renormalized current, were visually checked on PDF pp. 4–10. The checks below reproduce the solution and the mode equations, while taking the paper's quoted renormalization scheme as an input.

## 1. Geometry, Orientation and the Topological Mass

Set the AdS radius to one. The Poincaré and sliced coordinates are related by

$$\begin{align}
z={y\over\cosh\rho},\qquad x=y\tanh\rho, \qquad ds^2=d\rho^2+\cosh^2\rho\,{dy^2-dt^2\over y^2}.
\end{align}$$

The bulk region is $\rho_*\le\rho\le\rho_c$, where $\rho_c$ denotes the paper's $\rho_\infty$ **before** removing the cutoff. The EoW brane is $\rho=\rho_*$, with outward normal $n=-\partial_\rho$. Consequently $K_{ij}=-\tanh\rho_*h_{ij}$, $K=-2\tanh\rho_*$, and $K_{ij}=(K-T)h_{ij}$ fixes

$$\begin{align}
T=-\tanh\rho_*.
\end{align}$$

This sign depends on retaining the region to the right of the brane. I checked the coordinate metric transformation and, with xCoba, $R_{\mu\nu}=-2g_{\mu\nu}$, $R=-6$.

The gauge field is a probe: its stress tensor does not backreact on this geometry. The action and conventions are eqs. (2.9)–(2.10):

$$\begin{align}
I=-{1\over4q^2}\left[\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu} -\alpha\int\varepsilon^{\mu\nu\sigma}A_\mu F_{\nu\sigma}\right], \quad \varepsilon^{\rho yt}=+1, \quad \alpha={kq^2\over2\pi}>0,
\end{align}$$

$$\begin{align}
\nabla_\nu F^{\nu\mu}+{\alpha\over2\sqrt{-g}} \varepsilon^{\mu\nu\lambda}F_{\nu\lambda}=0.
\end{align}$$

Here epsilon is a symbol/density, not the metric-normalized tensor. The CS term in differential-form notation is $k\int A\wedge dA/(4\pi)$. Its variation doubles the bulk $\delta A\wedge F$ term and supplies the factor $\alpha/2$ in the component equation.

Define the gauge-invariant massive vector by

$$\begin{align}
B^\mu=-{1\over2\alpha\sqrt{-g}}\varepsilon^{\mu\nu\lambda}F_{\nu\lambda}.
\end{align}$$

The field equation implies

$$\begin{align}
{\varepsilon^{\mu\nu\lambda}\over\sqrt{-g}}\partial_\nu B_\lambda+\alpha B^\mu=0, \qquad F=dB, \qquad A=A^{(0)}+B,\quad dA^{(0)}=0.
\end{align}$$

This is an **on-shell split**. The flat part must not be discarded as irrelevant gauge data on a space with a CS boundary term. It is precisely the part used to define the BCFT current in the chosen scheme.

## 2. The Solution Family and the Corner Relation

In axial gauge $\bar A_\rho=0$, restrict first to $F_{yt}=0$. The equations reduce to

$$\begin{align}
\partial_\rho^2\bar A_t-\alpha\partial_\rho\bar A_y=0, \quad\partial_\rho^2\bar A_y-\alpha\partial_\rho\bar A_t=0, \quad\partial_t\partial_\rho\bar A_t-\partial_y\partial_\rho\bar A_y=0.
\end{align}$$

Diagonalizing the first two gives radial factors $e^{\pm\alpha\rho}$. The third and $F_{yt}=0$ make their coefficients functions of $t\mp y$. Dirichlet data $A_t=A_y=0$ at the brane give eq. (2.19):

$$\begin{aligned}
\bar A_t&=f(t-y)(e^{-\alpha\rho}-e^{-\alpha\rho_*}) +g(t+y)(e^{\alpha\rho}-e^{\alpha\rho_*}),\\
\bar A_y&=-f(t-y)(e^{-\alpha\rho}-e^{-\alpha\rho_*}) +g(t+y)(e^{\alpha\rho}-e^{\alpha\rho_*}).
\end{aligned}$$

An arbitrary smooth $f,g$ satisfies all three original component field equations; I independently checked this using $\nabla_\nu F^{\nu\mu}=(-g)^{-1/2}\partial_\nu(\sqrt{-g}F^{\nu\mu})$, including $F_{yt}=0$, rather than checking only the reduced radial equations.

The additional condition concerns the **magnetic** density

$$\begin{align}
j_m^\mu={1\over2}\varepsilon^{\mu\nu\lambda}F_{\nu\lambda}, \quad \partial_\mu j_m^\mu=0, \qquad\lim_{y\to0^+}\int_{\rho_*}^{\rho_c}d\rho\,j_m^y=0.
\end{align}$$

It is imposed boundary data, motivated in the paper by preservation of the magnetic symmetry; the bulk Bianchi identity alone does not impose it. Since $j_m^y=-\partial_\rho\bar A_t$, the integral is $-\bar A_t(\rho_c,t,y)$. At $y=0$ one obtains

$$\begin{align}
g(t)=-{e^{-\alpha\rho_c}-e^{-\alpha\rho_*}\over e^{\alpha\rho_c}-e^{\alpha\rho_*}}f(t) =e^{-\alpha(\rho_*+\rho_c)}f(t).
\end{align}$$

The exact exponential simplification and the zero integrated corner flux were checked symbolically. This relation is cutoff dependent, and that dependence cannot be dropped before evaluating a cutoff observable.

To impose tangential Dirichlet data also at $\rho_c$, use $A=\bar A+d\lambda_g$, with

$$\begin{align}
\lambda_g=-[\mathcal F(t-y)-\mathcal F(t+y)] (e^{-\alpha\rho}-e^{-\alpha\rho_*})\chi(\rho), \qquad\mathcal F'=f.
\end{align}$$

Here $\chi$ is smooth, zero near the brane and one near the cutoff. This is the paper's gauge parameter $\lambda(x)$, distinguished here from the separation constant used below. Its derivatives are

$$\begin{aligned}
\partial_t\lambda_g&=-[f(t-y)-f(t+y)]D\chi,\\
\partial_y\lambda_g&=+[f(t-y)+f(t+y)]D\chi,\\
\partial_\rho\lambda_g&=-[\mathcal F(t-y)-\mathcal F(t+y)] [-\alpha e^{-\alpha\rho}\chi+D\chi'], \quad D=e^{-\alpha\rho}-e^{-\alpha\rho_*}.
\end{aligned}$$

These reproduce (2.26)–(2.28). I checked $A_i(\rho_*)=A_i(\rho_c)=0$ for both tangential components. The construction changes the flat part, not $F$ or $B$. Calling it gauge-equivalent does not by itself license quotienting it at the boundary.

## 3. Why the Normal Current Remains Finite and Nonzero

The renormalized variation quoted in eq. (2.29) is

$$\begin{align}
\delta I_{\rm ren}=-{\alpha\over2q^2}\int_{\rho_c}dy\,dt\, \left[(A_t^{(0)}+A_y^{(0)})(\delta A_t^{(0)}-\delta A_y^{(0)}) +(B_t-B_y)(\delta B_t+\delta B_y)\right].
\end{align}$$

This specifies a chiral source polarization and finite-term scheme. I use it as a source input, not as an independently reconstructed counterterm calculation. Differentiation with respect to the flat source gives

$$\begin{align}
J^y={\alpha\over2q^2}(A_t^{(0)}+A_y^{(0)}).
\end{align}$$

It is not the derivative with respect to the unsplit total $A_y$ at fixed $B$ without specifying this prescription.

For the family above, the definition of $B$, including the Lorentzian lowering of its time index, gives

$$\begin{align}
B_\rho=0,\quad B_t=f(t-y)e^{-\alpha\rho}+g(t+y)e^{\alpha\rho}, \quad B_y=-f(t-y)e^{-\alpha\rho}+g(t+y)e^{\alpha\rho}.
\end{align}$$

Since total $A_t=A_y=0$ on the cutoff surface, $A_i^{(0)}=-B_i$ there. Therefore

$$\begin{align}
J^y(\rho_c,t,y)=-{\alpha\over q^2}e^{\alpha\rho_c}g(t+y) =-{\alpha\over q^2}e^{-\alpha\rho_*}f(t+y).
\end{align}$$

This identity was reproduced directly. Although $g\to0$ pointwise as $\rho_c\to\infty$, the combination $e^{\alpha\rho_c}g$ is finite. Setting $g=0$ first would erase the answer.

At fixed $t,x>0$, $y=x/\tanh\rho_c$ and $z=x/\sinh\rho_c$. The boundary-coordinate conversion in the paper gives $J^x=\tanh\rho_c J^y$, hence

$$\begin{align}
J^x(t,x)=-{\alpha\over q^2}e^{-\alpha\rho_*}f(t+x), \qquad J^x(t,0)=-{\alpha\over q^2}e^{-\alpha\rho_*}f(t).
\end{align}$$

Remove the radial cutoff **before** taking $x\to0^+$. The flat-sector variation also gives $J^t=-J^x$; for this family $\partial_tJ^t+\partial_xJ^x=0$ in the open half-plane. The failure is boundary conservation: for sufficiently decaying profiles,

$$\begin{align}
{d\over dt}\int_0^\infty J^t dx=J^x(t,0),
\end{align}$$

so the half-line charge has an endpoint flux. “Current non-conservation” here should not be read as a nonzero interior divergence for this zero-field-strength boundary-source family.

A single smooth nonzero $f$ disproves current reflection for **these** boundary conditions. It does not prove, by solving all possible brane models, that no additional boundary theory could change the conclusion. The introduction itself identifies the selection of admissible brane boundary dynamics as future work. The broader anomaly obstruction is an established input discussed by the source, not a general theorem independently derived by this example.

## 4. The General Massive Modes: a Reconstruction, Not yet a Spectrum

Section 3 drops $F_{yt}=0$. Put $B_\mu=e^{-i\omega t}b_\mu(\rho,y)$, $a=\cosh\rho$. The first-order system is

$$\begin{aligned}
\alpha b_y-i\omega b_\rho-\partial_\rho b_t&=0,\\
\alpha b_t-\partial_\rho b_y+\partial_yb_\rho&=0,\\
\alpha b_\rho+{y^2\over a^2}(\partial_yb_t+i\omega b_y)&=0.
\end{aligned}$$

Eliminating tangential components yields

$$\begin{align}
(-\partial_\rho^2+\alpha^2)(a^2b_\rho) =y^2(\partial_y^2+\omega^2)b_\rho.
\end{align}$$

With $b_\rho=a^{-1}R(\rho)Y(y)$, define $U=aR$. Separation gives the especially transparent pair

$$\begin{align}
U''+\left({\lambda\over a^2}-\alpha^2\right)U=0, \qquad Y''+\left(\omega^2-{\lambda\over y^2}\right)Y=0.
\end{align}$$

Returning to $R$ gives (3.5), including its $1-\alpha^2$ term. Let $\zeta=\tanh\rho$, $\nu=\sqrt{1+4\lambda}/2$. The radial equation becomes

$$\begin{align}
(1-\zeta^2)U_{\zeta\zeta}-2\zeta U_\zeta+ \left[\lambda-{\alpha^2\over1-\zeta^2}\right]U=0.
\end{align}$$

Thus

$$\begin{aligned}
R&=\operatorname{sech}\rho\,[c_1P_{\nu-1/2}^{\alpha}(\zeta) +c_2Q_{\nu-1/2}^{\alpha}(\zeta)],\\
Y&=\sqrt y\,[c_3J_\nu(|\omega|y)+c_4\mathrm Y_\nu(|\omega|y)].
\end{aligned}$$

The Legendre and Bessel differential-equation residuals were checked symbolically. The Bessel display is a basis for nonzero real $\omega$; at $\omega=0$, use $y^{1/2\pm\nu}$, with the logarithmic companion when $\nu=0$. This is a basis limit, not a reason to discard zero frequency.

For $\lambda\ne0$, the nonhomogeneous tangential components are eqs. (3.16)–(3.17):

$$\begin{align}
b_y={i\omega\alpha UY-U'Y'\over\lambda}, \qquad b_t={i\omega U'Y-\alpha UY'\over\lambda}.
\end{align}$$

There are also independent homogeneous terms

$$\begin{align}
(b_y,b_t)=C_3e^{-\alpha\rho+i\omega y}(1,-1) +C_4e^{\alpha\rho-i\omega y}(1,1).
\end{align}$$

To see where the denominators come from, diagonalize to $b_y\mp b_t$. The integrating factors are $e^{\pm\alpha\rho}$, and the radial ODE implies

$$\begin{align}
\partial_\rho\left[{e^{\alpha\rho}\over\lambda}(\alpha U-U')\right] ={e^{\alpha\rho}U\over a^2},\qquad \partial_\rho\left[-{e^{-\alpha\rho}\over\lambda}(\alpha U+U')\right] ={e^{-\alpha\rho}U\over a^2}.
\end{align}$$

I reproduced both integration identities and substituted the reconstructed $b_\rho,b_y,b_t$ into **all three** first-order equations, using only the two separated ODEs; all residuals vanish. Checking only the second-order equation would not establish the correct helicity of a topologically massive vector.

At $\lambda=0$, the displayed $1/\lambda$ representation is not a definition. The integrating-factor integrals (3.12)–(3.13) remain the nonsingular route, followed by the remaining first-order constraint. The source describes a smooth-family cancellation of poles; a global completeness statement for every degenerate mode is not established by the generic check above.

Finally add a flat connection and Fourier-superpose. The original family is the sector $b_\rho=0$, with only the two homogeneous branches. Its flat connection (3.21) cancels their values at $\rho_*$, and the corner condition ties their amplitudes. The paper explicitly says that boundary conditions have **not** been imposed on the extra separated modes: its symbolic $\sum_\lambda$ is not a derived discrete spectrum, nor does it determine a normal-mode norm or a quantization domain.

## 5. Translation to the Current Projects

For CPS, retain the flat and massive sectors separately until the boundary potential and allowed transformations have been specified. For regional sewing, the integrated magnetic corner condition and the electric endpoint flux are different statements; neither should be substituted for the other. For AdS quantization, the first-order reconstruction is immediately reusable, but the brane/asymptotic boundary conditions and symplectic inner product still have to be supplied before treating the Legendre parameter as a physical spectrum.

**Verification boundary.** Independently reproduced: AdS coordinate/curvature identities; all component Maxwell–CS equations for the arbitrary-function family; magnetic-flux relation; both finite-cutoff Dirichlet conditions; the flat/massive split and current substitution; generic separated-mode reconstruction and special-function ODEs. Assumptions: probe limit, $q^2>0$, $\alpha>0$, $y>0$, finite $\rho_*<\rho_c$, smooth profiles, the stated orientation, and the source's fixed renormalized source polarization. Not independently reconstructed: its complete holographic counterterm derivation, an exhaustive boundary-condition/no-go theorem, the zero-separation completeness claim, or a normalized spectrum for the extra modes. No contradiction was found in the checked equations.
