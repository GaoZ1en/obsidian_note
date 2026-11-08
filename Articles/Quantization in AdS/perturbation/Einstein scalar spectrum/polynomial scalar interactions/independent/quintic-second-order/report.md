# Quintic interaction at second order: necessary counterterms and a finite four-body theorem

## 1. Results, definitions, and scope

The necessary order-λ₅² bulk counterterms on fixed AdS₃ are the identity, :φ²:, and :φ⁴:. The logarithmically divergent quartic coupling has the universal coefficient
\[
\boxed{\delta\lambda_{4,\mathrm{loop}}
=-\frac{\lambda_5^2}{32\pi^2}\log(1/\epsilon)}.\tag{1}
\]
The counterterm has the opposite, positive sign. A vacuum condition and a one-body mass/gap condition leave its finite part undetermined. A two-body matching condition is necessary to define the minimal renormalized quintic theory.

A separate finite prediction survives this ambiguity: the highest connected, four-body ground coefficient. For generic Δ, its convergent formula is (15). One exact non-even example is
\[
\boxed{B_4(4/3)=-\frac{61947}{11648000\pi^3}}.\tag{2}
\]
This is independent of the vacuum, mass, quartic, and even a finite sextic coefficient. It is not independent of adding a new finite octic coupling.

Use radius one, signature (−++),
\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
 \quad m^2=\Delta(\Delta-2),\quad \Delta>1.
