---
paper id: 2608.04461v1
title: A smooth BTZ black bounce with an extremal null throat
authors:
  - Farzad Milani
publication date: 2026-08-05T05:38
abstract: |-
  A smooth transition inserted in the inverse radial component of non-rotating BTZ admits a real-analytic Lorentzian extension through a degenerate null throat into a second exterior. The paper derives the effective source, energy conditions, three entropy assignments, scalar potential, and an Aretakis-type horizon instability, while supplying no dynamical matter action or first law.
comments: "26 pages, 6 Figures, 5 appendices, and 33 references"
url: https://arxiv.org/abs/2608.04461v1
summary: "An explicit extremal BTZ-bounce geometry whose charge-adjacent formulas are useful, but whose source, Wald interpretation, and several technical claims need correction."
tags: []
---

[[2026_08_06_overview|Back to the 2026-08-06 overview]]

The paper begins from a failed signature-change ansatz and ends with a narrower object: a kinematically prescribed two-ended Lorentzian black bounce. The explicit regular chart, source tensor, finite-radius Brown--York expression, and horizon recursion are reusable. The construction is not a dynamical solution of a supplied action and does not contain a CPS first law.

## Source map

- Section 1 contrasts smoothing \(g_{tt}\), which remains singular, with smoothing \(g^{rr}\).
- Section 2 constructs the analytic \((v,q,\phi)\) extension, null throat, and second exterior.
- Sections 3--4 derive curvature, the effective source, and energy-condition claims.
- Section 5 proves local analytic geodesic crossing, but not global completeness.
- Section 6 treats the near-throat product, minimal circle, Einstein-Hilbert Wald density, Brown--York mass, and Cardy arithmetic.
- Section 7 derives the scalar potential and Aretakis recursion.
- Sections 8--9 list the missing matter dynamics, unexplained scale, first law, and maximal extension.
- Appendix A gives the signed root, regular metric, inverse, Christoffels, and geodesic equations.
- Appendix B gives generic-\(S(r)\) curvature and source formulas.
- Appendix C derives the separated scalar potential.
- Appendix D derives the null expansions, Einstein-Hilbert entropy density, Brown--York quantity, and Cardy value.
- Appendix E derives the horizon wave equation, conserved derivative, conditional growth, and numerical setup.

## Geometry and conventions

The starting metric is

$$
ds^2=-F(r)\,dt^2+\frac{dr^2}{S(r)F(r)}+r^2d\phi^2,
\qquad
F(r)=-M+\frac{r^2}{\ell^2},
$$

with

$$
S(r)=\tanh\!\left(\frac{r-r_h}{\delta}\right),
\qquad
r_h=\sqrt M\,\ell,
\qquad
\phi\sim\phi+2\pi.
$$

Here \(M\) is the dimensionless BTZ metric parameter; the asymptotic mass in the paper's normalization is \(M/(8G)\). The scale \(\delta>0\) is externally prescribed and not varied in a first law.

| Object | Source meaning | Local translation |
|---|---|---|
| \(S(r)\) | transition in \(g^{rr}\) | not a varied dynamical field |
| \(q\), \(r=r_h+q^2\) | signed sheet coordinate | distinguishes two exteriors |
| \(\partial_v\) | degenerate horizon Killing field | no \(\delta H_{\partial_v}\) is constructed |
| \(T^\mu{}_\nu\) | \((G^\mu{}_\nu+\Lambda\delta^\mu{}_\nu)/(8\pi)\) | effective source definition |
| \(M_{\rm ql}(R)\) | subtracted Brown--York quantity | finite-boundary expression in one counterterm scheme |
| \(H_0=\partial_q\psi|_0\) | scalar Aretakis constant | horizon conservation law, not a gravity charge |

There is no source-derived \(\theta\), \(\omega\), \(k_\xi\), integrability condition, or balance law.

The rejected alternative \(g_{tt}=-SF\), \(g_{rr}=F^{-1}\) really has

