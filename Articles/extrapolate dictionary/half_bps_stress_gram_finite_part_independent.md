# Independent proof: invariant Gram cutoff on both timelike-transfer sectors

## Theorem and conventions

Let η=diag(−1,1,1,1), and let V₊={P:P⁰>|**P**|} be the open future timelike cone. We use full Lebesgue measure d⁴p d⁴q, without factors of 2π. Boundaries of causal cones have Lebesgue measure zero and can be included without changing any cutoff integral. Define

\[
x=-p^2,\quad y=-q^2,\quad c=-p\cdot q,\quad
 t=-(p-q)^2=x+y-2c,\quad \Delta=c^2-xy,\quad D=2\sqrt\Delta,
\]

\[
N_{ij}=x^2q_iq_j-xc(p_iq_j+q_ip_j)
 +\frac{2c^2+xy}{3}p_ip_j-\frac{x\Delta}{3}\eta_{ij},
\qquad H_{ij}=N_{ij}\frac{D^2+6yt}{D^5}.
\]

The sectors are

\[
\Omega_+=\{p,q\in V_+:p-q\in V_+\},\qquad
\Omega_-=\{p,q\in V_+:q-p\in V_+\}.
\]

For δ>0 define the distributions, componentwise, by the ordinary integrals

\[
\langle T^{\pm}_{ij,\delta},\phi\rangle
 =\int_{\Omega_\pm}{\bf1}_{D>\delta}H_{ij}\phi\,d^4p\,d^4q.
\]

For integer k,M set

\[
 S_{k,M}(\phi)=\max_{|\alpha|\le k}\sup_{p,q}
 (1+|p|_{\mathrm E}+|q|_{\mathrm E})^M
 |\partial^\alpha\phi(p,q)|.
\]

**Theorem.** Each sector has a limit T⁺ᵢⱼ or T⁻ᵢⱼ in tempered distributions on all of ℝ⁸, including the null boundary and the origin. There are constants independent of δ and φ such that

\[
 |\langle T^{\pm}_{ij,\delta},\phi\rangle|
 +|\langle T^{\pm}_{ij},\phi\rangle|
 \le C S_{1,10}(\phi),
\]

and, for 0<δ≤1,

\[
 |\langle T^{\pm}_{ij,\delta}-T^{\pm}_{ij},\phi\rangle|
 \le C\delta S_{1,10}(\phi).
\]

A stronger, independently checked estimate is

\[
 |\langle T^{\pm}_{ij,\delta}-T^{\pm}_{ij},\phi\rangle|
 \le C\delta^2(1+|\log\delta|)S_{2,12}(\phi),
 \qquad 0<\delta\le1.
\]

Here 1 and δ are expressed in a fixed coordinate/momentum unit. The constants depend on that choice but not on the test function. These estimates prove convergence of the exact sharp invariant cutoff stated above; they do not identify it with any independently prescribed Abel regulator or Hessian extension.

## 1. Exact causal-diamond coordinates

Let P be the larger momentum (p on Ω₊, q on Ω₋), Q the smaller, E=P⁰, and m=√(−P²)>0. Choose the standard Lorentz boost Λ(P) sending (m,0) to P. Write

\[
 Q=m\Lambda(a,bn),\qquad n\in S^2,\qquad
 0<a<1,\quad 0<b<B(a):=\min(a,1-a).
\]

These inequalities are exactly Q∈V₊ and P−Q∈V₊. In particular, the physical integration domain is spherical in n, without any angular restriction. Moreover,

\[
 d^4Q=m^4b^2\,da\,db\,d\Omega,
 \quad\Delta=m^4b^2,\quad D=2m^2b.
\]

Thus the cutoff is exactly b>δ/(2m²), also independent of n.

The covector transformation matrix is L=Λ⁻ᵀ. Its Euclidean operator norm satisfies

\[
 \|L\|=\|\Lambda\|\le 2E/m.
\]

Consequently a rank-two covariant tensor is amplified by at most C E²/m². This estimate explicitly retains the large boost near null P.

Define

\[
 \psi_P(a,b,n)=
 \begin{cases}
 \phi(P,m\Lambda(a,bn)),&\Omega_+,\\
 \phi(m\Lambda(a,bn),P),&\Omega_-.
 \end{cases}
\]

