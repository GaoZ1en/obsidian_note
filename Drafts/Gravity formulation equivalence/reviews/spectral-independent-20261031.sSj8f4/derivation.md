# Independent spectral-cutoff calculation

## Result

The actual projection of the nonlinear coordinate map is **not anticanonical**. Its full Berezinian nevertheless agrees, through surprisingly high perturbative order, with the trace of the pointwise log-Berezinian. A determinant comparison alone would miss the failure.

For the distinct generator-first finite map, the odd symplectic defect is zero. A precisely specified connection-first Gaussian and inverse polar chart give a nonunit ratio to independently compressed dynamical metric/diffeomorphism norms. This is a finite coordinate/Grassmann-density and physical Gaussian calculation, **not** a construction of a finite interacting BV pushforward: the naively restricted geometric BRST action already violates the classical master equation.

Only the supplied [note16](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>), root rules, local maintenance skill and project orientation were read. No other new review or main note17 was consulted. The mathematical result below was derived before receiving any candidate formula from the parent.

## 1. Space, conventions, and finite matrices

Let M be the closed coordinate torus of periods 2π, with Euclidean background coframe δ and zero connection. This is an **off-shell chart of the negative-cosmological-constant theory, not an AdS saddle**. Take

\[
e^a{}_{\mu}=f\delta^a{}_{\mu},\quad f=1+\epsilon\cos x^1,\quad |\epsilon|<1,\quad \omega=0.
\]

All ghosts and antifields are zero **only after differentiating in all BV directions**. The antibracket and coefficient-left convention are [the supplied equations (4), (7), (8)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L90-L163>). There are 24 even and 24 odd coordinates per spatial mode: 18 physical coordinates plus 6 ghost antifields are even; 6 ghosts plus 18 physical antifields are odd.

Use the same cube |k_i|≤N for every coordinate and its Darboux dual. Fourier momenta are integrated dual coefficients, so the pairing is ∑ p_k δq_k; volume constants are fixed at the background and cancel in all normalized determinants. Real Fourier bases give the same determinants as the complex Fourier computations below. Set

\[
\ell=2N+1,\quad m=\ell^2,\quad d=\ell^3.
\]

Multiplication by f acts independently on each of m transverse Fourier chains. On a chain of length ℓ define

\[
C_{ij}=\tfrac12\delta_{|i-j|,1},\quad A=I+\epsilon C,
\quad B=P f^{-1}P,\quad T_p=P f^pP.
\]

Here and below an unadorned determinant is a **one-chain** determinant; the exponent m is displayed explicitly. Define

\[
s=\sqrt{1-\epsilon^2},\quad r=-\frac{\epsilon}{1+s},\quad
\alpha=\frac{1+s}{2},\quad q=r^2=\frac{1-s}{1+s}.
\]

The Fourier series of f^{-1} gives

\[
B_{ij}=s^{-1}r^{|i-j|},\qquad
\det A=\frac{\alpha^{\ell+1}-(1-\alpha)^{\ell+1}}s,
\qquad
\det B=\frac{2^{\ell-1}}{s(1+s)^{\ell-1}}.
\tag{I.1}
\]

The first determinant follows from D_ℓ=D_{ℓ-1}−ε²D_{ℓ-2}/4, D_0=D_1=1. The second follows by successively subtracting r times the preceding row in the Toeplitz correlation matrix. Both are positive for |ε|<1.

## 2. Actual projected map: all parity blocks

Let Φ_proj=P Φ i be actual coordinate projection after evaluating the continuum map on retained inputs. At the specified body point, its differential consists of

| Block | Number | Map |
|---|---:|---|
| physical e,ω | 18 | identity |
| Lorentz ghost λ→ρ | 3 odd | identity |
| diffeomorphism ghost ξ→τ | 3 odd | A |
| physical antifields | 18 odd | identity |
| Lorentz ghost antifield λ*→ρ* | 3 even | identity |
| diffeomorphism ghost antifield ξ*→τ* | 3 even | B |

All other derivative blocks vanish at this point; this follows from their positive ghost/antifield degree, not from dropping these directions. In particular the inverse coframe in (7) differentiates to B on ξ*, while (8) differentiates to A on ξ. Therefore

\[
\boxed{\operatorname{Ber}D\Phi_{\rm proj}
 =\left(\frac{\det B}{\det A}\right)^{3m}.}
\tag{I.2}
\]

