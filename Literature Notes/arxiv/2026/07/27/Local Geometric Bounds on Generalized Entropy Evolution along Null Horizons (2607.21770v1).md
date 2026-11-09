---
paper id: 2607.21770v1
title: Local Geometric Bounds on Generalized Entropy Evolution along Null Horizons
authors:
  - Erik Bertram
publication date: 2026-07-23T19:35
abstract: |-
  The paper combines null Raychaudhuri evolution, a generator-wise ultralocal approximation to QNEC, and the semiclassical Einstein equation to derive a local upper bound on the derivative of generalized expansion. It then proposes consequences for QFC compatibility, quantum extremal surfaces, generator separation, dynamical horizons, relaxation, and scrambling. The central algebraic chain is correct under its explicit ultralocal assumptions, but several downstream necessity, horizon, affine-time, and stability claims fail independent checks.
comments: "17 pages, published in Physical Review D"
url: https://arxiv.org/abs/2607.21770v1
summary: "A conditional local generalized-entropy inequality with a valid core and a substantial audit trail of failed downstream claims."
tags: []
---

Back to [[2026_07_27_overview]].

The paper's reliable result is

$$\begin{align}
\boxed{ \mathcal L_k\Theta \le -\theta\Theta +\frac12\theta^2 -\sigma^2
}
\tag{42}
\end{align}$$

under a four-dimensional, affine, twist-free null-congruence setup, a generator-wise ultralocal replacement of the entropy Hessian, local QNEC, and the pointwise semiclassical Einstein equation. The central chain and its inverse rewriting have zero Mathematica residuals. The paper's later QFC/QES necessity claims, several horizon applications, the Jacobi derivation, and most relaxation/time-scale interpretations are not established and in several cases are explicitly false.

## Where Each Part of the Source Enters

| Source location | Technical object | Status in this note |
| --- | --- | --- |
| Sec. I | Motivation from QFC, QNEC, QES, horizon entropy, and chaos | Context only |
| Sec. II.A | $k^a,\lambda,\gamma_{ab},B_{ab},\theta,\sigma_{ab},\omega_{ab}$ | Definitions reconstructed |
| Sec. II.B--C | Raychaudhuri, area transport, and second area variation | Checked |
| Sec. II.D | Functional entropy deformation and diagonal ultralocal kernel | Decisive assumption; blocked as a QFT claim |
| Sec. II.E--F | Generalized entropy, Einstein cancellation, and $\Theta$ | Checked |
| Sec. II.G | Inverse stress-tensor bound | Checked; equivalent to QNEC |
| Sec. II.H | Claimed necessary QFC compatibility condition | Failed |
| Sec. II.I | One-direction extremality and claimed shear stability condition | First variation correct; necessity/stability claim failed |
| Sec. II.J | Classical/quantum analogy | Heuristic |
| Sec. III.A--B | Deviation vector, squared separation, and affine instability exponent | Double-counting failure; corrected weaker bound recorded |
| Sec. III.C | Common shear control of entropy and separation | Structural comparison only |
| Sec. IV.A | Rindler vacuum | Stationary geometry checked; QNEC saturation blocked |
| Sec. IV.B | Schwarzschild and de Sitter | Schwarzschild checked; de Sitter claim failed |
| Sec. IV.C | Ingoing Vaidya | Metric quantities checked; affine and horizon interpretation failed |
| Sec. IV.D | Linear stability and relaxation | Sign, perturbative order, and shear dynamics failed |
| Sec. V | Summary, limitations, QFC/GSL/membrane discussion, outlook | Scope and heuristic claims separated |
| App. A | Saturated dynamics and fixed points | Correct only for stated constant-coefficient/sign conditions |
| App. B | Shear-dominated relaxation | Claimed implication failed |
| App. C | Linear stability | Actually quadratic in shear; stability inference failed |
| App. D | Physical timescales | Affine/Killing relation and dimensions failed |
| App. E | Scrambling | Factor two failed; physical identification blocked |
| App. F | Near-horizon shear and surface gravity | Stationary geometry checked; proposed scaling blocked |
| App. G | Hydrodynamic analogy | Algebraic sign pattern checked; physical identification blocked |

