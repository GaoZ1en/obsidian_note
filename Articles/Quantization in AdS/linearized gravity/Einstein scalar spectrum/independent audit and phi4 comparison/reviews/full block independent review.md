# Independent review of the full lowest mixed block

**Verdict: the complete connected order-$\kappa^2$ entry $\langle g_+g_-|W_2|ss\rangle$ vanishes. The preserved canonical chart determines the previously undisplayed $\eta p\phi^2$ contact; that contact is nonzero. Every internal radial mode contributes to the mixed-cubic exchange, and retaining only $n=0$ is incorrect.**

This derivation started from the preserved [original §§16–17][original] and the [CPS anchor][cps], without reading the new closure script or results. The contact formulas and the all-radial exchange formula were fixed and communicated first. Only then was the [new closure script][candidate] inspected: its local calculation agrees. No original or earlier review was modified.

## 1. Conventions and which block is being tested

Use radius one, signature $(-++)$, $\Delta=2$, $\mu=0$, $\kappa^2=16\pi G$, fixed boundary clock, Brown–Henneaux falloff, smooth center and fast scalar modes. Write

$$y=\sqrt{1+r^2},\quad F=y^2-1,\quad
\bar\sigma=\frac{dy^2}{F}+F\,d\theta^2,\quad N_0=y,\quad \sqrt{\bar\sigma}=1.$$

The complete **even scalar-parity** free $E_0=4,J=0$ block has just

$$|ss\rangle=\frac{(b_{00}^\dagger)^2}{\sqrt2}|0\rangle,
\qquad |gg\rangle=a_{2,+}^\dagger a_{2,-}^\dagger|0\rangle.$$

Two scalars must both be ground modes. A pure-gravity state needs two $m=2$ modes with opposite chirality. No other even-parity state fits the energy and angular momentum. The odd one-scalar state $(n,j)=(1,0)$ is in a different parity block.

With $H=H_0+\kappa V_1+\kappa^2V_2+\cdots$ and $V_1=[H_0,S]$, the tested operator is the resonant $W_2=P(V_2+[S,V_1]/2)P$, where $P$ projects to this free block. It is not the direct seagull alone.

Below, $c$ always means the **raw monomial coefficient**

$$\kappa^2 c\,a_{2,+}^\dagger a_{2,-}^\dagger b_{00}^2+\mathrm{h.c.}$$

in the resonant effective Hamiltonian. Thus

$$\frac{\langle gg|\delta H|ss\rangle}{G}=16\pi\sqrt2\,c.$$

The scalar factor $\sqrt2$ is required; there is no additional factorial for the distinct graviton chiralities.

## 2. Why the available chart fixes the missing contact

### Cotangent lift, rather than a guessed momentum weight

Let the spatial boundary map be $f(\theta)=\theta+\kappa\eta(\theta)$. The metric and scalar are pulled back together. The bulk scalar pullback term cancels the momentum-constraint contribution to the gravitational potential, as in [§16.2][symplectic]. In the base coordinate $X$, the remaining boundary potential is

$$\Theta_{\rm edge}=\int dX\,q_{\rm base}(X)\,
\delta f(f^{-1}X),\qquad q_{\rm base}=2\lim_{r\to\infty}r^2B.$$

Changing variables to $X=f(\theta)$ gives

$$\Theta_{\rm edge}=\int d\theta\,q_{\rm base}(f)f'\delta f.$$

Writing the leading rescaled flux as $p_{\rm base}=\kappa q_{\rm base}$, its momentum conjugate to $\eta$ is therefore