The exact logarithm is

\[
\boxed{\log\operatorname{Ber}D\Phi_{\rm proj}
=-6d\log\alpha-3m\log(1-q^{\ell+1}).}
\tag{I.3}
\]

For N≥1,

\[
\log\operatorname{Ber}D\Phi_{\rm proj}
=\frac32d\epsilon^2+\frac9{16}d\epsilon^4+
 \frac5{16}d\epsilon^6+O(\epsilon^8).
\tag{I.4}
\]

The naive pointwise log-Berezinian is −6 log f, whose retained trace is −6d log α. Thus the first disagreement occurs at ε^{2ℓ+2}=ε^{4N+4}, with leading coefficient 3m/4^{ℓ+1}. Agreement to second, fourth, or sixth order is **not canonicality**. If the Berezinian rather than its logarithm is wanted, its second/fourth/sixth coefficients are respectively 3d/2, 9d/16+9d²/8, and 5d/16+27d²/32+9d³/16.

### Concrete odd-symplectic witness

In Darboux-dual Fourier conventions,

\[
(\tau_N^a,\tau^*_{N,b})=\delta^a{}_b AB,
\qquad AB-I=-P f(1-P)f^{-1}P.
\tag{I.5}
\]

At second order,

\[
AB-I=\epsilon^2 P\cos x^1(1-P)\cos x^1P+O(\epsilon^3)
=\frac{\epsilon^2}4\bigl(|-N\rangle\langle-N|+|N\rangle\langle N|\bigr)+O(\epsilon^3).
\tag{I.6}
\]

This is nonzero for every N≥1. It is the antibracket itself, not a bosonic determinant. No other parity block can cancel a specified coordinate bracket. Exactly, only the first and last rows of the defect are nonzero:

\[
(AB-I)_{1j}=-\frac\epsilon{2s}r^j,\qquad
(AB-I)_{\ell j}=-\frac\epsilon{2s}r^{\ell+1-j}.
\tag{I.7}
\]

The edge diagonal is (1−s)/(2s)=ε²/4+3ε⁴/16+5ε⁶/32+⋯. Each internal/transverse block has rank two when ε≠0. For N=1, ε=3/5,

\[
AB-I=\begin{pmatrix}1/8&-1/24&1/72\\0&0&0\\1/72&-1/24&1/8\end{pmatrix},
\quad\det A=41/50,\quad\det B=125/81,\quad\det AB=205/162.
\]

## 3. Restricting the generator is a different operation

Let F_N be [the supplied type-II generating functional](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L113-L135>) evaluated on retained old positions and retained new momenta, with the ordinary torus integral retained. Solve its finite mixed equations before constructing Φ_gen. This map is anticanonical by the finite generating-function theorem. At the body point,

\[
\tau=A\xi,\qquad \tau^*=A^{-1}\xi^*,
\quad \operatorname{Ber}D\Phi_{\rm gen}=(\det A)^{-6m}.
\tag{I.8}
\]

The inverse of the compressed multiplier is not the compression of its inverse. The exact difference in log-Berezinian is

\[
\log\operatorname{Ber}D\Phi_{\rm proj}-\log\operatorname{Ber}D\Phi_{\rm gen}
=3m\log\det(AB)
=\frac32m\epsilon^2+\frac{15}{16}m\epsilon^4+\frac{11}{16}m\epsilon^6+O(\epsilon^8).
\tag{I.9}
\]

The generator-first map has zero symplectic defect; it does not make a naively restricted action satisfy the CME. Statements about its full nilpotent Berezinian away from the specified body point have not been proved here.

## 4. Independent classical-master-equation witness

Restrict the geometric ghost law Qξ=ξ∂ξ to ghosts ξ¹(x¹)=∑_{k=−N}^N c_k e^{ikx¹}, ξ²=ξ³=0, and project its output. Then

\[
Q_Nc_k=\sum_{u+v=k}iv\,c_uc_v.
\]

For N=2 an exact exterior-algebra calculation gives

\[
\boxed{Q_N^2c_1=-5c_{-2}c_1c_2\ne0.}
\tag{I.10}
\]

More generally the coefficient of c_{−N}c_1c_N is −(2N+1)(N−1), nonzero for N≥2. This is also the projected vector-field Jacobiator for modes (N,1,−N). The only contributing intermediate retained brackets have modes 1−N and 0; the missing N+1 channel causes the defect.

