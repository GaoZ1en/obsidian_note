# Independent metric Einstein one-loop audit: Euclidean thermal AdS3

## Result first

**The nonidentity thermal-image determinant is established, conditional on the standard complete-hyperbolic-space metric/ghost heat-kernel prescription:**

\[
Z^{(1)}_{\ne 1}(\tau,\bar\tau)
=\left[\frac{\det_{1,T}(-\nabla^2+2)}{\det_{2,TT}(-\nabla^2-2)}\right]^{1/2}_{\ne1}
=\prod_{n=2}^{\infty}|1-q^n|^{-2},\qquad |q|<1.
\]

**This does not, by itself, determine a one-loop shift of the input classical coefficient \(C\).** The identity image is a separate, local, vacuum-energy contribution. Two precisely distinguished prescriptions give

\[
\begin{array}{ll}
\mathrm{HK}_{\mathrm{rel}}:\quad &
Z^{(0+1)}=|q|^{-C/12}\prod_{n\ge2}|1-q^n|^{-2},\\[2mm]
\mathrm{HK}_{\mathrm{vol}\text{-}\zeta}:\quad &
Z^{(0+1)}=|q|^{-(C+13)/12}\prod_{n\ge2}|1-q^n|^{-2}.
\end{array}
\]

Here these are names **defined in this report**, not claims that both are the identical renormalized bulk measure:

- **HK_rel:** omit the identity image before the proper-time integral; normalize the remaining one-loop factor to one as \(\beta\to\infty\). This is the subtraction actually used in the GMY thermal product calculation.
- **HK_vol-zeta:** retain the identity image, analytically continue its proper-time integral, multiply its finite density by the standard geodesic-cutoff renormalized volume \(V_{\rm ren}=-\pi\beta/2\), and add no further finite local counterterm. This gives \(\log Z^{(1)}_{\rm id}=13\beta/12\).

The number 13 was **not an input**: it follows from the explicit coincident heat-kernel integral below. A finite local matching condition can move that term into the definition of the gravitational coupling. A genuine measured central charge is not freely shiftable by a harmless boundary contact-term convention once the quantum theory and conformal Ward identities are fixed.

The exact agreement of oscillator products is **not** a proof that a classically equivalent orbit measure is the pushforward of the metric measure. No all-loop claim is made.

## 1. Scope, conventions, and provenance

This investigation did not read parent quantum reports or other reviewers. It read the root [AGENTS](</Users/koishi/Documents/Note/AGENTS.md>), the applicable [CPS convention authority](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L1-L161>), and the paper-reading/math skills. Only new files in this unique review directory were authored.

- Dimension is three. Differential operators use \(\ell=1\), \(R_{\mu\nu}=-2g_{\mu\nu}\), \(R=-6\), and the positive rough Laplacian is \(\Delta_s=-\nabla^2\) on the indicated tensor bundle. It is not the Lichnerowicz Laplacian.
- \(\beta=2\pi\tau_2>0\), \(\theta=2\pi\tau_1\), \(q=e^{-\beta+i\theta}=e^{2\pi i\tau}\). The geometry is the smooth solid torus
  \[
  ds^2=(1+r^2)dt_E^2+\frac{dr^2}{1+r^2}+r^2d\varphi^2,
  \quad\varphi\sim\varphi+2\pi,
  \quad(t_E,\varphi)\sim(t_E+\beta,\varphi+\theta).
  \]
  The spatial \(\varphi\)-circle contracts smoothly at \(r=0\). We do not integrate over \(\tau\), other saddles, or mapping-class images.
- The input is \(C=3\ell/(2G)\), with tree factor \(|q|^{-C/12}\). For equal chiral central charges, the usual CFT vacuum energy convention would be \(E_0=-c/12\). Thus \(C\) denotes each equal classical chiral coefficient, not their sum.
- GMY's \(k=\ell/(16G)=C/24\). Its \(|q|^{-2k}\) is precisely the stated tree factor. DGG's modulus is \(\tau_{\rm DGG}=\theta+i\beta=2\pi\tau\), and its \(q=e^{i\tau_{\rm DGG}}\) is our \(q\).
- Lorentzian CPS has signature \((-++)\); the Euclidean saddle is reached by the usual time continuation. The CPS authority retains the boundary action and quotients only gauge degeneracies. Neither it nor a classical symplectic identification supplies a quantum metric-to-orbit measure Jacobian.

