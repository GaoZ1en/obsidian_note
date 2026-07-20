---
paper id: hep-th/0112258v3
title: "Multi-Trace Operators, Boundary Conditions, And AdS/CFT Correspondence"
authors: [Edward Witten]
publication date: 2001-12-31T04:21
abstract: "We argue that multi-trace interactions in quantum field theory on the boundary of AdS space can be incorporated in the AdS/CFT correspondence by using a more general boundary condition for the bulk fields than has been considered hitherto. We illustrate the procedure for a renormalizable four-dimensional field theory with a $(\\Tr Φ^2)^2$ interaction. In this example, we show how the AdS fields with the appropriate boundary condition reproduce the renormalization group effects found in the boundary field theory. We also construct in related examples a line of fixed points with a nonperturbative duality, and a flow between two methods of quantization."
comments: "13 pp. Discussion of relevant perturbation added and references expanded"
pdf: "[[Attachments/Assets/Multi-Trace Operators, Boundary Conditions, And AdS CFT Correspondence (hep-th 0112258v3).pdf]]"
url: https://arxiv.org/abs/hep-th/0112258v3
summary: "Multi-trace deformations are encoded holographically by mixed scalar boundary conditions; at large N this reproduces double-trace running, fixed lines, and the flow from alternative to standard quantization."
tags: []
---

# reading verdict

This is a high-priority paper for the present AdS quantization work, with reason codes `T1-boundary`, `T1-symplectic`, `T2-dS-BH-holography`, and `A-big-name`. Its durable statement is not merely that a double-trace coupling changes a scalar boundary condition. It identifies a boundary functional $W$ with a generating function on the asymptotic scalar phase space:

$$\begin{align}
\alpha _{i}(x) & =\frac{\delta W[\beta]}{\delta \beta _{i}(x)}.
\end{align}$$

Thus the CFT deformation selects a Lagrangian submanifold in the boundary data $(\alpha _i,\beta_i)$. This is the part that transfers directly to covariant phase space, Robin/mixed boundary conditions, and alternative quantization.

The paper is also historically important because it makes three consequences visible in one short argument:

1. a marginal double-trace coupling at the BF bound has a logarithmic beta function;
2. two oppositely quantized scalars can give a fixed line with an $f\leftrightarrow 1/f$ duality;
3. a relevant double-trace deformation drives the flow from the $\Delta _-$ quantization to the $\Delta _+$ quantization.

The paper should not be used as a complete modern holographic-renormalization reference. It suppresses the renormalized normalization of the $(\alpha,\beta)$ symplectic pair, does not analyze stability of the mixed boundary conditions, and contains a sign typo in the scalar mass-dimension relation following (3.5).

## efficient reading route

- Essential: (3.5)-(3.9), which state the mixed-boundary-condition prescription.
- Essential application: (4.5)-(4.9), where the logarithmic BF-bound branch reproduces $\mu\,\mathrm{d}f/\mathrm{d}\mu=f^{2}$ in the paper's normalization.
- Essential for alternative quantization: (4.10)-(4.13), including the fixed line, the $f\leftrightarrow 1/f$ map, and the $\Delta _-\to\Delta _+$ flow.
- Conceptual warm-up: section 2, whose matrix-model saddle explains why a nonlinear $W$ enters only through its first derivative at large $N$.
- Optional historical coda: the boundary-state discussion at the end of section 4.

# source structure

The paper has four sections and no appendices.

