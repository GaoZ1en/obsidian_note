# Independent timelike stress–scalar radial kernel checks

## Result and scope

The zero-finite-boundary, logfree Volterra solution is entire after factoring out the prescribed polarization contraction, admits a compact double-integral representation, and has global polynomial energy bounds after delta-state normalization. Its compact-energy Hilbert–Schmidt boundary limit is O(z^6), including null edges. These statements concern this specified radial solution, **not an independent identification of a physical vacuum-contour coefficient** or all finite-radius mixed three-point insertions.

Conventions: η=(-,+,+,+), s(p)=(p^0)^2−|p⃗|²; p,q future timelike, a²=s(p), b²=s(q), τ²=s(p−q)>0. Thus τ≤|a−b|. Define

D²=[(a+b)²−τ²][(a−b)²−τ²]=4[(p·q)²−a²b²].

Q=e_p^{ij}q_iq_j is held fixed under ℒ_a=∂_a²−a^{-1}∂_a. The derivative also holds b,τ fixed; the analytic auxiliary family is defined beyond the physical kinematic domain. Let

L_τ=∂_z²+z^{-1}∂_z+τ²,
S=−8αQ a^{-2}z²J₂(az)J₀(bz).

No pre-existing research files were edited.

## 1. Volterra and angular formula

With measure du, set

R_{τ²}(z,u)=(πu/2)[J₀(τu)Y₀(τz)−Y₀(τu)J₀(τz)], 0<u<z;
R₀(z,u)=u log(z/u).

The unique solution with zero finite coefficient and no logarithm is

B(z)=−8αQ/a² ∫₀ᶻ R_{τ²}(z,u)u²J₂(au)J₀(bu)du
    =−8αQ/a² ℒ_a A_{τ;a,b}(z),

where, with C_θ²=a²+b²−2ab cosθ,

A_{τ;a,b}(z)=π^{-1}∫₀^π [J₀(zC_θ)−J₀(τz)]/[τ²−C_θ²] dθ.

The first expression follows directly from the derivative jump +1. The second uses ℒ_aJ₀(au)=u²J₂(au), Bessel addition, and L_τJ₀(Cz)=(τ²−C²)J₀(Cz). The homogeneous solutions J₀,Y₀ (or 1,log z at τ=0) prove uniqueness.

The divided difference equals zJ₁(τz)/(2τ) at C=τ>0, and z²/4 when C=τ=0. Derivatives must act on this combined expression, not on separately divergent threshold terms.

## 2. Compact double integral: global control without threshold denominators

Put f₂(x)=8J₂(x)/x², f₂(0)=1. The exact identities are

A_{τ;a,b}(z)=z²/4 ∫₀¹dt∫₀¹dv
 J₀(az√(tv)) J₀(bz√(tv)) J₀(τz√((1−t)(1−v))),

ℒ_a A/a²=z⁶/32 ∫₀¹dt∫₀¹dv (tv)²
 f₂(az√(tv)) J₀(bz√(tv)) J₀(τz√((1−t)(1−v))),

B(z)=−αQz⁶/4 ∫₀¹dt∫₀¹dv (tv)²
 f₂(az√(tv)) J₀(bz√(tv)) J₀(τz√((1−t)(1−v))).

Derivation: for F_z(x)=J₀(z√x), the divided difference is −∫₀¹F_z'((1−t)τ²+tC²)dt. Use −F_z'(x)=(z²/4)·2J₁(z√x)/(z√x), and the Sonine identity

2J₁(√(X²+Y²))/√(X²+Y²)
 =∫₀¹ J₀(X√v)J₀(Y√(1−v))dv.

This is also the characteristic integral on S³ split into two orthogonal planes. Set X=z√t C, Y=z√(1−t)τ, then perform the original θ average using Bessel addition. Applying ℒ_a under the compact integrals gives the other two formulas.

Each Bessel factor is entire in its squared argument, proving joint entireness of B/Q in a²,b²,τ² (and analyticity at z=0). In particular a→0 is harmless in this reduced coefficient. For all real nonnegative a,b,τ,z,

|J₀|≤1, |f₂|≤1, ∫₀¹∫₀¹(tv)² dt dv=1/9,

so

|ℒ_a A/a²|≤z⁶/288,
|B(z)|≤|αQ|z⁶/36.

These estimates hold even in the unphysical open absorption interval, although only τ≤|a−b| is used for the physical normalized kernel below. At all masses zero the reduced bound is saturated.

The small-radius expansion, uniform on compact mass sets, is

B(z)=−αQz⁶/36+αQ(3a²+9b²+τ²)z⁸/2304+O(z¹⁰).

## 3. Delta-normalized tensor kernel and null edges

Let dν(p)=d⁴p/(2π)⁴, √(ρ_Tρ_O)=π³a²/(4√5), and K_λ=√(ρ_Tρ_O)B^{e_λ}. For orthonormal unit real TT polarizations in the p rest frame,