The original sources are Giombi–Maloney–Yin, **arXiv:0804.1773v1** (the arXiv record has only v1), and David–Gaberdiel–Gopakumar, **arXiv:0911.5085v2**. Their exact original PDF pages were rendered and actually viewed. The source/evidence inventory and full diagnostic files are linked in the [evidence index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/evidence-index.md>).

## 2. What quadratic metric integral is being evaluated?

### 2.1 Action, gauge, contour, and measure

Use Euclidean Einstein gravity with its Dirichlet boundary completion,

\[
I=-\frac1{16\pi G}\int_M\sqrt g\,(R+2)
-\frac1{8\pi G}\int_{\partial M}\sqrt\gamma K
+\frac1{8\pi G}\int_{\partial M}\sqrt\gamma+I_{\rm finite}.
\]

The displayed boundary terms use the outward normal. Their cutoff limit gives the stated tree action. A fixed representative/source for the boundary metric is held fixed. For quadratic normalizable fluctuations, the standard heat-kernel calculation uses the bulk Hessian with the corresponding asymptotic variational boundary terms understood; this report does not independently construct a finite-wall elliptic boundary-value problem.

Set

\[
h_{\mu\nu}=t_{\mu\nu}+\tfrac13g_{\mu\nu}\phi,
\quad t^\mu{}_\mu=0,
\quad F_\mu=\nabla^\nu h_{\mu\nu}-\tfrac12\nabla_\mu h,
\quad I_{\rm gf}=\frac1{32\pi G}\int\sqrt g\,F_\mu F^\mu.
\]

With \(\delta h_{\mu\nu}=\nabla_\mu\xi_\nu+\nabla_\nu\xi_\mu\),

\[
\delta F_\mu=(\nabla^2-2)\xi_\mu.
\]

The positive Faddeev–Popov operator is therefore \(O_1=\Delta_1+2\), on a **complex Grassmann vector** \((\bar\eta,\eta)\). The gauge-fixed quadratic action is

\[
I_2+I_{\rm gf}=\frac1{64\pi G}\int\sqrt g\left[
 t^{\mu\nu}(\Delta_2-2)t_{\mu\nu}
 -\frac16\phi(\Delta_0+4)\phi\right],
\qquad
I_{\rm gh}=\frac1{32\pi G}\int\sqrt g\,\bar\eta^\mu(\Delta_1+2)\eta_\mu.
\]

The trace has the conformal-factor wrong sign. Adopt the GMY/Gibbons–Hawking–Perry Gaussian prescription \(\phi=i\psi\), with \(\psi\) real, so its operator is \(O_0=\Delta_0+4\) with positive coefficient. Fix the associated steepest-descent phase by the conventional saddle normalization. This is a perturbative contour choice, not a nonperturbative construction of the metric integration cycle.

The measure meant here is the ultralocal background \(L^2\) Gaussian measure in orthonormal tensor/scalar/vector bases, with the trace normalization \(\|\psi\|^2/6\), independent Grassmann measures for \(\eta,\bar\eta\), and the proper diffeomorphism gauge volume treated by Faddeev–Popov. Mode-independent constants and rescalings by \(G\) are fixed within this Gaussian normalization; possible local normalization/counterterm changes are not silently identified with an orbit measure. The raw determinant is

\[
Z^{(1)}_{\rm raw}
=\frac{\det_{1}(\Delta_1+2)}{
[\det_{2,\mathrm{ST}}(\Delta_2-2)\det_0(\Delta_0+4)]^{1/2}}.
\]

Here ST means traceless symmetric, **not yet transverse**. This distinction matters.

### 2.2 Scalar/vector cancellation, including the York Jacobian

On the stated domain, use

