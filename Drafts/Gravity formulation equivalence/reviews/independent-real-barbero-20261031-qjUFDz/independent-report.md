# Independent derivation: real Barbero variables and the actual regional Holst corner

## Result

**The action selects the conventional parameter \(\gamma=-\beta\), not \(\gamma=\beta\), with the conventions specified in the question.** On the nondegenerate torsionless sector, the actual regional potential, including the corner obtained by varying the specified wall action, is

\[
\boxed{
\Theta^{\mathrm{rel}}_\beta
 =\frac1{\kappa\gamma}\int_\Sigma E_i\wedge\delta A_\gamma^i
  -\frac1{2\kappa\gamma}\int_S e_i\wedge\delta e^i
  -\int_S C_{\mathrm{EC}}
 =\frac1\kappa\int_\Sigma E_i\wedge\delta K^i-\int_S C_{\mathrm{EC}},
\qquad \gamma\ne0 .}
\tag{1}
\]

Here the first equality is a re-expression in any fixed real \(\gamma\ne0\); only \(\gamma=-\beta\) makes its bulk term identical to the original action's raw bulk potential without an additional compatibility divergence. For general wall tilt,

\[
\boxed{C_{\mathrm{EC}}|_S=-\frac{\epsilon_S}{\kappa}\,\delta\chi,
\qquad N=\sinh\chi\,U+\cosh\chi\,s .}
\tag{2}
\]

The spatial boundary one-form \(\int_S e_i\wedge\delta e^i/(2\kappa\gamma)\) is **not** generally a field-space-exact generating functional. It has nonzero field-space curvature even along an actual flat-solution family consisting entirely of boundary frame rotations. The prescribed corner cancels this curvature. Thus the completed regional map is not a justification for dropping the corner or for treating the raw regional Ashtekar–Barbero potential as the physical one.

The completed potential equals the metric relative potential with the same wall and endpoint convention. On the Gauss surface it also obeys the normalized ADM identity

\[
\boxed{
\Theta^{\mathrm{rel}}_\beta
 =\int_\Sigma \pi^{ab}\,\delta h_{ab}
  +\delta\!\left[\frac1\kappa\int_\Sigma\sqrt h\,K\,d^3x\right]
  +\frac1\kappa\int_S\epsilon_S\,\delta\chi,
\quad
\pi^{ab}=\frac{\sqrt h}{2\kappa}(K^{ab}-Kh^{ab}).}
\tag{3}
\]

The cap functional in (3) really is field-space exact; it must not be confused with the nonclosed frame one-form in (1). No Einstein initial-boundary-value existence theorem, arbitrary-data-to-solution surjectivity, or quantum equivalence is asserted.

## 1. Independence, conventions, and domain

The primary derivation and clean 21-check run were completed before reading any parent candidate, existing numbered research report, or prior EC-identity file. The [pre-audit report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/independent-report-pre-supplied-audit.md>) preserves that independent version. The only research convention input to the derivation was the requested [CPS anchor:7–35](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L35>), together with the question. The applicable [root instructions](</Users/koishi/Documents/Note/AGENTS.md>) and [anchor-directory instructions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>) were read. The EC/metric identities in section 5 were derived here, not imported. A subsequently requested, separately labeled [supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/supplied-text-audit.md>) consulted the parent's sections 1–5 and the earlier wall comparison as checks only. It led to the explicit off-shell terminology clarification after (16), with no change to the corner, symplectic conclusions, or executed mathematics.

Assumptions and notation:

