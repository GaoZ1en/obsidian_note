---
paper id: 2608.18199v1
title: Chern insulator boundary criticality
authors:
  - Benjamin Moy
  - Eduardo Fradkin
publication date: 2026-08-18T18:00
abstract: |-
  The paper studies a Chern-insulator transition in a half-space using a regulated Dirac mass wall. A localized chiral edge mode becomes a power-law, bulk-delocalized mode at criticality, while parity-odd current and stress-tensor correlators carry the electromagnetic and gravitational anomaly inflow.
comments: "34+17 pages, 3 figures"
url: https://arxiv.org/abs/2608.18199v1
summary: "A technically strong free-Dirac boundary-criticality calculation whose anomaly kernels are transferable, provided they are not identified with gravitational corner modes or an interacting transport theorem."
tags: []
---

# Direct verdict

Correct under the following precise conditions: a free, properly regulated Dirac transition in a semi-infinite half-space; a step-function mass wall with the exterior mass sent to infinity; the chiral conformal boundary condition inherited from that wall; fixed Euclidean/contact-term conventions; and the thermodynamic limit taken before the critical correlation length is sent to infinity.

Under these conditions the paper establishes that:

- the localized \(1+1\)-dimensional chiral edge mode delocalizes into the \(2+1\)-dimensional critical bulk;
- the boundary propagator retains a chiral projector but has the scaling dimension of the bulk fermion;
- parity-odd current and stress-tensor correlators carry distributional boundary anomalies;
- the free Dirac values are \(k_H=\pm1/2\) and \(k_D=\pm1\), canceling the regulator Chern--Simons variations.

The result is not a gravitational boundary-mode theorem. The “gravitational anomaly” is a background-response statement for a condensed-matter CFT, not a construction of a dynamical gravitational symplectic form or corner charge. The asserted half-quantized thermal Hall conductivity at a gapless critical point should also be read as a universal parity-odd response/contact term; a finite-temperature dc transport theorem with magnetization, disorder, and interacting corrections is not derived.

See [[2026_08_20_overview]] for today's queue.

# Setup and regulator

The long-distance transition between \(C=0\) and \(C=1\) is modeled by

\[
S=\int d^3r\,\bar\psi\,[i\slashed\partial-M(y)]\psi,
\qquad
M(y)=-m_0\Theta(y).
\]

The material occupies \(y<0\), where the critical fermion is massless. The \(y>0\) region is a trivial gapped exterior. A heavy lattice doubler/Pauli--Villars field is essential: the light Dirac cone alone has the parity anomaly and contributes a half-integer Chern--Simons term.

In the limit \(m_0\to\infty\), the half-space field obeys

\[
-\Gamma^y\psi|_{y=0}=\pm\psi|_{y=0},
\qquad
\bar\psi(-\Gamma^y)|_{y=0}=\mp\bar\psi|_{y=0}.
\]

The two signs select opposite chiralities. They are also the conformally invariant self-adjoint boundary conditions used in the paper.

# Fermion propagator and delocalization

## Critical image solution

