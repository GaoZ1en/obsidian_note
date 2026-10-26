# Independent PBH calculation for finite-radius BF insertions

## Result and conventions

The pure boundary-metric response is fixed, but it is not the response of a local dimension-two primary at finite radius. Work in Euclidean AdS5, active convention δg=L_ζg, δφ=ζ·∂φ, ds²=ell² z^−2(dz²+δij dx^i dx^j), U_a=N(a/ell)^−2 φ(a,x), N²=2π²/ell. The logfree, regular scalar covariance is

C_ab(k)=2π² I0(k min(a,b)) K0(k max(a,b)).

Define the total source-functional response by

K_ij(z;x,y)=2 δ C_ab[g0](x,y)/δg0_ij(z)|g0=δ,

with source pairing ∫d⁴x j_a(x)U_a(x), no slice-volume factor. This calculation is at leading scalar order and first boundary metric order. Its K for physical T is order N⁰; divide all formulas by sqrt(C_T) for the unit-normalized stress, with C_T=10N²/π⁴.

## 1. PBH vector and the actual finite-radius transformation

For δg0_ij=∂i vj+∂j vi+2ωδij the FG-preserving extension is

ζ^z=−zω,  ζ^i=v^i+(z²/2)∂iω,

and H_ij=∂i vj+∂j vi+2ωδij+z²∂i∂jω, H_zμ=0. Thus

δU_a=v·∂U_a−ω(a∂a+2)U_a+(a²/2)∂iω ∂iU_a.                 (1)

The extrapolate factor is held at label a. In particular, the −2ω term follows from φ=a² U_a/(N ell²); it must not be removed by transforming that factor as part of φ. Boundary v,ω are not anchored gauge redundancies. Bulk diffeomorphism covariance of the Green function gives

δC_ab=(D_a^x+D_b^y)C_ab,

where D is (1). There is no additional finite-radius anomaly before source subtraction. The logfree UV boundary condition is preserved by PBH. The IR-growing Weyl vector may be cut off beyond the insertions and accompanied by an anchored gauge transformation; this does not change the anchored observable.

A direct scalar-equation check uses D_k=∂z²+z^−1∂z−k². For a Weyl plane wave with momentum p, writing P=p·k, the variation is δU=−zf'−2f−z²Pf/2. The generic linear metric variation gives

δD f=−zp²f'−2p²f−P(2+z²p²/2)f+2k²f−z²P²f.

Then D_(k+p) δU+δD f=0 using f''=k²f−f'/z. This was checked symbolically.

## 2. Localized Ward response

Put δ_x=δ⁴(z−x), δ_y=δ⁴(z−y). Integration against v and ω gives

∂z^i K_ij=−δ_x ∂x^j C_ab−δ_y ∂y^j C_ab,                  (2)

K_i^i=−δ_x(a∂a+2)C_ab−δ_y(b∂b+2)C_ab
       −(a²/2)∂z^i[δ_x ∂x^i C_ab]
       −(b²/2)∂z^i[δ_y ∂y^i C_ab].                    (3)

These contacts are at the boundary anchors, not at the physical bulk points. Their coefficients retain radial derivatives and finite-radius gradients. At equal radial labels all radial derivative contacts mean the prescribed smooth radial mollifier limit; independently assigning one-sided derivatives at the covariance kink is not permitted.

Use Fourier transform ∫e^−ikx, p+k1+k2=0, q=|k1|, r=|k2|. Then

D_j:=p^iK_ij=k2_j C_ab(r)+k1_j C_ab(q),                  (4)

τ:=K_i^i=−[a∂a+2+(a²/2)p·k2]C_ab(r)
          −[b∂b+2+(b²/2)p·k1]C_ab(q).                 (5)

For a<b, a∂aC=2π² ak I1(ka)K0(kb), b∂bC=−2π² bk I0(ka)K1(kb). Thus (5) is explicit in Bessel functions; interchange a,b for the other ordering.

At p≠0 these data and a TT kernel determine the full response algebraically:

K_ij=K^TT_ij+(p_iD_j+p_jD_i)/p²−p_ip_j(p·D)/p⁴
     +(π_ij/3)[τ−(p·D)/p²],  π_ij=δij−p_ip_j/p².       (6)

Both divergence and trace of this completion were checked symbolically. The already computed TT diagram can therefore be combined with (4)–(6) to define the minimal source-functional completion. This does not fix separately added p=0-supported sectors, nor itself prove a full Schwartz boundary limit of the completed three-point distribution.

## 3. The BF boundary-action vertex cannot be omitted

The quadratic BF completion is

Sct=(1/(2ell))∫_(z=ε) sqrt(h)[2+1/log(ε/ell)] φ².

For a finite insertion line ψ_a(z,k)=A z² I0(k min(z,a))K0(k max(z,a)), A²=2π²/ell³, one has ψ_a~A z²K0(ka). Hence the cross-source metric variation for boundary h0 is finite:

δSct|_(j_a j_b) → 2π² tr(h0) K0(qa)K0(rb).             (7)

