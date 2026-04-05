recall that for a point particle, we have two actions to describe its dynamics

$$\begin{align}
S_{\text{NG}} & =-m\int \mathrm{d}\tau \sqrt{ -G_{\mu \nu} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\tau}\frac{\mathrm{d}X^{\nu}}{\mathrm{d}\tau} } \\
S_{\text{Pol}} & =-\frac{1}{2}\int \mathrm{d}\tau \sqrt{ - g }\left( g^{ab} \frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu} +m^{2}\right)
\end{align}$$

they are somewhat equivalent. by taking a variation of $\displaystyle{S_{\text{Pol}}}$ with respect to $\displaystyle{g_{ab}}$, we have

$$\begin{align}
-\frac{2}{\sqrt{ -g }}\frac{\delta S_{\text{Pol}}}{\delta g_{ab}} & =\frac{\partial X^{\mu}}{\partial \tau _{a}} \frac{\partial X^{\nu}}{\partial \tau _{b}}G_{\mu \nu}-\frac{1}{2}g^{ab}\left(g^{cd} \frac{\partial X^{\mu}}{\partial \tau ^{c}} \frac{\partial X^{\nu}}{\partial \tau ^{d}}G_{\mu \nu}+m^{2}\right)
\end{align}$$

since $\displaystyle{g_{ab}}$ has no dynamics, $\displaystyle{\frac{\delta S_{\text{Pol}}}{\delta g_{ab}}\approx 0}$ is actually a constraint. take a trace

$$\begin{align}
g^{ab}\frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu} & =m^{2} \\
\implies g_{ab}= \frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu}
\end{align}$$

then insert back into the $\displaystyle{S_{\text{Pol}}}$, we have

$$\begin{align}
S_{\text{Pol}} & =-\frac{1}{2}\int \mathrm{d}\tau \sqrt{ - g_{ab} }\left( g^{ab} \frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu} +m^{2}\right) \\
 & =-m\int \mathrm{d}\tau \sqrt{ -G_{\mu \nu} \frac{\partial X^{\mu}}{\partial \tau} \frac{\partial X^{\nu}}{\partial \tau} }
\end{align}$$

---

for (open/closed) string, we have also two actions that are equivalent

$$\begin{align}
S_{\text{NG}} & =-T\int \mathrm{d}^{2}\tau \sqrt{ -\det\left(\frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu}\right) } \\
S_{\text{Pol}} & =-\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{ -g } g^{ab} \frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu}
\end{align}$$

to see their equivalence, we can take the variation of $\displaystyle{S_{\text{Pol}}}$ with respect to the worldsheet metric $g^{ab}$. let $\displaystyle{h_{ab} = \frac{\partial X^\mu}{\partial \tau^a} \frac{\partial X^\nu}{\partial \tau^b} G_{\mu\nu}}$ be the induced metric.
    
$$\begin{align}
\delta S_{\text{Pol}}& = -\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{-g} \delta g^{ab} \left( h_{ab} - \frac{1}{2}g_{ab}h \right)
\end{align}$$

setting $\displaystyle{\frac{\delta S_{\text{Pol}}}{\delta g^{ab}} = 0}$ gives the equation of motion for $g^{ab}$:

$$\begin{align}
h_{ab} & =\frac{1}{2}g_{ab}h
\end{align}$$

taking the determinant on both sides


$$\begin{align}
\det h & =\frac{1}{4}h^{2}\det g_{ab}
\end{align}$$

which implies:

$$\begin{align}
\sqrt{ -g } & =\frac{2\sqrt{ -\det h }}{h}
\end{align}$$

plug this back into the Polyakov action:

$$\begin{align}
S_{\text{Pol}} & =-\frac{T}{2}\int \frac{\mathrm{d}^{2}\tau 2\sqrt{ -\det h }}{h}\left(h\right) \\
 & =-T\int \mathrm{d}^{2}\tau \sqrt{ -\det h } \\
 & =S_{\text{NG}}
\end{align}$$

---

What if we add a "mass term" (essentially a 2D cosmological constant) to the string action, similar to the point particle case? Let's check:

$$\begin{align}
S_{\text{Pol}} & =-\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{ - g }\left( g^{ab} \frac{\partial X^{\mu}}{\partial \tau ^{a}} \frac{\partial X^{\nu}}{\partial \tau ^{b}}G_{\mu \nu}+m^{2} \right)
\end{align}$$

Let $\displaystyle{h = g^{ab}h_{ab}}$. The variation with respect to $g^{ab}$ now includes the $m^2$ term:

$$\begin{align}
\delta S_{\text{Pol}} & = -\frac{T}{2}\int \mathrm{d}^{2}\tau \sqrt{-g} \delta g^{ab} \left( h_{ab} - \frac{1}{2}g_{ab}(h + m^2) \right)
\end{align}$$

Setting the variation to zero gives the modified equation of motion:

$$\begin{align}
h_{ab} & = \frac{1}{2}g_{ab}(h + m^2)
\end{align}$$

Now, take the trace by contracting with $g^{ab}$ on both sides. Since we are in $D=2$ dimensions, $g^{ab}g_{ab} = 2$. We get:

$$\begin{align}
h & = \frac{1}{2} \cdot 2 \cdot (h + m^2) \\
\implies h & = h + m^2 \\
\implies m^2 & = 0
\end{align}$$

This shows that the equations of motion are **inconsistent** unless $m^2 = 0$. 

Physically, this happens because the classical string worldsheet theory enjoys an extra local symmetry: **Weyl invariance** (local scale invariance, $g_{ab} \to e^{2\omega(\tau)} g_{ab}$). 
In exactly $D=2$ dimensions, the kinetic term $\sqrt{-g} g^{ab} h_{ab}$ is Weyl invariant because the transformation of the measure $\sqrt{-g} \to e^{2\omega}\sqrt{-g}$ perfectly cancels the inverse metric $g^{ab} \to e^{-2\omega}g^{ab}$. However, the "mass term" $\sqrt{-g} m^2$ changes by a factor of $e^{2\omega}$, which explicitly breaks the Weyl symmetry. To preserve this crucial symmetry (which is necessary to remove negative-norm states/ghosts during quantization), the classical worldsheet cosmological constant $m^2$ must vanish.

---

to perform canonical quantization, we have to solve the eom for $\displaystyle{X^{\mu}}$ first. before solving the eom, we first analyse the symmetry of the Polyakov action. 

- reparameterization with $\displaystyle{\tau _{a}\to \tau _{a}'}$
- Weyl symmetry with $\displaystyle{g_{ab}\to e^{2\sigma}g_{ab}}$
- target space symmetries...

by Weyl symmetry, we can set the world-sheet metric $\displaystyle{g_{ab}}$ to $\displaystyle{\delta _{ab}}$. 