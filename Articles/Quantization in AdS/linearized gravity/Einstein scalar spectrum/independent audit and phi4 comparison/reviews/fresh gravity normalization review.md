# Fresh independent gravity normalization review

**Verdict: the tested quartic factors and matrix elements are consistent. The source-audit outputs are the coefficient of $G$, $g=16\pi\langle K_4\rangle$, not raw matrix elements of $K_4$.** The noncircular $1\to3$ cancellation is nontrivial, with equal nonzero constraint and boundary pieces. No factor-of-two or repeated-leg error was found.

The derivation below preceded opening the two target scripts and saved source output. Numerical integrations used no expected matrix entries as inputs. Source solutions were not independently re-solved: their exported profiles were independently certified at the endpoints and independently integrated. This distinguishes fresh derivation/integration from code review.

Source version: the 190-page [original PDF][pdf], metadata creation date 2026-10-20. PDF/printed pp. 12–14 and 24–25 were visually checked; Appendix A.1–A.6, C.1–C.3 and UN-03 were read in the supplied TeX source. The source/kernel domain assumptions are retained rather than inferred from the finite tests.

## 1. Conventions and fresh combinatorics

The CPS conventions were read in [formalism.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>): signature $(-++)$, $\{a^\dagger,a\}=i$, hence $[a,a^\dagger]=1$. Set $y=\sqrt{1+r^2}$, $F=y^2-1$, so

$$ds^2=-y^2dt^2+\frac{dy^2}{F}+F\,d\theta^2,
\qquad N=y,\quad\sqrt{\bar\sigma}=1.$$

The manuscript/source-script radial phase is

$$u_{nj}=\frac{R_{nj}(y)}{\sqrt{2\pi}}e^{-i\omega t+ij\theta},\quad
R_{nj}=\sqrt{\frac{n+|j|+1}{n+1}}F^{|j|/2}y^{-2-|j|}
P_n^{(1,|j|)}(1-2/y^2),\quad\omega=2+2n+|j|.$$

For $x=1-y^{-2}$, the center-positive convention is

$$f_{nj}(x)=\sqrt{\frac{n+|j|+1}{2\pi(n+1)}}x^{|j|/2}(1-x)P_n^{(|j|,1)}(1-2x),
\qquad R_{nj}/\sqrt{2\pi}=(-1)^nf_{nj}.$$

Jacobi orthogonality gives $2\pi\omega\int_0^1f_{nj}^2/(1-x)\,dx=1$. Six modes needed here were also checked exactly in both Wolfram and the independent polynomial-integration checker.

### Distinct labelled legs

Let $\phi=\sum_a z_af_a$, $\chi=\sum_a z_ac_a$, with $c_a=-i\varepsilon_a\omega_af_a/N$, where $\varepsilon=+1$ is annihilation and $-1$ creation. All four $z_a$ are distinct even if their physical mode labels coincide. For the actual coefficients of $z_az_b$, $a\ne b$, define $U_{ab},T_{ab}$ by

$$LU_{ab}=\frac{c_ac_b+\bar Df_a\cdot\bar Df_b}{2},\qquad
\bar D_jT_{ab}^{\ j}{}_i=\frac{c_a\partial_i f_b+c_b\partial_i f_a}{2}.$$

Then the coefficient of $z_1z_2z_3z_4$ in the constraint quartic is

$$\sum_{ab|cd}\int N\sqrt{\bar\sigma}\,
\left[2T_{ab}:T_{cd}-2U_{ab}c_cc_d-2U_{cd}c_ac_b-8U_{ab}U_{cd}\right],$$

where the sum retains all three partitions $12|34,13|24,14|23$. No same-sign or crossed pairing may be dropped.

If a signed physical mode occurs $m_s$ times, the labelled coefficient equals $\prod_sm_s!$ times the ordinary monomial coefficient; its normalized Fock matrix element therefore divides the labelled coefficient by

$$\mathcal N=\sqrt{\prod_sm_s!}.$$