- Four-dimensional oriented, time-oriented Lorentzian spacetime, nondegenerate coframe, \(\eta_{IJ}=\mathrm{diag}(-,+,+,+)\), \(\epsilon_{0123}=+1\), \(\epsilon^{0123}=-1\).
- All antisymmetric internal-pair sums are **full** sums. No implicit replacement by \(I<J\) is made.
- \(\kappa=8\pi G>0\), real fixed \(\beta\ne0\), no cosmological term, no matter or independent torsion source.
- \(F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ}\), \(T^I=De^I\).
- The wall \(\mathcal W\) is a fixed timelike hypersurface with outward unit spacelike normal \(n\), \(N^I=e^I(n)\), \(N_IN^I=1\), \(N_Ie^I|_{\mathcal W}=0\). Its induced metric is denoted \(q\); the cut's spatial metric is \(h\).
- On the sufficient off-shell boundary domain, \(T^I|_{\mathcal W}=0\), and variations preserve it. The wall metric is fixed, \(\delta q=0\), but its internal frame is not fixed.
- Hypersurface embeddings and their intersection \(S=\partial\Sigma\) are fixed under variations. Moving-corner embedding variations are not included.
- \(d\delta=\delta d\), \(\Theta=\int_\Sigma\theta-\int_S C\), \(\Omega=\delta\Theta\), \(\iota_{X_H}\Omega=-\delta H\). Endpoint/cap conventions are kept common in all comparisons.
- The future unit cut normal is \(u\), time gauge is \(e^0|_\Sigma=0\), and \(e^0(u)=1\). Thus \(U^I=e^I(u)=(1,0,0,0)\).
- \(\epsilon_\Sigma=\iota_u(e^0\wedge e^1\wedge e^2\wedge e^3)=e^1\wedge e^2\wedge e^3\). The unit outward spatial normal to \(S\subset\Sigma\) is \(s\), and \(\epsilon_S=\iota_s\epsilon_\Sigma\). In particular \(E_i|_S=s_i\epsilon_S\).
- \(E_i=\tfrac12\epsilon_{ijk}e^j\wedge e^k\), and \(E^a_i=\tfrac12\epsilon^{abc}\epsilon_{ijk}e_b^je_c^k\), so \(E_i\wedge\delta K^i=E_i^a\delta K_a^i\,d^3x\).
- \(\Gamma^i=-\tfrac12\epsilon^i{}_{jk}\omega^{jk}\), \(K^i=\omega^{0i}\), \(A_\gamma^i=\Gamma^i+\gamma K^i\), with fixed real \(\gamma\ne0\).

An oriented global triad/trivialization is assumed when writing global component functionals. The tensorial connection map itself is defined bundlewise. Function spaces must have sufficient smoothness and convergence for the displayed integrals; compact cuts are enough.

## 2. Derivation from the action and elimination of torsion

The supplied bulk Lagrangian is

\[
L_\beta=\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}
       +\frac1{2\kappa\beta}e_I\wedge e_J\wedge F^{IJ}.
\]

Using \(\delta F^{IJ}=D\delta\omega^{IJ}\) and integrating its derivative once gives

\[
\theta_\beta
 =\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge\delta\omega^{KL}
  +\frac1{2\kappa\beta}e_I\wedge e_J\wedge\delta\omega^{IJ}.
\tag{4}
\]

This is obtained directly from the stated action, rather than from a remembered canonical convention.

The connection equation is the invertible real Holst bivector map applied to \(D(e^I\wedge e^J)\). On Lorentz bivectors, \(\star^2=-1\), hence

\[
(\star+\beta^{-1})^{-1}
 =\frac{\beta^{-1}-\star}{1+\beta^{-2}},
\qquad
\det(\star+\beta^{-1})=(1+\beta^{-2})^3>0.
\tag{5}
\]

Thus \(D(e^I\wedge e^J)=0\). Nondegeneracy of the four-coframe then implies \(T^I=0\). One algebraic proof writes this equation as
\(T^I\wedge e^J-e^I\wedge T^J=0\), contracts with the dual frame, and obtains \(T^I+e^I\wedge V=0\), with \(V=\iota_{E_J}T^J\); contraction again gives \(4V=0\). The exact component torsion map has rank 24, independently checked below.

Consequently \(\omega=\omega(e)\) on this sector. The Holst contribution to the tetrad equation vanishes by \(DT^I=F^I{}_J\wedge e^J=0\); the remaining equation is the vacuum Einstein equation. Conversely, a metric solution with a coframe in the chosen global sector and its Levi-Civita spin connection is a Holst solution. This is algebraic elimination on existing solution spaces, not an existence theorem for prescribed wall data.

### 2.1 Raw time-gauge potential and the sign of the conventional parameter

Pulling (4) back to \(\Sigma\) eliminates all explicit \(e^0\) factors. The two full \((0i)\) orders in the EC term, and the full spatial-pair sums in the Holst term, give

\[
\theta_\beta|_\Sigma
 =\frac1\kappa E_i\wedge\delta K^i
  -\frac1{\kappa\beta}E_i\wedge\delta\Gamma^i.
\tag{6}
\]

In particular \(\omega^{ij}=-\epsilon^{ij}{}_k\Gamma^k\); this minus sign is decisive. Equation (6) becomes exactly

\[
\theta_\beta|_\Sigma
 =\frac1{\kappa\gamma}E_i\wedge\delta A_\gamma^i,
\qquad \boxed{\gamma=-\beta}.
\tag{7}
\]

For an arbitrary other fixed \(\gamma\), the correct unreduced expression is instead

