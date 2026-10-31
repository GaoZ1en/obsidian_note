# CJ-to-CPS spatial reflection and chiral fugacity

**Verdict:** the proposed reflection reconciles the flows and annihilator labels exactly. It is sufficient to use the source chiral coordinate and reflect the angular twist **provided the symplectic convention is also stated explicitly**: the printed CJ Kirillov–Kostant form is the negative of the Harlow–Wu CPS form derived from CJ's own first-order action. A bare statement that the coordinates are opposite, while identifying both printed symplectic forms and both geometric q variables, would miss two signs.

This is a scoped response to the parent reviewer's supplied CPS convention; no parent report was read or edited. The workspace [CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) was reread before this comparison. Source equations were visually rechecked in **arXiv:1808.03263v3**: [PDF 9 / p.8, (2.2)–(2.4)](<https://arxiv.org/pdf/1808.03263v3#page=9>); [PDF 13–14 / pp.12–13, (2.23)–(2.24)](<https://arxiv.org/pdf/1808.03263v3#page=13>); and [PDF 46 / p.45, (5.39)](<https://arxiv.org/pdf/1808.03263v3#page=46>).

## 1. The two meanings of the symplectic sign

Write \(a=C/(48\pi)\). For the vacuum orbit, CJ prints
\[
\alpha_s=a\int_0^{2\pi}d\theta\left(\frac{\phi''\delta\phi'}{\phi'^2}-\phi'\delta\phi\right),
\qquad
\omega_s=\delta\alpha_s=-a\int_0^{2\pi}d\theta\left(
\frac{\delta\phi'\wedge\delta\phi''}{\phi'^2}-\delta\phi\wedge\delta\phi'\right).
\]
But its action is
\[
S_s=-\int dt\,[\alpha_s(\dot\phi)+H_s].
\]
Consequently the endpoint potential and symplectic form obtained by varying this action in the Harlow–Wu convention are
\[
\Theta_{\mathrm{CPS},s}=-\alpha_s,\qquad
\Omega_{\mathrm{CPS},s}=-\omega_s.
\]
Indeed CJ (2.4) calls \(dq\wedge dp\) the canonical symplectic form, whereas the workspace convention is \(\delta(p\,\delta q)=dp\wedge dq\). This is a convention conversion, not a dynamical discrepancy.

Consistently, CJ defines \(v^i=\omega_s^{ij}\partial_jH\), with \(\omega_s^{ik}\omega_{s,jk}=\delta^i_j\). It follows that
\[
\iota_v\omega_s=+\delta H_s,
\qquad
\iota_v\Omega_{\mathrm{CPS},s}=-\delta H_s.
\]
The second equation is precisely the convention supplied by the parent.

## 2. Exact reflection of the action and form

Keep time unchanged and define
\[
\theta=-x,\qquad (Rf)(\theta,t)=\phi(\theta,t)=-f(-\theta,t).
\]
This preserves winding one and \(\phi'>0\). At corresponding points,
\[
\phi'=f',\quad \phi''=-f'',\quad \phi'''=f''',\qquad
\delta\phi=-\delta f,\quad \delta\phi'=\delta f',\quad \delta\phi''=-\delta f''.
\]
Define the potential on the f variables by the same displayed functional,
\[
\alpha_f=a\int_0^{2\pi}dx\left(\frac{f''\delta f'}{f'^2}-f'\delta f\right),
\quad
\Omega_f=\delta\alpha_f=-a\int_0^{2\pi}dx\left(
\frac{\delta f'\wedge\delta f''}{f'^2}-\delta f\wedge\delta f'\right).
\]
Using positive-coordinate circle intervals on both sides gives
\[
\boxed{R^*\alpha_s=-\alpha_f,\qquad R^*\omega_s=-\Omega_f,
\qquad R^*\Omega_{\mathrm{CPS},s}=\Omega_f.}
\]
Do not count the spatial Jacobian sign twice: changing \(\theta:0\to2\pi\) to \(x:0\to-2\pi\), followed by periodicity, leaves the minus sign from the transformed integrand.

The Schwarzian and \(\phi'^2\) are even under the reflection. Thus
\[
H_s\circ R=H_f=-\frac{C}{24\pi}\int dx\,\{f,x\}
-\frac{C}{48\pi}\int dx\,f'^2,
\]
and
\[
\boxed{R^*S_s=\int dt\,[\alpha_f(\dot f)-H_f].}
\]
This produces exactly the supplied \(\Omega_f\) and \(\iota_{X_H}\Omega_f=-\delta H_f\). The map is anti-symplectic relative to the *printed* \(\omega_s\), but symplectic relative to the action-derived \(\Omega_{\mathrm{CPS},s}\).

Since \(DR(\dot f)=-\dot f\), the source flow \(v\phi=-\phi'\) maps to
\[
X_Hf=f',
\]
modulo the vertical projective constant. With identical equal-time Fourier normalizations,
\[
\phi=\theta+\epsilon(\theta),\quad f=x+u(x),\quad
\epsilon(\theta)=-u(-\theta)
\quad\Longrightarrow\quad
\boxed{\epsilon_n=-u_{-n}.}
\]
The source annihilator \(\epsilon_n\), \(n>0\), has time dependence \(e^{-int}\); so does the parent's \(u_{-n}\). There is no creator/annihilator interchange, apart from relabeling the spatial Fourier index and an irrelevant overall minus phase.

## 3. Angular twist, complex structure, and q

Let the source torus parameter be \(\tau_s=\tau_{1,s}+i\tau_2\), and set
\[
\alpha_s=2\pi\tau_{1,s},\qquad \beta=2\pi\tau_2>0.
\]
The source condition is
\[
\phi(\theta,y+\beta)=\phi(\theta-\alpha_s,y).
\]
After reflection it becomes
\[
\boxed{f(x,y+\beta)=f(x+\alpha_s,y).}
\]
If the parent uses the standard geometric torus identification
\((x,y)\sim(x+\alpha_x,y+\beta)\), then
\[
\alpha_x=-\alpha_s,\qquad
\boxed{\tau_x=-\overline{\tau_s}.}
\]
Equivalently \(z_s=\theta+iy=-\bar w\), where \(w=x+iy\). Source-holomorphic fields become antiholomorphic with respect to w; explicitly \(\bar\partial_s=-\partial_w\) under the coordinate reflection. For the fugacities,
\[
q_s=e^{2\pi i\tau_s},\qquad q_x=e^{2\pi i\tau_x},\qquad
\boxed{q_s=e^{-2\pi i\bar\tau_x}\equiv\bar q_x.}
\]
Therefore the same chiral Hilbert-space trace and character are
\[
Z=\mathrm{Tr}\,q_s^{L_0-c/24}
=\mathrm{Tr}\,\bar q_x^{L_0-c/24},
\]
not \(\mathrm{Tr}\,q_x^{L_0-c/24}\) with the same geometric \(\tau_x\). If q is treated purely as an abstract Hamiltonian fugacity, it is perfectly consistent to retain \(q=q_s\); simply distinguish its parameter \(\tau_s\) from the parent geometric \(\tau_x\). On a rectangular torus \(\tau_{1,s}=0\), the fugacities are real and the distinction is hidden.

The repaired-localizer spectrum reflects in the same way. For parent modes \(e^{ikx+i\nu y}\),
\[
\nu=\frac{m-k\tau_{1,x}}{\tau_2},\qquad
A_x=+\partial_x,\qquad
A_x-i\partial_y\longmapsto\frac{m-k\bar\tau_x}{\tau_2}.
\]
With \(k=-n\), \(\bar\tau_x=-\tau_s\), this is exactly the source eigenvalue
\[
\frac{m-n\tau_s}{\tau_2}.
\]
Thus the same regulator produces the same vacuum-energy coefficient and central-charge identification; reflection swaps the geometric chirality label, not the positive-energy spectrum or the sign of the quantum shift.

## 4. Suggested integration sentence

> We use Cotler–Jensen's chiral coordinate \(\theta=-x\) with \(\phi(\theta)=-f(-\theta)\). Their printed form \(\omega_s=d\alpha_s\), together with \(S_s=-\int(\alpha_s\dot\phi+H)\), corresponds to the CPS form \(-\omega_s\); its pullback is our \(\Omega_f\). Accordingly \(v_s\phi=-\phi'\) maps to \(X_Hf=f'\), and \(\epsilon_n=-u_{-n}\). We retain the source Hamiltonian fugacity \(q_s\); in the geometric x-coordinate torus, \(\tau_x=-\bar\tau_s\) and \(q_s=\bar q_x\).

The local potential/form signs, Schwarzian parity, reflected fluctuation eigenvalue, and fugacity exponent were checked in Wolfram 14.3, with all five residuals zero and no messages: [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/spatial-reflection-checks.wl>), [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/spatial-reflection-checks-output.txt>). This is a convention check, not a new all-orders quantum-equivalence claim.