\[
t_{\mu\nu}=t^{TT}_{\mu\nu}+L\xi^T_{\mu\nu}+D_{\mu\nu}\sigma,
\quad L\xi^T_{\mu\nu}=\nabla_\mu\xi^T_\nu+\nabla_\nu\xi^T_\mu,
\quad D_{\mu\nu}=\nabla_\mu\nabla_\nu-\tfrac13g_{\mu\nu}\nabla^2,
\quad\nabla\cdot\xi^T=0.
\]

The local intertwining identities are

\[
\begin{split}
(\Delta_1+2)\nabla\sigma&=\nabla(\Delta_0+4)\sigma,\\
(\Delta_2-2)L\xi^T&=L(\Delta_1+2)\xi^T,\\
(\Delta_2-2)D\sigma&=D(\Delta_0+4)\sigma.
\end{split}
\]

Integration by parts gives the induced norms

\[
\|L\xi^T\|^2=2\langle\xi^T,(\Delta_1+2)\xi^T\rangle,
\qquad
\|D\sigma\|^2=\tfrac23\langle\sigma,\Delta_0(\Delta_0+3)\sigma\rangle.
\]

Thus the York Jacobian is proportional to

\[
J_Y=[\det_T(\Delta_1+2)\det_0\Delta_0\det_0(\Delta_0+3)]^{1/2}.
\]

The same induced norm factors occur in the quadratic forms. Normalizing the image bases, or equivalently canceling the Jacobians mode by mode **before** heat-kernel regularization, gives

\[
\begin{split}
\det_{2,ST}(\Delta_2-2)
&=\det_{2,TT}(\Delta_2-2)\det_{1,T}(\Delta_1+2)\det_0(\Delta_0+4),\\
\det_1(\Delta_1+2)
&=\det_{1,T}(\Delta_1+2)\det_0(\Delta_0+4).
\end{split}
\]

The rotated trace supplies the remaining scalar denominator. All scalar factors cancel, and

\[
Z^{(1)}=\left[\frac{\det_{1,T}(\Delta_1+2)}{\det_{2,TT}(\Delta_2-2)}\right]^{1/2}.
\]

These factorizations refer to the matched orthogonal spectral decomposition, not an unqualified rule \(\det_\zeta(AB)=\det_\zeta A\det_\zeta B\). There is no separately introduced multiplicative anomaly from regularizing York products independently.

**Verification:** the ghost variation and all three intertwiners were independently computed using explicit Christoffel symbols for \(ds^2=(dz^2+dx^2+dy^2)/z^2\), an arbitrary scalar, an arbitrary vector, and a general local divergence-free vector represented as a curl density. Every corrected residual is identically zero in the [component diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics-v2.txt>). This checks local operator algebra; it does not prove the global boundary-domain decomposition.

### 2.3 Boundary domain and zero modes: what is assumed, not proved

The intended metric conditions are smoothness at the contractible circle, quotient-equivariance under the thermal identification, fixed leading conformal boundary metric, and Brown–Henneaux normalizable subleading fluctuations. In the radial chart this includes \(h_{ij}=O(1)\), \(h_{ri}=O(r^{-3})\), \(h_{rr}=O(r^{-4})\), modulo a compatible choice of gauge representative. Asymptotic diffeomorphisms with nonzero Brown–Henneaux charges are physical, not ghosts.

The **inherited heat-kernel prescription** is the complete-manifold normalizable spectral domain, with the proper vector ghost domain and the regular quotient heat kernels used by GMY/DGG. Large Brown–Henneaux generators are not normalizable vector ghosts even though their metric variations can be normalizable. The spectral trace is not obtained by quotienting out those physical boundary gravitons.

For this prescription:

- \(O_1=\Delta_1+2\) and \(O_0=\Delta_0+4\) have no \(L^2\) kernel when integration by parts is valid. A constant scalar and global Killing vectors are nonnormalizable and are not integrated ghost zero modes.
- The spin heat-kernel spectrum used on the cover has \(\Delta_s=\lambda^2+s+1\), giving positive shifted TT and transverse-vector exponents \(\lambda^2+1\), \(\lambda^2+4\). The regular cyclic quotient prescription contains no additional zero-mode contribution in the quoted trace.
- Variations of \(\tau\) change the fixed source and are not collective coordinates here. No extra isometry-group volume, moduli integral, or \(\tau_2\)-power is inserted.
- The lower bound \(n=2\) is a consequence of the tensor-minus-vector trace. It agrees with the Lorentzian vacuum stabilizer interpretation, but is **not** derived by calling six vectors on the thermal quotient normalizable FP zero modes. The quotient need not preserve all covering-space isometries.