$$
R\sim-\frac{F'(r_h)}{x},
\qquad
x=r-r_h.
$$

Its numerical example has the side mislabeled: for \(M=\ell=r_h=1\), \(\delta=0.1\),

$$
R(r_h+10^{-3})=-2010.03,
\qquad
R(r_h-10^{-3})=+1989.03.
$$

The quoted positive value belongs to \(x<0\), not to the displayed \(x>0\) asymptote.

## Analytic extension and second exterior

Near \(r=r_h\), both \(F\) and \(S\) have simple zeros, so the static chart has \(g_{rr}\sim(r-r_h)^{-2}\). Introduce

$$
r=r_h+q^2,
\qquad
dv=dt+\frac{dr}{F\sigma},
\qquad
\sigma^2=S,
$$

with the signed root

$$
\sigma(q)=q\sqrt{\frac{g(q^2/\delta)}{\delta}},
\qquad
g(y)=\frac{\tanh y}{y}.
$$

The regular metric is

$$
ds^2=-F(r_h+q^2)\,dv^2+\beta(q^2)\,dv\,dq+(r_h+q^2)^2d\phi^2,
$$

$$
\beta(q^2)=4\sqrt{\frac{\delta}{g(q^2/\delta)}},
\qquad
\beta(0)=4\sqrt\delta.
$$

In the basis \((v,q,\phi)\),

$$
g_{ab}=
\begin{pmatrix}
-F&\beta/2&0\\
\beta/2&0&0\\
0&0&r^2
\end{pmatrix},
\qquad
\det g=-\frac{\beta^2r^2}{4}.
$$

Thus \(\det g|_0=-4\delta r_h^2\neq0\), while

$$
g^{qq}=\frac{4F}{\beta^2}\to0.
$$

The hypersurface \(q=0\) is null. Since \(F(r_h+q^2)=O(q^2)\), the Killing horizon of \(\partial_v\) is degenerate:

$$
\kappa=\frac12F'(r_h)\sqrt{S(r_h)}=0.
$$

The coefficients are even in \(q\), and \((v,q)\mapsto(-v,-q)\) exchanges isometric sheets. Both have \(r\ge r_h\); the formal \(r<r_h\) branch is a separate geometry.

For conserved energy \(E\), angular momentum \(L\), and \(U=\varepsilon+L^2/r^2\),

$$
\dot v=\frac{E-\sqrt{E^2-FU}}{F},
\qquad
\dot q=-\frac{2\sqrt{E^2-FU}}{\beta}.
$$

At \(q=0\), these approach \(U/(2E)\) and \(-2E/\beta(0)\). The crossing is transverse in \(q\). Analytic Christoffels give local existence and uniqueness through the throat, not a maximal extension or completeness theorem.

## Curvature and the effective source

For general smooth \(S(r)\), direct computation gives

$$
R=-\frac{(2F+rF')S'+2S(2F'+rF'')}{2r}.
$$

At the throat,

$$
R(r_h)=-\frac{r_h}{\ell^2\delta},
\qquad
R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma}\big|_{r_h}
=\frac{r_h^2}{\ell^4\delta^2}.
$$

The paper defines

$$
8\pi T^\mu{}_\nu:=G^\mu{}_\nu+\Lambda\delta^\mu{}_\nu,
\qquad
\Lambda=-\ell^{-2},
$$

and obtains

$$
\begin{aligned}
8\pi T^t{}_t&=\frac{FS'}{2r}+\frac{S-1}{\ell^2},\\
8\pi T^r{}_r&=\frac{S-1}{\ell^2},\\
8\pi T^\phi{}_\phi&=\frac{rS'}{2\ell^2}+\frac{S-1}{\ell^2}.
\end{aligned}
$$

With \(\rho=-T^t{}_t\),

$$
8\pi(\rho+p_r)=-\frac{FS'}{2r},
\qquad
8\pi(\rho+p_\phi)=\frac{MS'}{2r}.
$$

For \(r>r_h\), the radial NEC fails and the angular NEC holds. Therefore the WEC and SEC also fail throughout the exterior; the source's claim that the SEC holds checks only a trace/sum condition and omits the necessary principal null inequalities. CAS gives \(\min(8\pi\rho)=-0.18007\), not \(-0.16\). The reported integrated value \(-1.58\) integrates \(8\pi(\rho+p_r)\), not \(\rho+p_r\).

The \(\delta\to0\) limit is singular in curvature and surface gravity; it cannot be taken after the calculation as a continuous return to BTZ horizon data.

## Near-throat product and radius error

Proper distance \(z\) gives

$$
ds_2^2\simeq-Ae^{-\lambda z}dt^2+dz^2,
\qquad
\lambda^2=\frac{F'(r_h)}{\delta}.
$$

Its curvature is

$$
R_2=-\frac{\lambda^2}{2}
=-\frac{F'(r_h)}{2\delta}
=-\frac{r_h}{\ell^2\delta}.
$$

Using \(R_{\mathrm{AdS}_2}=-2/\ell_2^2\) gives

$$
\boxed{\ell_2=2\sqrt{\frac{\delta}{F'(r_h)}}.}
$$

The source prints \(\sqrt{2\delta/F'(r_h)}\), off by \(\sqrt2\) and inconsistent with its own throat scalar. The local \(\mathrm{AdS}_2\times S^1\) product survives; the printed radius does not.

## Three entropy assignments without a first law

The throat circle has vanishing null expansions and \(d^2r/dq^2=2>0\), so

$$
S_{\min}=\frac{2\pi r_h}{4G}=\frac{\pi r_h}{2G}.
$$

For the Einstein-Hilbert term,

$$
\frac{\partial\mathcal L}{\partial R_{\mu\nu\rho\sigma}}
=\frac{g^{\mu\rho}g^{\nu\sigma}-g^{\mu\sigma}g^{\nu\rho}}
{32\pi G},
$$

and the correct binormal contraction is

$$
\left(g^{\mu\rho}g^{\nu\sigma}-g^{\mu\sigma}g^{\nu\rho}\right)
\epsilon_{\mu\nu}\epsilon_{\rho\sigma}=-4.
$$

Hence

$$
S_{\rm EH\text{-}Wald}=\frac{\mathcal A}{4G}=\frac{\pi r_h}{2G}.
$$

The appendix prints \(-2\) for the intermediate contraction, which would give \(\mathcal A/(8G)\), although its final result is correct. Moreover, this is only the Einstein-Hilbert contribution: without an action for the effective source, the Wald density of a completed supporting theory is unknown. The extremal horizon has no bifurcation surface, and no Iyer--Wald first law is derived.

The paper's Brown--York expression is

$$
M_{\rm ql}(R)=\frac{\sqrt F}{4G}
\left(\frac R\ell-\sqrt{SF}\right)
\longrightarrow\frac{M}{8G}.
$$

It uses \(k_0=1/\ell\), best read as the local AdS counterterm or massless-BTZ reference. A finite-radius circle in global pure AdS has \(k_0=\sqrt{1+R^2/\ell^2}/R\). The smooth-minus-BTZ correction is \(O(R^2e^{-2(R-r_h)/\delta})\).

With

$$
c=\frac{3\ell}{2G},
\qquad
L_0=\bar L_0=\frac{M\ell}{16G},
$$

the Cardy arithmetic gives

$$
S_{\rm Cardy}=4\pi\sqrt{\frac{cL_0}{6}}
=\frac{\pi r_h}{2G}.
$$

This is conditional on the asymptotic charge and state-counting interpretation; it does not identify the dual state.

## Scalar potential and endpoint class

With \(\psi=R(r)e^{-i\omega t+iL\phi}\), \(u=\sqrt r\,R\), and \(dz=dr/(\sqrt S F)\),

$$
u''+(\omega^2-V_L)u=0,
$$

$$
V_L=\frac{FL^2}{r^2}
+\frac{F\left[rFS'+S(3r^2/\ell^2+M)\right]}{4r^2}.
$$

Every term is positive for \(r>r_h\), \(S>0\), and \(S'\ge0\). At the AdS end,

$$
V_L\sim\frac{3}{4(z_\infty-z)^2}.
$$

The indicial exponents are \(-1/2\) and \(3/2\); only \(3/2\) is square-integrable in \(dz\). The endpoint is limit-point at the critical coefficient \(3/4\), not limit-circle. No family of self-adjoint extensions is required in this radial Hilbert space. Positivity excludes negative modes but does not establish decay or nonlinear stability.

## Aretakis recursion

In the regular chart,

$$
2r\,\partial_v\partial_q\psi
+r'\partial_v\psi
+\partial_q(W\partial_q\psi)
-\frac{\beta L^2}{2r}\psi=0,
\qquad
W=\frac{2rF}{\beta}.
$$

At \(q=0\),

$$
r'=0,\qquad W=W'=0,\qquad
W''=\frac{4r_hF'(r_h)}{\beta(0)}.
$$

For \(L=0\),

$$
H_0:=\partial_q\psi|_0,
\qquad
\partial_vH_0=0.
$$

One more \(q\)-derivative gives

$$
\partial_v(\partial_q^2\psi)|_0
=-\frac1{r_h}\left[
\partial_v\psi|_0+
\frac{2r_hF'(r_h)}{\beta(0)}H_0
\right].
$$

If \(\partial_v\psi|_0\to0\), then

$$
\partial_q^2\psi|_0
\sim-\frac{r_h}{\ell^2\sqrt\delta}H_0\,v.
$$

The conservation law is exact. Linear growth is conditional on late-time settling, which potential positivity does not prove.

## Local use

1. \(M_{\rm ql}(R)\) is a finite-boundary expression whose counterterm convention must be retained.
2. Agreement of area, Einstein-Hilbert density, and Cardy arithmetic is weaker than an integrable CPS first law.
3. The \(\delta\to0\) family shows that pointwise metric convergence need not preserve curvature or charge data.
4. The Aretakis constant follows from the finite horizon jet \(W(0)=W'(0)=0\).

A decisive next benchmark would supply a covariant matter action, derive its \(\theta\) and \(Q_\xi\), and test integrability while varying \(M\) and \(\delta\).

## Verification log

### Checked

- xAct/xCoba reproduced the generic Ricci tensor/scalar, regular-chart throat invariants, Einstein tensor, source, NEC combinations, and Bianchi conservation.
- Mathematica reproduced the signed-root series, determinant and inverse, Christoffels, surface gravity, geodesic limits, scalar potential, wave equation, \(W''(0)\), and Aretakis recursion.
- Mathematica reproduced the reference NEC peak, tail, both quoted integrals with their \(8\pi\) normalization, Brown--York numbers/asymptotics, and Cardy simplification.
- Direct two-dimensional curvature and endpoint asymptotics established the corrected AdS2 radius and limit-point scalar endpoint.

### Failed

- The \(x=+10^{-3}\) opening curvature number uses the \(x<0\) side.
- The AdS2 radius is off by \(\sqrt2\).
- The Wald intermediate contraction is off by two, although the final area value is correct.
- The WEC/SEC conclusions conflict with the negative radial NEC.
- The AdS scalar endpoint is limit-point, not limit-circle.
- The finite-\(R\) “pure AdS” reference wording and smooth-minus-BTZ asymptotic order are imprecise.
- No full source action exists, so only the Einstein-Hilbert Wald contribution is established.

### Blocked

- The archive contains no geodesic or scalar-evolution code and incomplete numerical boundary data. The plotted norm conservation, Aretakis drift, and slope fit were not independently reproduced.
- A full first law, Hamiltonian generator, Euclidean saddle, microscopic state count, maximal extension, and unconditional late-time decay/growth theorem are absent.