Thus $\mathcal N=\sqrt2$ for $\langle(00)^2(02)/\sqrt{2!}|K_4|(22)\rangle$, and $\mathcal N=1$ throughout the two-state block. Energy and angular conservation fix the incoming mode of the displayed $1\to3$ resonance to $(n,j)=(2,2)$.

### Translation to the script's source slots

The [source script:63–72][source-slots] instead uses symmetric **ordered-pair polarization**, with the angular factor removed:

$$\rho_{ab}=\tfrac12(c_ac_b+\bar DR_a\cdot\bar DR_b),\quad
Q_{ab}=c_ac_b,\quad
j_{i,ab}=\tfrac14(c_a\partial_iR_b+c_b\partial_iR_a).$$

Its $u_{ab},t_{ab}$ are one half of the distinct-labelled pair coefficients. This is not an erroneous extra half. Each product has $2\times2$ internal source polarizations; the six two-slot subsets retain both orientations of each complementary pair. Restoring four factors $(2\pi)^{-1/2}$, the angular integral and $\kappa^2/G=16\pi$ gives

$$16\pi\times4\times\frac{2\pi}{(2\pi)^2}=32.$$

For $t^j{}_i=\begin{pmatrix}A&FB\\ B/F&-A\end{pmatrix}$ in the $y,\theta$ coordinates, $t:t=2(A^2+B^2)$, exactly as used in the energy integrand.

The boundary normalization, visually checked in the [original PDF, p. 14, Eq. (3.1)][pdf], is

$$D_m=\frac{1}{\sqrt{8\pi m(m^2-1)}}\int\sqrt{\bar\sigma}\,p_m e^{-im\theta}\rho,
\qquad p_m=\left(\frac{y-1}{y+1}\right)^{m/2}(y+m).$$

The classical anticommutator is $2|D_m|^2$; it already includes the conjugate angular harmonics. With $I_m(ab)=\int_1^\infty p_m\rho_{ab}\,dy$, the six-subset convention gives

$$g_{\rm boundary}=-\frac8{\mathcal N}
\sum_{\substack{|A|=2\\|k_A|\ge2}}
\frac{I_{|k_A|}(A)I_{|k_A|}(A^c)}{k_A^2-1}.$$

Consequently both factors $32,-8$ in the [source script:133–159][source-element] are correct **for $g$**. An additional chirality factor would double-count.

## 2. Independent integrations and source endpoint certificates

### Quartic results

In the manuscript phase, $A=|00,10\rangle$, $B=|01,0{-1}\rangle$:

$$g_{\rm con}=\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},\qquad
g_{\rm boundary}=\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.$$

Thus $g$ has eigenvalues $-56/5,-1368/35$ on $(A+B)/\sqrt2,(A-B)/\sqrt2$. **Every entry must be divided by $16\pi$ if reported as $\langle K_4\rangle$.**

For the normalized noncircular resonance,

$$g_{\rm con}=\frac{2\sqrt{10}}{3675},\qquad
g_{\rm boundary}=-\frac{2\sqrt{10}}{3675},\qquad g_{\rm total}=0.$$

Equivalently the two raw $K_4$ pieces are $\pm\sqrt{10}/(29400\pi)$.

The boundary moments were freshly evaluated from the KG modes in Wolfram and independently by transforming $y=1/x$ and integrating polynomial monomials. The six ordered-subset products for the $1\to3$ boundary term are

$$\left(0,\frac1{5880\sqrt5},\frac1{5880\sqrt5},\frac1{5880\sqrt5},\frac1{5880\sqrt5},0\right),$$

before multiplication by $-8/\sqrt2$. This directly exercises both signed harmonics and the repeated-leg divisor.

For the constraint piece, I used the exported source profiles, rebuilt the integrands using the **three distinct-labelled partitions**, and integrated each momentum, $-u\chi^2$, and $-4u^2$ contribution in Wolfram. This independently confirms the integration and quartic assembly; it is not a fresh elliptic/momentum solver. The [integration input][wl] contains no target answers, and the [exact output][wlr] has no Wolfram messages.