**Not proved here or imported as a theorem from the product:** a full functional-analytic equivalence between every Brown–Henneaux proper-gauge completion and this spectral domain; the absence of additional finite measure factors in a different cutoff/gauge-group normalization; or a metric-to-orbit measure pushforward. The local identities above are conditional on the decomposition respecting the chosen global domains. A hard radial wall with its own local boundary conditions can have boundary heat coefficients not present in the complete-manifold prescription.

## 3. Nonidentity images: derivation and convergent product

### 3.1 Heat-trace input and the Gaussian step

Let \(u>0\) be proper time, to distinguish it from Euclidean time. The literature input is the spin-\(s\) transverse-traceless principal-series spectrum and character, or equivalently the integrated nonidentity image kernel. For integer \(s>0\), in our conventions,

\[
K_s^{\ne1}(u)=\sum_{m=1}^{\infty}
\frac{\beta\cos(sm\theta)}{\sqrt{4\pi u}\,|\sin\tfrac m2(\theta+i\beta)|^2}
\exp\left[-\frac{m^2\beta^2}{4u}-(s+1)u\right].
\tag{1}
\]

This is DGG eq. (6.9), visually checked with \(\tau_{\rm DGG}=2\pi\tau\), and agrees with the spin decomposition of GMY eq. (4.25).

For completeness, the own derivation of the character-integration step keeps **both helicities**. Writing \(D_m=|\sin[m(\theta+i\beta)/2]|^2\), their combined fixed-winding character contribution is proportional to

\[
\frac{\beta}{2\pi D_m}\cos(sm\theta)
\int_0^\infty d\lambda\,\cos(m\beta\lambda)e^{-u(\lambda^2+s+1)}.
\]

Using \(\int_0^\infty e^{-u\lambda^2}\cos(b\lambda)d\lambda
=\sqrt\pi e^{-b^2/(4u)}/(2\sqrt u)\), then pairing \(m\) with \(-m\), gives (1). This derivation uses the literature character/spectral normalization; it is not a new derivation of harmonic analysis on \(H^3\).

**A literal source subtlety:** DGG's displayed half-line integral in eq. (6.7), if read as a single unpaired \(\cos(A-B\lambda)\), also has a sine-transform term. One must combine the helicities before replacing it by a pure cosine Gaussian. The missing term in that literal reading is

\[
\sin A\int_0^\infty e^{-u\lambda^2}\sin(B\lambda)d\lambda
=\frac{\sin A}{\sqrt u}\operatorname{DawsonF}\!\left(\frac{B}{2\sqrt u}\right),
\]

which is generally nonzero (the saved example is about 0.8345656521). Helicity pairing cancels it and leaves the standard final kernel intact. This is why the derivation above does not blindly copy that intermediate line.

### 3.2 Proper-time integral

The determinant ratio implies

\[
\log Z^{(1)}_{\ne1}
=\frac12\int_0^\infty\frac{du}{u}
\left[e^{2u}K_2^{\ne1}(u)-e^{-2u}K_1^{\ne1}(u)\right].
\]

The exact integral, for \(a,b>0\), is

\[
\int_0^\infty u^{-3/2}e^{-b^2/(4u)-a^2u}du
=\frac{2\sqrt\pi}{b}e^{-ab}.
\]

Apply it with \(b=m\beta\), \(a=1\) for the tensor and \(a=2\) for the vector:

\[
\log Z^{(1)}_{\ne1}
=\sum_{m=1}^{\infty}
\frac{e^{-m\beta}\cos(2m\theta)-e^{-2m\beta}\cos(m\theta)}{2mD_m}.
\tag{2}
\]

There is no identity-image UV divergence in (2): each nonzero winding has \(e^{-m^2\beta^2/(4u)}\) as \(u\to0\). The shifted spectra also control \(u\to\infty\).