| Source part | Role in the argument | Main output |
| --- | --- | --- |
| 1. Introduction | fixes large-$N$ normalization and distinguishes single-trace from multi-trace actions | $\mathcal O_\alpha=N^{-1}\operatorname{Tr}F_\alpha$, $I=N^2W(\mathcal O_\alpha)$ |
| 2. Review of the one-matrix model | gives a solvable analogy for a nonlinear multi-trace potential | the effective single-trace couplings are $\partial W/\partial\mathcal O_n$ |
| 3. The AdS/CFT case | derives the boundary variational rule first at finite distance and then transfers it to AdS infinity | $\alpha_i=\delta W/\delta\beta_i$ |
| 4. Four-dimensional double trace | matches the CFT logarithmic divergence to the BF-bound logarithmic branch | $f=f_0/(1+f_0\ln(\Lambda/\mu))$ |
| 4. Fixed line and duality | couples two equal-mass scalars quantized in opposite ways | $\alpha_1=f\beta'_2$, $\alpha'_2=f\beta_1$ and $f\leftrightarrow1/f$ |
| 4. Relevant perturbation | follows a mixed boundary condition to strong coupling | $\alpha=g\beta$ interpolates from $\alpha=0$ to $\beta=0$ |
| 4. Boundary states | interprets a boundary condition as a state selected by a Lagrangian submanifold | formal in Lorentzian AdS, more literal at past/future dS infinity |

# notation and convention dictionary

Witten sets the AdS radius to one and uses the Poincare radial coordinate $r$ with the conformal boundary at $r=0$:

$$\begin{align}
\mathrm{d}s^{2} & =\frac{\mathrm{d}r^{2}+\mathrm{d}x^{i}\mathrm{d}x^{i}}{r^{2}}, & D & =d+1.
\end{align}$$

The corrected scalar indicial relation and the two roots are

$$\begin{align}
m^{2} & =\Delta(\Delta-d), & \Delta _{\pm} & =\frac{d}{2}\pm\nu, & \nu & =\sqrt{\frac{d^{2}}{4}+m^{2}},
\end{align}$$

so the two asymptotic branches can be written as

$$\begin{align}
\phi & =\alpha(x)r^{d-\lambda}+\beta(x)r^{\lambda}, & \{\lambda,d-\lambda\} & =\{\Delta _+,\Delta _-\}.
\end{align}$$

The meaning of the letters changes with the choice of quantization, not just with the exponent:

| Situation | Slow coefficient | Fast coefficient | source | response / expectation value |
| --- | --- | --- | --- | --- |
| section 3, $\lambda=\Delta_+>d/2$ | $\alpha$ multiplying $r^{\Delta_-}$ | $\beta$ multiplying $r^{\Delta_+}$ | $\alpha$ | $\beta$ |
| section 4, $\phi_1$ with operator dimension $\lambda=\Delta_-<d/2$ | $\beta_1$ | $\alpha_1$ | $\alpha_1$ | $\beta_1$ |
| section 4, $\phi_2$ with operator dimension $d-\lambda=\Delta_+$ | $\beta_2=\alpha'_2$ | $\alpha_2=\beta'_2$ | $\alpha'_2$ | $\beta'_2$ |

In the notation of `standard and alternative quantization.md`, section 3 uses

$$\begin{align}
\alpha & \leftrightarrow \psi_-, & \beta & \leftrightarrow \psi_+,
\end{align}$$

while for the alternatively quantized $\phi_1$ in section 4 the source/response roles reverse:

$$\begin{align}
\alpha_1 & \leftrightarrow \psi_+ \quad \text{(source)}, & \beta_1 & \leftrightarrow \psi_- \quad \text{(response)}.
\end{align}$$

This distinction matters when importing $\alpha=\delta W/\delta\beta$: the formula is written in source/response variables, not as a universal statement that the coefficient called $\alpha$ must always multiply the slow branch.

# the large-$N$ saddle turns a multi-trace potential into effective sources

The large-$N$ normalization is

$$\begin{align}
\mathcal O_{\alpha} & =\frac{1}{N}\operatorname{Tr}F_{\alpha}(\Phi_i), & I & =N^{2}W(\mathcal O_{\alpha}). \tag{1.1--1.2}
\end{align}$$

In the one-matrix model,

$$\begin{align}
\mathcal O_n & =\frac{1}{N}\operatorname{Tr}\Phi^n, & \mathcal O_n & =\int_{-\infty}^{\infty}\mathrm{d}x\,x^n\rho(x), & \int\mathrm{d}x\,\rho(x) & =1.
\end{align}$$