It contributes −4π² δij K0(qa)K0(rb) to 2δW/δh0_ij. This is an individual vertex, not the final trace. It cancels the appropriate UV endpoint contribution of the bulk scalar-stress vertex. It vanishes in TT projection and for normalizable h=O(z⁴), but not for a general boundary metric source. The Green-function/PBH derivation includes this completion automatically. Applying the old normalizable-metric argument to h0≠0 would miss (7).

## 4. Source subtraction, density convention, and anomaly

The required unequal-radius subtraction is

S_ab=2π² log(R/ell), R=max(a,b),  Cren_ab=C_ab+S_ab.

The original flat subtraction alone does not specify its curved-metric extension. With fixed coordinate source density j and pairing d⁴x jU, the minimal diffeomorphism-covariant extension is

Wct=(1/2)∫d⁴x S_ab j_a j_b/sqrt(g0),                    (8)

with a sum/integral over layer labels understood. It is not sqrt(g0) j_a j_b unless j has first been redefined as a scalar source J=j/sqrt(g0). Equation (8) yields

Kct_ij=−S_ab δij δ⁴(z−x)δ⁴(x−y),

hence Dren_j=k2_j Cren_ab(r)+k1_j Cren_ab(q), and

τren=−[a∂a+2+(a²/2)p·k2]Cren_ab(r)
      −[b∂b+2+(b²/2)p·k1]Cren_ab(q)+A_ab,

A_ab=2π²+(S_ab/2)[a²p·k2+b²p·k1].                     (9)

The constant follows from (a∂a+b∂b)S_ab=2π², including the simultaneous derivative at a=b. The derivative contact in (9) is finite-cutoff PBH breaking by the simple local subtraction; it tends to zero like R²log R at fixed momenta. Thus

Cren_00(k)=−2π²[log(k ell/2)+γ_E],

τren_00=−2 Cren_00(r)−2 Cren_00(q)+2π².                 (10)

In position space the anomalous term is +2π² δ⁴(z−x)δ⁴(x−y). Equivalently, after the source-density Weyl transformation δj=2ωj is included in the boundary limit, the quadratic functional anomaly is +π²∫d⁴x ωj² at flat g0. A purely gravitational Weyl anomaly has no two-scalar derivative in normalized W[g,j]−W[g,0] at this order.

Holding the flat subtraction metric-independent gives Kct=0 instead of (8); it does not obey the same covariant source Ward identity and leaves different logarithmic response contacts. Consequently the flat source functional by itself cannot fix all metric seagulls. Equation (8) states the extra extension convention explicitly.

For continuous radial sources with measure da, the source transformations canceling (1) are δ_v j=∂i(v^i j) and

δ_ω j=ω(j−a∂a j)+(a²/2)∂i(j∂iω).

A collection of fixed-radius delta layers is not closed under these transformations: radial derivative sources or moving layer labels are generated. This is another direct obstruction to treating finite U as an ordinary local primary.

## 5. Physical stress versus total metric response

For an explicitly source-dependent relational operator, the exact differentiation rule is

K_ij=<T_ij U_a U_b>_c
 +2< (δU_a/δg0_ij)U_b+U_a(δU_b/δg0_ij)>_c
 +2 δ³Wct/(δg0_ij δj_a δj_b),                          (11)

where the stress convention is δW/δg0_ij=+sqrt(g0)<T^ij>/2 and the explicit derivatives keep the underlying integration variables fixed. All source-dependent gauge-fixing/trivialization terms belong in the explicit insertion derivative when present.

In a bulk FG convention with fixed coordinate scalar integration variables, U_a has no elementary explicit variation along the displayed FG boundary-metric family; the dressing vector is zero. The corresponding source-defined Brown–York mixed insertion then equals K minus the explicit source subtraction, provided the BF action vertex (7) is retained. One must not add the dressing again in that gauge.

Nevertheless this does not prove that an independently defined, metric-independent CFT composite representing U has zero explicit source derivative. Changing its extension to curved sources reshuffles (11), while leaving its flat operator value unchanged. A generic assertion that the metric derivative is the physical ordered TUU correlator would silently choose this extension. In particular the Wightman stress is conserved and traceless as an operator distribution; Euclidean source-contact formulas (2), (3), and (10) are not to be appended to a positive-energy cut correlator.

The completed K is therefore a well-defined minimal Euclidean source-response result with stated counterterm/anchor extension, not an all-transfer identification of the physical Lorentzian mixed product.

## Verification status

Analytic: FG-preserving vector, transformation (1), Ward distributions (2)–(5), UV BF vertex (7), density seagull (8), anomaly (9)–(10), and the differentiation distinction (11).

Wolfram: scalar differential-equation residual zero; all four completion-divergence residuals zero; completion trace zero; Bessel Euler identity a∂aC+b∂bC=k∂kC zero; radial subtraction derivative 2π²; boundary covariance k∂kCren=−2π². No kernel messages. These finite CAS checks supplement the analytic derivation.

Not proved here: full all-momentum uniform distributional estimates for (6), a unique curved-source definition of the exact interacting CFT relational operator, loop/composite renormalization, or added zero/edge sectors. No existing project files were changed.