### 3.3 Algebra and convergence

Since \(D_m=|1-q^m|^2/(4|q|^m)\), (2) becomes

\[
\begin{split}
\log Z^{(1)}_{\ne1}
&=\sum_{m\ge1}\frac{q^{2m}+\bar q^{2m}-|q|^{2m}(q^m+\bar q^m)}{m|1-q^m|^2}\\
&=\sum_{m\ge1}\frac1m\left(\frac{q^{2m}}{1-q^m}+\frac{\bar q^{2m}}{1-\bar q^m}\right)\\
&=-\sum_{n=2}^{\infty}\log|1-q^n|^2.
\end{split}
\]

For \(r=|q|<1\), the double geometric expansion is absolutely summable. Useful explicit tail bounds are

\[
\left|\sum_{m>M}\frac1m\left(\frac{q^{2m}}{1-q^m}+\mathrm{c.c.}\right)\right|
\le\frac{2r^{2(M+1)}}{(M+1)(1-r)(1-r^2)},
\]

\[
\left|\sum_{n>N}\log|1-q^n|^2\right|
\le\frac{2r^{N+1}}{(1-r)(1-r^{N+1})}.
\]

Thus the interchange is analytic, not merely numerically supported. The product is nonzero and finite for every \(\tau_2>0\). As \(\beta\to\infty\), it tends to one; the first one-particle terms are \(q^2+\bar q^2\), with no level-one oscillator. The holomorphic product begins \(1+q^2+q^3+2q^4+2q^5+4q^6+\cdots\). No convergence assertion is made on \(|q|=1\).

## 4. The identity image is not an innocuous constant

### 4.1 Proper-time UV divergence and analytic finite density

The coincident spin trace per unit volume, from DGG eq. (5.33), is

\[
k_s(u)=\frac{(2-\delta_{s0})(1+2s^2u)e^{-(s+1)u}}{(4\pi u)^{3/2}}.
\]

Consequently

\[
\frac{\log Z^{(1)}_{\rm id}}{V}
=\frac1{(4\pi)^{3/2}}\int_0^\infty du\,u^{-5/2}
\left[(1+8u)e^{-u}-(1+2u)e^{-4u}\right].
\tag{3}
\]

The bracket is \(9u-15u^2/2-3u^3/2+\cdots\). The leading \(u^0\) cancels, as expected from the net local field count, but the remaining integral is still UV divergent. With a lower cutoff \(\epsilon\), its density is

\[
\frac{18}{(4\pi)^{3/2}\sqrt\epsilon}
-\frac{13}{6\pi}
+\frac{15\sqrt\epsilon}{(4\pi)^{3/2}}
+O(\epsilon^{3/2}).
\]

Analytic proper-time continuation gives

\[
\begin{split}
\rho_{\rm id}^{\rm AC}
&=\frac{(1-8)\Gamma(-3/2)+(8-4)\Gamma(-1/2)}{(4\pi)^{3/2}}\\
&=-\frac{13}{6\pi}.
\end{split}
\tag{4}
\]

This is **exactly GMY eq. (3.8)**, including its sign and normalization. It is the contribution to \(\log Z\), not to \(I_{\rm eff}=-\log Z\). The UV subtraction and the spatial volume renormalization are two distinct operations.

### 4.2 Spatial volume and the named retaining prescription

At a radial cutoff \(r=R\),

\[
V(R)=\pi\beta R^2,\qquad A(R)=2\pi\beta R\sqrt{1+R^2}.
\]

Use the fixed boundary representative \(dt_E^2+d\varphi^2\). Its geodesic defining function satisfies \(r=z^{-1}-z/4\), so

\[
V(z=\varepsilon)=\pi\beta(\varepsilon^{-2}-1/2+\varepsilon^2/16),
\qquad
V_{\rm ren}=\lim_{R\to\infty}\left[V(R)-\frac12A(R)\right]
=-\frac{\pi\beta}{2}.
\tag{5}
\]