Q_λ=e_{λ,nn}D²/(4a²),  Σ_λ|e_{λ,nn}|²=2/3.

Therefore

K_λ=−π³αD²e_{λ,nn}z⁶/(64√5)
 ×∫₀¹dt∫₀¹dv (tv)² f₂(az√tv)J₀(bz√tv)J₀(τz√((1−t)(1−v))),

||K||_pol≤π³|α|z⁶D²√(2/15)/576.

Since D²≤16(p⁰q⁰)², this is a global degree-four polynomial energy bound. One need not choose polarizations continuously at the null edge. Equivalently use the measurable positive Euclidean matrix square root of a⁴Π^{(2)}(p), whose components extend continuously to the closed future cone; at a=0 the covariance itself has limit (2/3)p_i p_j p_k p_l. Contracting the square root with q_iq_j gives the same polarization norm.

For the cone cap E_B={p∈V_+:p⁰≤B}, vol(E_B)=πB⁴/3. Restricting further to timelike transfer only reduces the integral. A direct cap-volume bound gives

||K_z||_{HS(dν²;E_B²,timelike)}
 ≤|α|z⁶B⁸√(2/15)/1728.

The timelike boundary kernel in this zero-boundary problem is K₀=0. A bounded transfer test multiplies the right-hand side by its supremum. Thus the compact HS limit is O(z⁶) with no null or collinear excision. Globally, extending this constructed kernel by zero off the timelike-transfer region gives a regular tempered kernel with strong S′ limit zero at O(z⁶): the bound pairs with a weighted supremum Schwartz seminorm of exponent m>12 (e.g. m=14). This is a statement about the normalized kernel; it does not by itself provide the full interacting Wightman distribution.

## 4. Two counterexamples to tempting stronger claims

### 4.1 The amputated polarization component need not be bounded at a→0

Take q=(b,0,0,0), p=(E,√(E²−a²),0,0), with 0<E<b/2 and a↓0. Both energies stay bounded, while τ²=a²+b²−2bE>0. Choose the unit TT polarization aligned with the rest-frame q direction. Then

Q=e_nn b²(E²−a²)/a².

Since B/Q has a nonzero small-z limit, B itself generically diverges as a^{-2}. It is the delta-normalized kernel, not an unweighted boosted polarization component, that is regular/bounded at this edge.

### 4.2 Analytic continuation of the spacelike particular solution alone fails

For D>0 in either physical timelike sector define

P(z)=(8αQ/a²)ℒ_a⟨J₀(zC)/(C²−τ²)⟩_θ.

Then exactly

B(z)=P(z)−J₀(τz)P(0),
P(0)=64αQ(D²+6b²τ²)/D⁵,

using ℒ_a(D^{-1})=8a²(D²+6b²τ²)/D⁵. The continued particular solution has the wrong finite boundary value. Its normalized boundary term is

√(ρ_Tρ_O)P(0)=4π³α e_nn(D²+6b²τ²)/(√5 D³).

At a generic positive collinear threshold τ=|a−b|>0 this has D^{-3} behavior, which is not locally L² and is not absolutely locally L¹. Angular quadrupole cancellation could support a separate finite-part distribution, but that is not the bounded radial solution. The exact homogeneous subtraction cancels the threshold singularities; estimating its two separated pieces loses this fact.

## 5. Verification and limitations

Exact Wolfram checks return zero for the displayed ODE series residual and the ℒ_a(D^{-1}) identity. Independent Volterra versus compact-double-integral quadratures of −B/(αQ), with requested machine-precision accuracy/precision goals 12, give:

| (a,b,τ,z) | Volterra | double integral | absolute difference |
|---|---:|---:|---:|
| (3,1,1,1) | 0.015391452291888513 | 0.015391452291888550 | 3.65e−17 |
| (3,1,2,1) | 0.014530592241281490 | 0.014530592241277156 | 4.34e−15 |
| (0,1,1,1) | 0.023632808785802397 | 0.023632808785802442 | 4.52e−17 |
| (1,1,0,1) | 0.022943665155551010 | 0.022943665155550994 | 1.74e−17 |
| (0,0,0,1) | 0.027777777777777770 | 0.027777777777777773 | 3.47e−18 |
| (1,1,1,2), unphysical absorption test | 0.7181097327463823 | 0.7181097327463857 | 3.34e−15 |

The successful runs have no Wolfram messages. An initial high-precision batch exceeded the tool's 30-second execution limit; it supplied no result and was replaced by the separated exact and machine-precision checks above. Numerical agreement is not interval-certified; the compact integral derivation proves the identities and continuous-parameter bounds.

A standalone reproduction script is [the Wolfram check file](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_kernel_checks.wl>).

No independent subagent could be started at this delegation depth. This is an independent derivation relative to the parent research; the parent should arrange any further fresh audit. No physical limiting-absorption/vacuum-contour identification, all-leg tensor Ward completion, or exclusion of additional contour-dependent edge distributions is claimed. The constructed function has no edge atoms by definition; equality with a physical contour family requires a separate calculation.