\[
\theta_\beta|_\Sigma
 =\frac1{\kappa\gamma}E_i\wedge\delta A_\gamma^i
  -\frac1\kappa\left(\frac1\gamma+\frac1\beta\right)
       E_i\wedge\delta\Gamma^i.
\tag{8}
\]

In the interior, the raw potential has \(\Omega_{\rm raw}=(\kappa\gamma)^{-1}\int\delta E\wedge_F\delta A\), and the convention in section 1 gives \(\{A_a^i(x),E^b_j(y)\}=\kappa\gamma\,\delta_a^b\delta^i_j\delta^3(x-y)\). This is not a statement that the full regional boundary bracket can be read from the raw bulk expression alone.

## 3. Compatibility identity, including its boundary one-form

On the torsionless spatial sector,

\[
D_\Gamma e^i=de^i+\epsilon^i{}_{jk}\Gamma^j\wedge e^k=0,
\qquad
D_\Gamma\delta e^i+\epsilon^i{}_{jk}\delta\Gamma^j\wedge e^k=0.
\]

Therefore

\[
\begin{aligned}
d(e_i\wedge\delta e^i)
 &=-e_i\wedge D_\Gamma\delta e^i\\
 &=e_i\wedge\epsilon^i{}_{jk}\delta\Gamma^j\wedge e^k
  =2E_i\wedge\delta\Gamma^i.
\end{aligned}
\tag{9}
\]

The sign is positive. Integrating with the specified outward Stokes orientation gives

\[
\int_\Sigma E_i\wedge\delta\Gamma^i
 =\frac12\int_S e_i\wedge\delta e^i.
\tag{10}
\]

In four dimensions, on torsionless fields and variations tangent to that sector, the corresponding identity is

\[
e_I\wedge e_J\wedge\delta\omega^{IJ}
 =-d(e_I\wedge\delta e^I).
\tag{11}
\]

Thus the bulk Holst potential is a **spacetime derivative of a field-space one-form**. It is not thereby a field-space-exact variation of a scalar functional.

## 4. The corner obtained from the specified wall action

The wall action is

\[
\ell_\beta=\frac1{2\kappa}\epsilon_{IJKL}e^I\wedge e^J N^K DN^L
          +\frac1{2\kappa\beta}e_I\wedge T^I.
\]

### 4.1 Holst part: off-shell identity

Before imposing any torsion condition,

\[
\delta(e_I\wedge T^I)
 =2\delta e_I\wedge T^I-d(e_I\wedge\delta e^I)
  -e_I\wedge e_J\wedge\delta\omega^{IJ}.
\tag{12}
\]

Combining this with (4) gives

\[
\theta_{\rm H}+\delta\ell_{\rm H}
 =\frac1{\kappa\beta}\delta e_I\wedge T^I
  -\frac1{2\kappa\beta}d(e_I\wedge\delta e^I).
\tag{13}
\]

Hence on the specified off-shell wall domain,

\[
C_{\rm H}=-\frac1{2\kappa\beta}e_I\wedge\delta e^I.
\tag{14}
\]

No boundary internal-frame fixing has been used.

### 4.2 EC part: retain the normal variation

The \(D\delta N\) term in \(\delta\ell_{\rm EC}\) gives

\[
\boxed{C_{\rm EC}
 =\frac1{2\kappa}\epsilon_{IJKL}e^I\wedge e^J N^K\delta N^L.}
\tag{15}
\]

For clarity, the remaining terms can be checked without invoking a prior EC formula. The connection variation from \(\delta(DN)\) cancels \(\theta_{\rm EC}|_{\mathcal W}\), using \(N_Ie^I=0\). Terms with four internal vectors tangent to the three-dimensional wall vanish by antisymmetry. Terms proportional to \(D(e^I\wedge e^J)\) vanish on \(T|_{\mathcal W}=0\). The remainder is

\[
\frac1\kappa\epsilon_{IJKL}\delta e^I\wedge e^J N^K DN^L
 =\frac1{2\kappa}(\mathcal K^{(\omega)}q^{ab}-\mathcal K^{(\omega)ab})\delta q_{ab}\,\epsilon_{\mathcal W},
\tag{16}
\]

where \(\epsilon_{\mathcal W}=\iota_n\epsilon\), and \(\mathcal K^{(\omega)}_{ab}=e_{bI}D_a^\omega N^I\) is the connection-defined wall extrinsic tensor, with trace taken using \(q\). It is symmetric because the pullback of \(d(N_Ie^I)=0\), together with \(T|_{\mathcal W}=0\), gives \(DN_I\wedge e^I=0\). **Post-derivation terminology clarification:** pullback torsionlessness alone does not identify this tensor with the metric Levi-Civita wall second fundamental form; symmetric extrinsic contorsion can remain. The latter identification holds on the full torsionless branch used in section 5. This distinction was checked only after the independent derivation, against [the supplied earlier comparison:247–249](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L247-L249>). Equation (16) vanishes for metric Dirichlet variations either way, including arbitrary wall Lorentz frame rotations, exactly as in the clean CAS setup. Thus