## Null Optical Data and Conventions

The generator is future null and affinely parameterized:

$$\begin{align}
k^a=\frac{dx^a}{d\lambda}, \qquad k^b\nabla_bk^a=0. \tag{1}
\end{align}$$

On a two-dimensional transverse cut with metric $\gamma_{ab}$, the projected optical tensor is

$$\begin{align}
B_{ab} =\frac12\theta\gamma_{ab} +\sigma_{ab} +\omega_{ab}. \tag{2}
\end{align}$$

The paper restricts to hypersurface-orthogonal generators, $\omega_{ab}=0$, and uses

$$\begin{align}
\sigma^2:=\sigma_{ab}\sigma^{ab}
\end{align}$$

without a factor $1/2$. Its curvature convention is fixed operationally by

$$\begin{align}
\mathcal L_k\theta =-\frac12\theta^2-\sigma^2-R_{kk}. \tag{3}
\end{align}$$

The local cut element obeys

$$\begin{align}
\mathcal L_k dA=\theta\,dA. \tag{18}
\end{align}$$

The entropy conventions are

$$\begin{align}
S_{\mathrm{BH}}=\frac A4, \qquad S_{\mathrm{gen}} =S_{\mathrm{BH}}+S_{\mathrm{matter}},
\end{align}$$

with $G=\hbar=c=k_B=1$. Restoring constants would replace $A/4$ by $A/(4G\hbar)$.

The paper's generalized expansion is

$$\begin{align}
\Theta := \frac4{dA}\mathcal L_kdS_{\mathrm{gen}}. \tag{38}
\end{align}$$

This $\Theta$ is not the null extrinsic-curvature tensor often denoted $\Theta_{AB}$ in null-boundary work.

Under a constant affine rescaling

$$\begin{align}
\lambda\mapsto a\lambda, \qquad k\mapsto a^{-1}k,
\end{align}$$

the quantities $\theta,\sigma_{ab},\Theta$ have weight $-1$, while $\sigma^2,R_{kk},T_{kk}$ have weight $-2$. The checked central inequality is covariant under this rescaling.

## From Cut Area to Generalized Entropy

Differentiating Eq. (18) and inserting Raychaudhuri gives

$$\begin{align}
\frac1{dA}\mathcal L_k^2dA = \frac12\theta^2-\sigma^2-R_{kk}. \tag{21}
\end{align}$$

Therefore

$$\begin{align}
\frac1{dA}\mathcal L_k^2dS_{\mathrm{BH}} = \frac14 \left( \frac12\theta^2-\sigma^2-R_{kk} \right). \tag{25}
\end{align}$$

In a $D$-dimensional spacetime, with screen dimension $n=D-2$, the checked generalization is

$$\begin{align}
\frac1{dA}\mathcal L_k^2dA = \frac{n-1}{n}\theta^2-\sigma^2-R_{kk}.
\end{align}$$

The coefficient $1/2$ in the paper is specifically the $n=2$ case.

## The Ultralocal Entropy Hessian Is the Nonstandard Input

The matter entropy is a nonlocal functional $S_{\mathrm{matter}}[X(y)]$ of a null deformation of the cut. Its second functional derivative is generally bilocal in the transverse coordinates. The paper assumes that the diagonal contact term dominates:

