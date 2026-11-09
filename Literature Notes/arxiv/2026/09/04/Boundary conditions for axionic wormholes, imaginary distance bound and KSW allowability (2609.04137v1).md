---
paper id: 2609.04137v1
title: Boundary conditions for axionic wormholes, imaginary distance bound and KSW allowability
authors:
  - Shubhashis Mallik
  - Neha
  - Gaurav Narain
publication date: 2026-09-03T17:31:53
abstract: |-
  The paper studies four-dimensional axionic wormholes in a Lorentzian minisuperspace path integral, comparing dual scalar-axion and three-form-flux descriptions under Dirichlet and mixed Neumann metric boundary conditions. It combines an exact Dirichlet fixed-flux amplitude, saddle and Picard-Lefschetz analysis, a semiclassical flux-sector sum, and a weak KSW allowability test to relate contour relevance, the imaginary distance bound, and a one-parameter family interpolating between half and complete wormholes.
comments: "v1: 1+42 pages, 15 figures, 2 tables, 6 appendices"
url: https://arxiv.org/abs/2609.04137v1
summary: "The minisuperspace boundary-condition analysis is coherent and several formulas check, but contour irrelevance, semiclassical flux-sum convergence, and weak KSW compatibility are distinct claims and do not prove a contour-independent wormhole theorem."
tags: []
---

Daily overview: [[2026_09_04_overview]]

# Verdict

**Correct under the following precise conditions:** the geometry is restricted to the homogeneous minisuperspace ansatz, the lapse contour is the positive real Lorentzian half-line with the paper's physical lift and small convergence rotation, the configuration space is restricted to $q(t)>0$, the Dirichlet inverse-square path integral uses the stated analytically continued Feynman prescription, and the Neumann/flux-sum conclusions are read semiclassically after the stated asymptotically flat subtraction and branch choices.

Within that domain, the scalar/three-form Fourier duality, the Dirichlet fixed-flux kernel, the same-side/cross-throat saddle classification, and the interpolating convergence bound are internally consistent. Mathematica reproduces the mixed-boundary saddle constraints, the GS Hamiltonian constraint, the phase entering the flux sum, and the boundary of the weak-KSW exclusion region.

**The statement should be rewritten as:** the paper shows compatibility between the interpolating imaginary-distance bound and a necessary spatial KSW condition on the physical sheet. It does not prove that the full KSW criterion is equivalent to the IDB, nor that the bound follows from a saddle contributing to the chosen Lorentzian contour. In fact, the cross-throat imaginary-wormhole saddle has zero intersection number for that contour.

Reason codes: `T1-boundary`, `T2-dS-BH-holography`, `T2-model`.

# Logical Separation of the Three Claims

The paper studies three related but non-identical questions:

1. **Variational/dual description:** which metric and matter boundary terms make the axion and fixed three-form flux formulations Fourier dual?
2. **Contour relevance:** which saddles have nonzero Picard--Lefschetz intersection number for the chosen real positive lapse contour?
3. **Allowability/convergence:** for which complex boundary data does the fixed-flux sum converge, and which complex metrics pass a KSW test?

The main useful result is that these answers are compatible in the minisuperspace model. They should not be collapsed into one statement. A saddle may determine the exponential scale appearing in an IDB while still being irrelevant to the specified contour.

# Source Map

1. **§1 Introduction:** defines the contour question and distinguishes existence, PL relevance, and KSW allowability.
2. **§2 Duality and boundary condition:** performs the homogeneous axion Gaussian integral and Fourier transform to fixed flux for generic metric boundary data.
3. **§3 Dirichlet metric condition:**
   - evaluates the fixed-flux amplitude exactly for the chosen inverse-square prescription;
   - classifies same-side and cross-throat GS segments;
   - performs PL analysis in a covering plane;
   - takes the asymptotically flat limit and identifies the $N_{--}$ action with the imaginary-wormhole scale;
   - repeats the saddle analysis in the scalar frame.
4. **§4 Mixed Neumann--Dirichlet metric condition:**
   - imposes $\dot q(0)/N_c=\alpha$ and $q(1)=q_1$;
   - finds a one-parameter family of GS segments;
   - derives the Euclidean range $\alpha=\pm i|\alpha|$, $0\leq|\alpha|\leq2$;
   - derives the flux-sum convergence bound;
   - compares PL-relevant saddles across the dual frames.
5. **§5 KSW:** derives a weak spatial exclusion test, maps the excluded $\alpha$ region, and recovers the same interpolating inequality on the Euclidean branch.
6. **§6 Conclusion:** summarizes the minisuperspace result and lists AdS, axion--dilaton, contour selection, and full KSW analysis as open.
7. **Appendices:** check stress-tensor duality, derive the exact kernel, recover the GS metric from Neumann saddles, analyze singular contour lifts, scaling, and the weak-KSW exclusion inequality.