\[
(\theta_\beta+\delta\ell_\beta)|_{\mathcal W}=dC_\beta,
\qquad
\boxed{C_\beta=C_{\rm EC}-\frac1{2\kappa\beta}e_I\wedge\delta e^I.}
\tag{17}
\]

These are the direct integration-by-parts representatives selected for the supplied action and common endpoints. No independent edge-mode action or additional corner counterterm has been added.

### 4.3 General tilt after time gauge

Pulling (15) back to the corner gives

\[
C_{\rm EC}|_S
 =\frac1\kappa E_i\,(N^0\delta N^i-N^i\delta N^0).
\tag{18}
\]

Define the boost parameter by

\[
N^0=\sinh\chi=-g(u,n),\qquad N^i=\cosh\chi\,s^i,
\qquad \chi=-\operatorname{arsinh}g(u,n).
\tag{19}
\]

Since \(s_i\delta s^i=0\) and \(E_i=s_i\epsilon_S\),

\[
C_\beta|_S
 =-\frac{\epsilon_S}{\kappa}\delta\chi
  -\frac1{2\kappa\beta}e_i\wedge\delta e^i.
\tag{20}
\]

This retains arbitrary rotations of the spatial boundary frame. For the alternate convention \(\eta=\operatorname{arsinh}g(u,n)=-\chi\), the same formula reads \(C_{\rm EC}=+\epsilon_S\delta\eta/\kappa\).

Using (10), (17), and \(\Theta=\int\theta-\int C\), the Holst boundary terms cancel exactly, giving (1) and (2). If cuts are orthogonal to the wall, **both** \(\chi=0\) and preservation \(\delta\chi=0\) are required to omit the EC corner. Merely evaluating at an orthogonal background does not set \(\delta\chi\) to zero.

For a fixed intersection \(S\) and fixed wall metric, \(\delta\epsilon_S=0\). The common tilt term then equals \(\delta\int_S\epsilon_S\chi/\kappa\) on the allowed domain and contributes no two-form. It has nevertheless been retained in the potential, as requested. Its normal/tilt datum is inherited from the spacetime cut-wall configuration and is not determined by \((A,E)\) alone.

## 5. Independent EC/metric relative-potential comparison

Let \(h_{\mu\nu}^{(\delta)}=\delta g_{\mu\nu}\) in this section only, and let the spacetime Hodge star have \(\star(e^0\wedge e^1)=-e^2\wedge e^3\). Define

\[
\alpha(e;\delta e)=\frac1{2\kappa}\star(e_I\wedge\delta e^I).
\tag{21}
\]

The metric Einstein-Hilbert potential for \(R\epsilon/(2\kappa)\) is

\[
\theta_g=\frac1{2\kappa}
  (\nabla_\nu h^{(\delta)\mu\nu}-\nabla^\mu h^{(\delta)})\,\epsilon_\mu,
\qquad \epsilon_\mu=\iota_{\partial_\mu}\epsilon.
\tag{22}
\]

A direct derivation of its tetrad relation can be made at a point with \(e^I{}_{\mu}=\delta^I_\mu\) and the background connection zero. Write \(B^I{}_J=\delta e^I{}_{\mu}e_J{}^\mu\), \(B_{IJ}=\eta_{IK}B^K{}_J\), \(S_{IJ}=B_{(IJ)}\), and \(b_{IJ}=B_{[IJ]}\). Varying the tetrad postulate gives

\[
\delta\omega^{IJ}_{\mu}
 =\partial^J S^I{}_{\mu}-\partial^I S^J{}_{\mu}
  -\partial_\mu b^{IJ}.
\tag{23}
\]

Substitution into the full-pair expression (4) yields the metric symmetric part plus the divergence of the antisymmetric frame part. Equivalently,

\[
\boxed{\theta_g=\theta_{\rm EC}+d\alpha.}
\tag{24}
\]

The equality is tensorial, so the pointwise derivation proves the local identity in an arbitrary frame. All independent first jets of \(B\) were retained in its exact CAS check.

The torsionless EC wall Lagrangian equals the metric GHY term \(\mathcal K\epsilon_{\mathcal W}/\kappa\). Its metric corner representative is