$$\begin{align}
\frac{\delta^2S_{\mathrm{matter}}} {\delta X(y)\delta X(y')} \approx \delta(y-y') \frac{d^2S_{\mathrm{matter}}}{d\lambda^2}. \tag{27--28}
\end{align}$$

This converts QNEC into the generator-wise inequality

$$\begin{align}
\frac1{dA}\mathcal L_k^2dS_{\mathrm{matter}} \le 2\pi\langle T_{kk}\rangle_{\mathrm{ren}}. \tag{29}
\end{align}$$

The local semiclassical Einstein equation gives

$$\begin{align}
R_{kk}=8\pi\langle T_{kk}\rangle_{\mathrm{ren}}. \tag{33}
\end{align}$$

Adding the area and matter variations cancels the curvature/stress terms:

$$
\begin{aligned}
\frac1{dA}\mathcal L_k^2dS_{\mathrm{gen}}
&\le
\frac14
\left(
\frac12\theta^2-\sigma^2-R_{kk}
\right)
+2\pi T_{kk}
\\
&=
\frac14
\left(
\frac12\theta^2-\sigma^2
\right).
\end{aligned}
\tag{31--37}
$$

The cancellation is exact once Eqs. (29) and (33) are assumed. It does not prove the ultralocal reduction or the pointwise semiclassical equation.

## The Moving Denominator Produces $-\theta\Theta$

Differentiating Eq. (38) requires differentiating $1/dA$:

$$\begin{align}
\mathcal L_k\Theta = \frac4{dA}\mathcal L_k^2dS_{\mathrm{gen}} -\theta\Theta. \tag{41}
\end{align}$$

Substitution of Eq. (37) gives the main result:

$$\begin{align}
\mathcal L_k\Theta \le -\theta\Theta +\frac12\theta^2 -\sigma^2. \tag{42}
\end{align}$$

For a general $n=D-2$ dimensional screen, the same checked algebra yields

$$\begin{align}
\mathcal L_k\Theta \le -\theta\Theta +\frac{n-1}{n}\theta^2 -\sigma^2.
\end{align}$$

The correct integrated comparison statement is

$$\begin{align}
\Theta(\lambda) \le e^{-\int_0^\lambda\theta(u)\,du} \left[ \Theta(0) + \int_0^\lambda e^{\int_0^s\theta(u)\,du} \left( \frac12\theta(s)^2-\sigma(s)^2 \right)ds \right].
\end{align}$$

This is an upper envelope. It does not turn the inequality into an evolution equation.

## The “Inverse Bound” Is QNEC in New Variables

Before imposing Eq. (33), the source rearranges the combined entropy inequality:

$$\begin{align}
2\pi T_{kk} \ge \frac1{dA}\mathcal L_k^2dS_{\mathrm{gen}} -\frac14 \left( \frac12\theta^2-\sigma^2-R_{kk} \right). \tag{48}
\end{align}$$

Using Raychaudhuri to eliminate $R_{kk}$,

$$\begin{align}
2\pi T_{kk} \ge \frac1{dA}\mathcal L_k^2dS_{\mathrm{gen}} -\frac14 \left( \theta^2+\mathcal L_k\theta \right). \tag{50}
\end{align}$$

Define the matter or “quantum” contribution

$$\begin{align}
\Theta_q := \Theta-\theta = \frac4{dA}\mathcal L_kdS_{\mathrm{matter}}. \tag{53}
\end{align}$$

Then

$$\begin{align}
\boxed{ 8\pi T_{kk} \ge \mathcal L_k\Theta_q+\theta\Theta_q
}.
\tag{54}
\end{align}$$

Independent algebra gives

$$\begin{align}
\mathcal L_k\Theta_q+\theta\Theta_q = \frac4{dA} \mathcal L_k^2dS_{\mathrm{matter}}.
\end{align}$$

Equation (54) is therefore precisely Eq. (29) multiplied by four and rewritten. It is not a new energy condition.

## QFC Compatibility: Sufficient Is Not Necessary

The paper combines

$$\begin{align}
\Theta'\le -\theta\Theta+\frac12\theta^2-\sigma^2
\end{align}$$

with the QFC demand

$$\begin{align}
\Theta'\le0
\end{align}$$

and calls

$$\begin{align}
\frac12\theta^2-\theta\Theta\le\sigma^2 \tag{57}
\end{align}$$

a necessary compatibility condition. That inference is invalid. Requiring the upper bound itself to be nonpositive is sufficient for Eq. (42) alone to enforce QFC, but an actual $\Theta'$ may be negative even when the upper bound is positive.

An explicit checked counterexample is

$$\begin{align}
\theta=1, \qquad \sigma^2=0, \qquad \Theta=0, \qquad \Theta'=-1.
\end{align}$$

Then

$$\begin{align}
-1\le\frac12, \qquad -1\le0,
\end{align}$$

so Eq. (42) and QFC both hold, while Eq. (57) fails.

## One Null Variation Is Not a QES Stability Operator

The one-direction stationary condition

$$\begin{align}
\Theta_k=0 \tag{62}
\end{align}$$

is equivalent to

$$\begin{align}
\theta_k = -\frac4{dA} \mathcal L_kdS_{\mathrm{matter}}. \tag{66}
\end{align}$$

This first-variation balance is correct. A full codimension-two QES normally requires stationarity under both independent null normals.

The paper evaluates the failed Eq. (57) at $\Theta=0$ and obtains

$$\begin{align}
\sigma^2\ge\frac12\theta^2. \tag{67}
\end{align}$$

The counterexample above already has $\Theta=0$ and violates Eq. (67), while satisfying Eq. (42) and QFC. Moreover, local QES stability is controlled by the generalized-entropy Hessian or quantum stability operator, which the paper does not compute. Equation (67) is neither a necessary QES condition nor a stability theorem.

## Squared Generator Separation and the Factor Problem

For a transverse connecting vector $\xi^a$, the source uses

$$\begin{align}
\frac{D\xi^a}{d\lambda} =B^a{}_b\xi^b \tag{68}
\end{align}$$

and defines

$$\begin{align}
X=\gamma_{ab}\xi^a\xi^b.
\end{align}$$

There are two consistent ways to differentiate $X$:

1. In a parallel screen frame, metric compatibility gives

$$\begin{align}
X'=2B_{ab}\xi^a\xi^b.
\end{align}$$

2. For Lie-dragged coordinate components, use

$$\begin{align}
\mathcal L_k\gamma_{ab}=2B_{ab}
\end{align}$$

   and again obtain the same result.

The source uses both $D\xi/d\lambda=B\xi$ and $\mathcal L_k\gamma=2B$. Its displayed intermediate terms therefore sum to

$$\begin{align}
X'=4B_{ab}\xi^a\xi^b,
\end{align}$$

but Eq. (77) states $2B_{ab}\xi^a\xi^b$. The factor cannot be absorbed because $B_{ab}$ and $X$ have already been defined.

Taking the correct $2B$ result,

$$\begin{align}
X' = \theta X +2\sigma_{ab}\xi^a\xi^b. \tag{78}
\end{align}$$

For a two-dimensional trace-free shear,

$$
\sigma=
\begin{pmatrix}
s&t\\
t&-s
\end{pmatrix},
\qquad
\sigma^2=2(s^2+t^2),
$$

so

$$\begin{align}
\|\sigma\|_{\mathrm{op}} = \sqrt{\frac{\sigma^2}{2}}.
\end{align}$$

The paper's estimate

$$\begin{align}
|\sigma_{ab}\xi^a\xi^b| \le\sqrt{\sigma^2}\,X \tag{79}
\end{align}$$

is valid but not sharp. The sharp two-dimensional estimate gives

$$\begin{align}
\lambda_L^{\mathrm{eff}} \le \frac12\langle\theta\rangle +\frac1{\sqrt2} \left\langle\sqrt{\sigma^2}\right\rangle,
\end{align}$$

provided $X>0$, the congruence has no finite-affine caustic, and the long-time averages exist. The paper's Eq. (83) is a weaker valid bound if one begins from the corrected Eq. (78); it is not established by the source's double-counted derivation as written.

## Rindler and Schwarzschild Are Stationary Checks

For planar Rindler with affine $k=\partial_v$,

$$\begin{align}
\theta=\sigma=R_{kk}=0.
\end{align}$$

XAct reproduces vanishing Christoffels, affine acceleration, expansion, and shear. The geometric part of the advertised saturation is therefore the trivial stationary case. QNEC saturation still depends on a specified QFT state and null deformation.

For the Schwarzschild Killing horizon, xAct in ingoing Eddington--Finkelstein coordinates gives

$$\begin{align}
\chi^b\nabla_b\chi^a =\frac1{4M}\chi^a, \qquad \theta_\chi=0, \qquad \sigma_\chi=0.
\end{align}$$

The Killing-normalized generator is non-affine, whereas the core derivation assumes an affine $k$. Since both optical scalars vanish, the stationary conclusion remains correct, but the normalizations must not be conflated.

## The De Sitter $3H$ Example Uses the Wrong Congruence

The paper assigns

$$\begin{align}
\theta=3H, \qquad \sigma=0 \tag{96}
\end{align}$$

to a de Sitter cosmological horizon. XAct in static-patch Eddington--Finkelstein coordinates gives, on $r=H^{-1}$,

$$\begin{align}
\mathcal L_\chi\gamma_{AB}=0, \qquad \theta_\chi=0.
\end{align}$$

An affine rescaling of the generator also has zero horizon expansion. In flat FLRW slicing, $3H$ is the expansion of the comoving timelike congruence, while the de Sitter horizon area is constant:

$$\begin{align}
A_{\mathcal H}=\frac{4\pi}{H^2}, \qquad \mathcal L_k\log A_{\mathcal H}=0.
\end{align}$$

Therefore Eqs. (97)--(98), including $9H^2/8$ and $3H/2$, do not describe the null de Sitter Killing horizon.

## Vaidya Requires Non-Affine Raychaudhuri

For ingoing Vaidya,

$$\begin{align}
ds^2 = -f(v,r)dv^2+2\,dv\,dr+r^2d\Omega^2, \qquad f=1-\frac{2M(v)}r,
\end{align}$$

the source chooses

$$\begin{align}
k = \partial_v+\frac f2\partial_r. \tag{101}
\end{align}$$

XAct confirms

$$\begin{align}
g(k,k)=0, \qquad \theta_k =\frac{r-2M(v)}{r^2}, \qquad \sigma_{AB}=0.
\end{align}$$

It also gives

$$\begin{align}
k^b\nabla_bk^a = \frac{M(v)}{r^2}k^a.
\end{align}$$

Thus $v$ is not affine for this generator. The correct Raychaudhuri equation contains the inaffinity:

$$\begin{align}
k(\theta) = \kappa_k\theta -\frac12\theta^2 -R_{kk}, \qquad \kappa_k=\frac{M(v)}{r^2}.
\end{align}$$

The residual of the paper's affine Eq. (104) is

$$\begin{align}
\frac{M(v)[r-2M(v)]}{r^4},
\end{align}$$

which is generically nonzero.

XAct also confirms

$$\begin{align}
R_{vv}=\frac{2\dot M(v)}{r^2}, \qquad T_{vv}=\frac{\dot M(v)}{4\pi r^2}.
\end{align}$$

For the surface

$$\begin{align}
F(v,r)=r-2M(v)=0,
\end{align}$$

the squared norm of its normal is

$$\begin{align}
g^{ab}\nabla_aF\nabla_bF =-4\dot M(v).
\end{align}$$

For accretion, $\dot M>0$, this is a spacelike trapping/dynamical horizon, not a null event horizon, and the outgoing $k$ is not tangent to it.

The near-horizon series itself is correct:

$$\begin{align}
\theta = \frac{\epsilon}{(2M+\epsilon)^2} = \frac{\epsilon}{4M^2} -\frac{\epsilon^2}{4M^3} +O(\epsilon^3).
\end{align}$$

What does not follow is the replacement

$$\begin{align}
\Theta'\le-\theta\Theta+O(\epsilon^2) \quad\longrightarrow\quad \Theta'\approx-\theta\Theta.
\end{align}$$

The exponential damping in Eqs. (113)--(114) requires an additional saturation or near-saturation assumption.

## The Claimed Linear Relaxation Has No Fixed Sign

Set

$$\begin{align}
\theta=a\epsilon, \qquad \sigma^2=b\epsilon^2.
\end{align}$$

Then the checked entropy bound is

$$\begin{align}
\frac1{dA}\mathcal L_k^2dS_{\mathrm{gen}} \le \frac{a^2-2b}{8}\epsilon^2.
\end{align}$$

The sign depends on $a^2-2b$. The paper's Eq. (117),

$$\begin{align}
\frac1{dA}\mathcal L_k^2dS_{\mathrm{gen}} \sim-\frac18\epsilon^2,
\end{align}$$

corresponds to a particular coefficient choice, not to the stated order counting.

Raychaudhuri gives $\dot\theta\sim-\epsilon^2$ only if $R_{kk}$ has no $O(\epsilon)$ term. The paper then imports a timelike shear equation. For a null congruence the linear Sachs equation has the structure

$$\begin{align}
\sigma'_{AB} = -\theta\sigma_{AB} - \left( R_{AkBk} \right)^{\mathrm{TF}}.
\end{align}$$

The vanishing of background Weyl curvature does not remove the linear perturbation $\delta C_{AkBk}$, which can source $\delta\sigma_{AB}$. The claimed return to equilibrium is not proved.

## Saturated Dynamics and the Appendices

For constant $\theta$, constant $\sigma^2$, and saturation of Eq. (42),

$$\begin{align}
\Theta' =-\theta\Theta+\frac12\theta^2-\sigma^2,
\end{align}$$

the fixed point is

$$\begin{align}
\Theta_* = \frac{\frac12\theta^2-\sigma^2}{\theta}, \qquad \theta\ne0.
\end{align}$$

The exponential perturbation in Appendix A is correct under those constant-coefficient assumptions. Its sign classification additionally assumes $\theta>0$; for $\theta<0$, the “shear-dominated” and “expansion-dominated” signs reverse. If $\theta,\sigma$ vary, the omitted term is

$$\begin{align}
\Theta_*' = \frac{\theta'}2 -\frac{(\sigma^2)'}{\theta} +\frac{\sigma^2\theta'}{\theta^2}.
\end{align}$$