# Minisuperspace and Matter Polarization

The metric ansatz is

$$\begin{align}
ds^2=-\frac{N_c^2}{q(t)}dt^2+q(t)d\Omega_3^2, \qquad t\in[0,1].
\end{align}$$

The matter duality relates a compact axion $\theta$ to a two-form potential with three-form flux $H=dB$:

$$\begin{align}
\frac1{2f_\theta^2}
\int\sqrt{-g}\,(\partial\theta)^2 \quad\longleftrightarrow\quad \frac1{2\cdot3!f_h^2}
\int\sqrt{-g}\,H^2,
\end{align}$$

with

$$\begin{align}
f_\theta=f_h^{-1}.
\end{align}$$

The dual polarization fixes Dirichlet data for the axion and Neumann/fixed-flux data for the three-form. With

$$\begin{align}
\theta(0)=0, \qquad \theta(1)=\Delta\theta,
\end{align}$$

the homogeneous axion integral is Gaussian. Its determinant cancels the determinant generated by the Fourier transform over $\Delta\theta$, yielding

$$\begin{align}
Z_n[\mathrm{Bd}_q(0),\mathrm{Bd}_q(1)] =\int_{-\infty}^{\infty}d(\Delta\theta)\, e^{in\Delta\theta} Z_{\mathrm{axion}} [\mathrm{Bd}_q(0),\mathrm{Bd}_q(1);\Delta\theta].
\end{align}$$

This finite-dimensional homogeneous-mode identity is independent of whether the metric boundary condition is Dirichlet or Neumann. Extending it to the full inhomogeneous quantum gravity path integral would require gauge fixing, ghost determinants, nonzero modes, and a definition of both gravitational contours; those are outside the paper.

# Dirichlet Fixed-Flux Amplitude

With

$$\begin{align}
q(0)=q_0, \qquad q(1)=q_1,
\end{align}$$

and the GHY term chosen for metric Dirichlet data, the action becomes

$$\begin{align}
S_{3\text{-form}} =2\pi^2\int_0^1dt \left[ 3N_c-\frac{3\dot q^2}{4N_c} -\frac{n^2N_c}{8\pi^4q^2} \right].
\end{align}$$

For the analytically continued radial kernel on $q>0$, the exact amplitude is, up to overall normalization,

$$\begin{align}
Z_n[q_0,q_1] =\frac{\sqrt{q_0q_1}}{\hbar}
I_\nu\left(\frac{6\pi^2q_<}{\hbar}\right)
K_\nu\left(\frac{6\pi^2q_>}{\hbar}\right),
\end{align}$$

$$\begin{align}
\nu=\sqrt{\frac14-\frac{3n^2}{2\hbar^2}}.
\end{align}$$

This “exact” statement is prescription-dependent. The inverse-square Hamiltonian is attractive and singular at $q=0$; the paper deliberately chooses a non-self-adjoint Feynman prescription. Other self-adjoint extensions change the $I/K$ combination and prefactors, although the authors argue that they introduce no new semiclassical exponential scale. Therefore the exact kernel is not a universal boundary-independent amplitude.

# Dirichlet Saddle Geometry and Contour

Define

$$\begin{align}
\widetilde n=\frac{|n|}{2\pi^2\sqrt6}.
\end{align}$$

The lapse saddles are

$$\begin{align}
N_{\epsilon_1,\epsilon_2} =\frac i2 \left[ \epsilon_1\sqrt{q_0^2-\widetilde n^2} +\epsilon_2\sqrt{q_1^2-\widetilde n^2} \right].
\end{align}$$

At the saddles, the local metric is

$$\begin{align}
ds^2=\frac{da^2} {1-(a_{\mathrm{th}}/a)^4} +a^2d\Omega_3^2, \qquad a_{\mathrm{th}}^2=\widetilde n.
\end{align}$$

The sign product classifies the represented segment:

$$\begin{align}
\epsilon_1\epsilon_2=-1 \quad\Rightarrow\quad \text{same-side},
\end{align}$$

$$\begin{align}
\epsilon_1\epsilon_2=+1 \quad\Rightarrow\quad \text{cross-throat}.
\end{align}$$

For $N_c\in(0,\infty)$, lifted to the selected covering sheet and with the paper's small complex rotation of $G$, the plotted ascent cycles of the cross-throat saddles do not meet the contour. The resulting intersection number is zero.

This is a contour-dependent PL result. The paper tests the half-line and simple extensions around the singularity, but it does not classify every admissible gravitational integration cycle. Its own conclusion correctly leaves fundamental contour selection open.