The same convention gives \(I_{\rm tree}=C V_{\rm ren}/(6\pi)=-C\beta/12\), in agreement with the input. **HK_vol-zeta** is now fully specified: use (4), use (5), and no extra finite local term. Then

\[
\log Z^{(1)}_{\rm id}=\rho_{\rm id}^{\rm AC}V_{\rm ren}=\frac{13\beta}{12},
\qquad I^{(0+1)}_{\rm local}=\frac{C+13}{6\pi}V_{\rm ren}.
\]

The coincident density is independent of the loxodromic angle. The **integrated renormalized term is not independent of \(\tau_2\)**: it is linear in \(\beta\). Therefore a statement that the direct term is a “q-independent volume divergence” cannot be used to discard it while simultaneously claiming that the vacuum-energy matching is fixed. GMY explicitly treats it as local renormalization and omits it in the thermal computation; that is a valid named prescription, not a calculation proving that its finite part must vanish.

Subtracting just \(\pi\beta R^2\) in a nongeodesic radial coordinate would give a different finite part. Equation (5) prevents that coordinate-subtraction ambiguity from being hidden.

### 4.3 Finite local counterterms and measured central charge

Let an additional local, variationally consistent counterterm have on-shell finite value

\[
\Delta I_{\rm finite}=\alpha V_{\rm ren}.
\]

This notation specifies its value on the Einstein saddle, not a unique off-shell completion. Bulk cosmological/Newton counterterms and their boundary completions can coincide on this saddle; maintaining \(\ell=1\) requires a consistent coupling/tadpole matching condition. The thermal result is

\[
\log Z^{(1)}_{\rm local}
=\left(\frac{13}{12}+\frac{\pi\alpha}{2}\right)\beta,
\qquad
C_{\rm vac}=C+13+6\pi\alpha.
\tag{6}
\]

- \(\alpha=0\) gives HK_vol-zeta and \(C_{\rm vac}=C+13\).
- \(\alpha=-13/(6\pi)\) cancels the finite identity term and reproduces HK_rel with \(C_{\rm vac}=C\), after the same divergent subtractions.
- More generally, the same nonidentity product survives all these local choices on the fixed flat torus. It contains no information that can select \(\alpha\).

A measured Virasoro central charge requires an operational normalization: the charge algebra, stress-tensor two-point function, or Weyl anomaly. **If** the quantum theory obeys the usual conformal Ward identities and the vacuum Casimir relation \(E_0=-c/12\), with no independent source-area vacuum-energy deformation, then \(c=C_{\rm vac}\) at this order. In particular HK_vol-zeta predicts \(c=C+13\) under that matching condition, whereas HK_rel uses the convention in which the coefficient appearing in its tree factor is already the corresponding renormalized vacuum coefficient.

This is not a proof that a central charge can be altered at will within one fixed CFT. In two boundary dimensions, \(\int\sqrt\gamma R\) is topological and does not shift the separated-point central term; a finite source-area term shifts vacuum energy/contact terms but does not establish a different central extension and is not innocuous if conformal Ward identities are imposed. A flat-torus thermal determinant alone does not distinguish these off-shell issues.

Thus comparisons should state whether the same symbol \(C\) is a bare classical input or a measured renormalized coupling. At fixed measured \(c\), one would match \(C_{\rm rel}=c\) versus \(C_{\rm vol\text{-}\zeta}=c-13\) in the two displayed prescriptions, rather than infer inequivalence solely from differently normalized vacuum prefactors.

## 5. A finite canonical oscillator comparison—not a bulk-measure identification

Take two sets of independent oscillators of frequencies \(n=2,\ldots,N\), with \([a_n,a_m^\dagger]=\delta_{nm}\), the convention following the CPS authority after physical gauge quotient. The symmetric-ordering Hamiltonian and angular momentum are

\[
H_N=-\frac C{12}+\sum_{n=2}^N n(N_n+\bar N_n+1),
\qquad
J_N=\sum_{n=2}^N n(N_n-\bar N_n).
\]

The finite trace is exactly

\[
Z_N=|q|^{-C/12}\exp\left[-\beta\left(\frac{N(N+1)}2-1\right)\right]
\prod_{n=2}^N|1-q^n|^{-2}.
\]

