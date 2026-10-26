# Polynomial TT numerator: null estimates and the remaining distributional obstruction

Independent check, 2026-10-26. Existing notes were not edited. Setup taken from [the main report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>), but no global regulated identification is assumed.

## Results

The polynomial removes all explicit inverse powers of the stress mass, but does **not** remove threshold singularities of a separated term proportional to λ^(-5/2). Its uniform real-cone estimate gains precisely one power of λ. A distributional Hessian representation is exact for fixed timelike stress momentum; its **unweighted** TT contact subtraction becomes logarithmically nonintegrable in the stress-null limit. The physical homogeneous weight S=λ+6b²τ² cancels this particular contact obstruction, as shown below. Neither pointwise regularity nor a global regulated identification follows from the polynomial alone.

## Exact polynomial identities

Metric η=diag(-1,1,1,1); all displayed tensor indices are lower. Put x=s(p)=a², y=s(q)=b², c=-η(p,q), Δ=c²-xy, u_i=xq_i-cp_i, H_ij=xη_ij+p_i p_j. Then

$$
N_{ij}=a^4\Pi_{ij,kl}q^kq^l
=u_i u_j-\frac\Delta3H_{ij}
=x^2q_iq_j-xc(p_iq_j+q_ip_j)
+\frac{2c^2+xy}{3}p_ip_j-\frac{x\Delta}{3}\eta_{ij}.
$$

This is homogeneous of total momentum degree six and obeys, as polynomial identities,

$$p^iN_{ij}=0,\qquad \eta^{ij}N_{ij}=0,\qquad \eta^{ij}u_i u_j=x\Delta.$$

Consequently these statements analytically continue to arbitrary complex P after x→X=s(P), c→C=-η(P,q), p→P. For P=p+iεn, n=(1,0,0,0),

$$X=x+2i\epsilon E-\epsilon^2,\quad C=c+i\epsilon F,
\quad\Delta(P,q)=\Delta+2i\epsilon(Fc-Ey)-\epsilon^2|\mathbf q|^2,$$

where E=p⁰,F=q⁰. The covariant identity 4Δ(P,q)=λ(X,y,s(P-q)) must not be confused with the report's outer λ(X,y,s(p-q)), which holds the real transfer mass fixed.

For real future causal p,q, Δ≥0. If p is nonzero timelike, N=0 iff q is proportional to p. If p is nonzero null,

$$N_{ij}=\frac23c^2p_ip_j,$$

so it is generically nonzero: it vanishes iff c=0, i.e. q lies on the same null ray (or q=0). A null q alone does not make N vanish. At p=q, N=0 exactly. Complex Δ=0 by itself does not imply N=0, since then N=u u and u can be a nonzero complex null vector.

## Uniform estimates including all real null/collinear intersections

Use Euclidean Frobenius norm and E,F≥0. For real future causal momenta,

$$
\boxed{\|N\|_F\le\sqrt{\frac23}(2E^2-x)\Delta\le2E^2\Delta.}
$$

Proof for x>0: choose a 4×3 matrix B of orthonormal spacelike columns spanning p⊥, so H=xBBᵀ. Write u=√(xΔ)Bν with |ν|=1. Then N=xΔ B(ννᵀ-I/3)Bᵀ, whose norm is bounded by xΔ‖B‖op²√(2/3). The nonzero eigenvalues of H are x,x,2E²-x. Continuity gives the null boundary. This proof is uniform and does not use bounded boosts.

Useful companion bounds are

$$|u|_E^2\le(2E^2-x)\Delta,\qquad |Fc-Ey|\le|\mathbf q|\sqrt\Delta.$$

For E,F≤B and 0≤ε≤B, direct polynomial expansion yields, for example,

$$
\boxed{\|N(P,q)\|_F\le70\big[B^2\Delta+\epsilon B^3\sqrt\Delta+\epsilon^2B^4\big].}
$$

For reproducibility, write U=u+iεv+ε²w with v=2E q_flat-F p_flat-c n_flat and w=-q_flat+F n_flat. Then |u|≤√2 B√Δ, |v|≤(3√2+2)B², |w|≤B, and ‖H(P)‖F≤12B². Also |Δ(P,q)|≤Δ+2εB√Δ+ε²B². Substitution into U U−Δ(P,q)H(P)/3 proves the displayed conservative constant. In particular N(P,q)=O_B(ε²) on the real collinear locus, including the null diagonal. This is not enough to control an arbitrarily small Gram denominator.

## Explicit failures of pointwise regularization

1. **Exact diagonal with complex stress momentum.** For q=p real timelike and spatial p nonzero, the exact component is

$$N_{00}(p+i\epsilon n,p)=-\frac23\epsilon^2|\mathbf p|^4.$$

The outer denominator is

$$\lambda(X,x,0)=(2i\epsilon E-\epsilon^2)^2,$$

so |N₀₀ λ^(-5/2)| grows as a positive constant times ε^(-3). Adding the homogeneous numerator λ+6b²τ²=λ at τ=0 still leaves ε^(-1). This is a pointwise obstruction, not a proof of failure in distributions.

2. **Real timelike-transfer approach to the nonzero null diagonal.** Let l=(1,1,0,0), m=(1,-1,0,0), fix κ>0, κ≠1, and take

$$p=l+u m,\qquad q=(1-h)l+(1-\kappa h)u m,$$

