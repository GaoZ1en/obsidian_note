in this note we will analysis the $\displaystyle{\mathrm{U}(1)}$ gauge theory defined in a finite $\displaystyle{\mathrm{AdS}_{3}}$ spacetime. the spacetime truncated at $\displaystyle{r=r_{0}}$ and the boundary condition is

$$\begin{align}
A^{t}|_{r=r_{0}}=0 \\
A^{\phi}|_{r=r_{0}}=0
\end{align}$$

and no requirement for $\displaystyle{A^{r}}$. the metric is chosen as

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}, r\leqslant r_{0}
\end{align}$$

and the eom is given by

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =0 \\
\implies (1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

since the system is no longer conformally invariant, we cannot impose covariant gauge condition $\displaystyle{\nabla _{\mu}A^{\mu}=0}$. however, we can choose the radial gauge to simplify the analysis.

$$\begin{align}
A^{r}=0
\end{align}$$

this gauge can always be chosen since for any configuration $\displaystyle{A_{\mu}}$ that satisfies the eom and boundary conditions, we can always find a gauge transformation $\displaystyle{\Lambda}$ such that $\displaystyle{A'_{\mu}=A_{\mu}+\nabla _{\mu}\Lambda}$ that satisfies $\displaystyle{A'_{r}=0}$ and the same boundary conditions, i.e.,

$$\begin{align}
\Lambda & =-\int _{r_{0}}^{r}A_{r}(t,r',\phi )\mathrm{d}r'
\end{align}$$

which is well-defined since the spacetime is topologically trivial. after imposing the radial gauge, the eom becomes


$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

we take the Fourier transform in time and angular direction to decouple the equations.

$$\begin{align}
A^{\mu} & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and the eom becomes

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+4f^{t}-\frac{m^{2}}{r^{2}}f^{t}+\frac{\omega m}{1+r^{2}}f^{\phi} & =0 \\
\omega \partial _{r}[(1+r^{2})f^{t}]-m\frac{1+r^{2}}{r^{2}}\partial _{r}(r^{2}f^{\phi}) & =0 \\
-\frac{\omega m}{r^{2}}f^{t}+(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi}+\frac{\omega ^{2}}{1+r^{2}}f^{\phi} & =0
\end{align}$$

---

for possible zero modes with $\displaystyle{\omega=0}$, we can solve the equations directly

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+4f^{t}-\frac{m^{2}}{r^{2}}f^{t} & =0 \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0
\end{align}$$

there is no nontrivial solution for $\displaystyle{f^{\mu}}$ that satisfies the boundary conditions, so there is no zero mode in the spectrum.

---

the constraint equation is more clear in the subscription form, i.e.,

$$\begin{align}
-i\omega \partial _{r}f_{t}-im \frac{1+r^{2}}{r}\partial _{r}f_{\phi} & =0
\end{align}$$

and other equations can be written as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f_t+\frac{1}{r}\partial _{r}f_{t}-\frac{m^{2}}{r^{2}}f_{t}-\frac{\omega m}{r^{2}(1+r^{2})}f_{\phi} & =0
\end{align}$$

$$\begin{align}
f^{t} & =g^{tt}f_{t}=-\frac{1}{1+r^{2}}f_{t} \\
f^{\phi} & =\frac{1}{r^{2}}f_{\phi}
\end{align}$$


However, a more systematic way to decouple the equations is to work in the Fourier domain $\displaystyle{A^{\mu}=e^{-i\omega t+im\phi}f^{\mu}(r)}$ (with $\displaystyle{f^{r}=0}$). The equations become:

1.  Constraint (from $\displaystyle{\nabla _{\mu}F^{\mu r}=0}$):
    $$\begin{align}
    f^{t}{}' & = -\frac{m}{\omega}\frac{1+r^{2}}{r^{2}}f^{\phi}{}'
    \end{align}$$
    (Note: This relates the derivatives of the fields).

2.  Dynamical equations (linear cobination of $\displaystyle{\nabla _{\mu}F^{\mu t}=0}$ and $\displaystyle{\nabla _{\mu}F^{\mu \phi}=0}$ reduces to):
    $$\begin{align}
    \frac{\mathrm{d}}{\mathrm{d}r}\left( r \frac{\mathrm{d}f^{t}}{\mathrm{d}r} \right) & = \frac{m}{r(1+r^{2})}(m f^{t}+\omega f^{\phi}) \\
    \frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} \frac{\mathrm{d}f^{\phi}}{\mathrm{d}r} \right) & = -\frac{\omega}{r(1+r^{2})}(m f^{t}+\omega f^{\phi})
    \end{align}$$
    It can be shown that substituting (1) into the second dynamical equation yields the first dynamical equation, so the system is consistent and contains one independent dynamical degree of freedom.

To solve this, we introduce an auxiliary scalar potential $\displaystyle{\Psi(r)}$ related to the field strength component $\displaystyle{F_{r\phi}}$:
$$\begin{align}
f^{\phi}{}'(r) & = -i\omega \Psi(r)
\end{align}$$
Then from the constraint (1), we have:
$$\begin{align}
f^{t}{}'(r) & = i m \frac{1+r^{2}}{r^{2}} \Psi(r)
\end{align}$$

Substituting these into the second dynamical equation (for $\displaystyle{f^{\phi}}$):
$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} (-i\omega \Psi) \right) & = -\frac{\omega}{r(1+r^{2})}(m f^{t}+\omega f^{\phi}) \\
\implies \frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} \Psi \right) & = \frac{1}{i r(1+r^{2})}(m f^{t}+\omega f^{\phi})
\end{align}$$
Differentiating this relation with respect to $\displaystyle{r}$ again allows us to eliminate $\displaystyle{f^{t}, f^{\phi}}$ using their derivatives:
$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}r}\left[ r(1+r^{2}) \frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} \Psi \right) \right] & = \frac{1}{i} (m f^{t}{}' + \omega f^{\phi}{}') \\
& = \frac{1}{i} \left( m \cdot im \frac{1+r^{2}}{r^{2}}\Psi + \omega \cdot (-i\omega \Psi) \right) \\
& = \left( m^{2}\frac{1+r^{2}}{r^{2}} - \omega^{2} \right) \Psi
\end{align}$$

Thus, $\displaystyle{\Psi}$ satisfies a second-order linear ODE:
$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}r}\left[ r(1+r^{2}) \frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} \Psi \right) \right] + \left( \omega^{2} - m^{2}\frac{1+r^{2}}{r^{2}} \right) \Psi & = 0
\end{align}$$

**Boundary Conditions:**
1.  **At the origin ($r \to 0$):** We require regular solutions.
2.  **At the boundary ($r=r_{0}$):** The condition $\displaystyle{f^{t}(r_{0})=f^{\phi}(r_{0})=0}$ implies $\displaystyle{m f^{t}(r_{0}) + \omega f^{\phi}(r_{0}) = 0}$. From the intermediate equation above, this is equivalent to:
    $$\begin{align}
    \left. \frac{\mathrm{d}}{\mathrm{d}r}\left( \frac{1+r^{2}}{r} \Psi \right) \right|_{r=r_{0}} & = 0
    \end{align}$$
    This provides the quantization condition for $\displaystyle{\omega}$.

The solution for $\displaystyle{\Psi}$ can be found in terms of Hypergeometric functions (similar to the infinite case but with different parameters/indices), and the spectrum is determined by the root of the derivative condition at $\displaystyle{r_{0}}$.