### Genuine smoothness, not just bounded polar components

The original [endpoint checks:86–117][endpoints] require finite $A,B$. That alone does **not** establish Cartesian smoothness. For angular harmonic $k$, the correct spin combinations obey

$$A+iB=r^{|k+2|}\,a_+(r^2),\qquad A-iB=r^{|k-2|}\,a_-(r^2),\qquad
u=r^{|k|}\,a_0(r^2),$$

with analytic $a_\pm,a_0$ near zero.

All **20** exported signed sources pass this stronger test: after dividing by the displayed powers, the expressions are rational functions of $y$ with denominator nonzero at $y=1$. Since $y=\sqrt{1+r^2}$ is analytic in $r^2$, this proves the required smoothness for these profiles. All $y^2u,y^2A,y^2B$ have finite limits at infinity, and $y^2B\to0$ for $|k|\ge2$. These falloffs also make the individual quartic energy integrals convergent. The global $k=0,\pm1$ charges were not artificially removed.

Evidence: [independent checker][checker] and its [20 source certificates plus fresh integrals][checks]. The original script's weaker finite-component test is a **validation gap, not a failure of these 20 solutions**. Its endpoint rejection also omits explicit negative infinity and unevaluated `Limit`; this should be hardened for future cases. No original script was modified.

## 3. Adding the local quartic

For $\delta S=-G\lambda\int\sqrt{-g}\,\phi^4/4!$, the connected quartic Hamiltonian is positive for positive $\lambda$:

$$\delta K_4=\frac{\lambda}{384\pi}\int N\sqrt{\bar\sigma}\,\phi^4,\qquad
\alpha=\frac{\lambda}{8\pi}.$$

The pair coefficient in allowed Bose channels $k+\ell$ even is

$$\boxed{\delta\gamma_{k\ell}=\frac{\alpha\,\delta_{k\ell}}{2\Delta+2k-1}.}$$

This formula has an all-index argument, independent of the finite contact tests. Coincident evaluation of a normalized two-particle primary intertwines the AdS isometry action into bulk scalar functions. The two scalar differential Casimirs agree, so their eigenvalues $(\Delta+k)(\Delta+k-1)$ and $(\Delta+\ell)(\Delta+\ell-1)$ force $k=\ell$. For $k=\ell=n$, center normalization and the lowest-weight equations give

$$F_n=\frac{(-1)^n}{2\pi}e^{-2i(\Delta+n)t}y^{-2(\Delta+n)},\quad
\int N\sqrt{\bar\sigma}|F_n|^2=\frac1{4\pi(2\Delta+2n-1)}.$$

The normalized Fock state gives $\phi_+^2|P\rangle=\sqrt2F_n$. The six $2+2$ terms in $\phi^4/4!$ therefore give $\delta g=(\lambda/2)\int|F_n|^2$, proving the boxed normalization. The [finite contact script:29–60][phi4-contact] agrees with this derivation.

The fresh two-state integral gives, in the manuscript phase,

$$\delta g\big|_{A,B}=\frac\alpha{15}\begin{pmatrix}4&1\\1&4\end{pmatrix}.$$

In the center-positive radial convention $f_{10}$ instead, the off-diagonal entries are negative; this is the basis change $A\mapsto-A$, not a disagreement. The two eigenvalue shifts are $\alpha/3$ and $\alpha/5$.

There is also a direct all-index proof of the contact $1\leftrightarrow3$ zero at $\Delta=2$. Put $k=|j_{\rm in}|$, $d=(\sum_i|j_i|-k)/2\ge0$. Resonance requires $n_{\rm in}=\sum_i n_i+d+2$. The radial integral is the Jacobi inner product of $P_{n_{\rm in}}^{(k,1)}(1-2x)$ against

$$x^d(1-x)\prod_{i=1}^3 P_{n_i}^{(|j_i|,1)}(1-2x),$$

