# Independent review of the retarded TT projector and the physical bridge

## Finding

The analytic causal product of the four-dimensional TT projector and
the radial response differs from the retarded dispersion integral of
bare physical CPS modes. The difference is explicit, nonzero, and
contains massless constraint kernels. Equality of the cubic vertex
and the free mode space therefore does not, by itself, prove equality
of these two responses.

The original analytic kernel can instead be obtained as the causal TT
projection of a complete sourced Einstein response, provided that
observable and its source adjoint are specified explicitly. This is an
additional finite-switch observable specification. It must not be
identified with the bare physical-mode commutator by a change of name.

## 1. Independent radial expansion

Use $s=(p^0)^2-|\mathbf p|^2$ and

\[
R(s,u)=-K_0(u\sqrt{-s})
\]

on the spacelike sheet, continued by the retarded prescription.
The normalizable metric boundary response is

\[
H(s,u)=\frac{s^2}{2}\partial_s^2R(s,u)
=\frac{s u^2}{8}K_2(u\sqrt{-s}).
\tag{1}
\]

The small-argument Bessel expansion gives

\[
\boxed{
H(s,u)=-\frac14-\frac{u^2}{16}s+O(s^2\log(-s)),
\qquad H_0=-\frac14,\quad H'_0=-\frac{u^2}{16}.
}
\tag{2}
\]

Both coefficients are fixed by the radial Green function. In
particular the two subtractions below are nonzero.

## 2. Physical-mode dispersion and analytic projection

The projector is the four-dimensional massive TT projector,

\[
P_{ij}=\eta_{ij}+\frac{p_ip_j}{s},\qquad
\Pi_{ij,kl}
=\frac12(P_{ik}P_{jl}+P_{il}P_{jk})
-\frac13P_{ij}P_{kl}.
\tag{3}
\]

Restrict its tensor indices to spatial components, keeping the
boundary spatial momentum fixed. Then it has the form
$A+B/s+C/s^2$. In the physical-mode dispersion relation the
projector is evaluated at the on-shell radial mass $\mu^2$, while
the retarded denominator has off-shell variable $s$.

The elementary identities

