we couple a charged point defect to a $\displaystyle{\mathrm{U}(1)}$ gauge field just like [[Articles/Quantization in AdS/Chern-Simons/particle as defect|particle as defect]], but with Maxwell action

$$\begin{align}
S[A;\gamma] & =-\dfrac{1}{2}\int _{M}F\wedge \star F+q\int _{\gamma}A.
\end{align}$$

Here $\gamma$ is a prescribed oriented worldline. The coupling again defines a Wilson-line defect carrying charge $q$, but the sourced Maxwell field is qualitatively different from the Chern-Simons case: the defect creates a Coulomb field rather than a flat connection with nontrivial holonomy.

## Poincare dual current

Let $\delta_{\gamma}$ be the Poincare dual two-form distribution of the worldline, normalized by

$$\begin{align}
\int _{M}\alpha \wedge \delta_{\gamma} & =\int _{\gamma}\alpha
\end{align}$$

for every smooth one-form $\alpha$. Then the source term can be written as

$$\begin{align}
q\int _{\gamma}A & =q\int _{M}A\wedge \delta_{\gamma}.
\end{align}$$

Taking a variation gives

$$\begin{align}
\delta S & =\int _{M}\delta A\wedge \left(-\mathrm{d}\star F+q\delta_{\gamma}\right)-\int _{\partial M}\delta A\wedge \star F.
\end{align}$$

Thus the bulk equation of motion is

$$\begin{align}
\mathrm{d}\star F & =q\delta_{\gamma}.
\end{align}$$

For a static defect sitting at $r=0$, integrate this equation over a spatial disk $D$ around the puncture. If $C=\partial D$ links the worldline once, then

$$\begin{align}
\oint _{C}\star F & =q.
\end{align}$$

So unlike the Chern-Simons defect, which is characterized by angular holonomy, the Maxwell defect is characterized by electric flux.

## static axisymmetric representative

Take a static rotationally symmetric ansatz

$$\begin{align}
A & =A_{t}(r)\mathrm{d}t.
\end{align}$$

Away from the defect, $\mathrm{d}\star F=0$, so

$$\begin{align}
\frac{1}{r}\partial _{r}\left(r\partial _{r}A_{t}\right) & =0.
\end{align}$$

Therefore

$$\begin{align}
A_{t}(r) & =-\frac{q}{2\pi}\log r+c,
\end{align}$$

and hence

$$\begin{align}
F & =\mathrm{d}A=\frac{q}{2\pi r}\mathrm{d}t\wedge \mathrm{d}r, &
\star F & =\frac{q}{2\pi}\mathrm{d}\phi.
\end{align}$$

This indeed reproduces the flux condition

$$\begin{align}
\oint _{C}\star F & =\int _{0}^{2\pi}\frac{q}{2\pi}\mathrm{d}\phi=q.
\end{align}$$

No gauge transformation removes the logarithm in $A_{t}$, because the nonzero electric flux is gauge invariant.

Under a gauge transformation $A\mapsto A+\mathrm{d}\lambda$, the defect coupling changes by

$$\begin{align}
q\int _{\gamma}\mathrm{d}\lambda & =q\left(\lambda(\tau _{f})-\lambda(\tau _{i})\right).
\end{align}$$

Therefore a closed Wilson line is gauge invariant under small gauge transformations. For an open Wilson line, the endpoints must again be attached to states of charge $q$ and $-q$.

## energy and phase-space obstruction

The electrostatic field of a single point charge is not in the finite-energy Maxwell phase space used elsewhere in this project. On the regulated annulus $\Sigma _{\epsilon ,R}$, the electrostatic energy is

$$\begin{align}
E_{\epsilon ,R} & =\frac{1}{2}\int _{0}^{2\pi}\mathrm{d}\phi \int _{\epsilon}^{R}\mathrm{d}r\,r\,F_{tr}^{2} \\
 & =\pi \int _{\epsilon}^{R}\mathrm{d}r\,r\left(\frac{q}{2\pi r}\right)^{2} \\
 & =\frac{q^{2}}{4\pi}\log \frac{R}{\epsilon}.
\end{align}$$

Thus there are two distinct logarithmic problems:

$$\begin{align}
E_{\epsilon ,R} & =\frac{q^{2}}{4\pi}\log \frac{\mu}{\epsilon}+\frac{q^{2}}{4\pi}\log \frac{R}{\mu}.
\end{align}$$

The $\epsilon \to 0$ divergence is the usual local self-energy of a point charge. It can be absorbed into a worldline mass counterterm

$$\begin{align}
S_{\text{wl}} & =-m_{\text{bare}}(\epsilon)\int _{\gamma}\mathrm{d}s,
\end{align}$$

so that the renormalized particle mass at scale $\mu$ is

$$\begin{align}
m_{\text{ren}}(\mu) & =m_{\text{bare}}(\epsilon)+\frac{q^{2}}{4\pi}\log \frac{\mu}{\epsilon}.
\end{align}$$

However, the $R\to \infty$ divergence is not a local defect renormalization issue. It reflects the fact that an isolated nonzero electric charge in three-dimensional Maxwell theory produces a long-range Coulomb field with

$$\begin{align}
A_{t} & \sim -\frac{q}{2\pi}\log r, &
F_{tr} & \sim \frac{q}{2\pi r},
\end{align}$$

which violates the asymptotic phase space used in [[Articles/Quantization in AdS/electric field/article/1_model|1_model]], where $A_{t}=O(r^{0})$ and $F_{tr}=o(r^{-1})$.

Therefore a single charged defect is a well-defined external source, but it is not a finite-energy state in the present pure Maxwell phase space.

## how to use the defect discussion in Maxwell

To stay within the Maxwell phase space used in this note set, one must impose vanishing total charge at infinity. The clean options are:

1. work in a neutral sector, for example a defect-antidefect pair or a defect together with a compensating boundary charge, so that the net flux through the asymptotic circle vanishes and the logarithmic large-$r$ tail cancels;
1. move to a screened theory such as Maxwell-Chern-Simons or Proca-Chern-Simons, where the gauge field acquires a mass gap and an isolated charged defect has finite-energy falloff.

In pure Maxwell theory, the local UV divergence is handled by worldline mass renormalization, but that does not solve the infrared and asymptotic obstruction of a single net charge.

Unlike the Chern-Simons defect, the Maxwell defect does not generate a topological holonomy sector or a boundary Kac-Moody algebra in the phase space used here. The gauge transformations with $\Lambda =O(r^{0})$ remain null directions of the symplectic form, as discussed in [[Articles/Quantization in AdS/electric field/article/appendix_c_large_gauge_transformations|appendix_c_large_gauge_transformations]], and the physical effect of the defect is the Coulomb flux itself.