Appendix B assumes $|\theta|\ll|\sigma|$ and $\Theta<0$, then infers

$$\begin{align}
\Theta'\le-\sigma_0^2.
\end{align}$$

This does not follow because $-\theta\Theta+\theta^2/2$ may be positive. A sufficient extra condition is

$$\begin{align}
-\theta\Theta+\frac12\theta^2 \le \sigma^2-\sigma_0^2.
\end{align}$$

Appendix C calls the shear effect linear, but about $\sigma_{0AB}=0$,

$$\begin{align}
\delta(\sigma^2) =2\sigma_0^{AB}\delta\sigma_{AB}=0.
\end{align}$$

The first shear contribution is $O(\epsilon^2)$. Moreover, $\delta\Theta'<0$ does not by itself show that $|\delta\Theta|$ decreases toward zero.

## Affine Parameter, Killing Time, and Scrambling

For a Killing generator

$$\begin{align}
\chi^b\nabla_b\chi^a=\kappa\chi^a, \qquad \chi=\partial_t,
\end{align}$$

an affine generator has the form

$$\begin{align}
k=c_0e^{-\kappa t}\chi,
\end{align}$$

and

$$\begin{align}
\lambda = \frac{e^{\kappa t}}{c_0\kappa} +\text{constant}.
\end{align}$$