\[
C_g=-\frac1{2\kappa}\iota_v\epsilon_{\mathcal W},
\qquad v^\mu=q^{\mu\nu}n^\rho\delta g_{\nu\rho}.
\tag{25}
\]

To verify its sign and its relation to (15), choose \(N^I=\delta^I_3\) at a point. Normalization and orthogonality give \(\delta N^a=-\eta^{aa}B_{3a}\), \(a=0,1,2\), \(\delta N^3=0\). Substitution into (15) and (21) gives

\[
\boxed{C_g=C_{\rm EC}+\alpha|_{\mathcal W}.}
\tag{26}
\]

For example, the \(e^1\wedge e^2\) coefficient is \(-[B_{03}+B_{30}]/(2\kappa)\), agreeing with (25). This check keeps arbitrary symmetric metric variations and arbitrary antisymmetric frame variations; it does not freeze the boundary frame.

Writing \(b_\beta=e_I\wedge\delta e^I/(2\kappa\beta)\), the complete relative identity on the torsionless sector is therefore

\[
\boxed{
(\theta_\beta,C_\beta)
 =\bigl(\theta_g-d(\alpha+b_\beta),\ C_g-\alpha-b_\beta\bigr),
\qquad \Theta^{\mathrm{rel}}_\beta=\Theta^{\mathrm{rel}}_g .}
\tag{27}
\]

The cancellation in the integrated potential follows from Stokes with the minus sign in \(\Theta\). It is not the assertion that \(\alpha+b_\beta\) is a field-space-exact scalar variation.

## 6. An actual nonzero raw regional corner, and its fate

Take flat spacetime

\[
M=\mathbb R_\tau\times[0,L]_x\times T^2_{y,z},\qquad
 ds^2=-d\tau^2+dx^2+dy^2+dz^2,
\]

with timelike walls \(x=0,L\), cut \(\tau=0\), and torus area \(\mathcal A=L_yL_z>0\). The cut is orthogonal to both walls for the entire family, so \(\chi=\delta\chi=0\). Let

\[
f(x)=x/L,\quad
R(a,b,x)=R_y(af)R_z(bf),\quad
e^0=d\tau,\quad e^i=R^i{}_j(dx,dy,dz)^j,
\quad \omega^{ij}=-(dR\,R^T)^{ij},\quad K^i=0.
\tag{28}
\]

These are exact flat, torsionless solutions for every \((a,b)\). Their metric and wall metric are fixed. The internal frame is free and rotates nontrivially at \(x=L\); at \(x=0\), \(R=1\) and its parameter variations vanish. Thus the example is not an arbitrary off-shell corner assignment.

The direct bulk connection calculation gives

\[
\Gamma_x=\left(-\frac bL\sin\frac{ax}L,
                    -\frac aL,
                    -\frac bL\cos\frac{ax}L\right).
\tag{29}
\]

Before any use of the proposed corner, one obtains

\[
\sum_i E_i\wedge\partial_a\Gamma^i
 =-\partial_x\left[\frac xL\sin\frac{bx}L\right]dx\wedge dy\wedge dz,
\qquad
\sum_i E_i\wedge\partial_b\Gamma^i=0.
\tag{30}
\]

Consequently,

\[
\boxed{\Theta_{\rm raw}^{\gamma}
 =-\frac{\mathcal A}{\kappa\gamma}\sin b\,\delta a,
\qquad
\Omega_{\rm raw}^{\gamma}
 =\frac{\mathcal A}{\kappa\gamma}\cos b\,\delta a\wedge_F\delta b.}
\tag{31}
\]

At \(a=b=0\), \(\Omega_{\rm raw}^{\gamma}(\partial_a,\partial_b)=\mathcal A/(\kappa\gamma)\ne0\). For the action parameter \(\gamma=-\beta\), the value is \(-\mathcal A/(\kappa\beta)\).

The corner orientation at \(x=L\) is \(dy\wedge dz\), and at \(x=0\) it is \(-dy\wedge dz\). Directly,

\[
(e_i\wedge\delta e^i)|_{x=L}
 =-2\sin b\,\delta a\,dy\wedge dz,
\qquad
(e_i\wedge\delta e^i)|_{x=0}=0.
\tag{32}
\]

The frame part subtracted in (1) is exactly the one-form in (31). Hence

\[
\boxed{\Theta^{\mathrm{rel}}|_{\text{family}}=0,
\qquad \Omega^{\mathrm{rel}}|_{\text{family}}=0.}
\tag{33}
\]

This agrees with \(K=0\), the metric description, and the fact that the family consists entirely of internal gauge frames. It also gives a counterexample to treating the raw regional correction as a scalar generating functional.