# Imaginary-Wormhole Scale and Relevance

After taking both boundaries asymptotically far and subtracting the flat-space divergence, the $N_{--}$ cross-throat action gives

$$\begin{align}
iS[N_{--}]_{\mathrm{ren}} =-\sqrt{\frac32}\pi|n|.
\end{align}$$

This is the exponential scale associated with the complete imaginary wormhole. The crucial contour statement is

$$\begin{align}
n_{N_{--}}=0
\end{align}$$

for the chosen Lorentzian contour. Hence this saddle does not contribute even though its renormalized action reproduces the IDB scale.

The exact Bessel amplitude supports the absence of the exponentially growing unrenormalized $N_{--}$ saddle contribution. Its exponentially improved expansion also contains more than one exponential scale, so the exact formula should not be summarized as “all cross-throat exponential structure is absent.” The paper's narrower claim about the $N_{--}$ intersection number is the safe one.

# Neumann Family

At the initial end impose

$$\begin{align}
\frac{\dot q(0)}{N_c}=\alpha,
\end{align}$$

while fixing $q(1)=q_1$. The required boundary term is the Legendre term

$$\begin{align}
-3\pi^2\alpha q(0).
\end{align}$$

Let $\mathbf r=q(0)$. The saddle data are

$$\begin{align}
\mathbf r_\rho =\frac{2\rho\widetilde n}{\sqrt{4+\alpha^2}},
\end{align}$$

$$\begin{align}
N_{\rho,\eta} =\frac12\left[ \frac{\rho\widetilde n\alpha}{\sqrt{4+\alpha^2}} +\eta\sqrt{\widetilde n^2-q_1^2} \right], \qquad \rho,\eta=\pm1.
\end{align}$$

Mathematica verifies simultaneously that these expressions satisfy

$$\begin{align}
q(1)^2=q_1^2,
\end{align}$$

$$\begin{align}
\frac{\dot q(0)}{N_c}=\alpha,
\end{align}$$

and the Hamiltonian constraint

$$\begin{align}
\frac{\dot q^2}{4N_c^2} =\frac{\widetilde n^2}{q^2}-1.
\end{align}$$

All three residuals reduce exactly to zero under $\rho^2=\eta^2=1$.

The positive-$\mathbf r$ physical sheet fixes $\rho=+1$. Real Euclidean GS segments require

$$\begin{align}
\alpha=i\epsilon|\alpha|, \qquad 0\leq|\alpha|\leq2.
\end{align}$$

The endpoints have the geometric interpretations

$$\begin{align}
|\alpha|=0: \quad\text{initial boundary at the throat},
\end{align}$$

$$\begin{align}
|\alpha|\to2: \quad\text{complete imaginary-wormhole limit}.
\end{align}$$

For this mixed boundary condition the Neumann path integral is not evaluated exactly. The lapse action, saddle sum, and PL statements are semiclassical.

# Flux-Sum Convergence Bound

Set

$$\begin{align}
\beta=\arccos\frac{|\alpha|}{2}, \qquad 0\leq|\alpha|\leq2.
\end{align}$$

The branch entering the renormalized fixed-flux saddle obeys

$$\begin{align}
\frac{i\sqrt{4-|\alpha|^2}-|\alpha|}{2} =e^{i(\pi-\beta)}.
\end{align}$$

Mathematica verifies this identity exactly. The semiclassical fixed-angle sum is therefore a two-sided geometric series with damping

$$\begin{align}
\exp\left[-\sqrt{\frac32}|n|(\pi-\beta)
ight].
\end{align}$$

Absolute convergence gives

$$\begin{align}
|\operatorname{Im}\Delta\theta| +\sqrt{\frac32}
\arccos\frac{|\alpha|}{2}
<\sqrt{\frac32}\pi.
\end{align}$$

Special cases are

$$\begin{align}
|\alpha|=0: \quad |\operatorname{Im}\Delta\theta|
<\frac12\sqrt{\frac32}\pi,
\end{align}$$

and

$$\begin{align}
|\alpha|=2: \quad |\operatorname{Im}\Delta\theta|
<\sqrt{\frac32}\pi.
\end{align}$$

The inequality is strict: at saturation the two-sided series fails to decay in one charge direction.

This derivation uses the exponentiated renormalized Neumann saddle action $Z_n^\alpha$, not an exact Neumann amplitude. It also intentionally removes the zero PL intersection number when discussing the formal fixed-flux sum. Thus the bound concerns analytic convergence of the sector sum; it is not evidence that the imaginary-wormhole saddle contributes to the chosen contour.

# KSW Audit

For a diagonal complex metric with eigenvalues $\lambda_\mu$, full KSW allowability requires