This is not Appendix D's

$$\begin{align}
\mathcal L_k=\kappa\frac d{dt}.
\end{align}$$

After restoring dimensions, the proposed combinations

$$\begin{align}
\frac{\kappa\Theta}{\sigma^2}, \qquad \frac{\kappa}{\sigma}, \qquad \frac{\kappa}{\lambda_L}
\end{align}$$

are dimensionless, not times.

Appendix E defines

$$\begin{align}
\lambda_L^{\mathrm{eff}} = \limsup_{\lambda\to\infty} \frac1{2\lambda} \log\frac{X(\lambda)}{X(0)}. \tag{82}
\end{align}$$

The compatible growth law is therefore

$$\begin{align}
X\sim e^{2\lambda_L^{\mathrm{eff}}\lambda}, \qquad \sqrt X\sim e^{\lambda_L^{\mathrm{eff}}\lambda}.
\end{align}$$

Equation (E2) omits the factor two for $X$. The further comparison with an OTOC Lyapunov exponent is blocked because the paper does not map affine Jacobi growth to a boundary quantum observable.

In Gaussian-null coordinates,

$$\begin{align}
ds^2 =-2\kappa r\,dv^2 +2\,dv\,dr +q_{AB}dx^Adx^B,
\end{align}$$

xAct confirms $\chi=\partial_v$ has inaffinity $\kappa$ at the horizon. For stationary $q_{AB}$,