with u>0, 0<h<min(1,1/κ). Both p,q and k=p-q=h l+κhu m are future timelike. As u,h→0, p,q approach the same nonzero null vector. Exactly,

$$\lambda=16u^2h^2(1-\kappa)^2,\qquad
N_{00}=\frac83(1-u)^2u^2h^2(1-\kappa)^2,$$

and therefore

$$N_{00}\lambda^{-5/2}=\frac{(1-u)^2}{384u^3h^3|1-\kappa|^3}.$$

Even multiplying by the actual homogeneous numerator gives

$$
N_{00}\frac{\lambda+6b^2\tau^2}{\lambda^{5/2}}
=\frac{(1-u)^2[(1-\kappa)^2+6\kappa(1-h)(1-\kappa h)]}
{24uh|1-\kappa|^3}.
$$

Again this disproves uniform pointwise regularity, not local integrability by itself. At a fixed positive-mass generic collinear threshold, the numerator instead gives λ^(-3/2)∼r^(-3) in three transverse relative-velocity directions, so separated components are not absolutely locally integrable. An open angular patch with nonzero quadrupole component gives the logarithmic absolute divergence.

## Hessian representation and its null contact obstruction

With D=2√Δ and derivatives with respect to qⁱ,

$$\partial_{q^i}\Delta=2u_i,\qquad \partial_{q^j}u_i=H_{ij},\qquad
\boxed{\partial_{q^i}\partial_{q^j}\frac1D=\frac{48N_{ij}}{D^5}\quad(\Delta>0).}$$

For fixed timelike p, in its rest frame D=2a|q_spatial|. The standard distributional Coulomb Hessian contains

$$-\frac{2\pi}{3a}\pi_{ij}(p)\delta^3(q_{\mathrm{rest,spatial}}),\qquad
\Box_q\frac1D=-\frac{2\pi}{a}\delta^3(q_{\mathrm{rest,spatial}}).$$

Thus the tracefree fixed-p finite part is

$$\mathrm{FP}_{p}\frac{48N_{ij}}{D^5}
=\partial_{q^i}\partial_{q^j}\frac1D
-\frac{\pi_{ij}(p)}3\Box_q\frac1D.$$

This identity uses the fixed-p rest-frame spherical finite part; it does not choose an extension at p-null. Indeed, parameterizing the contact support by q=t p gives dq_rest⁰=a dt, so its action on a joint test contains

$$-\frac{2\pi}{3}\int d^4p\,dt\,\pi_{ij}(p)\phi(p,tp).$$

Near a nonzero null p, π₀₀=|p_spatial|²/x and d⁴p is a smooth nonzero factor times dx dE dΩ. For a nonnegative test supported near (p,tp), t>0, the 00 contact has ∫₀ dx/x divergence. Therefore the TT subtraction cannot simply be extended by an ordinary joint locally integrable contact measure. A scalar locally integrable majorant permits distributional differentiation, but multiplying its trace derivative by π introduces this new null-extension problem. Cone-boundary derivative terms, all-insertion cancellations, or a specified regulator might resolve it; none is established by this fixed-p identity alone.

### The physical homogeneous weight removes this contact obstruction

The parent observed the additional cancellation, independently checked by substitution here. With S=D²+6yτ² and q=t p, one has y=t²x, τ²=(1-t)²x, D=0, and

$$S\big|_{q=tp}=6t^2(1-t)^2x^2.$$

Consequently the weighted contact, after q integration, is

$$-4\pi\int d^4p\,dt\,t^2(1-t)^2\big[x^2\eta_{ij}+xp_ip_j\big]\phi(p,tp),$$

which has no inverse stress mass. It is locally integrable even near nonzero null p; at p=0 the growth of the allowed t range on compact q sets is also harmless after changing variable to q⁰=t p⁰: the coefficient scales at worst as 1/p⁰ while d⁴p supplies (p⁰)³. Thus the unweighted contact obstruction must **not** be advertised as an obstruction to the actual weighted homogeneous term. The pointwise weighted counterexamples above remain valid, but singular functions can have well-defined finite-part distributions. Establishing the weighted invariant-cutoff extension on both physical timelike sectors, and then its equality to the genuine regulated all-insertion sum, are distinct further steps not performed here.

## Verification and scope

Analytic derivations above were checked in fresh Wolfram kernels. First batch: projector equality, conservation, trace, u norm, polynomiality after complex shift, complex conservation/trace, exact null-diagonal path N₀₀ and λ all passed; the diagonal shifted component and outer λ were also obtained exactly. Second batch: Δ gradient, u derivative, Hessian numerator identity, and angular contact integral ∫S²nᵢ²dΩ=4π/3 all passed. Both runs returned no messages. A third fresh kernel checked the corrected complex Gram expansion and physical-weight collinear identity exactly; both passed with no messages.

- [First exact CAS output](</Users/koishi/.dsh/research-results/session-124b18277125/ee76887e13ac-research-result-readable.txt>)
- [Hessian/contact CAS output](</Users/koishi/.dsh/research-results/session-124b18277125/7e7d4cf88c5f-research-result-readable.txt>)
- [Complex Gram and weighted-contact CAS output](</Users/koishi/.dsh/research-results/session-124b18277125/14d725f916a7-research-result-readable.txt>)

The Hessian identity was supplied as a question by the parent and independently rederived here, not assumed. No further independent subagent could be launched at this delegation depth. No conclusion is claimed about the full combined complex-time-regulated gravitational vacuum coefficient, which may have cancellations absent in the separated terms.