Let ψ₀=ψP(a,0,n), which is independent of n. The displacement W=m b Λ(0,n) obeys |W|E≤2Eb. The segment aP+sW, 0≤s≤1, stays in the same causal diamond. Along that segment the full test-function weight is at least 1+E. Hence

\[
 |\psi|\le S_{0,M}(\phi)(1+E)^{-M},
\]

\[
 |\psi-\psi_0|\le C Eb S_{1,M}(\phi)(1+E)^{-M},
\]

and, writing ℓ(n) for the derivative of the test function at the central point applied to W,

\[
 |\psi-\psi_0-\ell(n)|
 \le C E^2b^2 S_{2,M}(\phi)(1+E)^{-M}.
\]

## 2. Rest-frame kernels, with all coefficients

Put Tₐᵦ(n)=nₐnᵦ−δₐᵦ/3. Spatial indices in this section are a,b=1,2,3; the coordinate called a in the preceding section is the scalar time fraction.

### Larger p: Ω₊

In the rest frame p=m(1,0), q=m(a,bn),

\[
 N_{00}=N_{0a}=0,\qquad N_{ab}=m^6b^2T_{ab}(n).
\]

Let

\[
 F(a,b)=4b^2+6(a^2-b^2)((1-a)^2-b^2).
\]

Then

\[
 H_{00}=H_{0a}=0,\qquad H_{ab}=\frac{F(a,b)}{32b^3}T_{ab}(n).
\]

### Larger q: Ω₋

In the rest frame q=m(1,0), p=m(a,bn),

\[
 N_{00}/m^6=\frac23b^4,\quad
 N_{0a}/m^6=-\frac23ab^3n_a,
\]

\[
 N_{ab}/m^6=b^2\left[a^2T_{ab}(n)
 -\frac{b^2}{3}(n_an_b-\delta_{ab})\right].
\]

Let G(a,b)=6(1−a)²−2b². Then

\[
 H_{00}=\frac{G}{48b},\qquad
 H_{0a}=-\frac{aG}{48b^2}n_a,
\]

\[
 H_{ab}=\frac{a^2G}{32b^3}T_{ab}(n)
 -\frac{G}{96b}(n_an_b-\delta_{ab}).
\]

All coefficient functions F,G,a²G,aG are uniformly bounded on the closed diamond 0≤a≤1, 0≤b≤B(a). Only the tracefree b⁻³ term is not absolutely locally integrable before cancellation.

The larger-q N components were checked by exact Wolfram expansion, taking n=(1,0,0); rotational covariance gives general n. The calculation returned no messages.

## 3. Explicit finite-part prescription and first-order estimates

Write each rest kernel as K=S+R, where S has only the spatial tracefree b⁻³ term, and R is the remaining kernel. For Ω₊, R=0. For Ω₋,

\[
 |S|\le Cb^{-3},\qquad |R|\le C(b^{-2}+b^{-1}).
\]

Since ∫S²Tₐᵦ(n)dΩ=0, the precise limiting distribution is

\[
\boxed{\quad
 \langle T_{ij}^{\pm},\phi\rangle=
 \int_{V_+}d^4P\,m^4\int_0^1da\int_0^{B(a)}b^2db
 \int_{S^2}d\Omega\,
 L_i{}^A L_j{}^B
 \left[S_{AB}(\psi-\psi_0)+R_{AB}\psi\right].\quad}
\]

This is an absolutely convergent expression after the displayed subtraction. It is not a claim that the original H is absolutely integrable.

For every δ>0 the identical expression with b>δ/(2m²) equals the original cutoff integral. Fubini is valid there: the absolute b integral of S costs at most C[1+log₊(m²/δ)], and the outer Schwartz decay makes the resulting P integral finite. The subtraction integrates to zero at each a,b,P because the entire angular sphere is retained.

With M=10 and h=min(1,δ/(2m²)), the absolute bound for the omitted region is

\[
 C S_{1,10}(\phi)
 m^2 E^2(1+E)(1+E)^{-10}h.
\]

Indeed, for S the factor b² from the measure combines with b⁻³ and the remainder O(Eb), leaving a bounded radial integrand. For the mixed b⁻² term no subtraction is needed; it too has bounded radial integrand. The b⁻¹ remainder is smaller on 0<b≤1/2.