\]
The center is regular; the boundary is source-free standard fast falloff. The boundary clock is fixed, with no extra finite boundary multi-trace deformation. Set
\[
 H=H_0+\lambda_5 V+H_{\mathrm{ct}}^{(2)}+O(\lambda_5^3),
 \qquad V=\frac1{5!}\int r\,dr\,d\theta:\phi^5:_\Delta.
\]
Normal ordering is always with respect to the same free global vacuum, including counterterm monomials. The modes and KG normalization are those of the [first-stage chapter](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md#L28-L84>) and the [formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L253-L282>). In particular, the Hamiltonian vertex measure is r dr dθ, not the KG measure.

The assumed first-order theorem is: the complete resonant quintic matrix can be nonzero exactly at positive even integer Δ. Throughout the second-order nondegenerate normal-form construction below, Δ is not a positive even integer. Other rational Δ still require the complete free degenerate projection.

## 2. Explicit regulator and the local UV theorem

Wick rotate to Euclidean AdS₃ = H³. Let s be the geodesic distance and ν=Δ−1. Use the AdS-invariant regulator
\[
 K_{k,\epsilon}(x,y)=\mathbf1_{s(x,y)\ge\epsilon}G_\Delta(s)^k,
 \qquad
 G_\Delta(s)=\frac{e^{-\nu s}}{4\pi\sinh s}.
\tag{3}
\]
At two normal-ordered quintic vertices all contractions join the distinct vertices. The term with k lines between them is
\[
 -\frac{\lambda_5^2}{2k!(5-k)!^2}
 \int dV_xdV_y\,K_{k,\epsilon}(x,y)
 :\phi(x)^{5-k}\phi(y)^{5-k}:,
 \qquad k=1,\ldots,5,
\tag{4}
\]
in the Euclidean connected effective action. The minus sign is the second cumulant sign; it also agrees with the negative second-order energy denominator below threshold. The combinatorics is
\(\binom5k^2k!/[2(5!)^2]=1/[2k!(5-k)!^2]\).

Since dV around a point is 4π sinh²s ds, the short-distance test integrals are
\[
 I_{k,\epsilon}=\frac1{(4\pi)^{k-1}}
 \int_\epsilon^\infty ds\,\frac{e^{-k\nu s}}{\sinh^{k-2}s}.
\tag{5}
\]
For k=1,2 the kernels are locally integrable. For k=3 the divergence is logarithmic and the local field is φ⁴. For k=4 the divergence has degree one and the local field is φ². Covariant first derivatives integrate to zero; second derivatives multiply an integrable kernel. Thus no derivative counterterm is required. For k=5 the diagram is a vacuum density.

For the stated regulator the divergent parts are
\[
\begin{aligned}
 I_{3,\epsilon}^{\rm div}
 &=\frac1{16\pi^2}\log(1/\epsilon),\\
 I_{4,\epsilon}^{\rm div}
 &=\frac1{64\pi^3}\left[\frac1\epsilon
             -4\nu\log(1/\epsilon)\right],\\
 I_{5,\epsilon}^{\rm div}
 &=\frac1{256\pi^4}\left[
 \frac1{2\epsilon^2}-\frac{5\nu}\epsilon
 +\frac{25\nu^2-1}{2}\log(1/\epsilon)\right].
\end{aligned}\tag{6}
\]
The mass and vacuum subleading coefficients here belong to this explicit cutoff and the specified global-vacuum Wick prescription; unlike the quartic logarithm, they are not being asserted as independent of the choice of lower local renormalization prescription.

Write
\[
 H_{\mathrm{ct}}^{(2)}=\int r\,dr\,d\theta
 \left[\delta\Lambda+
 \frac{\delta m^2}{2}:\phi^2:_\Delta+
 \frac{\delta\lambda_4}{4!}:\phi^4:_\Delta\right].
\]
Equation (4) gives the required divergent coefficients
\[
\boxed{
 \delta\Lambda=\frac{\lambda_5^2}{240}I_{5,\epsilon}^{\rm div},\quad
 \delta m^2=\frac{\lambda_5^2}{24}I_{4,\epsilon}^{\rm div},\quad
 \delta\lambda_4=\frac{\lambda_5^2}{2}I_{3,\epsilon}^{\rm div}.
}\tag{7}
\]
For the last coefficient, the local effective action is
\(-\lambda_5^2 I_3\phi^4/48\), hence its coupling in the φ⁴/4! convention is −λ₅²I₃/2. This explicitly establishes the sign and factorial normalization of (1), not just its degree of divergence.

A radial IR cutoff may be retained when imposing the vacuum condition. The vacuum density subtraction is made before removing the infinite AdS spatial volume. Normalizable external-state matrix elements have no additional boundary UV counterterms for this problem and Δ>1. On the fixed constant-curvature background, vacuum curvature terms and Rφ² terms, if used as an alternative parametrization, are not distinguishable from the displayed vacuum and mass terms. No statement here separates those couplings on variable backgrounds.

## 3. Physical matching: what vacuum and gap fix

A complete minimal prescription is:

1. The interacting vacuum energy is assigned zero.
2. The lightest one-particle gap is Δ, equivalently its scalar representation has the prescribed physical mass Δ(Δ−2). AdS invariance then fixes the whole one-body descendant tower to Δ+p+q at this order.
3. Specify one connected two-body level, for example
   \[
   E_2-2E_1+E_0=\lambda_5^2\,\beta_2+O(\lambda_5^3),
   \tag{8}
   \]
   for the two-ground-mode branch. This fixes the one remaining finite quartic datum.
4. Do not add independent finite higher local interactions. Equivalently, their microscopic/matching couplings are zero. This last assumption distinguishes the stated quintic theory from a larger EFT.

Conditions 1 and 2 fix the necessary constant and quadratic on-shell pieces, up to field-normalization conventions and the fixed-curvature redundancies just described. They do not fix condition 3. Wavefunction normalization/residue is not an additional energy datum and no divergent kinetic counterterm occurs at this order.

The quartic ambiguity changes the ground two-body shift by
\[
 \delta(E_2-2E_1+E_0)
 =\delta\lambda_{4,\mathrm{fin}}\,\kappa_{2,0},
 \qquad \kappa_{2,0}=\frac1{8\pi(2\Delta-1)}.
\tag{9}
\]
A finite normal-ordered quartic term has zero vacuum and ground one-body diagonal matrix elements, but the nonzero two-body matrix element (9). Thus vacuum+gap cannot fix even the first nontrivial multiparticle level. Once (8) is supplied, the minimal theory has no further UV-forced coupling at this order; the remaining finite connected three- and four-body kernels and all full projected matrices are predictions. This is not a claim that all their eigenvalues have been explicitly solved here.

Adding a finite φ⁶, φ⁸, derivative interaction, or boundary deformation is not an alternative choice of the necessary UV subtraction alone: it changes the physical theory unless a matching condition identifies it. In particular, adding λ₅²c₈ :φ⁸:/8! changes (2) by
\[
 \delta B_4=c_8\,\kappa_{4,0},\qquad
 \kappa_{4,0}=\frac1{384\pi^3(4\Delta-1)}.
\tag{10}
\]
At Δ=4/3 this is c₈/(1664π³). A finite sextic term only changes connected coefficients through three bodies and does not change B₄.

## 4. Complete projection and why four bodies are highest

Let P=P_{E,J} project onto **all** free states with that energy and angular momentum, irrespective of particle number, and Q=1−P. For non-even Δ the first-order resonant operator vanishes, so
\[
 W_{E,J}=P VQ(E-H_0)^{-1}QVP
       +P(H_{\mathrm{ct}}^{(2)}/\lambda_5^2)P.
\tag{11}
\]
A zero-frequency vertex is removed by Q; it is never evaluated as 0/0. The full free block is obtained by listing all N with
\[
 P_N=\frac{E-N\Delta+J}{2},\quad
 Q_N=\frac{E-N\Delta-J}{2}\in\mathbb Z_{\ge0}.
\]

Equivalently, write [H₀,VΩ]=ΩVΩ and S=Σ_{Ω≠0}VΩ/Ω. The second-order resonant normal form is \(\tfrac12P[S,V]P\). The zero-contraction product of two quintic monomials cancels in the commutator. One through five cross contractions therefore give normal-ordered degrees 8,6,4,2,0. This proves that the highest connected interaction has four bodies, not five. Disconnected five-body terms cancel only after all time orderings are included.

At irrational Δ, resonance itself forces particle-number conservation and the ground state in each N sector is an isolated free state. Its order-λ₅² shift is therefore a polynomial of degree at most four in N, naturally expanded in binomial coefficients. Define
\[
 E_N=N\Delta+\lambda_5^2\sum_{k=0}^4\binom Nk B_k+\cdots,
 \qquad
 B_4=[E_4-4E_3+6E_2-4E_1+E_0]_{\lambda_5^2}.
\tag{12}
\]
The bracket means the coefficient of λ₅², not the full shift. All counterterms in (7) cancel from B₄. More generally, (12) holds for a ground branch whenever its second-order full projected block does not mix it with other states.

At other rational non-even Δ, PV P=0 does **not** justify projecting onto a chosen N sector before (11). The finite second-order degree-six and degree-eight operators can in principle have number-changing resonances; the complete projected matrix must be examined. Formula (15) below always gives the diagonal highest normal-ordered ground coefficient, but it is only an eigenvalue finite-difference statement under the nonmixing condition just stated. We do not claim a universal second-order particle-number theorem for all non-even Δ.

## 5. Analytic four-body ground formula with all creation allocations

Set x=(1+r²)⁻¹. The ground mode is
\[
 f_0=\frac{x^{\Delta/2}}{\sqrt{2\pi}}.
\]
Only angular-momentum-zero internal modes enter the single-contraction eight-leg term:
\[
 f_n=\frac{x^{\Delta/2}}{\sqrt{2\pi}}
 P_n^{(\Delta-1,0)}(1-2x),\qquad\omega_n=\Delta+2n.
\]
Their quintic source overlap is
\[
\begin{aligned}
 I_n&=\int r\,dr\,d\theta\,f_0^4f_n\\
 &=\frac1{2(2\pi)^{3/2}}
 \int_0^1 dx\,x^{5\Delta/2-2}
 P_n^{(\Delta-1,0)}(1-2x)\\
 &=\boxed{\frac{(2\pi)^{-3/2}}{5\Delta-2}
 \frac{(1-3\Delta/2)_n}{(5\Delta/2)_n}}.
\end{aligned}\tag{13}
\]
The last identity is the terminating Jacobi beta integral; no UV regulator is involved.

At one vertex let a of its four external legs be creation operators and 4−a annihilation operators. The other vertex has the complementary allocation. The coefficient of :a₀†⁴a₀⁴: in the resonant normal form is
\[
 C_4=\sum_{n\ge0}I_n^2
 \sum_{a=0}^{4}
 \frac1{a!^2(4-a)!^2\big[(2a-4)\Delta-\omega_n\big]}.
\tag{14}
\]
This sum explicitly includes a=0,1,2,3,4, i.e. fully backward creation orderings as well as annihilation/forward ones. It follows directly either from the one-contraction term in \(\tfrac12[S,V]\), or from occupation-number second-order matrix elements followed by extracting the coefficient of N falling-factorial degree four. Since a₀†⁴a₀⁴=4! binom(N,4), B₄=24 C₄.

Define the time-ordering pair
\[
 D(\Omega,\omega)=\frac1{\Omega-\omega}-\frac1{\Omega+\omega}.
\]
Then
\[
\boxed{
 B_4(\Delta)=\sum_{n\ge0}I_n^2\left[
 \frac1{24}D(4\Delta,\omega_n)
 +\frac23D(2\Delta,\omega_n)
 -\frac3{2\omega_n}\right].
}\tag{15}
\]
The 4Δ, 2Δ, and zero-frequency channels respectively come from allocations (0,4), (1,3), and 2. Omitting negative-frequency denominators changes the answer.

There is also a useful exact check on the entire 4Δ channel. In the radial Hilbert space with measure r dr dθ, let
\[
 T_\Omega=-\frac1r\partial_r[r(1+r^2)\partial_r]-\frac{\Omega^2}{1+r^2}.
\]
Direct differentiation gives
\[
 T_\Omega x^\alpha=-4\alpha(\alpha-1)x^\alpha
 +(4\alpha^2-\Omega^2)x^{\alpha+1}.
\]
The source f₀⁴ is proportional to x²Δ, so the Ω=4Δ inverse is algebraic. Including the reduced-resolvent prescription at a zero source pole,
\[
 \sum_{n\ge0}I_n^2D(4\Delta,\omega_n)
 =\frac1{48\pi^3\Delta(5\Delta-2)(4\Delta-1)}.
\]
This identity provides an independent differential-operator normalization check on the infinite spectral sum.

For nonterminating source coefficients, Iₙ=O(n^{1−4Δ}); the summand is O(n^{1−8Δ}). Thus the series is absolutely convergent for every Δ>1 away from actual resonant denominators. The apparent 4Δ=ωₙ resonance occurs when n=3Δ/2 is an integer; then (13) terminates at n−1, so the resonant term vanishes and is removed by Q. The 2Δ=ωₙ poles occur at positive even Δ, exactly the excluded first-order-splitting case. This is why one must not use a naive evaluation of (15) there.

## 6. Exact example Δ=4/3 and its complete free block

Here 1−3Δ/2=−1, so (13) has strict support n=0,1:
\[
 I_0^2=\frac9{1568\pi^3},\qquad
 I_1=-\frac3{10}I_0,\qquad I_{n\ge2}=0.
\]
The zero source at n=2 includes the single-leg resonance 4Δ=ω₂. It is excluded by Q, rather than assigned a 0/0 limit.

The two nonzero contributions to (15) are
\[
 B_{4,n=0}=-\frac{81}{17920\pi^3},\qquad
 B_{4,n=1}=-\frac{9297}{11648000\pi^3},
\]
which add to (2).

The N=1,2,3 ground energies have no other states in their full (E=NΔ,J=0) blocks. For N=4, the complete block is
\[
 \operatorname{span}\left\{
 \frac{(a_{00}^\dagger)^4}{\sqrt{4!}}|0\rangle,
 a_{22}^\dagger|0\rangle\right\}.
\]
Both have E=16/3, J=0. A single quintic resonant matrix element vanishes by the given first-order theorem (in this particular channel it is the one-leg orthogonality zero). At order λ₅², both VV and the required counterterms are even under free field parity (−1)ᴺ. The two states have opposite parity and therefore the off-diagonal entry of the complete W is exactly zero. The one-body entry is set to zero by the physical-gap condition. Consequently the four-ground-mode diagonal entry is a genuine second-order eigenvalue, and its fourth finite difference is the physical coefficient (2), not just a selected-subblock diagonal expectation value.

An independent finite-oscillator check does not assume (14). Restrict to the terms capable of contributing to the highest degree:
\[
 V_0=I_0\sum_{c=0}^5\frac{a^{\dagger c}a^{5-c}}{c!(5-c)!},
 \qquad
 V_1=I_1\sum_{c=0}^4\frac{a^{\dagger c}a^{4-c}(b+b^\dagger)}{c!(4-c)!},
\]
with ground oscillator frequency 4/3 and b frequency 10/3. For |N,0_b⟩, sum every allowed creation number c using its exact Fock factorial and energy denominator, then take Σ_{N=0}⁴(−1)^{4−N}binom(4,N)E_N. The two contributions are the two rationals above. Intermediate states with two or more non-ground virtual particles affect only lower connected degrees and cancel from this fourth difference.

## 7. Optional precise two-body formula with a quartic matching datum

This section supplies a separate, explicitly defined AdS-invariant spectral subtraction scheme. Its finite quartic parameter need not numerically equal the finite parameter in the geodesic scheme; physical matching (8) identifies the two.

For s>0 and integer k≥2 the propagator identity is
\[
 G_\Delta^k=\frac1{(2\pi)^{k-1}}
 \sum_{a\ge0}\binom{a+k-2}{k-2}G_{k\Delta+2a}.
\tag{16}
\]
In particular, the three-line kernel generating four external legs is
\(G_\Delta^3=(4\pi^2)^{-1}\sum_{a\ge0}(a+1)G_{3\Delta+2a}\).
By (4), it is equivalent, for the connected four-leg coefficient, to a sum of scalar exchanges with squared couplings λ₅²(a+1)/(24π²).

For external ground mass Δ and exchanged mass dimension δ, define
\[
 J_n(\Delta;\delta)=\frac{(2\pi)^{-1/2}}{2\Delta+\delta-2}
 \frac{(1+\delta/2-\Delta)_n}{(\Delta+\delta/2)_n},
 \quad \varpi_n=\delta+2n,
\]
\[
 b(\Delta;\delta)=\sum_{n\ge0}J_n^2
 \left[\frac12D(2\Delta,\varpi_n)-\frac2{\varpi_n}\right].
\tag{17}
\]
All creation orderings are already paired in D. For δ=3Δ+2a, every denominator is strictly below the exchange threshold, and (17) is absolutely convergent and negative.

Let κ=κ₂,₀ and H_{A+1}=Σ_{a=0}ᴬ1/(a+1). Define the quartic bare coefficient in this scheme by
\[
 \lambda_{4,\mathrm{bare}}(A)
 =\lambda_5^2\left[\eta_4+\frac{H_{A+1}}{32\pi^2}\right].
\]
After vacuum and gap matching, the connected ground two-body coefficient is precisely
\[
\boxed{
 B_2=\kappa\eta_4+
 \frac1{24\pi^2}\sum_{a=0}^\infty
 \left[(a+1)b(\Delta;3\Delta+2a)
       +\frac{3\kappa}{4(a+1)}\right].
}\tag{18}
\]
This is a definition by ordinary convergent sums, not by assigning values to separate divergent sums. To see convergence and verify the same quartic logarithm, set M²=δ(δ−2). The scalar resolvent for the smooth external source has the heavy-mass expansion
\[
 b(\Delta;\delta)=-\frac{3\kappa}{M^2}+O(M^{-4}).\tag{19}
\]
Indeed, each of the covariant exchange kernels tends to −1/M² times a local contact integral. In the normalization of (17), the coefficients are 1/2 for the 2Δ channel and 1 for the static channel; their sum multiplies
\(\int r\,dr\,d\theta f_0^4=2\kappa\), giving −3κ/M². More explicitly, with h=f₀² and the radial operator TΩ defined above,
\[
 b=-\frac12\langle h,(M^2+T_{2\Delta})^{-1}h\rangle
   -\langle h,(M^2+T_0)^{-1}h\rangle.
\]
Since T₂Δh=−4Δ(Δ−1)h, the first term is exactly −κ/[M²−4Δ(Δ−1)]. The static operator is nonnegative; h and T₀h are square integrable for Δ>1, giving the O(M⁻⁴) resolvent remainder directly. With δ=3Δ+2a, the bracket in (18) is O(a⁻²). The removed divergence is −κ log A/(32π²), exactly canceled by the displayed quartic coefficient.

The physical datum (8) sets η₄=(β₂−the convergent sum)/κ. No vacuum or one-body condition supplies this number. Formula (18) is analytic; no numerical evaluation of this two-fold convergent sum was needed for the exact four-body result.

## 8. Verification status and limits

**Analytic:** Wick combinatorics and cumulant sign; local integrability and derivative analysis; full normal-form degree bound; all five creation allocations; Jacobi beta integral and convergence; complete Δ=4/3 ground blocks; parity decoupling; spectral identity and the subtracted two-body formula.

**Independent CAS implementations:** Wolfram checked direct Jacobi integration, UV series, combinatorics and the exact rational exchange sum. Sage used its own rational polynomial integration and direct Fock-state second-order denominators; its fourth difference independently reproduced (2). Neither implementation imports the other or the parent project's code.

**Not claimed:** the full second-order spectrum at all rational Δ; a resolution of even-Δ first-order splitting; numerical evaluation of (18); an arbitrary finite-EFT prediction after allowing new octic or boundary couplings; nonperturbative stability of a real pure quintic potential. The task is perturbative around the specified free vacuum.

Delegation depth did not permit an additional fresh subagent review. This branch itself was independent of the parent's candidate and was checked by the two CAS implementations above.