$$\begin{align}
\sum_\mu|\arg\lambda_\mu|<\pi
\end{align}$$

pointwise along an admissible complex time path. Here

$$\begin{align}
\Sigma(t) =\left|\arg\left(-\frac{N_c^2}{q(t)}\right)\right| +3|\arg q(t)|.
\end{align}$$

The paper often uses the necessary spatial test

$$\begin{align}
3|\arg q(t)|<\pi.
\end{align}$$

Failure of this test proves KSW non-allowability, but passing it does not prove full allowability because the temporal contribution remains.

At the Neumann boundary,

$$\begin{align}
q(0)=\frac{2\widetilde n}{\sqrt{4+\alpha^2}}.
\end{align}$$

For $\alpha=i|\alpha|$ with $|\alpha|>2$, this is purely imaginary, so the spatial argument is $3\pi/2>\pi$ and the saddle is excluded. For generic $\alpha=\alpha_x+i\alpha_y$, the weak exclusion boundary is

$$\begin{align}
\sqrt3|\alpha_y| =|\alpha_x|+2\sqrt{\alpha_x^2+3}.
\end{align}$$

Mathematica reproduces this curve from

$$\begin{align}
|\arg(4+\alpha^2)|=\frac{2\pi}{3}.
\end{align}$$

On the Euclidean branch, the scalar-frame physical-sheet condition $\mathbf r^*>0$ gives

$$\begin{align}
|y|<\pi-\beta, \qquad \Delta\vartheta=iy, \qquad \Delta\vartheta=\sqrt{\frac23}\Delta\theta,
\end{align}$$

and hence reproduces the same flux-sum bound.

This is a strong compatibility check, but it uses:

1. the scalar/three-form duality;
2. restriction to the Euclidean branch;
3. the positive-$q$ physical sheet;
4. a weak spatial KSW condition evaluated at the boundary.

It does not evaluate $\Sigma(t)<\pi$ including the temporal eigenvalue at every point for every candidate history. The paper itself notes that a comprehensive full-complex-saddle KSW study remains open. Therefore “IDB equals KSW” would overstate the result.

# Exact, Semiclassical, and Conditional Ledger

## Exact Within the Selected Minisuperspace Prescription

- homogeneous axion Gaussian integral and Fourier transform;
- cancellation of the homogeneous determinant;
- Dirichlet fixed-flux Bessel kernel for the chosen non-self-adjoint Feynman prescription;
- algebraic saddle geometry and boundary-condition identities.

## Semiclassical/source-derived

- Neumann lapse saddle expansion;
- background-subtracted fixed-flux exponent;
- convergence bound built from the Neumann saddle-sector sum;
- numerical PL plots and intersection assignments after the contour lift and Stokes rotation.

## Conditional

- irrelevance of cross-throat saddles for the specified contour and sheet;
- correspondence of the same exponential scale with the IDB after asymptotic subtraction;
- KSW/IDB compatibility on the Euclidean physical branch;
- persistence of these conclusions beyond minisuperspace, other contours, other inverse-square extensions, or full inhomogeneous gravity.

# Verification Record

**Verified:** complete 43-page PDF and TeX source inspected; PDF pages 7, 21, 30, and 31 rendered and visually checked; Mathematica checked the Neumann initial and final boundary conditions, the GS Hamiltonian constraint, the flux-sum phase identity, and the generic weak-KSW boundary curve, all with zero residual.

**Assumptions:** $q(t)>0$ on the physical Lorentzian configuration space; stated branches of square roots and logarithms; positive-real lapse contour with the specified lift/rotation; asymptotically flat subtraction independent of lapse; reciprocal axion/three-form couplings and integer flux; semiclassical dominance for the Neumann sector sum.

**Not verified:** functional measures and nonzero-mode determinants; the exact Bessel kernel by an independent path-integral derivation; every PL flow and intersection number numerically; the claimed insensitivity to all self-adjoint extensions; full KSW allowability including temporal arguments along a complete complex time path; any contour-independent classification; any inhomogeneous gravitational theorem.

# Questions for Reuse

1. Can the mixed Neumann problem be evaluated exactly, or at least can its saddle sum be compared with a controlled numerical lapse integral?
2. Does a self-adjoint inverse-square extension ever change the coefficient relevant to the fixed-flux convergence strip, even if it introduces no new exponent?
3. Can the PL intersection number be derived analytically from relative homology rather than inferred mainly from flow plots?
4. Which principle selects the physical gravitational contour before the saddle analysis?
5. Does the full KSW sum, including the temporal eigenvalue along an admissible complex time path, reproduce the same interpolating bound?
6. How do these boundary-condition and contour distinctions change in asymptotically AdS or axion--dilaton wormholes?