After diagonalization, the Vandermonde determinant supplies the logarithmic eigenvalue repulsion. The large-$N$ functional in the exponent is

$$\begin{align}
\mathcal I[\rho] & =W(\mathcal O_n)-\int\mathrm{d}x\,\mathrm{d}x'\, \rho(x)\rho(x')\ln|x-x'|.
\end{align}$$

Varying $\rho$ at fixed normalization gives

$$\begin{align}
0 & =\sum_n x^n\frac{\partial W}{\partial\mathcal O_n} -2\int\mathrm{d}x'\,\ln|x-x'|\rho(x')+t. \tag{2.6}
\end{align}$$

For a single-trace action $W=\sum_n w_n\mathcal O_n$, this is the familiar saddle with $w_n$ in place of $\partial W/\partial\mathcal O_n$. The useful lesson is therefore

$$\begin{align}
w_n^{\mathrm{eff}} & =\frac{\partial W}{\partial\mathcal O_n}.
\end{align}$$

The AdS prescription will be the functional version of precisely this replacement: the asymptotic source is the derivative of $W$ with respect to the response.

# a boundary functional selects a Lagrangian submanifold

Witten first considers a scalar on the half-space $x_1\geq0$ with

$$\begin{align}
I & =\frac12\int_{x_1\geq0}\mathrm{d}^{n}x\,|\mathrm{d}\phi|^{2} +\int_{x_1=0}\mathrm{d}^{n-1}x\,W(\phi,\mathrm{d}\phi,\ldots). \tag{3.1}
\end{align}$$

Because the outward normal to $x_1\geq0$ is $-\partial_{x_1}$, the boundary part of the variation is

$$\begin{align}
\delta I\big|_{x_1=0} & =\int_{x_1=0}\mathrm{d}^{n-1}x\,\delta\phi \left(-\partial_{x_1}\phi+\frac{\delta W}{\delta\phi}\right),
\end{align}$$

and the boundary equation is

$$\begin{align}
p & :=\partial_{x_1}\phi=\frac{\delta W}{\delta\phi}. \tag{3.3}
\end{align}$$

The graph $p=\delta W/\delta\phi$ is Lagrangian. In finite-dimensional notation its pullback of the canonical two-form is

$$\begin{align}
\left.\delta p_i\wedge\delta q^i\right|_{p_i=\partial_iW} & =\partial_j\partial_iW\,\delta q^j\wedge\delta q^i=0,
\end{align}$$

because the Hessian is symmetric. The field-theory statement is the same with functional derivatives. This is the clean symplectic reason that $W$ may be viewed as the generating functional for an admissible mixed boundary condition.

Formally, the operators $p-\delta W/\delta\phi$ annihilate a state with wavefunctional $\exp(-W)$. The sign is Euclidean and convention-dependent; the structural point is that an exact Lagrangian graph selects a polarization-compatible state.

# the AdS mixed boundary condition

For the scalar asymptotics

$$\begin{align}
\phi_i & =\alpha_i(x)r^{d-\lambda_i}+\beta_i(x)r^{\lambda_i}, \tag{3.8}
\end{align}$$

the standard-quantization dictionary used in section 3 treats $\alpha_i$ as sources and $\beta_i$ as one-point functions of single-trace operators $\mathcal O_i$. A single-trace source $W=\int f_i\mathcal O_i$ gives $\alpha_i=f_i$. Replacing $\mathcal O_i$ by its large-$N$ response $\beta_i$ extends the rule to a local nonlinear functional:

$$\begin{align}
W[\mathcal O_i] & \longrightarrow W[\beta_i], & \alpha_i(x) & =\frac{\delta W[\beta]}{\delta\beta_i(x)}. \tag{3.9}
\end{align}$$

If $W$ contains boundary derivatives, the derivative is an Euler-Lagrange functional derivative, including boundary integrations by parts. If it is ultralocal, this reduces pointwise to an ordinary derivative.

In CPS language, the renormalized boundary symplectic flux is proportional, up to the scalar normalization and orientation convention, to

$$\begin{align}
\Omega_{\partial M} & \propto\int_{\partial M}\delta\alpha_i\wedge\delta\beta_i.
\end{align}$$

On $\alpha_i=\delta W/\delta\beta_i$, the pullback vanishes because the second functional derivative of $W$ is symmetric. Witten states the canonical-pair argument but does not derive the holographically renormalized prefactor or the counterterm contribution to this flux.

# the BF-bound logarithm reproduces double-trace running

Take a dimension-two half-BPS operator in a four-dimensional large-$N$ CFT and perturb it by

$$\begin{align}
W & =\frac f2\int\mathrm{d}^{4}x\,\mathcal O^{2}. \tag{4.1}
\end{align}$$

Classically $f$ is dimensionless. At $f=0$, conformal invariance fixes

$$\begin{align}
\langle\mathcal O(x)\mathcal O(y)\rangle & =\frac{v}{|x-y|^{4}}, & v&>0.
\end{align}$$

At order $f^{2}$, large-$N$ factorization leaves the single-contraction term

$$\begin{align}
\frac{f^{2}}{2}\int\mathrm{d}^{4}x\,\mathrm{d}^{4}y\, \mathcal O(x)\mathcal O(y)
\langle\mathcal O(x)\mathcal O(y)\rangle. \tag{4.3}
\end{align}$$

With $w=y-x$ and a short-distance cutoff $\epsilon=\Lambda^{-1}$,

$$\begin{align}
\int\mathrm{d}^{4}w\,\frac{v}{|w|^{4}} & =\operatorname{vol}(S^{3})v\int_{\epsilon}^{R}\frac{\mathrm{d}\rho}{\rho} =2\pi^{2}v\ln\frac{R}{\epsilon}. \tag{4.4}
\end{align}$$

The divergence is proportional to $\mathcal O^{2}$ and renormalizes $f$. Witten then rescales $\mathcal O$ so that the beta-function coefficient is one. The statement that this is the full beta function uses large-$N$ factorization; it is not a finite-$N$ nonrenormalization theorem.

Since $\Delta=d/2=2$, the dual scalar saturates the BF bound, $m^{2}=-4$ for unit AdS radius, and its two radial roots coincide. The independent branches are the power and logarithmic solutions:

$$\begin{align}
\phi & =\alpha(x)r^{2}\ln(\mu r)+\beta(x)r^{2}. \tag{4.5}
\end{align}$$

The double-trace functional $W=(f/2)\int\beta^{2}$ gives

$$\begin{align}
\alpha&=f\beta, & \phi&=\beta r^{2}\bigl(f\ln(\mu r)+1\bigr). \tag{4.6--4.7}
\end{align}$$

The arbitrary scale $\mu$ changes how the same bulk field is split into logarithmic and nonlogarithmic coefficients. Introduce bare data $(f_0,\beta_0)$ at cutoff $\Lambda$ and demand equality of the bulk field:

$$\begin{align}
\beta_0\bigl(f_0\ln(\Lambda r)+1\bigr) & =\beta\bigl(f\ln(\mu r)+1\bigr). \tag{4.8}
\end{align}$$

Matching the coefficient of $\ln r$ and the constant term gives

$$\begin{align}
\beta_0f_0&=\beta f, & f(\mu)&=\frac{f_0}{1+f_0\ln(\Lambda/\mu)}, & \beta&=\beta_0\bigl(1+f_0\ln(\Lambda/\mu)\bigr). \tag{4.9}
\end{align}$$

Equivalently,

$$\begin{align}
\frac{1}{f(\mu)} & =\frac{1}{f_0}+\ln\frac{\Lambda}{\mu}, & \mu\frac{\mathrm{d}f}{\mathrm{d}\mu}&=f^{2}.
\end{align}$$

For the stable-sign interaction $f>0$, the coupling grows toward the UV and has the usual large-$N$ Landau-pole behavior. The numerical coefficient of $f^{2}$ is not universal until the normalization of $\mathcal O$ is fixed.

# oppositely quantized scalars and the fixed line

Now take two equal-mass scalars in the alternative-quantization window

$$\begin{align}
\frac d2-1<\lambda<\frac d2.
\end{align}$$

Quantize $\phi_1$ so that its operator $\mathcal O_1$ has dimension $\lambda$, and quantize $\phi_2$ so that $\mathcal O'_2$ has dimension $d-\lambda$. Witten relabels the second pair so that sources are again denoted by $\alpha$-type variables and responses by $\beta$-type variables:

$$\begin{align}
\phi_1 & \sim\alpha_1r^{d-\lambda}+\beta_1r^{\lambda}, \\
\phi_2 & \sim\beta'_2r^{d-\lambda}+\alpha'_2r^{\lambda}. \tag{4.11}
\end{align}$$

The product $\mathcal O_1\mathcal O'_2$ has dimension

$$\begin{align}
[\mathcal O_1\mathcal O'_2] & =\lambda+(d-\lambda)=d,
\end{align}$$

so the deformation is marginal:

$$\begin{align}
W & =f\int\mathrm{d}^{d}x\,\beta_1\beta'_2, & \alpha_1&=f\beta'_2, & \alpha'_2&=f\beta_1. \tag{4.12}
\end{align}$$

The zero-field AdS solution satisfies these conditions for every $f$. Subject to stability, the classical bulk theory therefore supplies a line of conformal boundary conditions.

The two equations are invariant under

$$\begin{align}
f&\longmapsto\frac1f, & \alpha_1&\longleftrightarrow\beta_1, & \alpha'_2&\longleftrightarrow\beta'_2.
\end{align}$$

This is a duality of the full setup only if the bulk theory itself has a symmetry $\phi_1\leftrightarrow\phi_2$. Under that extra assumption, weak and strong coupling exchange the two scalar quantizations. At $f\to\infty$, the operator dimensions assigned to $\phi_1$ and $\phi_2$ are reversed relative to $f\to0$.

The paper does not establish stability for all $f$, nor does it compute finite-$N$ corrections that could lift the fixed line. Its precise result is a classical-bulk / leading-large-$N$ construction conditional on the stated exchange symmetry and stability.

# the relevant deformation flows from $\Delta_-$ to $\Delta_+$

For one scalar in the same window, choose the quantization in which the operator $\mathcal O$ has dimension $\lambda=\Delta_-$. Then

$$\begin{align}
W & =\frac g2\int\mathrm{d}^{d}x\,\beta^{2}, & \alpha&=g\beta. \tag{4.13 and following}
\end{align}$$

Since $2\lambda<d$, the coupling has positive mass dimension

$$\begin{align}
[g]&=d-2\lambda>0,
\end{align}$$

and the perturbation is relevant. The limiting boundary conditions are

$$\begin{align}
g=0 &: \quad \alpha=0 &&\Longleftrightarrow&& \text{operator dimension }\Delta_-=\lambda, \\
g\to\infty &: \quad \frac{\alpha}{g}=\beta\to0 &&\Longleftrightarrow&& \text{operator dimension }\Delta_+=d-\lambda.
\end{align}$$

Thus the RG flow runs from alternative quantization in the UV to standard quantization in the IR. Seen from the $\Delta_+$ endpoint, the reverse perturbation has dimension $2(d-\lambda)>d$ and is irrelevant. The limiting statement concerns the projective boundary subspace defined by $\alpha-g\beta=0$; it should not be read as keeping both $\alpha$ and $\beta$ fixed while sending $g$ to infinity.

# boundary, CPS, and charge dictionary

| Paper object | Boundary/CPS interpretation | Local use |
| --- | --- | --- |
| $(\alpha_i,\beta_i)$ | canonically conjugate asymptotic data, up to renormalized normalization and sign | source/response pair for scalar CPS |
| $W[\beta]$ | generating functional for an exact Lagrangian graph | boundary potential that defines Robin/mixed boundary conditions |
| $\alpha_i=\delta W/\delta\beta_i$ | vanishing pullback of boundary symplectic flux | criterion for a flux-free phase-space boundary condition |
| $W=(f/2)\int\beta^2$ | linear mixed boundary condition $\alpha=f\beta$ | double-trace Robin family |
| BF logarithm | scale-dependent split of the two asymptotic coefficients | scalar analogue of logarithmic branches and running boundary couplings |
| $g:0\to\infty$ | change of Lagrangian subspace from $\alpha=0$ to $\beta=0$ | interpolation between alternative and standard quantization |
| gauge directions | absent: the model is a scalar without gauge redundancy | no quotient or edge-mode construction is performed |
| charges / Hamiltonians | absent | the paper constrains boundary data but does not construct surface charges |

The directly reusable CPS statement is

$$\begin{align}
\left.\Omega_{\partial M}\right|_{\alpha=\delta W/\delta\beta} & \propto\int\frac{\delta^{2}W}{\delta\beta_i\delta\beta_j}
\,\delta\beta_j\wedge\delta\beta_i=0.
\end{align}$$

For `Articles/Quantization in AdS/electric field/alternative quantization.md`, this supplies the missing functional origin of a mixed source/response condition. For `scalar in finite system.md`, it explains the infinite-boundary target of a Robin regulator, but it does not by itself determine the finite-wall counterterm, self-adjoint domain, or the special no-log treatment at the coincident-root point.

# equation ledger

| Source equations | Content | Status |
| --- | --- | --- |
| (1.1)-(1.2) | large-$N$ normalization of operators and action | source-derived |
| (2.5)-(2.7) | eigenvalue-density saddle and $w_n\to\partial W/\partial\mathcal O_n$ | chain rule independently checked |
| (3.1)-(3.3) | boundary variation and mixed condition at finite distance | checked with the outward normal of $x_1\geq0$ |
| (3.5) | scalar falloffs and printed mass relation | falloffs correct; printed $\lambda(\lambda+d)=m^2$ fails |
| (3.7)-(3.9) | $\alpha_i=\delta W/\delta\beta_i$ | Lagrangian-graph property independently checked |
| (4.1)-(4.4) | double-trace OPE divergence | $2\pi^2v\ln\Lambda$ coefficient independently checked |
| (4.5)-(4.9) | BF logarithm and coupling renormalization | algebra and beta function independently checked |
| (4.10)-(4.12) | opposite quantizations, fixed line, and duality | dimension count and boundary-condition invariance independently checked |
| (4.13) and following | relevant flow between the two quantizations | relevance/irrelevance inequalities and limiting boundary subspaces checked |

# what the paper proves and what it leaves open

The paper establishes, at the level of the large-$N$ / classical-bulk correspondence, a practical map

$$\begin{align}
\text{multi-trace deformation }N^{2}W(\mathcal O_i) & \longleftrightarrow \text{mixed AdS boundary condition } \alpha_i=\frac{\delta W[\beta]}{\delta\beta_i}.
\end{align}
\end{align}$$

Its examples show that this map has the correct RG content, not just the correct dimensions. The BF logarithm encodes running, a complementary pair of quantizations supports an exactly marginal classical boundary condition, and a relevant double trace changes the endpoint quantization.

The following ingredients are not supplied:

- a full holographic-renormalization derivation of the renormalized action and symplectic form;
- the overall coefficient and sign relating $(\alpha,\beta)$ to a canonically normalized one-point function;
- a stability analysis for general nonlinear $W$ or for every point on the fixed line;
- finite-$N$ corrections and operator mixing beyond leading factorization;
- gauge fields, constraints, corner modes, surface charges, or charge algebras;
- a finite-radius regulator realizing the same Lagrangian subspace.

# verification log

## Checked

Mathematica independently reproduced the following calculational steps.

1. For the metric (3.4), the radial Klein-Gordon operator on $r^{s}$ gives

$$\begin{align}
   \frac{1}{\sqrt g}\partial_r\left(\sqrt g\,g^{rr}\partial_r r^s\right) & =s(s-d)r^s.
\end{align}$$

   Hence $m^2=s(s-d)$, the BF value is $m^2=-d^2/4$, and the indicial polynomial at the BF bound is $(d-2s)^2/4$.

2. A finite truncation of the matrix-model chain rule gives

$$\begin{align}
   \frac{\partial W(\mathcal O_1,\mathcal O_2,\mathcal O_3)}{\partial\rho} & =x\frac{\partial W}{\partial\mathcal O_1} +x^2\frac{\partial W}{\partial\mathcal O_2} +x^3\frac{\partial W}{\partial\mathcal O_3},
\end{align}$$

   which is the finite version of the first term in (2.6).

3. $\operatorname{vol}(S^3)=2\pi^2$ and

$$\begin{align}
   \int_{\epsilon<|w|<R}\frac{\mathrm{d}^4w}{|w|^4} & =2\pi^2\ln\frac{R}{\epsilon},
\end{align}$$

   confirming (4.4).

4. Coefficient matching in (4.8) gives exactly

$$\begin{align}
   f&=\frac{f_0}{1+f_0\ln(\Lambda/\mu)}, & \beta&=\beta_0\bigl(1+f_0\ln(\Lambda/\mu)\bigr),
\end{align}$$

   and direct differentiation gives the zero residual

$$\begin{align}
   \mu\frac{\mathrm{d}f}{\mathrm{d}\mu}-f^2&=0.
\end{align}$$

5. The pullback of $\delta\alpha_i\wedge\delta\beta_i$ to $\alpha_i=\partial_iW$ vanishes by equality of mixed second derivatives.

6. Substitution of (4.12) gives zero residual for both transformed boundary conditions under $f\to1/f$ and the stated exchanges of $\alpha$ and $\beta$.

7. Under $d/2-1<\lambda<d/2$, Mathematica confirms

$$\begin{align}
   \lambda+(d-\lambda)&=d, & 2\lambda&<d, & 2(d-\lambda)&>d.
\end{align}$$

## Blocked

- The claim that there are no higher corrections to the normalized double-trace beta function rests on large-$N$ factorization and the source's OPE argument; it was not independently established as a theorem.
- The existence of the full fixed line is conditional on stability of the zero-field AdS solution. The paper does not provide the fluctuation analysis needed to check this condition.
- The $f\leftrightarrow1/f$ map is a duality of the full theory only when a bulk $\phi_1\leftrightarrow\phi_2$ symmetry exists. The paper treats this as a hypothesis rather than constructing a model and checking it.
- The renormalized boundary symplectic normalization, counterterms, and possible finite local shifts of the source/response dictionary are not derived in the paper.
- The boundary-state interpretation is formal in Lorentzian AdS and is not an independently constructed Hilbert-space state.

## Failed

- Immediately after source equation (3.5), the PDF and TeX source both print

$$\begin{align}
  \lambda(\lambda+d)&=m^2.
\end{align}$$

  This is incorrect for the displayed metric (3.4). Direct substitution into the Klein-Gordon equation gives

$$\begin{align}
  \lambda(\lambda-d)&=m^2.
\end{align}$$

  The printed formula is also internally incompatible with the next statement that the roots coincide at $\lambda=d/2$. The corrected formula yields the repeated BF root $\lambda=d/2$ and the two solutions $r^{d/2}$ and $r^{d/2}\ln r$.

There are two additional harmless source-level notation slips: the second line of (4.11) prints $\phi_i$ where the context requires $\phi_2$, and later prose refers to the multi-field condition as (3.8) although the condition itself is (3.9). Neither affects the derivation once the intended objects are restored.

# source provenance

- The complete 13-page local PDF was text-extracted for navigation and every page was rendered for visual inspection.
- Equations (3.5), (4.4)-(4.9), and (4.10)-(4.13) were checked against the rendered pages, not inferred from extraction alone.
- The official v3 TeX source was also inspected to distinguish genuine source typos from PDF extraction errors.