There is no finite-cutoff ambiguity: the zero-point energy is the displayed finite sum. The ambiguity enters its subtraction when \(N\to\infty\):

- Normal ordering removes the entire finite sum and leaves no one-loop vacuum prefactor.
- Exponential damping gives
  \[
  \sum_{n=2}^{\infty}ne^{-\epsilon n}
  =\frac{e^{-\epsilon}}{(1-e^{-\epsilon})^2}-e^{-\epsilon}
  =\epsilon^{-2}-\frac{13}{12}+\epsilon-\frac{119}{240}\epsilon^2+\cdots.
  \]
  Subtracting only \(\epsilon^{-2}\) gives \(-13/12\), also \(\zeta(-1)-1\), hence the same \(|q|^{-13/12}\) as HK_vol-zeta.
- A sharp cutoff with subtraction \(N(N+1)/2\) instead leaves \(-1\), giving \(|q|^{-1}\). This is an explicit counterexample to the claim that the oscillator spectrum alone fixes the finite vacuum energy.

The agreement of the exponential/zeta oscillator finite part with the covariant bulk density is a useful consistency check. It does not compute the Jacobian from metric fields/ghosts/contour to orbit coordinates, establish equal regulators, or prove equality of interacting quantum theories.

## 6. Exact original-page visual audit

All PDF page numbers below are one-based file pages; printed page numbers differ by one. The PNG links are the actual rendered pages that were opened with the image reader.

| Source and exact location | Visually confirmed content |
|---|---|
| [GMY v1, PDF 11 / printed 10](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-11.png>), eqs. (2.22)–(2.28) | de Donder gauge, traceless/trace split, wrong-sign trace and \(\phi\to i\phi\), complex vector ghost, shifts \(-2,+2,+4\). |
| [GMY v1, PDF 16 / printed 15](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-16.png>), eqs. (3.7)–(3.8) | Proper-time analytic continuation and \(S^{(1)}_{\rm grav}=-13V/(6\pi)\). |
| [GMY v1, PDF 18 / printed 17](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-18.png>), eq. (4.5) and following paragraph | Identity image explicitly separated; volume divergence described as local cosmological renormalization cancelable by a counterterm. |
| [GMY v1, PDF 21 / printed 20](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-21.png>), eqs. (4.22), (4.25)–(4.26) | Explicit sentence omitting the volume term, then spin-2/vector/scalar thermal terms. |
| [GMY v1, PDF 22 / printed 21](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/gmy-page-22.png>), eqs. (4.27)–(4.29) | Sum-to-product and tree factor. The page's further one-loop-exactness discussion is not used as a proof here. |
| [DGG v2, PDF 29 / printed 28](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-29.png>), eq. (5.33) | Coincident spin trace and the factor \(2-\delta_{s0}\). |
| [DGG v2, PDF 31 / printed 30](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-31.png>), eqs. (6.4)–(6.9) | Character, thermal kernel, direct-term subtraction, and the \(2\pi\) modulus conversion. The intermediate half-line-integral subtlety is addressed above. |
| [DGG v2, PDF 33 / printed 32](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-33.png>), eqs. (7.3)–(7.8) | Lichnerowicz conversion and determinant ratio. The heat kernels being used are the transverse/traceless spin kernels of the paper. |
| [DGG v2, PDF 34 / printed 33](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/dgg-page-34.png>), eqs. (7.9)–(7.11) | Proper-time identity, \(q\)-series, product, and tree-level normalization. |

