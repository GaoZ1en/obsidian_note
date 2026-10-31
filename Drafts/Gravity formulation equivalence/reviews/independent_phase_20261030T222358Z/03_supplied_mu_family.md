# Supplied follow-up: a genuine local spectral phase defect

## Provenance and verdict

This family was suggested by the parent only after the initial independent result had been derived and frozen. The parent supplied B_mu and the finite-dimensional gauge-pair question, but did not supply a coefficient or candidate phase. The coefficient, heat-residue derivation, real-part argument, and contour normalization below were derived here before the parent's subsequent agreement message. This report was frozen before reading or auditing the parent's new synthesis.

**The bare separate spectral-zeta determinant is not invariant under this normalized Nakanishi gauge deformation.** Its defect relative to the fixed common-Casimir prescription is purely imaginary and local. The real multiplicative anomaly vanishes.

Let V denote the stipulated spatial-first renormalized volume, and let H_mu=2a B_mu with

B_mu = [[K,G],[G^dagger,mu I]],  mu real.

Keep the same original field norm, multiplier norm, fixed Fourier multiplier density, and ghost determinant det M, M=G^dagger G=R_1 direct-sum R_1. Then

eta_Bmu(0) = V mu(mu^2+36)/(8 pi^2),
zeta_|Bmu|(0)=0,

Log det_zeta,- H_mu - Log det_common,- H_mu
    = i V mu(mu^2+36)/(16 pi),

log Z_zeta - log Z_common
    = -i V mu(mu^2+36)/(32 pi).

The common prescription is independent of mu and has phase one. The formulas concern continuous logarithms transported from mu=0. Exponentiated phases are understood modulo 2 pi.

For the canonical axial geodesic volume V=-pi beta/2, the one-loop ratio is

Z_zeta/Z_common=exp[i beta mu(mu^2+36)/64].

For example, mu=-1 is already a conventional convergent imaginary-multiplier gauge average, and gives exp[-i 37 beta/64]. The defect is independent of theta and of the positive overall Hessian scale 2a.

## Complete gauge-pair decomposition

Because M>=4, the polar isometry

U=G M^(-1/2)

is defined on the entire parameter Hilbert space and has closed image ran G. It is unitary from that space onto ran G, not just a formal identification of eigenvalues. The orthogonal field splitting is

H_fields=ker G^dagger direct-sum ran G.

The identities KG=0 and G^dagger K=0 make this a reducing splitting. The physical block is K on ker G^dagger and does not depend on mu. On ran G plus the multipliers, use the coordinates q_g=Ux. Then the exact operator is

[[0,sqrt M],[sqrt M,mu]].

The relevant domain in these coordinates is D(sqrt M) direct-sum D(sqrt M), equivalently H1 direct-sum H1. This unitary decomposition preserves the complete L2 problem. Its two branches are

lambda_+(r)=sqrt(r+t^2)+t>0,
lambda_-(r)=-(sqrt(r+t^2)-t)<0,
t=mu/2, r>=4.

Their product is -r. There is no crossing for any finite real mu; a lower bound for the gauge-sector absolute spectrum is sqrt(4+t^2)-|t|>0. The physical block has absolute gap at least one. B_mu is a bounded zeroth-order perturbation of B_0, so it remains selfadjoint on H1 and elliptic.

## Fixed normalization and legitimate contour

In every finite-dimensional gauge singular mode, the action is

a[2 sqrt(r) x b+mu b^2].

Use the same multiplier density (a/(pi i)) db and the same ghost normalization as in the balanced report. The determinant-one shear

x'=x+mu b/(2 sqrt(r)), b'=b

reduces the action exactly to 2a sqrt(r)x'b. Its inverse transports the oriented mu=0 integration cycle to a convergent cycle C_mu, with no eigenvalue crossing and no change of finite determinant or inertia. On the full Hilbert space the corresponding bounded order-minus-one shear is

q'=q+(mu/2)G M^(-1)b.

It preserves the Sobolev domains. Thus

(a/(pi i)) integral_Cmu dx db exp[-a(2sqrt(r)xb+mu b^2)]
     =1/sqrt(r)

for every finite mode. Ghosts multiply this by r. No mu-dependent measure factor is introduced.

When mu=-alpha<0, the original b=iy contour is itself a standard convergent Gaussian gauge average:

(a/pi) integral_R dy exp[-a alpha y^2-2ai y F]
   =sqrt(a/(pi alpha)) exp[-a F^2/alpha].

Thus the counterexample does not rely solely on a formal continuation to unusual gauge parameters. For all other real mu the transported thimble gives a precise definition.

## Why the common regulator is exactly invariant

R=B_0^2 commutes with the polar decomposition and with B_mu. On each gauge pair it is diag(r,r). The finite pair logarithm is

Log_-(lambda_+)+Log_-(lambda_-)=log r-i pi,

independent of mu. Its sign trace is zero. The physical block is unchanged. Hence for every epsilon>0 the common regulated trace of the change is exactly zero, before taking a spatial or epsilon finite part. The fixed Fourier density and ghost operator are likewise unchanged. This is stronger than an equality of only the local coefficients.

## Eta calculation from actual vector residues

Let Q=M+t^2, w=sqrt Q, and let zeta_Q denote the same spatial-first renormalized zeta function on both full vector parameter copies. The gauge eta function is

eta(z)=Tr_ren[(w+t)^(-z)-(w-t)^(-z)]
      =-2 sum_{k>=0} (z)_(2k+1) t^(2k+1)/(2k+1)!
                         zeta_Q(z/2+k+1/2).