With ghost action S_gh,N=−∑ p_k Q_Nc_k, the prescribed antibracket gives (S_N,S_N) containing +10 p_1 c_{−2}c_1c_2 at N=2. Equivalently Q_N²c_1=(1/2)((S_N,S_N),c_1). The body value at c=0 vanishes, but its third ghost derivative does not. A density change or an order-ℏ counterterm cannot cure this order-ℏ⁰ failure of the naively restricted action. A transferred finite action with additional interactions is a separate possibility, not excluded by this witness.

## 5. A specified finite Gaussian and frame prescription

The following prescription is fixed explicitly because there is no unique operation called “the spectral-cutoff reduction.” Take N≥2, so g=f²I is itself retained.

1. Use Φ_gen, not Φ_proj, for finite canonical transport. Its body semidensity coefficient is (det A)^{−3m}, with Lorentz ghost mixing triangular.
2. Use the inverse polar chart e_N=P(R sqrt(g)), with retained g and rotation coordinates, and lift this **finite** base chart canonically. It is not the inverse of the separately projected forward polar chart.
3. Keep the original retained Palatini connection action and integrate its retained connection Gaussian. Equivalently use ω_N=Pω(e_N)−P(Ue_N), and use the actual pulled-back finite Hessian.
4. At the scalar frame R=1 the Lorentz-ghost coefficient in χ is the identity (up to the common convention sign); diffeomorphism mixing is triangular. Normalize the frame/doublet linear fiber by its background constant. This includes the odd Lorentz determinant, but does not assert an exact nonlinear finite BRST doublet.
5. Compare with [the prescribed metric and diffeomorphism norms](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L437-L459>), each independently restricted to retained variations at g=f²I. All constants and contour phases are normalized at f=1.

### Every density block at the body point

At e=fI, derivative of the inverse polar chart is δe_sym=(1/2)Bδg and δe_antisym=Aδθ, with fixed orthogonal component normalizations. Thus its normalized **base** coefficient is (det B)^{6m}(det A)^{3m}. Its finite cotangent-lift full BV Berezinian is the square. The metric-six and frame-three sectors have both been included.

The frozen connection norm is the original background norm. The connection Hessian in retained ω coordinates is

\[
H_\omega=2a A\otimes L,\qquad L(X)=\operatorname{tr}(X)I-X^T.
\tag{I.11}
\]

There are 4d positive and 5d negative directions. The chosen upper contour gives i^{5d}; its f-independent phase cancels upon background normalization. Hence the normalized connection Gaussian is (det A)^{−9m/2}.

For clarity, the finite U chart has Jacobian (det A)^{9m} and Hessian

\[
H_{U,\mathrm{connection\ first}}=2a A^3\otimes L,
\]

so its Gaussian is (det A)^{−27m/2}; multiplying by its Jacobian recovers the connection result. The shift Pω(e) is triangular and need not be the finite stationary connection. Completing the square changes the effective action but not this determinant. This calculation does not mistake ω=0 or the flat background for a saddle.

Combining ghost/semidensity, metric, frame/Lorentz and connection factors gives

\[
\boxed{J_{\mathrm{gen,conn}}=(\det B)^{6m}(\det A)^{-9m/2}.}
\tag{I.12}
\]

This is a well-defined Gaussian/coefficient calculation at the body. A normalized algebraic Lorentz fiber is part of the prescription. It is **not yet** a proof of a nonlinear BV fiber pushforward with arbitrary retained antifields; the cutoff action's CME and the nonlinear doublet law fail in the naive truncation.

### Independently compressed dynamical target norms

At g=f²I, the metric norm has multiplier f^{−1} on six symmetric components and the diffeomorphism norm has multiplier f⁵ on three components. Even metric volume and odd ghost inverse volume therefore give

\[
\boxed{J_{\mathrm{dyn}}=(\det B)^{3m}(\det T_5)^{-3m/2}.}
\tag{I.13}
\]

Thus

\[
\boxed{\log\frac{J_{\mathrm{gen,conn}}}{J_{\mathrm{dyn}}}
=m\left(3\log\det B-\frac92\log\det A+\frac32\log\det T_5\right)
=m\left(9\epsilon^2+\frac{45}8\epsilon^4+\frac{33}8\epsilon^6+O(\epsilon^8)\right).}
\tag{I.14}
\]

