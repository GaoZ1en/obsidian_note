## Compact and anchored benchmarks

### Compact BTZ calibration

The compact benchmark uses the nonrotating BTZ metric in Gaussian distance from the horizon,

$$\begin{align}
\mathrm ds^2
=\mathrm d\rho^2-r_+^2\sinh^2\rho\,\mathrm dt^2
+r_+^2\cosh^2\rho\,\mathrm d\phi^2,
\qquad \phi\sim\phi+2\pi . \label{eq:btz-gaussian}
\end{align}$$

The brick wall is $\rho=\epsilon$.  We use two complementary sectors.

In the stationary area sector, vary $r_+$ while holding the boost normalization $s_\xi$ fixed.  This changes the induced metric on the wall, so it is not a fixed-wall Dirichlet variation.  The Brown--York source work combines with the comparison corner according to

$$\begin{align}
\mathcal B_\epsilon[\partial_{r_+}]
+\partial_{r_+}\left(
\frac{s_\xi A_\epsilon}{\kappa_{\rm p}^{2}}
\right)
=-\frac{2\pi s_\xi}{\kappa_{\rm p}^{2}}
\cosh\epsilon(\cosh\epsilon-1)
\xrightarrow{\epsilon\to0}0. \label{eq:btz-transgression}
\end{align}$$

The limiting comparison corner is

$$\begin{align}
\frac{s_\xi A_\gamma}{\kappa_{\rm p}^{2}}
=\frac{s_\xi}{2\pi}\frac{A_\gamma}{4G}.
\end{align}$$

It is obtained after fusing away the wall; it is not added as a second joint while the finite wall remains.

In the fluctuation sector, choose a Brown--Henneaux generator multiplied by a smooth radial cutoff that vanishes in a full horizon collar.  Then $\zeta$, $h=\mathcal L_\zeta G$, and $k=\tfrac12\mathcal L_\zeta^2G$ vanish identically near the wall.  Gaussian radial gauge also preserves exact wall--slice orthogonality.  Consequently, at every sufficiently small finite $\epsilon$,

$$\begin{align}
\delta S_{\mathcal H_\epsilon}
=C_\epsilon=\delta C_\epsilon
=\mathcal B_\epsilon
=\omega_\epsilon^{\rm pullback}
=S_{J_\epsilon}=\delta S_{J_\epsilon}
=\delta^2S_{J_\epsilon}=0. \label{eq:btz-collar-zero}
\end{align}$$

This gives a nontrivial asymptotic boundary graviton with no hidden inner-wall or joint contribution.

For the normalized $m=1$ mode, the outer Brown--York coefficients are

$$\begin{align}
H_{\xi,T}^{[-1]}=0,
\qquad
H_{\xi,T}^{[0]}
=\frac{\pi^2(r_+^2+1)}{2r_+}.
\end{align}$$

The exact Einstein--Hilbert cut decomposes as

$$\begin{align}
\int S_{\xi,h}^{[0]}[h]&=0,\\
\int S_\xi[k]&=\frac{\pi^2(r_+^2+1)}{2r_+},\\
\int S_{\xi,k}^{[0]}[k]&=0.
\end{align}$$

Using the second-order equation only after this off-shell decomposition gives

$$\begin{align}
E_{{\rm can,p}}[\kappa_{\rm p}h]
=\frac{\pi^2(r_+^2+1)}{r_+}. \label{eq:btz-energy}
\end{align}$$

The factor of two relative to $H_{\xi,T}^{[0]}$ is the distinction between a second derivative and a quadratic Taylor coefficient.  A direct Lee--Wald integration independently reduces the radial density to a total derivative and reproduces (\ref{eq:btz-energy}) for every smooth collar interpolation with fixed endpoint jets.

### The AdS-Rindler double cutoff

For the symmetric interval with $a=\pi/4$, use

$$\begin{align}
\mathrm ds^2
=-\sinh^2\chi\,\mathrm d\tau^2
+\mathrm d\chi^2
+\cosh^2\chi\,\mathrm du^2. \label{eq:rindler-metric}
\end{align}$$

The inner wall is $\chi=\epsilon$ and the outer cylinder is global radius $r=R$.  Their intersection occurs at

$$\begin{align}
\cosh u_c(R,\epsilon)
=\frac{\sqrt{R^2+1}-\sinh\epsilon}
{\sqrt2\cosh\epsilon}. \label{eq:cutoff-intersection}
\end{align}$$

If $\phi_c$ is the corresponding boundary angle, the outer anchor-strip width satisfies

$$\begin{align}
\lim_{R\to\infty}R\left(\frac\pi4-\phi_c\right)
=\sinh\epsilon. \label{eq:anchor-width}
\end{align}$$

At fixed $\epsilon$, the background joint angle is bounded while the joint worldline density is proportional to $\sinh\epsilon$.  The background joint therefore vanishes in the sequential limit $R\to\infty$ followed by $\epsilon\to0$.

For a fixed embedding, the first- and second-order Hayward densities are nonzero at finite cutoff but vanish in the same sequential limit.  The area-displacement endpoint density (\ref{eq:area-endpoint}) also decays at both anchors.  These checks show that a bounded fixed-embedding joint or outer strip cannot compensate a divergent inner term; any such compensation would have to come from the moving embedding or from an incorrect gauge representative.

### Proper completion and regulator layers

A Brown--Henneaux tangent is $h=\mathcal L_\zeta G$.  Move the inner embedding by $-\zeta$ only in the horizon region and taper that displacement to zero before the asymptotic boundary.  For a profile $p_L$ supported across a transition radius $r\sim L$,

$$\begin{align}
v_L=-p_L\zeta,
\qquad
\Delta_Xg=\mathcal L_{(1-p_L)\zeta}G. \label{eq:proper-taper}
\end{align}$$

The complete pullback cancels the pure-gauge curvature in the compensated core, but the non-Killing transition in (\ref{eq:proper-taper}) remains and must be estimated.  This is why an abstract finite-rank edge cancellation is insufficient for the continuum theorem.

At fixed positive wall cutoff, the exact two-frequency wall kernel obeys

$$\begin{align}
|\mathcal F_{mn}^{\rm wall}(q,\epsilon)|
\leq C(1+m+n)^7
\left(yq^5+q^6\right),
\quad
q=e^{-|u|},\quad y=\tanh\frac\epsilon2. \label{eq:wall-bound}
\end{align}$$

The exact far-joint kernel obeys

$$\begin{align}
|\mathcal F_{mn}^{J}(q,\epsilon)|
\leq C(1+m+n)^6yq^5. \label{eq:joint-bound}
\end{align}$$

The leading wall and joint jets cancel before these bounds are applied.  The transition kernel for endpoint-zero data satisfies

$$\begin{align}
\|B_{mn}^{(L)}-B_{mn}^{\rm local}\|_{L^1(\gamma)}
\leq\frac{C(1+m+n)^6}{L^2}. \label{eq:transition-bound}
\end{align}$$

The outer Brown--York source curvature vanishes exactly.  The remaining Cauchy-corner and outer-joint mismatches have the rates summarized in Appendix \ref{app:regulator-estimates}.  These are uniform kernel estimates, not mode-by-mode extrapolations.
