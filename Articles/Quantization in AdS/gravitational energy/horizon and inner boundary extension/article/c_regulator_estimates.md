## Uniform regulator estimates

### Frequency blocks

Work first on a finite Brown--Henneaux block $m,n\leq M$.  After applying the PSL section, every profile vanishes at both interval anchors.  The finite-action boundary contribution decomposes into

$$\begin{align}
\mathcal F_{M,L,\epsilon,R}
=\mathcal F_{\rm trans}
+\mathcal F_{\rm wall}
+\mathcal F_{\rm joint}
+\mathcal F_{\rm outer\,source}
+\mathcal F_{\rm outer\,corner}
+\mathcal F_{\rm outer\,joint}.
\end{align}$$

If a two-frequency kernel obeys

$$\begin{align}
|K_{mn}|\leq C(1+m+n)^D\rho_{L,y,R},
\end{align}$$

then, for $s>1/2$ and a block $m,n\leq M$,

$$\begin{align}
|K(f,g)|
\leq C_sM^D\rho_{L,y,R}
\|f\|_{H^s}\|g\|_{H^s}. \label{eq:block-summation}
\end{align}$$

Indeed $\sum_{m\leq M}|f_m|\leq(\sum_{m\geq1}m^{-2s})^{1/2}\|f\|_{H^s}$.  Thus the constants below are independent of $m,n,M,L,y,R$; the displayed power of $M$ comes only from the exact frequency degree.

The transition estimate follows from the exact rational point-jet kernel.  After writing $z=L^2q$, the only local-profile difference uses

$$\begin{align}
0\leq1-\left(\frac z{1+z}\right)^4\leq\frac4{1+z}.
\end{align}$$

Splitting the half-geodesic at $q=1/2$ gives an integrable endpoint majorant and the $L^{-2}$ bound.  For the complete finite-wall kernel set $x=Lq$ and $t=L^{-2}$.  Subtracting the four endpoint-Wronskian coefficients leaves $tR_{mn}(t,x)$, where $R_{mn}/x$ has an $L$-independent integrable majorant; the endpoint-fixing section annihilates the Wronskian.  This proves the $M^7L^{-2}$ entry on $y=1/(2L)$.  The far wall and joint entries follow by integrating the exact $q^5$ and $q^6$ tails with $\mathrm du=-\mathrm dq/q$.  At the outer cylinder the raw source curvature is exactly zero, the raw corner begins at $R^{-6}$, and the compensated-minus-raw corner has the exact two-scale form $wA+(w^2/z)B$ with $z=R^{-2}$ and $w=L^2R^{-2}$.

The resulting individual estimates are

$$\begin{align}
\begin{array}{c|c}
\text{sector} & \text{uniform block bound}\\ \hline
\text{transition} & C M^6L^{-2}\\
\text{complete compensated wall} & C M^7L^{-2}\\
\text{far wall tail} & C M^7(yL^{-5}+L^{-6})\\
\text{far Hayward joint} & C M^6yR^{-5}\\
\text{outer Brown--York source} & 0\\
\text{raw outer Cauchy corner} & C M^6R^{-6}\\
\text{compensated outer Cauchy mismatch}
& C M^6(L^2R^{-2}+L^4R^{-2})\\
\text{compensated outer Hayward mismatch} & C M^6L^2R^{-2}
\end{array}
\label{eq:regulator-table}
\end{align}$$

where $y=\tanh(\epsilon/2)$.  The complete wall estimate already contains its endpoint shift; adding a separate anchor-shift term would double count the same variation.

### Parameterized linked schedules

Put

$$\begin{align}
L=M^\alpha,
\qquad
y=\frac12M^{-\beta},
\qquad
R=M^\gamma .
\end{align}$$

The powers of $M$ in (\ref{eq:regulator-table}) are

$$\begin{align}
\begin{array}{c|c}
\text{sector} & \text{exponent}\\ \hline
\text{transition} & 6-2\alpha\\
\text{complete compensated wall} & 7-2\alpha\\
\text{far wall, }yL^{-5} & 7-\beta-5\alpha\\
\text{far wall, }L^{-6} & 7-6\alpha\\
\text{far joint} & 6-\beta-5\gamma\\
\text{raw outer corner} & 6-6\gamma\\
\text{compensated corner, }L^2/R^2 & 6+2\alpha-2\gamma\\
\text{compensated corner, }L^4/R^2 & 6+4\alpha-2\gamma\\
\text{compensated joint} & 6+2\alpha-2\gamma .
\end{array}
\label{eq:regulator-exponents}
\end{align}$$

For positive exponents, requiring every row of (\ref{eq:regulator-exponents}) to be negative reduces exactly to

$$\begin{align}
\alpha>\frac72,
\qquad
\beta>0,
\qquad
\gamma>2\alpha+3. \label{eq:monomial-region}
\end{align}$$

