# Complete resonant φ⁶: the all-ground large-N limit is driven, not Bogoliubov

## Result

At Δ=2, **subtracting the all-ground contact energy does not leave a finite O(g) fixed-excitation Hamiltonian**. A nonzero 2↔4 vertex drives the radial mode (2,2) with amplitude O(g√N). For N≥4 the all-ground vector is not an eigenvector of the complete first-order block, and its classical resonant counterpart is not a stationary condensate. The correct leading centered fluctuation operator is a quadrature, with a Gaussian spectral measure in the all-ground state.

For N=N_ref, λ₆=g/N² and E=2N,J=0, put

\[
 C_N=\frac{g}{1440\pi^2N^2}(N)_3,
 \qquad c=\frac1{6720\pi^2},
 \qquad (N)_m=N(N-1)\cdots(N-m+1).
\]

Here H_N means only the **complete first-order interaction** λ₆P_{E,J}(V₆/λ₆)P_{E,J}; the common free energy is omitted. Then

\[
 \boxed{\operatorname{Var}_{|N_0\rangle}(H_N)
 =\frac{g^2c^2}{N^4}(N)_4\left(N+\frac{17}{2}\right).}
 \tag{1}
\]

Moreover, the spectral probability measure of

\[
 \boxed{X_N=\frac{H_N-C_N}{g\sqrt N}}
 \quad\text{in }|N_0\rangle
\]

converges weakly to the centered normal distribution of variance c². This is an analytic coefficient-limit result; numerical spectra are not used to infer it. In particular, any fixed-width O(|g|) spectral interval around C_N has all-ground spectral weight tending to zero. No statement here makes all eigenstates in the complete block near-condensate states.

## 1. Conventions and the complete block