$$P=p_{\rm base}(f)f',\qquad
\boxed{p_{\rm base}=P-\kappa(\eta P)'+O(\kappa^2).}$$

There is **one** Jacobian power in this cotangent relation. Using a weight-two momentum pullback here would confuse a boundary vector-density pairing with the canonical momentum conjugate to the map itself.

### Boundary energy and the cubic constraint source

On the identity-embedding section write

$$t=\tau/\kappa+t_\phi,\qquad
\Psi=\kappa^2(u_\phi+u_\tau)+\kappa^3u_3+\cdots.$$

The order-$\kappa$ part of the original scalar constraint gives

$$Lu_3=\tau:t_\phi.$$

For a harmonic $k$ with $m=|k|\ge2$, the regular/fast Green inverse has $q_m\sim1/(3y^2)$. Consequently

$$C_{3,k}:=\lim_{y\to\infty}y^2u_{3,k}
=\frac13\int_1^\infty p_m(y)(\tau:t_\phi)_k\,dy.$$

Let $C_\Psi=\lim y^2\Psi=\kappa^2C_2+\kappa^3C_3+\kappa^4C_4+\cdots$. The matter-dependent boundary energy transforms with weight two. Changing its integration variable gives

$$\frac6{\kappa^2}\int C_\Psi(f)(f')^2d\theta
=6\int(C_2+\kappa C_3+\kappa^2C_4)
[1+\kappa\eta'-\kappa^2\eta\eta'']dX+\cdots.$$

Pure-gravity Schwarzian terms carry no scalar legs. Combining the displayed transformation with the cotangent pullback yields the mixed quartic

$$\boxed{V_{\eta p\phi^2}=6\int\eta' C_3[P;\phi]d\theta
-H_3[(\eta P)';\phi],\qquad H_3[P;\phi]=6\int C_3[P;\phi]d\theta.}$$

Thus the source and canonical boundary data determine the uncontracted term; it is not an arbitrary new vertex. The statement in [§17.2][embedding] that **symmetric vacuum displacement–momentum contractions vanish** says nothing about this graviton-creation matrix element.

For the target two creation modes, $N_2=1/\sqrt{48\pi}$ and

$$\eta_+^*=iN_2e^{-2i\theta},\quad
\eta_-^*=-iN_2e^{2i\theta},\quad
P_+^*=-12N_2e^{-2i\theta},\quad
P_-^*=12N_2e^{2i\theta}.$$

Their cross product $\eta_+^*P_-^*+\eta_-^*P_+^*$ is constant. Hence $H_3[(\eta P)']$ contributes zero in this channel. The first term $6\int\eta'C_3$ does not vanish.

## 3. Direct source and contact calculation

The ground annihilation mode, including angular normalization, is

$$R_0=\frac1{\sqrt{2\pi}y^2},\qquad
\chi_0=-\frac{2i}{\sqrt{2\pi}y^3}.$$

Its $b_{00}^2$ sources and responses are

$$\rho_{ss}=\frac{y^2-2}{\pi y^6},\qquad
u_{ss}=-\frac1{20\pi y^4},\qquad
A_{ss}=\frac{i}{\pi F}\left(\frac2{15}-\frac1{3y^3}+\frac1{5y^5}\right),\quad B_{ss}=0,$$

Here $u_{ss}$ is the $b_{00}^2$ coefficient in $u_\phi$. These solve $Lu_{ss}=\rho_{ss}/2$ and the momentum constraint. In particular $y^2u_{ss}\to0$, so the $\eta^2\phi^2$ contact $-6\int\eta\eta'' C_{ss}$ is exactly zero.

For $m=2$, set

$$p_2=\frac{(y-1)(y+2)}{y+1},\qquad h_2=\frac6{(y+1)^2}.$$

The two creation momenta have $A_+^*=A_-^*=-iN_2h_2$ and $B_+^*=-N_2h_2$, $B_-^*=+N_2h_2$. Retaining both orders in $\tau:\tau$ gives

$$[\tau:\tau]_{a_+^\dagger a_-^\dagger}
=-8N_2^2h_2^2=-\frac6{\pi(y+1)^4}=:W_{gg},$$

$$u_{gg}=-\frac{y+3}{12\pi(y+1)^3},\qquad Lu_{gg}=W_{gg}/2.$$

The [original momentum contact, Eq. (17.1)][pcontact] therefore gives

$$c_{p^2\phi^2}=2\pi\int_1^\infty y\left[-u_{gg}\chi_0^2-8u_{ss}u_{gg}-2u_{ss}W_{gg}\right]dy
=\frac{3067-4440\log2}{180\pi}.$$

The boundary cubic density derived above gives

$$c_{\eta p\phi^2}=-32\pi iN_2^2\int_1^\infty p_2h_2A_{ss}\,dy
=\frac{4(-29+42\log2)}{9\pi}.$$

Both results were freshly obtained in Wolfram and independently in the pinned Python checker. The $\eta^2\phi^2$ coefficient is zero for the stated boundary-charge reason, not because the term was omitted.

## 4. Full mixed-cubic exchange: two independent evaluations

### Local completeness calculation

For $D_\pm=N_2E_{\pm2}$ and $F_\pm=2D_\pm+[H_\phi,D_\pm]$, let

$$S=\sum_\pm(a_\pm^\dagger D_\pm-D_\pm^\dagger a_\pm).$$

The $a_+^\dagger a_-^\dagger$ part of $[S,V_1]/2$ is

$$\frac12\left([D_+,[H_\phi,D_-]]+[D_-,[H_\phi,D_+]]\right).$$

The frequency-proportional commutators cancel. This formula is the **unprojected** normal-form commutator, not the graviton-vacuum compression in Eq. (17.7).

For $E_f=\int f\rho$ and $v_g^i=y\bar\nabla^ig-g\bar\nabla^iy$, the CPS bracket gives

$$[E_f,[H_\phi,E_g]]
=\int\left[(v_g\cdot\bar\nabla f)\rho-f(\bar D_i v_{g,j})\bar\nabla^i\phi\bar\nabla^j\phi\right],$$

for the connected quadratic scalar part. With $f,g=p_2e^{\mp2i\theta}$ define

$$v^y=F(yp_2'-p_2),\quad
A_v=v^yp_2'+\frac{4yp_2^2}{F},\quad
B_v=p_2(F(v^y)'-yv^y).$$

Then

$$c_{\rm ex}=2\pi N_2^2\int_1^\infty
\left[A_v\rho_{ss}-B_v(R_0')^2\right]dy
=\frac{-83+120\log2}{20\pi}.$$

The next calculation verifies explicitly that this completeness reduction includes the entire radial spectrum.

### All-radial spectral evaluation

Only intermediate angular momenta $j=\pm2$ occur, but **every** $n\ge0$ contributes. Write

$$w_n=2n+4,\quad \mathcal N_n=\sqrt{\frac{n+3}{n+1}},\quad
R_n=\mathcal N_n F y^{-4}P_n^{(1,2)}(1-2/y^2),$$

with the scalar angular factor removed. Set

$$I_n^\varepsilon=\int_1^\infty p_2\rho_{00,(n,2)}^{+,\varepsilon}dy,\qquad
J_s(n)=\int_1^\infty y^{-s}P_n^{(1,2)}(1-2/y^2)dy.$$

Integrating the radial derivative in the density once, with vanishing center and infinity terms, gives

$$I_n^\varepsilon=\mathcal N_n\left[(6-\varepsilon w_n)J_5-6J_6+(-6+3\varepsilon w_n)J_7+(6-2\varepsilon w_n)J_8\right].$$

A terminating hypergeometric identity supplies every required moment:

$$\int_0^1v^{a-1}P_n^{(1,2)}(1-2v)dv
=\frac{(a-1)(2-a)_{n+2}/(a-1)_{n+2}+(-1)^n[(n+2)^2-(a-1)]}{(n+2)(n+3)}.$$

For completeness, expand the Jacobi polynomial about $v=1$. Its integral is proportional to $\int_0^1(1-t)\,{}_2F_1(-n,n+4;a+1;t)dt$. The integrand is a constant multiple of the second derivative of ${}_2F_1(-n-2,n+2;a-1;t)$. Two elementary integrations retain its values at zero and one; Chu–Vandermonde evaluates the latter. This proves the formula for the needed $a=2,5/2,3,7/2$, rather than fitting finitely many $n$.

The parity-dependent pieces cancel in the density combination, leaving

$$\boxed{
I_n^+=\frac{9\mathcal N_n(n+1)}{(n+2)(n+3)(2n+3)(2n+5)(2n+7)},\qquad
I_n^-=\frac{9\mathcal N_n}{(n+2)(2n+1)(2n+3)(2n+5)}.}$$

The relevant cubic coefficients are $-2N_2w_nI_n^+$ for pair annihilation and $+2N_2w_nI_n^-$ for scattering. Each intermediate state has energy denominator $-w_n$. Retaining both graviton chiralities gives the raw monomial sum

$$\boxed{c_{\rm ex}=\sum_{n=0}^\infty8N_2^2w_nI_n^+I_n^-
=\sum_{n=0}^\infty\frac{27}{\pi(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}.}$$

This positive series is $O(n^{-7})$ termwise. Its exact partial fractions are

$$\pi c_n=-\frac3{n+2}+\frac3{64(2n+1)}+\frac{189}{64(2n+3)}+\frac{189}{64(2n+5)}+\frac3{64(2n+7)}
+\frac{27}{16}\left[\frac1{(2n+5)^2}-\frac1{(2n+3)^2}\right].$$

The squared terms telescope; the harmonic divergences cancel before summation. Digamma values at positive half-integers give

$$\sum_{n\ge0}c_n=\frac{-83+120\log2}{20\pi},$$

exactly matching the local bracket. Wolfram independently executed the infinite rational sum. The first term and the omitted tail are

$$c_0=\frac3{350\pi},\qquad
\sum_{n\ge1}c_n=\frac{-2911+4200\log2}{700\pi}>0.$$

Thus $n=0$ alone cannot establish the mixed entry. The independent checker also evaluates the original polynomial moments at $n=0,\ldots,12$; those finite checks validate implementation, not the all-index identity.

No pure-gravity cubic combined with one mixed cubic contributes to this entry: annihilating the two ground scalars into a single boundary graviton would require angular momentum zero, absent from the $m\ge2$ tower.

## 5. Result, endpoint certificate, and proof boundary

The complete raw coefficient is

$$\boxed{c_{p^2\phi^2}+c_{\eta p\phi^2}+c_{\eta^2\phi^2}+c_{\rm ex}
=\frac{3067-4440\log2}{180\pi}
+\frac{4(-29+42\log2)}{9\pi}
+0+\frac{-83+120\log2}{20\pi}=0.}$$

The normalized $G$-coefficient is therefore $16\pi\sqrt2\times0=0$.

The combined radial integrand also has the exact primitive

$$-\frac{(y-1)(78y^5+203y^4+170y^3+47y^2-84y-18)}{180\pi y^5(y+1)^3},$$

which vanishes at both $y=1$ and infinity. This is an endpoint-level check of the cancellation. Separately, $A_{ss}/r^2\to i/(4\pi)$, $u_{gg}(1)=-1/(24\pi)$ and $y^2u_{gg}\to-1/(12\pi)$. The angular-$2$ cubic source behaves as $O(r^2)$ at the center and $O(y^{-4})$ at infinity; its regular/fast Green formula has convergent moments and the stated boundary coefficient. No temporal averaging or spatial endpoint was discarded to force a zero.

**What this proves:** this complete connected classical mixed entry in the specified canonical chart, with the missing uncontracted contact reconstructed and the radial exchange summed analytically. The new [candidate script][candidate] agrees on all three nonzero components and correctly labels its radial cutoff as numerical support; the all-index spectral formulas above strengthen that part.

**What this does not prove:** all graviton-external blocks, an all-sector closure theorem, a quantum Ward repair, or the full renormalized one-body operator. A vanishing lowest-block entry is not a substitute for those arguments. Conversely, a nonzero result obtained by dropping $\eta p\phi^2$ or the radial tail is not a counterexample to closure.

Executable evidence is in the [independent checker][checker] and [exact certificates][results]. The independently evaluated [Wolfram calculation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_closure2_integrals.wl>) and its [exact output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_closure2_wolfram_01.txt>) confirm all three integrals, the infinite radial sum, the constraints and endpoint primitive, with no kernel messages. One exploratory high-degree direct Jacobi integration timed out; it was replaced by the exact polynomial moment evaluation and all-index terminating identity, not counted as a pass.

[original]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L685-L1164>
[cps]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L144>
[symplectic]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L748-L789>
[embedding]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L985-L993>
[pcontact]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L944-L962>
[candidate]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/audit2_closure_checks.py>
[checker]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/review_closure2_checks.py>
[results]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_closure2_checks_02.json>