For \(r_\pm=(\tau-\tau',x-x',y\pm y')\), the Euclidean massless propagator is

\[
S_\pm(r,r')=S_0(r_-)\pm S_0(r_+)\Gamma^y,
\qquad
S_0(r)=\frac{\Gamma^\mu r_\mu}{4\pi|r|^3}.
\]

At \(y=y'=0\), the right-moving choice becomes

\[
S_E(\rho;0,0)
=\frac{\Gamma^+}{4\pi|\rho|x^+}
\sim
\frac{\Gamma^+}{(x^+)^{3/2}(x^-)^{1/2}}.
\]

The chiral projector and asymmetric light-cone powers survive, but the correlator scales as \(|\rho|^{-2}\). Therefore the boundary field has \(\Delta_\psi=1\), equal to the \(2+1\)-dimensional bulk Dirac scaling dimension rather than the \(\Delta=1/2\) of a decoupled \(1+1\)-dimensional chiral fermion.

## Approach from the gapped Chern phase

With

\[
M(y)=m\Theta(-y)-m_0\Theta(y),
\qquad m_0\gg m>0,
\]

the exact propagator contains a bound-state term proportional to \(e^{-m|y+y'|}/x^+\). The localization length is

\[
\xi_{\rm edge}=m^{-1}.
\]

As \(m\to0^+\), \(\xi_{\rm edge}\to\infty\), the exponential profile becomes a power law, and the critical image solution remains.

The order of limits is material. In a strip of width \(L\), opposite boundaries can mix through the delocalized modes; the paper requires \(L\to\infty\) before \(\xi\to\infty\).

# Current-correlator mechanism

For a \(2+1\)-dimensional boundary CFT, define \(v=|r_-|/|r_+|\), the inversion tensor \(I_{\mu\nu}\), and the boundary-covariant vectors \(X_\mu,X'_\mu\). The current two-point function admits

\[
\langle J_\mu(r)J_\nu(r')\rangle
=\frac1{|r_-|^4}
\left[
I_{\mu\nu}F(v)+X_\mu X'_\nu G(v)
+i\varepsilon_{\mu\lambda\sigma}X^\lambda {I^\sigma}_\nu H(v)
\right]
+\frac{i\kappa}{2\pi}\varepsilon_{\mu\nu\lambda}
\partial^\lambda\delta^{(3)}(r_-).
\]

The nonlocal \(H(v)\) term is parity odd and vanishes deep in the bulk. Current conservation requires

\[
v\frac d{dv}[F(v)+G(v)]=2G(v).
\]

For the free Dirac wall,

\[
F(v)=\frac{1+v^4}{8\pi^2},
\quad
G(v)=-\frac{v^4}{4\pi^2},
\quad
H(v)=\pm\frac{v^2}{4\pi^2},
\quad
\kappa=0.
\]

Only the matching chiral boundary current survives:

\[
\langle J_+(r)J_+(0)\rangle_{y=0}
=-\frac1{4\pi^2|\rho|^2(x^+)^2}.
\]

# Electromagnetic anomaly inflow

The distributional boundary limit of the parity-odd correlator is controlled by

\[
k_H=2\pi^2\int_0^1\frac{dv}{v^4}
\left[(1+v^2)\operatorname{arctanh}v-v\right]H(v).
\]

For the free functions,

\[
k_H=\pm\frac12.
\]

With the right-moving boundary condition,

\[
\langle J_y(r)J_\nu(r')\rangle_{y\to0^-}
=-\frac{i}{8\pi}\varepsilon^{y\nu a}\partial_a
\delta^{(2)}(\rho-\rho')\,\delta_-(y').
\]

Multiplying the matter kernel by \(\Theta(-y)\) produces a boundary divergence. Its gauge variation cancels the variation of the level-\(1/2\) Chern--Simons response selected by the heavy doubler. The full response is gauge invariant even though neither piece is separately invariant.

The split between the local contact coefficient \(\kappa\) and the regulator Chern--Simons term is scheme dependent up to allowed integer counterterms. The full anomaly cancellation and fractional parity-anomaly class are the invariant statements.

# Stress-tensor and gravitational response

Residual boundary conformal symmetry permits two parity-odd tensor structures summarized by one function \(D(v)\). Conservation fixes

\[
Q_1=3D-vD',
\qquad
Q_2=D+vD'.
\]

For the free Dirac wall,

\[
\begin{aligned}
A(v)&=\frac{3v^6}{4\pi^2},
&
B(v)&=-\frac{3v^6}{16\pi^2},\\
C(v)&=\frac{3(1+v^6)}{16\pi^2},
&
D(v)&=\pm\frac{3v^2(1-v^2)}{64\pi^2}.
\end{aligned}
\]

The distributional gravitational anomaly coefficient is

\[
k_D=8\pi^2\int_0^1\frac{dv}{v^6}
\left[
\frac{4v^3}{1-v^2}
-3(1-v^2)((1+v^2)\operatorname{arctanh}v-v)
\right]D(v),
\]

which yields

\[
k_D=\pm1.
\]

For the right-moving wall, the matter variation cancels the level-one gravitational Chern--Simons variation of the heavy regulator. This is a background linearized-diffeomorphism anomaly calculation with \(\xi_y|_{y=0}=0\).

# Higher-Chern and \(3+1\)-dimensional extensions

For a transition \(C=k\to k+\Delta k\), the construction gives \(k\) localized and \(\Delta k\) delocalized right-moving modes in its simplest realization. Anomaly matching constrains

\[
C_{\rm crit}
=N^R_{\rm loc}-N^L_{\rm loc}
+\frac12(N^R_{\rm deloc}-N^L_{\rm deloc}),
\]

but does not uniquely select the boundary state.

For the \(3+1\)-dimensional topological-insulator transition, the critical surface propagator inherits the bulk \(3+1\)-dimensional scaling dimension. Its current correlator is parity and time-reversal even, so the chiral anomaly mechanism of the Chern-insulator example is absent.

# Verification record

## Checked

- **Verified:** the official 51-page PDF and complete 1,704-line TeX source with its figures were retrieved. Seven representative pages across the main text and appendices were rendered.
- **Verified:** Mathematica returned zero residuals for the current Ward constraint and all three even/odd stress-tensor conservation constraints using the paper's free-Dirac functions.
- **Verified:** Mathematica evaluated the anomaly integrals exactly as \(k_H=\pm1/2\) and \(k_D=\pm1\).
- **Verified:** the boundary values \(2B(1)+C(1)=0\) and \(D(1)=0\), which make the ordinary boundary limit vanish before the distributional contact term is extracted.
- **Verified:** the image propagator has the claimed boundary scaling \(|\rho|^{-2}\), hence \(\Delta_\psi=1\).

## Source-derived

- **Source-derived:** the finite-\(m_0\) scattering basis, exact finite-\(m\) propagator, and its decomposition into scattering and bound-state contributions.
- **Source-derived:** the detailed distributional test-function derivations of the \(k_H\) and \(k_D\) contact terms.
- **Source-derived:** the \(3+1\)-dimensional domain-wall extension.

## Not independently verified

- **Not verified:** completeness and normalization of every finite-\(m_0\) eigenfunction in Appendices A, B, and E.
- **Not verified:** every component of the Wick-contracted current and stress-tensor correlators; the reduced Ward identities and anomaly integrals were checked.
- **Not verified:** a nonperturbative interacting boundary CFT realizing the general \(H(v)\) or \(D(v)\) structures.
- **Not verified:** finite-temperature dc thermal Hall transport at criticality, including energy magnetization, disorder, finite-size effects, and order-of-limits issues.

## Failed

- **Failed:** no central free-Dirac identity tested here failed.

# Assumptions and transfer boundary

- **Assumptions:** Euclidean half-space, flat boundary, conserved \(U(1)\) current, and the source's contact-term conventions.
- **Assumptions:** the heavy doubler is chosen so the exterior \(y>0\) phase is trivial.
- **Assumptions:** the thermodynamic limit precedes the critical limit.
- `T1-boundary`: the useful object is the boundary-distribution limit of a bulk correlator, not an autonomous boundary Hilbert space.
- `T3-math`: the \(v\)-dependent tensor basis and anomaly kernels are reusable bCFT technology.
- `A-big-name`: Eduardo Fradkin's author signal is noted separately and did not determine the priority.
- The electromagnetic and gravitational anomaly coefficients are not covariant-phase-space charges. No presymplectic potential, corner symplectic form, or Hamiltonian integrability condition appears.

# Blocked

- No official retrieval failed: abstract, 51-page PDF, complete TeX, and all three figures were available.
- The source supplies analytic derivations but no symbolic notebook. The full component Wick contractions would require reconstructing a substantial custom tensor-algebra calculation.
- Testing the transport interpretation is blocked by the absence of a finite-temperature Kubo calculation with magnetization subtraction and explicit regulator/order-of-limits control.

# Bottom line

This is a strong boundary-criticality paper. Its most reusable result is that anomaly matching at a gapless boundary need not be carried by a sharply localized edge theory: a parity-odd bulk correlator can develop a distributional boundary limit with the required anomaly coefficient. For current gravity work, that mechanism is an analogy and a calculational template, not evidence that gravitational corner modes behave identically.