Here (z)_n is the rising factorial. Since t^2/Q has norm strictly less than one for each finite mu, the binomial series is first valid in a right half-plane and then can be continued. In dimension three, the only terms surviving at z=0 are k=0 and k=1, through the poles at 1/2 and 3/2. The factor two in the residues induced by z/2 is essential.

For the rank-six parameter bundle, R_scalar=-6 and M=nabla* nabla+2. The actual local heat coefficients are

a_0(M)=6V/(4pi)^(3/2),
a_2(M)=(-1-2)6V/(4pi)^(3/2)=-18V/(4pi)^(3/2).

Since a_2(Q)=a_2(M)-t^2 a_0(M),

eta(0)=-4t a_2(M)/sqrt(pi)+4t^3 a_0(M)/(3sqrt(pi))
      =V(9t+t^3)/pi^2.

The physical eta function is identically zero by the balanced anticommuting symmetry. Nonidentity loxodromic heat terms have no short-time residues and do not contribute to this eta value. This computation uses the true gravity multiplier/vector content, not a de Rham toy coefficient.

## Independent local-variation check

The eta variation formula gives

d eta(0)/d mu=-(2/sqrt pi) a_2(P_b,B_mu^2),

with P_b the rank-six multiplier projection. The first-order change in the squared operator has coefficients mu A_j, where A_j is the off-diagonal gauge derivative symbol. Completing the connection square gives

sum_j tr(P_b A_j^2)=-18,

a_2(P_b,B_mu^2)=V/(4pi)^(3/2)[-18-(3/2)mu^2].

Therefore

d eta(0)/d mu=V(36+3mu^2)/(8pi^2).

Integrating from the independently proved eta_B0=0 reproduces the cubic answer. This check uses the full local augmented operator rather than the helicity spectral density. The accompanying Wolfram matrices return {-6,-6,-6} for the three directional traces, with no messages.

## Why the real-part anomaly is zero

The absolute zeta function of the gauge pair is

zeta_abs(z)=2 sum_{k>=0} (z)_(2k) t^(2k)/(2k)!
                                  zeta_Q(z/2+k).

The only zeta_Q poles are at half-integers 3/2,1/2,-1/2,...; in particular, no positive integer k is a pole. Differentiation at zero therefore gives

-log derivative at zero = log det Q
                         -sum_{k>=1} t^(2k) zeta_Q(k)/k
                       = log det(Q-t^2)=log det M.

The last equality can equivalently be obtained by integrating the regularized resolvent identity along the positive segment Q-u, 0<=u<=t^2. The uniform gap and t^2/Q<1 control the binomial series. Thus there is no omitted local real multiplicative anomaly. In residue language, log[(w+t)/(w-t)] has only odd inverse powers of w; its square has only even powers and hence no dimension-three residue. The binomial argument is the direct proof in the prescribed spatial renormalization; the residue observation is a cross-check, not a substitute for it.

Also zeta_|Bmu|(0)=0: B_mu^2 is a positive Laplace-type operator on a complete odd-dimensional quotient with no zero mode, and its spatially renormalized heat expansion has no t^0 term. For the specified branch,

log det_zeta,- B_mu
  =-zeta_abs'(0) -(i pi/2)zeta_abs(0)+(i pi/2)eta(0).

This fixes the displayed phase sign. A positive factor 2a does not change eta(0), and its logarithmic scaling multiplies the vanishing zeta_abs(0).

## Spectral-counting numerical check

As an independent spectral-density cross-check, one full vector has helicities h=0,+1,-1. For h=0 the r-channel is lambda^2+5 with density lambda^2/(2pi^2); for h=+/-1 it is lambda^2+4 with density (lambda^2+1)/(2pi^2). For a single channel (p,c), the cumulative density is

N(r)=[(r-p)^(3/2)/3+c sqrt(r-p)]/(2pi^2).

Separate positive/negative energy cutoffs give N(Lambda^2-2tLambda)-N(Lambda^2+2tLambda). Its constant term is t(p-2c+t^2/3)/(2pi^2). Summing the two full vectors yields the same eta polynomial.

For mu=1 and V=1, subtracting the leading -6t Lambda^2/pi^2 term gives 0.47243264, 0.46955430, 0.46876097, 0.46864808, 0.46861987, 0.46861198 at Lambda=10,20,50,100,200,500, converging to 0.46861047434581219. The local heat derivation above does not depend on this representation-theoretic cross-check.

## Physical interpretation and remaining scope

The defect is a local **regularization/gauge-normalization anomaly of the bare separate spectral determinant**, not an unavoidable physical phase of real Euclidean gravity. The finite Fourier-normalized gauge family has exactly constant determinant and inertia. The common regulator preserves that finite identity. If a spectral prescription is required to represent the same normalized gauge quotient, it must include the compensating local finite phase. A fixed multiplier Jacobian is only a constant parameter-mode count, zero under the original M regulator; it does not cancel the cubic term by itself.

The nonlocal parts of the two determinants in this specified B_mu family agree: the exact pair reduction and the absolute-zeta identity prove this without evaluating a global product formula. This does not establish equality with a different metric/CS functional measure, boundary degrees of freedom, large-gauge sectors, or a nonlinear BV construction. Those full comparisons remain unproved here.

## Actual evidence

- mu_family_checks.txt: branch product, eta residue, absence of an odd cubic symbol in the real anomaly, determinant-one shear; all exact checks pass, no messages.
- eta_local_variation_checks.txt: independent local augmented-operator eta variation; exact agreement, no messages.
- eta_counting_checks.txt: exact high-energy expansion plus 40-digit numerical values.
- operator_checks.txt: the original balanced 24-by-24 operator identities.

These are actual executed Wolfram outputs. Reproduction inputs and raw tool result JSONs accompany this report. The initial malformed exploratory call is retained but explicitly excluded from evidence. No further delegation was permitted in this session.