$$\begin{align}
\theta=0, \qquad \sigma_{AB}=0.
\end{align}$$

Surface gravity is encoded in the transverse derivative of $g_{vv}$, while shear is encoded in the trace-free part of $\partial_vq_{AB}$. Appendix F's scaling $\sqrt{\sigma^2}=O(\kappa)$ does not follow from the metric ansatz and needs perturbation dynamics and boundary conditions.

Appendix G repeats the checked sign structure of Eq. (37). Its hydrodynamic interpretation is only an analogy: viscous entropy production and the negative shear term in an upper bound on a second generalized-entropy variation are different observables.

## Translation to Null-Boundary CPS

| Paper object | CPS/null-boundary object | Missing step |
| --- | --- | --- |
| $k^a$ | Chosen null evolution field on $\mathcal H$ | Boost/frame dependence must be tracked |
| Affine $\lambda$ | Gauge choice $\kappa_{(k)}=0$ | Non-affine formulations retain $\kappa_{(k)}\theta$ |
| $\gamma_{AB}$ | Cut metric $q_{AB}$ | A second null normal and projector should be explicit |
| $B_{AB}$ | Null extrinsic curvature $\tfrac12\mathcal L_kq_{AB}$ | Screen-transport convention is needed |
| $\theta,\sigma_{AB}$ | Trace and radiative trace-free cut data | No symplectic flux is derived |
| $A/4G$ | Einstein Wald entropy | The source does not construct $Q_\xi$ |
| $S_{\mathrm{matter}}$ | Exterior entanglement entropy | Not a local CPS charge |
| $S_{\mathrm{gen}}$ | Semiclassical entropy functional | Not shown to be a Hamiltonian generator |
| $\Theta$ | Normal shape derivative per area | Not a presymplectic potential |
| $R_{kk}=8\pi T_{kk}$ | Null constraint/evolution equation | Pointwise renormalized form is assumed |
| $\sigma^2$ | Optical radiation datum | No Wald--Zoupas flux or news normalization |
| QES | Two-normal stationarity of $S_{\mathrm{gen}}$ | Only one first variation is used |