For the full integral take h=1. Since m²≤E² and the spatial ball at fixed energy has volume CE³,

\[
 \int_{V_+}m^2E^2(1+E)(1+E)^{-10}d^4P
 \le C\int_0^\infty E^7(1+E)^{-9}dE<\infty.
\]

This proves the uniform S₁,₁₀ estimate. For the omitted region use m²h≤δ/2 to obtain

\[
 |\langle T_\delta-T,\phi\rangle|
 \le C\delta S_{1,10}(\phi)
 \int_0^\infty E^5(1+E)^{-9}dE.
\]

This proves the main cutoff-convergence claim, globally at the null boundary and origin.

## 4. Sharper second-order estimate

For the tracefree term use additionally

\[
 \int_{S^2}T_{ab}(n)n_c\,d\Omega=0,
\]

so ψ−ψ₀ can be replaced under its angular integral by ψ−ψ₀−ℓ(n). For the larger-q mixed term use ∫nₐdΩ=0 and replace ψ by ψ−ψ₀. Leave the b⁻¹ terms unchanged. All resulting omitted radial integrands are bounded by a constant times b. Therefore, with h=min(1,δ/(2m²)), their sum is bounded at fixed P by

\[
 C S_{2,12}(\phi)m^2E^2(1+E+E^2)(1+E)^{-12}h^2.
\]

Set X=m² and P=(E,Rω). Then

\[
 d^4P=\frac12\sqrt{E^2-X}\,dX\,dE\,d\Omega_\omega,
 \qquad 0<X<E^2.
\]

In particular d⁴P≤CE dX dE dΩω. The only nontrivial mass integral is exactly

\[
 I(E,\delta)=\int_0^{E^2}X\min\left(1,\frac{\delta^2}{4X^2}\right)dX
 =\begin{cases}
 E^4/2,&E^2\le\delta/2,\\
 \delta^2/8+(\delta^2/4)\log(2E^2/\delta),&E^2>\delta/2.
 \end{cases}
\]

For 0<δ≤1 this is bounded by

\[
 C\delta^2[1+|\log\delta|+\log(1+E)].
\]

Finally,

\[
 \int_0^\infty E^3(1+E+E^2)(1+E)^{-12}
 [1+\log(1+E)]dE<\infty,
\]

which proves the δ²(1+|logδ|) estimate. The logarithm comes from integrating the boost-controlled bound through the almost-null larger momentum; no compact-away-from-null restriction was made.

## 5. Nonzero check against a quadratic tracefree test

Fix p=(m,0). Let Eₐᵦ be a real symmetric spatial tracefree matrix with tr(E²)=1, and use the test E𝚌𝚍q𝚌q𝚍 times a smooth cutoff equal to one on the compact closed causal diamond 0≤q≤p. Contract H with Eₐᵦ. Then

\[
 \int_{0<q<p}d^4q\,E_{ab}H_{ab}(p,q)\,E_{cd}q_cq_d
 =\frac{m^6}{32}\frac{8\pi}{15}
 \int_0^1da\int_0^{B(a)}db\,bF(a,b)
 =\frac{\pi m^6}{3360}.
\]

Here ∫S²(Eₐᵦnₐnᵦ)²dΩ=8π/15. Direct exact integration gives

\[
 2\int_0^{1/2}da\int_0^a db\,bF(a,b)=1/56.
\]

This polynomial integral and the resulting π/3360 coefficient were also checked in Wolfram with no messages. No 2π measure factors are included.

## Scope and unresolved comparison

The proof establishes the invariant D cutoff separately on both physical sectors, with no assumption of existence and no angular-domain approximation. Arbitrary laboratory Schwartz tests are permitted; their possibly angle-dependent support is kept inside ψ rather than converted into a modified integration domain. Thus angular cancellations act on smooth functions on a complete sphere.

This theorem is specific to the displayed invariant cutoff. It does not by itself prove equality to a fixed-p tracefree Hessian finite part, an Abel limit, or a regulator that couples the angular variable to the physical boundary. Such identifications require a separate comparison, including all contact terms. No such equivalence is asserted here.