External originals: [GMY arXiv record](https://arxiv.org/abs/0804.1773), [GMY v1 PDF](https://arxiv.org/pdf/0804.1773v1), [DGG arXiv record](https://arxiv.org/abs/0911.5085), [DGG v2 PDF](https://arxiv.org/pdf/0911.5085v2).

**Literature inputs:** Hessian/contour and the complete-hyperbolic-space spectral heat kernels, including their standard boundary-domain interpretation. **Own verified work:** local FP/York intertwining algebra, paired-character integration, proper-time integration, sum-to-product with convergence bounds, separation and evaluation of the identity UV density, explicit geodesic renormalized volume, finite counterterm/vacuum-energy bookkeeping, and the finite oscillator counterexamples. Source inspection is not being presented as an independent proof of the entire spectral theorem.

## 7. Actual computational diagnostics and remaining gap

The main [Wolfram diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-thermal-diagnostics.txt>) report eleven named tests true, no messages, no failed/aborted values, and no unevaluated integral/sum/limit:

- Proper-time and Gaussian integrals exact; helicity-pair and rational \(q\)-algebra residuals zero.
- Identity density \(-13/(6\pi)\), \(V_{\rm ren}=-\pi\beta/2\), and vacuum log factor \(13\beta/12\) exact.
- Five \(\tau\) values: \(0.7i\), \(0.23+0.4i\), \(-0.37+0.11i\), \(0.49+0.03i\), and \(0.02i\), using 90-digit arithmetic, winding cutoff 800, product cutoff 2500. Every residual passes the analytic-tail-plus-\(10^{-75}\) threshold. The largest analytic tail bound in these tests is about \(3.55\times10^{-89}\).
- Eight 75-digit direct proper-time quadratures, including nonzero angular twist and negative individual image contributions, agree with the closed forms to better than \(10^{-50}\); the largest displayed absolute residual is about \(1.08\times10^{-74}\).
- At identity cutoffs \(10^{-4},10^{-8},10^{-12}\), subtracting the power divergence approaches \(-13/(6\pi)\). After subtracting the predicted leading \(\sqrt\epsilon\) correction, residuals are approximately \(2.2440\times10^{-8},2.2448\times10^{-14},2.2448\times10^{-20}\), consistent with \(O(\epsilon^{3/2})\).

The corrected [local component diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/metric-york-component-diagnostics-v2.txt>) have six exact zero-residual tests and no messages. These calculations ran in the xAct-loaded Wolfram kernel using explicit coordinate components. They are not a second independent CAS engine.

A genuinely separate Python/NumPy implementation imported no Wolfram results: its [full diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/independent-numpy-diagnostics.json>) give maximum product/series discrepancy \(3.55\times10^{-15}\), maximum proper-time quadrature discrepancy \(2.22\times10^{-16}\), all tests true, and no recorded warnings. Expected exponentially small tail underflows were explicitly counted, not misrepresented as exact nonzero arithmetic.

**Failures retained:** an initial guessed GMY v3 URL returned HTTP 404, so the record was checked and the actual v1 downloaded. The first component verifier incorrectly used `ArrayDepth` on a non-List scalar, generating `Extract::partw` messages and failed tests. That script and its full failure diagnostics remain intact; a separately named v2 corrected scalar-rank handling and passed. No failed export was overwritten. The [evidence index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/metric-thermal-ads3-independent-20261031-uKyaiS/evidence-index.md>) makes this distinction explicit.

### What is actually proved, and what remains unresolved

1. **Proved conditional evaluation:** the specified metric/ghost image trace gives the convergent Brown–Henneaux oscillator product for all \(\tau_2>0\).
2. **Proved prescription-dependent local evaluation:** the explicitly named volume-zeta retention gives \(|q|^{-13/12}\); identity omission removes it. The signs, volume, and finite counterterm mapping have independent analytic/CAS checks.
3. **Not proved:** that every acceptable metric measure or boundary completion has precisely this normalization; that an orbit measure is its pushforward; that a given orbit regulator chooses the same finite local matching condition; or that the torus result alone is an off-shell measurement of the central extension.
4. **Not attempted:** higher-loop diagrams, a nonperturbative contour, modular completion, summing other saddles, or an all-loop exactness theorem. Equality of one-loop characters does not supply those results.
5. This agent is an independent reviewer relative to its parent. A further fresh subagent review was unavailable at the configured delegation-depth limit; no such review is claimed. The independent numerical implementation and exact component checks are the additional validation actually performed.

The useful next comparison is therefore finite and concrete: match the proper-gauge domain and zero-mode normalization, derive the regulated metric-to-orbit measure Jacobian (including its local part), and impose the **same operational renormalization condition on measured \(c\)**. Comparing only the nonidentity products cannot settle quantum formulation equivalence.