The older sufficient condition $\gamma>\alpha+3$ is not enough after the exact $L^4/R^2$ corner coefficient is retained: on $\gamma=\alpha+3+\delta$ that exponent is $2(\alpha-\delta)$.

Equation (\ref{eq:monomial-region}) is the compatibility region of the proved monomial bounds.  The complete compensated-wall majorant used above has been derived uniformly only on $y=1/(2L)$.  Therefore the presently proved class is the codimension-one linked region

$$\begin{align}
\boxed{
\alpha>\frac72,
\qquad
\beta=\alpha,
\qquad
\gamma>2\alpha+3 .
} \label{eq:proved-linked-region}
\end{align}$$

Proving a wall majorant uniform in an independent parameter $yL$ would be required before replacing $\beta=\alpha$ by the full open region (\ref{eq:monomial-region}).

### Explicit member and regulator independence

For

$$\begin{align}
L=M^{10},
\qquad
y=\frac1{2M^{10}},
\qquad
R=M^{30},
\end{align}$$

the entries of (\ref{eq:regulator-table}) scale as

$$\begin{array}{c|c}
\text{sector} & \text{rate}\\ \hline
\text{transition} & O(M^{-14})\\
\text{complete compensated wall} & O(M^{-13})\\
\text{far wall tail} & O(M^{-53})\\
\text{far joint} & O(M^{-154})\\
\text{outer source} & 0\\
\text{raw outer Cauchy corner} & O(M^{-174})\\
\text{compensated outer Cauchy mismatch} & O(M^{-34}+M^{-14})\\
\text{compensated outer Hayward mismatch} & O(M^{-34}).
\end{array}
$$

The total flux is therefore $O(M^{-13})$.  More generally, let $\mathcal F_M^{(1)}$ and $\mathcal F_M^{(2)}$ be two schedules in (\ref{eq:proved-linked-region}), with possibly different admissible exponents.  Since both converge to the same fixed local kernel,

$$\begin{align}
\|\mathcal F_M^{(1)}-\mathcal F_M^{(2)}\|
\leq
\|\mathcal F_M^{(1)}-\mathcal F^{\rm local}\|
+\|\mathcal F_M^{(2)}-\mathcal F^{\rm local}\|
\longrightarrow0. \label{eq:schedule-independence}
\end{align}$$

This proves schedule independence inside the class, rather than only existence of the path $(10,10,30)$.

The same argument gives taper independence at the level actually proved.  If $p_L$ and $\widetilde p_{\widetilde L}$ have the same core and asymptotic limits and separately satisfy

$$\begin{align}
\|B^{p_L}_{M}-B_M^{\rm local}\|
\leq C_pM^6L^{-2},
\qquad
\|B^{\widetilde p_{\widetilde L}}_{M}-B_M^{\rm local}\|
\leq C_{\widetilde p}M^6\widetilde L^{-2},
\end{align}$$

together with the corresponding wall, joint, and outer-corner majorants, then their limiting quadratic forms agree by (\ref{eq:schedule-independence}).  This is independence within the analytic-majorant class.  It does not prove that an arbitrary smooth taper belongs to that class.

### Why the limits cannot be separated naively

On the RT curve, a convenient proper profile is

$$\begin{align}
p_L(\phi)
=\frac{L^2\cos2\phi}{1+L^2\cos2\phi}.
\end{align}$$

In a frequency-$N$ anchor layer, $\phi=\pi/4-y/N$,

$$\begin{align}
p_L\left(\frac\pi4-\frac yN\right)
\longrightarrow
\frac{2y}{2y+N/L^2}.
\end{align}$$

Thus the local completion is recovered uniformly only if $M/L^2\to0$.  Sending $M\to\infty$ at fixed $L$ switches off the completion in the high-frequency anchor layer, while a finite limit of $M/L^2$ leaves a schedule-dependent profile.

### Sobolev summation

The separated endpoint chart contains the momentum trace

$$\begin{align}
p_\pm[f]
=\frac16\left[-f''(\pm a)-f(\pm a)\pm f'(\pm a)\right].
\end{align}$$

For a Fourier block its squared operator norm behaves as

$$\begin{align}
\sum_{m\leq M}m^{4-2\sigma}.
\end{align}$$

Uniform boundedness therefore holds exactly for $\sigma>5/2$.  This is the sharp point-trace threshold for the separated chart.  The cancellation in the combined form lowers the ordinary continuity threshold to $H^2$, as proved in Section \ref{sec:positivity}.

### Time transport

Boundary time evolution multiplies each chiral frequency by a unit phase.  Hence all polynomial frequency bounds in (\ref{eq:regulator-table}) are unchanged.  Conjugating the endpoint and HW sections as in (\ref{eq:time-sections}) transports the whole finite-action stratum inventory.  Since the total flux vanishes uniformly, the integrated symplectic forms on two transported slices agree.