## 7. Exactness, regional differentiability, and a genuine closed-cut generator

Define

\[
\Theta_K=\frac1\kappa\int_\Sigma E_i\wedge\delta K^i,
\quad
\Theta_{\rm raw}^{\gamma}=\frac1{\kappa\gamma}\int_\Sigma E_i\wedge\delta A_\gamma^i,
\quad
B_\gamma=\frac1{2\kappa\gamma}\int_S e_i\wedge\delta e^i.
\]

Equation (10) says

\[
\Theta_{\rm raw}^{\gamma}-\Theta_K=B_\gamma.
\tag{34}
\]

For two variations,

\[
(\delta B_\gamma)(\delta_1,\delta_2)
 =\frac1{\kappa\gamma}\int_S\delta_1e_i\wedge\delta_2e^i.
\tag{35}
\]

The finite family in section 6 makes this nonzero. Therefore there is no scalar \(F\) with \(\delta F=B_\gamma\) on a neighborhood in the unrestricted free-frame regional domain. A spacetime-exact expression and a field-space-exact expression are different notions here.

For a closed \(\Sigma\), or a domain where the relevant boundary term vanishes, a genuine type-II generator can be given in a fixed trivialization. Normalize the old and new momenta as

\[
p^a_i=E^a_i/\kappa,\qquad P^a_i=E^a_i/(\kappa\gamma).
\]

Then

\[
\boxed{F_2[K,P]=\int_\Sigma P_i^a
   \bigl[\gamma K_a^i+\Gamma_a^i(\kappa\gamma P)\bigr]d^3x.}
\tag{36}
\]

Its variation is exactly

\[
\delta F_2
 =\int_\Sigma(p_i^a\delta K_a^i+A_a^i\delta P_i^a)d^3x+B_\gamma.
\tag{37}
\]

For closed \(\Sigma\), this gives \(p=\delta F_2/\delta K\), \(A=\delta F_2/\delta P\). Regionally, the final term is the boundary differentiability obstruction for the ordinary bulk type-II generating functional with free boundary frames. Since \(B_\gamma\) is not closed, no scalar boundary counterterm can cancel it on that full domain. Fixing the boundary frame, choosing another restricted boundary domain, or enlarging a phase-space description are separate operations; none is silently done here. The actual action instead prescribes the relative one-form subtraction in (1).

## 8. Normalized ADM bridge and the common cap convention

Set \(h_{ab}=e_a^ie_b^i\), \(K_{ab}=e_{bi}K_a^i\), and \(K=h^{ab}K_{ab}\). With \(K^i=\omega^{0i}\) and \(e^0(u)=1\), this is \(K_{ab}=g(\nabla_a u,\partial_b)\). On the Gauss surface it is symmetric. Varying its trace density gives

\[
\delta(\sqrt h K)
 =E^a_i\delta K_a^i
  +\frac{\sqrt h}{2}(Kh^{ab}-K^{ab})\delta h_{ab}.
\tag{38}
\]

This proves (3). In particular, with the common cap convention retained,

\[
\Omega^{\mathrm{rel}}
 =\int_\Sigma\delta\pi^{ab}\wedge_F\delta h_{ab}
  +\frac1\kappa\int_S\delta\epsilon_S\wedge_F\delta\chi.
\tag{39}
\]

For the stated fixed-wall-metric domain, the second term vanishes because \(\delta\epsilon_S=0\). One may change the common endpoint convention by the cap functional in (3), but one must do so on both sides. The fact that this cap term is exact does not make \(B_\gamma\) exact.

## 9. Invertibility and the entire residual SO(3) group

### 9.1 Nondegenerate coordinate map

Fix the oriented triad sector \(\det(e_a^i)>0\). Then

\[
\det(E^a_i)=(\det e)^2>0,
\qquad
e_a^i=\sqrt{\det E}\,(E^{-1})^i{}_a.
\tag{40}
\]

The orientation qualification is essential: without it, \(e\) and \(-e\) have the same densitized triad. Intrinsic compatibility uniquely determines \(\Gamma(E)\), and

\[
\boxed{K_a^i=\frac{A_{\gamma a}^i-\Gamma_a^i(E)}\gamma.}
\tag{41}
\]

Thus \((E,K)\leftrightarrow(E,A_\gamma)\) is invertible on the specified nondegenerate chart for every real nonzero \(\gamma\). Between parameters,

\[
A_{\gamma'}=\Gamma(E)+\frac{\gamma'}\gamma\,[A_\gamma-\Gamma(E)].
\tag{42}
\]