The paper contains no presymplectic potential, symplectic current, corner ambiguity, Wald--Zoupas counterterm, Hamiltonian charge, charge algebra, edge mode, or field-dependent generator prescription. Its closest contact with CPS is the null constraint and the Einstein Wald area term.

## Concrete Project Extensions

1. Repeat the derivation with two null normals $k,\ell$, $k\cdot\ell=-1$, explicit boost weights, and non-affinity.
2. Keep the full bilocal generalized-entropy Hessian and isolate only its diagonal/contact contribution when justified.
3. Replace the claimed QES condition with the two-normal quantum stability operator.
4. Reconstruct the Jacobi map in a parallel screen basis and use the exact two-dimensional shear norm.
5. Compute affine optical data for de Sitter and Vaidya before interpreting entropy evolution.
6. Translate the area term to the Einstein Iyer--Wald charge and ask whether the comparison inequality follows from the null constraint plus a genuine CPS flux.
7. Extend the area variation to higher-derivative Wald/Dong/Jacobson--Myers entropy, where the simple Einstein cancellation changes.
8. Test the bound on a shear-bearing perturbed horizon rather than on stationary or spherical examples.

## Verification Log

### Checked

- Mathematica: Eqs. (18), (21), (25), (31)--(42), including the Einstein/QNEC cancellation and the moving-area quotient; all residuals are zero.
- Mathematica: the general screen-dimension coefficient $(n-1)/n$; the $n=2$ residual against Eq. (42) is zero.
- Mathematica: Eqs. (48)--(54); all rearrangement residuals are zero, and Eq. (54) reduces exactly to QNEC.
- Mathematica: affine-rescaling covariance and the integrating-factor envelope.
- Mathematica: the two-dimensional shear spectrum and