The action, KG modes, fast boundary condition, normal ordering and interaction measure are those in the existing [polynomial-spectrum note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md#L28-L123>) and [CPS/OFPT formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L229-L290>). In particular,

\[
 u_{pq}=\frac{d_{pq}}{\sqrt{2\pi}}e^{-i(2+p+q)t+i(p-q)\theta}
 x(1-x)^{|p-q|/2}P_{\min(p,q)}^{(1,|p-q|)}(1-2x),
 \quad x=(1+r^2)^{-1},
 \quad d_{pq}^2=\frac{\max(p,q)+1}{\min(p,q)+1}.
\]

The contact measure is r dr dθ, not the KG measure. Write e_I=u_I|_{t=0}, ω_I=2+p+q, ℓ_I=p−q. The complete normal-ordered monomial coefficient is

\[
 \lambda_6\frac{\mathcal I(C;A)}{\prod_I c_I!a_I!},
 \qquad \mathcal I(C;A)=\int r\,dr\,d\theta\prod_C e_I^*\prod_A e_I.
\]

For E=2N+L and fixed J, assume L,J are integers of equal parity; otherwise the proposed free block is empty. Include **every** allowed total particle number N′, with

\[
 P_{N'}=N+\frac{L+J}{2}-N',\qquad
 Q_{N'}=N+\frac{L-J}{2}-N'.
\]

An exact way to coordinatize that entire block is to record the non-ground occupations n_I and reconstruct

\[
 n_0=N+\frac L2-\frac12\sum_{I\ne0}\omega_I n_I\ge0,
 \qquad \sum_{I\ne0}\ell_I n_I=J.
 \tag{2}
\]

There is no fixed-N′ restriction. For fixed L,J every finite admissible excitation configuration eventually satisfies n₀≥0. The even interaction also preserves N′ modulo two; equivalently it preserves the relevant residue of Σ(p+q)n_{pq} modulo four. Both parity blocks belong to the complete free block. The all-ground channel at L=J=0 lies in the residue-zero block.

Introduce b_I as formal canonical creation/annihilation operators on the full non-ground Fock space, and restrict only the allowed monomial combinations to the admissible fixed-J lattice of (2). A single b_I with odd ω_I need not preserve that lattice; b₂₂ and every combination displayed below do. At finite N the physical combinations include the required reservoir change of n₀. They are not the original a_I combinations acting without a ground-number change.

## 2. The decisive one-excitation vertex

A linear fluctuation from a 2↔4 monomial has one excited creation, one ground creation and four ground annihilations. Resonance requires

\[
 \omega_I+2=8,\qquad \ell_I=0,
\]

hence I=(2,2). Since

\[
 P_2^{(1,0)}(1-2x)=3-12x+10x^2,
\]

its integral is

\[
 \mathcal I(22,0;0,0,0,0)
 =\frac1{8\pi^2}\int_0^1x^4(3-12x+10x^2)\,dx
 =\frac1{280\pi^2}.
\]

Consequently the complete resonant Hamiltonian contains

\[
 \boxed{\lambda_6c\left[a_{22}^\dagger a_0^\dagger a_0^4
 +(a_0^\dagger)^4a_0a_{22}\right],\qquad c=\frac1{6720\pi^2}.}
 \tag{3}
\]

The 4! is essential; there is no extra factor from adding the Hermitian conjugate. The exact normalized matrix element out of the all-ground state is

\[
 \langle (N-3)_0;1_{22}|H_N|N_0\rangle
 =\frac{gc}{N^2}(N-3)\sqrt{N(N-1)(N-2)}
 =gc\sqrt N\,[1+O(N^{-1})].
 \tag{4}
\]

The output has N′=N−2 and P=Q=2, so it belongs to the same **complete** E=2N,J=0 block. The linear 1↔5 candidate is (4,4), but its Jacobi integral is zero. The number-preserving 3↔3 channel cannot produce any non-ground linear term. Thus (3) is the only surviving O(g√N) source.

Repeated application reaches states with k quanta in (2,2) and n₀=N−3k. Their total number is N−2k and P=Q=2k. Every fixed k survives as N→∞. Hence any fixed finite collection of the original excitation shells leaks at leading order; increasing the shell bound by a fixed amount cannot cure the problem.

## 3. Full centered expansion through O(g)

For fixed finite excitation vectors, the exact block has the core expansion

\[
 \boxed{H_N-C_N=g\sqrt N\,c(b_{22}+b_{22}^\dagger)+g\mathcal Q_{L,J}
       +O_{\mathrm{core}}(gN^{-1/2}).}
 \tag{5}
\]

The remainder estimate is vector dependent, not a uniform norm estimate on the growing complete block. Set

\[
 I_{IJ}=\frac{d_Id_J}{8\pi^2}\int_0^1 x^4
 (1-x)^{(|\ell_I|+|\ell_J|)/2}J_I(x)J_J(x)\,dx,
 \quad J_I=P_{\min(p,q)}^{(1,|p-q|)}(1-2x).
\]

Use this radial expression only with the displayed angular selection rules below. All coefficients are real in the repository phase convention. The complete quadratic operator is

\[
\begin{aligned}
 \mathcal Q_{L,J}={}&\frac{L}{960\pi^2}
 +\sum_{I\ne0}\left(\frac{I_{II}}4-\frac{\omega_I}{960\pi^2}\right)b_I^\dagger b_I\\
 &+\frac16\sum_{(p,q)\ne(0,0)}I_{(p+2,q+2),(p,q)}
 \left(b_{p+2,q+2}^\dagger b_{pq}+b_{pq}^\dagger b_{p+2,q+2}\right)\\
 &+\frac1{48}\sum_{\substack{I,J\ne0\\p_I+p_J=q_I+q_J=2}}I_{IJ}
 \left(b_I^\dagger b_J^\dagger+b_Ib_J\right).
\end{aligned}
 \tag{6}
\]

The last sum is **ordered**. Distinct I,J occur twice; an equal pair occurs once. The diagonal subtraction follows from (2): with D=n₀−N,

\[
 \frac{g}{1440\pi^2N^2}\big[(N+D)_3-(N)_3\big]
 =\frac{g}{480\pi^2}D+O(g/N).
\]

The 1/4 in the normal term comes from 2!2!, the 1/6 in radial hopping from 1!3!, and the ordered-pair 1/48 from 2!4!. No 1↔5 terms have been retained.

The O(g) term already has infinite radial chains I→I+(2,2). Define D_I=(I_{II}/4−ω_I/(960π²))/c₆, with c₆=1/(8π²). For example,

\[
 D_{11}=-\frac1{84},\qquad D_{22}=-\frac{23}{630},\qquad
 I_{44,22}/(6c_6)=\frac1{495}.
\]

It is not legitimate to call (6) a stability Hamiltonian for the undeformed condensate: the larger linear term in (5) has not vanished. Cancelling that term by a formal displacement generally requires b of order √N, outside this finite-excitation expansion. A genuinely stationary deformed resonant background would need a separate nonlinear construction and a Hessian about that background.

## 4. Exact variance and Gaussian spectral limit

There are exactly five non-ground states in H_N|N₀⟩. The other four are two-excitation states with n₀=N−4. Their unordered excited pairs and radial integrals are

| Pair | I/c₆ |
|---|---:|
| (0,1),(2,1) | −√3/35 |
| (0,2),(2,0) | 1/35 |
| (1,0),(1,2) | −√3/35 |
| (1,1),(1,1) | 3/35 |

Their normalized amplitudes, divided by λ₆c√((N)₄), are respectively −√3,1,−√3,3/√2. Their squared sum is 23/2. Equation (4) contributes λ₆²c²(N)₄(N−3). This proves (1), including its exact Bose factors.

The proof of the full Gaussian limit is also finite at each step. A monomial with m non-ground legs scales as

\[
 \lambda_6N^{(6-m)/2}=gN^{1-m/2}
\]

on fixed excitation vectors. The m=0 ground term is centered; its remainder is O(g). The only m=1 term is (3). All m≥2 terms vanish after division by g√N. Thus, on the dense finite-excitation core,

\[
 X_N\psi\longrightarrow c(b_{22}+b_{22}^\dagger)\psi.
 \tag{7}
\]

Any fixed number of vertices reaches only finitely many excitation configurations and mode labels, independently of N. Therefore (7) also gives every fixed vacuum moment:

\[
 \lim_N\langle X_N^{2m}\rangle=(2m-1)!!\,c^{2m},\qquad
 \lim_N\langle X_N^{2m+1}\rangle=0.
 \tag{8}
\]

The Gaussian moment problem is determinate. Hence the all-ground spectral measures converge weakly to

\[
 \frac{e^{-x^2/(2c^2)}}{\sqrt{2\pi}\,c}\,dx.
\]

One may also formulate a strong-resolvent limit after the embedding (2). Extend each finite-block self-adjoint X_N by zero on the orthogonal complement. The finite Fock core is an essential self-adjointness core for c(b₂₂+b₂₂†). For ψ in that core,

\[
 [(X_N+i)^{-1}-(X+i)^{-1}](X+i)\psi
 =(X_N+i)^{-1}(X-X_N)\psi\to0.
\]

The resolvents are uniformly bounded and the displayed range is dense. This proves strong-resolvent convergence, **not** uniform operator convergence and not uniform convergence of all eigenvalues. The limiting quadrature has continuous spectrum, although each exact finite-N block has a real discrete spectrum.

For the standardized variable Z_N=X_N/c, exact symbolic calculations give

\[
 \langle Z_N^2\rangle=1+\frac{5}{2N}-\frac{40}{N^2}
 +\frac{175}{2N^3}-\frac{51}{N^4},
\]

\[
 \langle Z_N^3\rangle=-\frac{92}{3\sqrt N}+O(N^{-3/2}),\qquad
 \langle Z_N^4\rangle=3+\frac{1018073}{1089N}+O(N^{-2}).
\]

Convergence of higher moments is numerically slow: at N=10⁶ these moments are 1.00000249996, −0.0306665360 and 3.00093486087. The large fourth-moment correction is not evidence against the Gaussian limit.

The same limit controls the very short resonant quantum evolution t=s/(g√N): the centered all-ground survival amplitude tends to exp(−c²s²/2). On this timescale the limiting state is the quadrature-displaced vacuum, not a stationary Bogoliubov vacuum.

## 5. The appropriate macroscopic description

A moving mean field, rather than a static all-ground Bogoliubov background, is needed on fixed resonant slow times. Write a_I≈√N α_I and define

\[
 \mathscr H(\alpha,\bar\alpha)=\frac1{6!}\frac1{2\pi}\int_0^{2\pi}dt
 \int r\,dr\,d\theta\left[\sum_I\alpha_Iu_I(t)+\bar\alpha_Iu_I(t)^*\right]^6.
\]

For finitely supported amplitudes this is the classical polynomial of the complete secular Hamiltonian. The leading formal mean-field equations are (uniform-in-N propagation and infinite-mode well-posedness are not proved here)

\[
 i\dot\alpha_I=g\frac{\partial\mathscr H}{\partial\bar\alpha_I},
 \quad \sum_I\omega_I|\alpha_I|^2\to2,
 \quad \sum_I\ell_I|\alpha_I|^2\to0
\]

for fixed L,J. At α₀=1 and all other α zero,

\[
 \frac{\partial\mathscr H}{\partial\bar\alpha_0}=\frac1{480\pi^2},\qquad
 \frac{\partial\mathscr H}{\partial\bar\alpha_{22}}=c\ne0.
\]

The condensate phase may be removed by the free-energy rotation generated by μ∑ω|α|², μ=1/(960π²), but that rotation cannot remove the (2,2) source. In this rotating frame, with τ=gt,

\[
 \alpha_{22}(\tau)=-ic\tau+O(\tau^2),\qquad
 |\alpha_0(\tau)|^2=1-3c^2\tau^2+O(\tau^3).
\]

Whenever a smooth resonant mean-field flow exists with this initial condition, a fixed nonzero sufficiently short slow time therefore creates an O(N) population in (2,2). The initial nonzero vector field is already an unconditional statement about the classical resonant polynomial. This is a demonstration of **nonstationarity**, not a Lyapunov, exponential-instability or blow-up theorem. A spectrum of Bogoliubov frequencies is meaningful only after finding an appropriate stationary or periodic resonant background, or after linearizing along this moving trajectory.

## 6. Verification, reproducibility and limits

- [Independent finite-occupation action](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/verify_large_N.py>) enumerates all active 2↔4 and 3↔3 monomials. It imports the verified radial primitive from [the contact engine](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>), but does not use that engine's spectator-matrix routine for its action. Its whole E=8,J=0 matrix agrees with the complete existing 9-dimensional construction.
- [Exact verification output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/verification.json>) checks the exact variance through N=1000, Gram self-adjointness and both the surviving/vanishing one-excitation integrals. [Extended numerical moments](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/moments_extended.json>) reach N=10⁶ without constructing a huge block.
- [Symbolic moment derivation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/derive_moments.py>) reproduces [exact second, third and fourth moments](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/symbolic_moments.json>) as rational polynomials, not fits. It also checks (6) for five radial diagonal/hopping entries directly from the occupation action.
- [Wolfram checks](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/verify_integrals.wl>) evaluate the Jacobi integrals independently of the Sage implementation. All displayed values passed with no Wolfram messages.
- The parent research agent independently checked the finite-path moment proof. This child could not start another fresh reviewer because its delegation depth was exhausted. The later generalization below was proposed by the parent after receiving the independent Δ=2 result; it is explicitly collaborative, not an additional independent discovery.

**Verified:** the source coefficient, exact all-ground variance, complete leading centered operator, fixed-moment/weak spectral-measure limit, and the stated quadratic core expansion. The direct computer checks supplement the analytic derivation; their finite range is not the proof of Gaussian convergence.

**Assumptions:** fixed global AdS₃, standard fast boundary, canonical modes and repository phases, same-vacuum normal ordering, complete first-order secular projection, fixed finite L,J, λ₆=g/N² with g≠0 when dividing by g. All large-N statements are about this first-order coefficient sequence.

**Not established:** a stationary deformed condensate; its nonlinear or Bogoliubov stability; uniform approximation to the full quantum theory at fixed g; uniform eigenvalue asymptotics across the complete block; a common interacting QFT self-adjoint domain; or nonperturbative real-field stability. The source does not imply complex finite-block eigenvalues, an unbounded physical potential, or gravitational instability. No dynamical gravity is included.

## 7. Subsequent collaborative extension to φ²ᵏ

This section tests a generalization proposed by the parent research agent after the independent result above. For Δ>1, λ₂ₖ=g/N^{k−1}, define

\[
 c_{2k}^{\rm rad}=\frac{(2\pi)^{1-k}}2,
 \qquad C_N=\frac{g}{N^{k-1}}\frac{c_{2k}^{\rm rad}}{(k!)^2(k\Delta-1)}(N)_k.
\]

Every surviving linear source is indexed by

\[
 1\le j\le k-2,\qquad n=j\Delta\in\mathbb Z_{>0},\qquad I_j=(n,n).
\]

Its creation/annihilation counts are r=k−j, s=k+j, and its coefficient is

\[
 \boxed{c_j=\frac{c_{2k}^{\rm rad}}{(k-j-1)!(k+j)!(k\Delta-1)}
 \frac{\big(1-(k-1)\Delta\big)_{j\Delta}}{(k\Delta)_{j\Delta}}.}
 \tag{9}
\]

The monomial is c_j a_{I_j}†(a₀†)^{r−1}a₀^s+h.c. Its exact amplitude on |N₀⟩ is

\[
 \lambda_{2k}c_j\sqrt{(N)_s(N-2j-1)_{r-1}}
 =g\sqrt N\,c_j[1+O(N^{-1})].
\]

The integral follows directly by n integrations by parts in the Jacobi Rodrigues formula:

\[
 \int_0^1x^{k\Delta-2}P_n^{(\Delta-1,0)}(1-2x)dx
 =\frac{\big(1-(k-1)\Delta\big)_n}{(k\Delta-1)(k\Delta)_n}.
\]

For j≤k−2 every numerator factor is strictly negative; the last is n−(k−1)Δ<0. Thus no such source vanishes. The excluded j=k−1 single-leg channel has n=(k−1)Δ integral and its final Pochhammer factor is zero. If Δ=a/b is reduced rational, a surviving source exists exactly when b≤k−2, matching the even-vertex number-changing criterion. For irrational Δ there is no such source.

On the admissible excitation lattice of the complete E=NΔ block, the same core argument gives

\[
 \frac{H_N-C_N}{g\sqrt N}\longrightarrow
 \sum_j c_j(b_{I_j}+b_{I_j}^\dagger).
\]

Its all-ground spectral measure is Gaussian of variance Σ_j c_j². If the index set is empty, this scaling yields a point mass, not the nontrivial quadrature limit; the O(g) fluctuation question must then be treated separately. Independent direct Wolfram integrations checked seven nontrivial rational/integer examples, including (k,Δ,j)=(4,3/2,2), whose radial integral is −1/128. This extension concerns leading coefficient limits only and adds no nonperturbative stability assertion.