which has degree $n_{\rm in}-1$. Orthogonality makes it zero. The explicit $00^2\,02\leftarrow22$ integral was checked independently as a special case. This contact argument does not turn the single tested **gravitational** $1\to3$ cancellation into an all-index gravitational proof.

These statements concern the connected first-order pair interaction at fixed physical gap. Vacuum/one-body contractions require the same normal-ordering or fixed-gap subtraction prescription; they are not additional connected pair terms.

## 4. Scope of the tuned deformation and UN-03

Taking $\alpha=-40/3$ (so $\lambda=-320\pi/3$), and **assuming the all-index Einstein pair kernel**, gives

$$\epsilon'_0(n)=\frac{2(45n^4+270n^3+469n^2+192n+8)}{3(2n+1)(2n+3)(2n+5)}>0,$$

while $\epsilon_2$ is unchanged and positive. Thus the stated common-support condition is preserved at every $n\ge0$, not merely through the tested cutoff.

For the chiral sequence,

$$\gamma_0=-704/45,\quad\gamma_2=-552/35,\quad\gamma_{k\ge4}=-16,\quad s=-4/315,$$

$$r_0=r_2=r_4=0,\qquad r_k=\frac{4(k-4)(k+7)}{315}\quad(k\ge4\text{ even}),\qquad r_6=104/315>0.$$

These are exact rational identities; the numerator positivity and defect formulas were also checked in Wolfram. Under the supplied [UN-03 theorem][un03], the first positive defect is $k_*=6$, and hence

$$\ker K=\mathbb C[c_2,c_3,c_4,c_5],\qquad
g_*(N,P)=-\frac{704}{45}\binom N2-\frac4{315}P(2N+P-1),\quad N\ge P\ge2.$$

The $P=4$, $N=4,5,6$ scalar-block checks in the [deformation script:62–124][phi4-un] are useful finite implementation checks, **not** a proof of this large-$N$/all-degree statement. The proof uses the analytic contact formula, the all-index Einstein input, the all-even-channel defect identity and UN-03. For $P<6$, the entire existing chiral block is scalar because no accessible pair channel has a nonzero defect.

The negative quartic alone is unbounded below as a nonperturbative potential. This is a formal first-order/fixed-gap comparison, not a stable UV completion or a theorem about interchanging large-$N$, high-excitation and weak-coupling limits. The underlying all-index Einstein kernel/domain theorem and UN-03 themselves were not independently reproved in this review.

## Evidence and limitations

- **Freshly derived:** KG factors, signed-slot polarizations, Fock divisor, $32,-8$ conversion, contact coefficient and all-index contact resonance zero.
- **Freshly calculated:** six KG norms, contact block, contact resonance integral, boundary block and noncircular boundary term, using Wolfram plus exact polynomial integration.
- **Independently checked from supplied source profiles:** all 20 Cartesian center/boundary certificates and all four constraint quartic integrations in a different CAS.
- **Code reviewed, not newly solved:** the finite $\Delta=2$ Laurent source ansatz and momentum integrating-factor construction. This review does not certify arbitrary input labels solely from this finite run.
- The initial Sage/SymPy attempt was discarded after detecting Sage-number coercion of assumed SymPy symbols. All quoted integral results were rerun successfully in Wolfram and/or the pinned Python with explicit polynomial integration; no conclusion relies on that failed attempt.
- Only review-owned files were created; manuscript and target scripts were left unchanged.

[source-slots]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_source_audit.py#L63-L72>
[source-element]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_source_audit.py#L133-L159>
[endpoints]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_source_audit.py#L86-L117>
[pdf]: </Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>
[checker]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_gravity_checks.py>
[checks]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_gravity_checks_02.json>
[wl]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_gravity_integrals.wl>
[wlr]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_gravity_integrals_01.txt>
[phi4-contact]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_phi4_verification.py#L29-L60>
[phi4-un]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/gravity_phi4_verification.py#L62-L124>
[un03]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/docs/ADS3_Einstein_Scalar_Master_Note.tex#L3852-L3885>