$$\begin{align}
\|\sigma\|_{\mathrm{op}}=\sqrt{\sigma^2/2}.
\end{align}$$

- xAct/xCoba: planar Rindler has vanishing affine acceleration, expansion, and shear.
- xAct/xCoba: Schwarzschild Killing-horizon inaffinity $1/(4M)$, expansion $0$, and shear $0$.
- xAct/xCoba: de Sitter static-patch horizon expansion $0$, both before and after affine rescaling.
- xAct/xCoba: for Vaidya, $k^2=0$, $\kappa_k=M/r^2$, $\theta=(r-2M)/r^2$, $\sigma=0$, $R_{vv}=2\dot M/r^2$, and normal norm $-4\dot M$ at $r=2M(v)$.
- Mathematica: the Vaidya near-horizon series, the coefficient $(a^2-2b)\epsilon^2/8$, the Appendix A constant-coefficient solution, the Appendix C perturbative order, the affine/Killing exponential relation, and the Appendix E factor two.
- xAct/xCoba: stationary Gaussian-null data encode surface gravity but give $\theta=\sigma=0$.

### Blocked

- The ultralocal kernel approximation in Eqs. (27)--(29): no QFT, state, regulator, cut, or transverse kernel is specified.
- Independent proof of QNEC for the unspecified matter system.
- The pointwise renormalized semiclassical Einstein equation.
- Rindler QNEC saturation; only its geometry was checked.
- A full QES stability statement, which needs both null normals and the generalized-entropy Hessian.
- The $\lambda\to\infty$ instability exponent without assumptions excluding caustics and guaranteeing long-time averages.
- The proposed $\sqrt{\sigma^2}=O(\kappa)$ scaling and its relation to microscopic chaos.
- The membrane/hydrodynamic interpretation, since no presymplectic flux, membrane stress tensor, or transport coefficient is computed.

### Failed

- Eq. (57) is not necessary for compatibility of Eq. (42) with QFC; the explicit $(\theta,\sigma^2,\Theta,\Theta')=(1,0,0,-1)$ counterexample satisfies both while violating Eq. (57).
- Eq. (67) is neither a necessary QES condition nor a stability criterion; the same counterexample has $\Theta=0$ and violates it.
- Eqs. (70)--(77) double count the optical deformation and give $4B_{ab}\xi^a\xi^b$ before reverting to $2B_{ab}\xi^a\xi^b$.
- The de Sitter assignment $\theta=3H$ and Eqs. (97)--(98) do not apply to the null cosmological horizon.
- Vaidya Eq. (104) omits the non-affine term for the paper's own generator; its residual is $M(r-2M)/r^4$.
- Vaidya Eqs. (113)--(114) replace an upper inequality by a saturated evolution equation without an extra assumption.
- Sec. IV.D fixes a negative $O(\epsilon^2)$ coefficient not determined by the stated scaling, omits possible $O(\epsilon)$ curvature, and imports a timelike shear equation.
- Appendix A's sign classification omits the condition $\theta>0$, and its varying-coefficient treatment omits $\Theta_*'$.
- Appendix B's shear-dominated premise does not imply its integrated damping bound.
- Appendix C has no linear shear term about $\sigma_{0AB}=0$, and a negative derivative does not prove convergence to equilibrium.
- Appendix D uses the wrong affine/Killing-time relation and labels dimensionless ratios as times.
- Appendix E's growth law for the squared distance misses a factor two.
- Appendix F does not derive shear from surface gravity; stationary Gaussian-null data give shear zero.