The common corner-normal data, such as \(\chi\), are carried along unchanged. This algebraic invertibility does not reconstruct a spacetime from arbitrary data.

### 9.2 Finite transformations, not only infinitesimal ones

For every smooth \(R:\Sigma\to SO(3)\), with no condition \(R|_S=1\),

\[
e' =Re,\quad E'=RE,\quad K'=RK,
\quad (\Gamma')_\times=R\Gamma_\times R^{-1}-dR\,R^{-1},
\quad (A_\gamma')_\times=R(A_\gamma)_\times R^{-1}-dR\,R^{-1}.
\tag{43}
\]

Here \((v_\times)^i{}_k=\epsilon^i{}_{jk}v^j\). Equations (41) and (42) are equivariant under the entire mapping group, regardless of its connected component. This is a finite algebraic identity, not an inference from the Lie algebra. The completed potential is invariant for field-independent \(R\).

For \(\delta_\lambda e=\lambda\times e\), one has

\[
\delta_\lambda A=-D_A\lambda,
\qquad e_i\wedge\delta_\lambda e^i=-2\lambda^iE_i.
\tag{44}
\]

Therefore

\[
\iota_{X_\lambda}\Theta_{\rm raw}^{\gamma}
 =\frac1{\kappa\gamma}\int_\Sigma\lambda^i(D_AE)_i
  -\frac1{\kappa\gamma}\int_S\lambda^iE_i,
\]

while the corner subtraction cancels the second term exactly. The EC tilt corner is rotation-invariant and has zero contraction with these rotations. Hence

\[
\iota_{X_\lambda}\Theta^{\mathrm{rel}}
 =\frac1{\kappa\gamma}\int_\Sigma\lambda^i(D_AE)_i.
\tag{45}
\]

Since \(D_\Gamma E=0\), \(D_AE=\gamma(K\times E)\); the Gauss equation is precisely the symmetry of \(K_{ab}\). On it, and for tangent variations, all infinitesimal SO(3) frame rotations are degeneracies of the completed two-form, including arbitrary boundary values.

There is an important global distinction. Null directions of a two-form generate connected gauge orbits; they do not by themselves identify disconnected mapping-group components. If all orthonormal-frame relabelings are to describe the same metric data, quotient by the **full** chosen SO(3) mapping group, including its components. Quotienting only by Gauss-generated flows can leave discrete frame labels. No general classification of \(\pi_0\mathrm{Map}(\Sigma,SO(3))\) is assumed. Replacing this group by SU(2) requires an additional lift/spin-structure discussion and is not done here.

## 10. Exact scope of the covariant-to-initial-data statement

For an actual nondegenerate vacuum Holst solution satisfying the stated wall domain, restrict to \(\Sigma\), choose time gauge, and obtain \((E,K)\). Its spatial connection is the unique \(\Gamma(E)\), its Gauss equation makes \(K_{ab}\) symmetric, and its metric data satisfy

\[
{}^{(3)}R+K^2-K_{ab}K^{ab}=0,
\qquad
D_b(K^b{}_a-\delta^b_aK)=0.
\tag{46}
\]

They also obey the compatibility and corner conditions inherited from that same solution and fixed wall metric. The coordinate substitution (41) gives the corresponding \((E,A_\gamma)\) and preserves the completed relative potential as stated above. It is an invertible reparametrization **of this restriction image**, with the same retained normal/corner data.

On arbitrary nondegenerate canonical pairs \((A,E)\), (40) and (41) still define \(e\) and \(K\). The kinematical identity between the corner-completed forms still follows from intrinsic compatibility. But such a pair need not satisfy Gauss, the Einstein constraints, wall compatibility, or evolution conditions. It need not be in the restriction image of any admissible covariant solution.

Conversely reconstructing a spacetime from canonical data requires an initial-boundary-value existence and uniqueness result with the relevant gauge, corner compatibility, and wall conditions. No such result has been proved or assumed implicitly here. In particular, fixed timelike metric Dirichlet data are not declared to yield a well-posed Einstein IBVP merely because the variational principle or the symplectic comparison works.

## 11. Exact computation record and diagnostics

The exact source executed for the successful clean run is preserved as [checks-executed-clean.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/checks-executed-clean.wl>). Treat that copy as immutable evidence, not as the rerun entry point. The convenience runner [checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/checks.wl>) differs only by export plumbing: every rerun creates a new private 0700 subdirectory and snapshots its executed source there, so earlier evidence is not overwritten. The successful mathematics was not rerun merely for this export-only adjustment. The clean run used the xAct tool in its core profile, with explicit finite exterior algebra over exact symbolic coefficients. This is a Wolfram component calculation; no claim is made that merely loading xAct constitutes an additional independent proof.

**Clean run: 21 of 21 checks passed; every reported residual is exactly zero; no evaluation messages, package-load errors, package-load messages, or transport stderr; tool output is untruncated.** Kernel: Wolfram 14.3.0, macOS ARM. The actual complete artifacts are:

- [Human-readable full diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/diagnostics-clean.txt>), including all residual arrays, the solved compatibility jets, the raw flat-family densities, and the determinant/rank results.
- [Exact WXF result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/results-clean.wxf>), storing the complete symbolic result association.
- [Actual untruncated tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/tool-response-clean.json>), including package-load and transport diagnostics.
- [Final SHA-256 manifest after the supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/checksums-post-supplied-audit.txt>), distinguishing the exact executed source, the export-safe convenience runner, the pre-audit report, and the current report/audit. The original [execution-time manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/checksums-executed-clean.txt>) records the original name of the executed source; its source digest matches the immutable archived copy.

Checks are grouped by their mathematical role:

| Role | Exact checks |
|---|---|
| Hodge and full-pair conventions | Spacetime two-form \(\star^2=-1\); raw EC coefficient \(+E\delta K\); raw Holst coefficient \(-E\delta\Gamma\) |
| Compatibility | All nine independent linearized torsion equations solved; coefficient matrix rank 9; residual of (9) zero |
| Connection elimination | Lorentz bivector \(\star^2=-1\), determinant \((1+\beta^2)^3/\beta^6\), inverse formula; torsion-map rank 24 |
| Wall action | Off-shell identity (12); EC wall \(\theta+\delta\ell-dC=0\) at fixed metric with arbitrary Lorentz rotation and symmetric connection-defined wall extrinsic tensor |
| Metric comparison | Full arbitrary-first-jet residual of (24); full arbitrary-\(B\) wall residual of (26) |
| Tilt | Full-pair corner reduction to \(-\epsilon_S\delta\chi/\kappa\), retaining arbitrary transverse normal-frame rotations |
| Real solution counterexample | Direct bulk density for both parameter components, direct bulk two-form density, and cancellation by the separately computed prescribed corner |
| Coordinate inversion | Polynomial densitized-triad determinant and inverse identities |
| ADM bridge | Arbitrary orthonormal-point symmetric \(K_{ab}\), arbitrary triad and \(K_a^i\) variations: exact residual of (38) |

For transparency, the first execution had correct residuals but a reporting-code error: three calls used an unsupported multi-argument form of `AssociateTo`, producing `AssociateTo::argrx`; unqualified `$Version` also resolved to a package version. The mathematical checks in that run were not advertised as a clean execution. Those reporting calls were corrected to take rule lists, `System\`$Version` was used, and the entire calculation was rerun in a fresh kernel. The original [first-run diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/diagnostics.txt>) and [first-run tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-real-barbero-20261031-qjUFDz/tool-response-first-run.json>) are retained rather than hidden. The clean files, not the first-run exports, are the result evidence.

The algebraic and differential identities have analytic derivations above; the CAS checks target the sign, normalization, first-jet, and regional-counterexample weak points. Finite exact examples are not promoted to proofs of global PDE statements.

## 12. Applicability and remaining gaps

Established in this report:

1. The sign \(\gamma=-\beta\) for the supplied action and definitions.
2. The compatibility boundary one-form and its generally nonzero field-space curvature.
3. The action-derived Holst and EC corners, including general tilt.
4. Exact equality of the torsionless regional Holst, EC, and metric relative potentials with common endpoints.
5. A real flat-solution regional raw-corner counterexample, with exact cancellation after the prescribed corner.
6. Nondegenerate real-parameter coordinate invertibility, full residual SO(3) equivariance, and the distinction between infinitesimal degeneracy and quotienting all mapping-group components.
7. A properly normalized closed-cut type-II generator, its regional differentiability term, and the genuinely exact ADM cap bridge.

Not established or included:

- An Einstein Dirichlet IBVP existence/uniqueness theorem, or surjectivity from arbitrary canonical data to admissible spacetime solutions.
- Degenerate coframes, the complex self-dual values of the Holst parameter, matter torsion, null walls, or moving-corner embedding degrees of freedom.
- A universal classification of mapping-group components, SU(2) lifts, or a prescription for additional edge-mode theories with a different boundary action.
- Any quantum unitary equivalence or representation equivalence inferred from this classical transformation.

No parent file was edited. All deliberately created report, script, and result artifacts are confined to this unique review directory.