No parity block has been omitted from these body density factors. The corresponding separate expansions are

\[
\begin{aligned}
\log J_{\mathrm{gen,conn}}/m
&=\frac{21\ell+3}8\epsilon^2+\frac{63\ell+15}{64}\epsilon^4+
\frac{35\ell+11}{64}\epsilon^6+O(\epsilon^8),\\
\log J_{\mathrm{dyn}}/m
&=\frac{21\ell-69}8\epsilon^2+\frac{63\ell-345}{64}\epsilon^4+
\frac{35\ell-253}{64}\epsilon^6+O(\epsilon^8).
\end{aligned}
\tag{I.15}
\]

The discrepancy is O(N²), a cutoff-surface contribution in this family. Neither these finite numbers nor the master-equation counterexample establish a continuum anomaly or rule out a regulator-compatible Wilsonian BV transfer.

## 6. Two ordering alternatives, not equivalent prescriptions

**Reduce before truncating.** Restricting the already continuum-split auxiliary action gives Hessian 2a T_3⊗L, not 2a A³⊗L. With the same displayed finite coordinate factors the formal Gaussian coefficient would be (det A)^{9m}(det B)^{6m}(det T_3)^{−9m/2}; its log-ratio to (I.13) starts (9m/4)ε². This is a different finite model. It is not the Gaussian of the original retained connection action.

**Forward rather than inverse polar projection.** For g_N=P(e^Te), θ_N=Pθ(e), the differential is 2A on six symmetric directions and B on three antisymmetric directions. Therefore de/(dg dθ)=(det A)^{−6m}(det B)^{−3m}, not (det B)^{6m}(det A)^{3m}. With generator-first ghosts and the original connection Gaussian this gives J_forward=(det A)^{−27m/2}(det B)^{−3m}; its log-ratio to (I.13) starts (9m/2)ε². These are distinct honest local finite charts, not inverses of one another. Their ambiguity is precisely why the prescription must be stated.

Using the square root of (I.2) in place of the canonical coefficient in step 1 merely multiplies (I.12) by (det AB)^{3m/2}. Since Φ_proj is not anticanonical, that formal half-Jacobian product must not be advertised as canonical BV semidensity transport or a BV pushforward.

## 7. Exact perturbative computation and scope

For any fixed p used above, the Fourier coefficient matrices of T_p are

\[
(X_j)_{uv}=\binom pj 2^{-j}\binom j{(j+u-v)/2},
\]

where the second binomial is zero unless its lower entry is an integer in [0,j]. Matrix-series inversion followed by tr(T_p^{-1}T_p') gives, for ℓ≥3,

\[
\log\det T_p=\frac{p^2-p\ell}4\epsilon^2+
\frac{5p^2-3p\ell}{32}\epsilon^4+
\frac{11p^2-5p\ell}{96}\epsilon^6+O(\epsilon^8).
\tag{I.16}
\]

The finite closed-walk interpretation makes each coefficient through order six affine in ℓ for ℓ≥3: a closed walk of total perturbative order six spans at most three lattice units, and has exactly ℓ−span possible starting points. Exact calculations at ℓ=3,5 therefore establish the displayed affine formula for each p∈{−1,1,3,5}; ℓ=7 is an additional check. At order eight the same argument requires ℓ≥4; the executable output retains that order too, including the distinct ℓ=3 corrections. Second and fourth order also have direct symbolic p formulas in the Wolfram output.

**Verified:** all parity blocks of DΦ at the specified body; exact Toeplitz determinants and odd-bracket defect; generator-first body determinant; explicit nonzero ghost Jacobi/master coefficient; finite connection Gaussian, contour signature, all displayed body density blocks, and independently restricted target Gram determinants. Wolfram has 78 passing exact labels, no kernel messages; native Sage has 25 passing exact labels, including explicit 24ℓ-by-24ℓ even and odd Jacobians and independent Grassmann nilpotency tests.

**Not verified or claimed:** a full nilpotent finite Berezinian away from the body; an exact nonlinear Lorentz BV doublet after naive Fourier truncation; arbitrary-retained-antifield fiber pushforward; a solved finite interacting QME; an anomaly or a continuum quantum equivalence. The body Gaussian coefficient in (I.12) must keep these limitations.