\[
\int \frac{d\rho(\mu)}{\mu^2(s-\mu^2)}
=\frac{H(s)-H(0)}s,
\qquad
\int \frac{d\rho(\mu)}{\mu^4(s-\mu^2)}
=\frac{H(s)-H(0)-sH'(0)}{s^2}
\tag{4}
\]

follow by partial fractions, with the same regulated radial
spectral measure that defines $H$.
Thus the bare mode response is

\[
D_{\mathrm{mode}}
=AH+B\frac{H-H_0}s
+C\frac{H-H_0-sH'_0}{s^2}.
\tag{5}
\]

The analytic causal tensor instead gives

\[
D_{\mathrm{causal}}=(A+B/s+C/s^2)H,
\]

and consequently

\[
\boxed{
D_{\mathrm{causal}}-D_{\mathrm{mode}}
=\frac{BH_0}{s_{\rm ret}}
+\frac{C(H_0+s_{\rm ret}H'_0)}{s_{\rm ret}^2}.
}
\tag{6}
\]

Here $s_{\rm ret}^{-1}$ and $s_{\rm ret}^{-2}$ are the retarded
massless Green distributions. Their difference is not confined to
the momentum-null set; these Green kernels are nonzero away from it
as well.

For $p=(\omega,k,0,0)$,

\[
\Pi_{11,11}=\frac23(1+k^2/s)^2,
\]

so

\[
\boxed{
(D_{\mathrm{causal}}-D_{\mathrm{mode}})_{11,11}
=-\frac{k^2}{3s_{\rm ret}}
-\frac{k^4}{6s_{\rm ret}^2}
-\frac{k^4u^2}{24s_{\rm ret}}.
}
\tag{7}
\]

At $\omega=0,k=u=1$, $s=-1$ and the analytic component is zero,
whereas the mode response is $-5/24$. The discrepancy is
$5/24$. At $\omega=2,k=u=1$, the discrepancy is $-31/216$
in a strictly timelike open region.

These examples disprove the proposed inference from “the same
physical free modes” directly to “the same retarded off-shell
response.”

## 3. A source-defined causal observable that can yield the analytic kernel

Let $S_w^{\rm anc}$ be the completed anchored action, including
the scalar free-action compensation and the adjoint conserved
metric source $Q=\mathcal P^\dagger J$. Its tangent component is
$Q_{ij}=J_{ij}$. Keep the actual radial endpoint conditions and
the boundary BF/source completion.

The observable must be specified as follows:

\[
\mathcal O^{\rm ret}_{v,ij}
=\frac1{\alpha v^4}
\Pi_{\rm ret}\big(\mathcal P H\big)_{ij}(v),
\tag{8}
\]

with radial layers used before a boundary limit. On the free
physical CPS field the projection is the identity. On a
finite-switch sourced correction it is defined by the retarded
inverses of $\square_4$ on the past-compact correction.

Coupling a source to (8) means the actual adjoint pairing

\[
\int j^{ij}\Pi_{\rm ret}(\mathcal P H)_{ij}
=\int (\Pi_{\rm adv}j)^{ij}(\mathcal P H)_{ij},
\tag{9}
\]

followed by $\mathcal P^\dagger$ in the metric variation.
The advanced-projected test generally has noncompact past
support. At the first mixed coefficient its pairing with the
past-compact sourced response is proper on the corresponding
causal diamond. The free field part is paired by the identity
projection. This specifies the relevant affine history domain;
it does not assert that an advanced-projected source remains
compact.

Suppose $H[J]$ is the complete retarded Einstein response to
$Q$, with the stated UV, IR and anchor conditions. In normal
FG variables, the terms of the tangent Einstein equation
outside the spin-two radial operator have the form
$\partial_{(i}V_{j)}$ or $\eta_{ij}S$.
On the specified past-compact domain, put
$P_i{}^j=\delta_i{}^j-\partial_i\square_{\rm ret}^{-1}\partial^j$.
The two-sided inverse identities on that domain imply
$P^2=P$, $\partial^iP_i{}^j=0$ and $\operatorname{tr}P=3$.
They imply that $\Pi_{\rm ret}$ annihilates the displayed
gradient and trace terms; it also commutes with the radial
operator. Thus this step is an operator identity with a
specified inverse, rather than multiplication by an undefined
real $1/s$ projector. Hence

\[
L_2\,\Pi_{\rm ret}(\mathcal P H)
=-\frac4{N^2}u^4\Pi_{\rm ret}J.
\tag{10}
\]

The retarded zero-past condition and the same radial boundary
conditions then determine its solution as $G_2^{\rm ret}\Pi_{\rm ret}J$.
The upper-half-frequency analytic identity (1), combined with the
polynomial tensor numerator, yields exactly the original
$\mathcal N\,\partial_s^2R$ kernel.

This is a response theorem for the full constrained system and the
observable (8). It supplies the missing constraint terms in (6)
through the complete response and the causal projection.
The bare physical-mode dispersion (5) remains a distinct object.

## 4. Data that must remain explicit in the bridge

For (10) to be a full theorem, the physical completion report must
state or prove:

- the complete conserved source, including the free-action
  compensation and insertion-source adjoints;
- the full retarded Einstein boundary-value problem and its
  chosen zero additional homogeneous/edge sector;
- the allowed anchored gauge domain and the treatment of radial
  endpoint flux, independently of the zero-past condition;
- the affine-history definition of (8), with the adjoint source
  (9);
- projection of the full Einstein equation before invoking the
  spin-two radial inverse.

The late correction therefore changes the physical interpretation,
not the already proved mathematical estimates for the analytic
kernel. An assertion that the original bare-CPS switched
commutator itself has that kernel would require a different proof
and is contradicted by (7).

## 5. Actual checks

retarded_projector_checks.py independently verifies the Bessel
identity, both null Taylor coefficients, the two spectral
partial-fraction identities, the projector coefficient, and the
two explicit discrepancy examples. The distinction is supported
by exact algebra, not only by numerical samples.

## 6. Review of the subsequent full constrained construction

The subsequent half_bps_stress_causal_source_bridge.md supplies an explicit
construction of the full Einstein weak solution on finite radial
slabs. Equations (P8)–(P16) have been checked independently:
the proposed trace and divergence solve both radial constraints;
the retarded non-TT reconstruction has exactly those data and
zero causal TT projection; the linearized Bianchi identity then
reduces the remaining tangent equations to the solved TT equation.
The radial source moment and the exterior pure-gauge tail also
have the stated coefficients.

This establishes the local source-to-response statement needed for
(10). A separate global phase-space condition remains: the allowed
regular representative and its radial endpoint/transition
contribution must define the same completed action and symplectic
domain. The generally nonzero exterior \(u^2\) tail is explicit
evidence that zero-past data and zero additional edge data do not
settle that issue. The full global Einstein-CPS identification
therefore remains conditional.

Likewise, the advanced source in (9) is used as an adjoint test
on the specified affine history domain. Its free part is paired
through the TT identity and its sourced part through a proper
causal pairing. This construction does not assert unrestricted
zero-past source evolution for every noncompact
advanced-projected source.

The further dense-domain lemma (P16b) also passes review. Smooth
compact spectral amplitudes with a positive radial-mass gap
have phases \(\pm\mu u-\omega t\) whose \(\mu\)-derivative is
bounded below by \(u-T\) on every fixed finite time window.
Repeated integration by parts gives rapid radial decay in all
spatial Schwartz seminorms. Hence the first-order cross flux of
one polynomial constrained tail with one free physical packet
vanishes at the radial endpoint. This closes the weak coefficient
bridge on that specified dense domain. It does not control two
sourced tails or imply a global interacting operator-domain
theorem. The all-momentum extension is fixed independently by
the common causal radial construction and (P19), rather than by
Hilbert-space density alone.

## Reproducible verification files

- [retarded_projector_checks.py](checks/stress_completion/retarded_projector_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
