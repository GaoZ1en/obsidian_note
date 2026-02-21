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
-i\omega \partial _{r}f_{t}-im \frac{1+r^{2}}{r^{2}}\partial _{r}f_{\phi} & =0
\end{align}$$

and other equations can be written as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f_{t}+\frac{1+r^{2}}{r}\partial _{r}f_{t}-\frac{m^{2}}{r^{2}}f_{t}-\frac{\omega m}{r^{2}}f_{\phi} & =0 \\
(1+r^{2})\partial _{r}^{2}f_{\phi}+\frac{-1+r^{2}}{r}\partial _{r}f_{\phi}+\frac{\omega ^{2}}{1+r^{2}}f_{\phi}+\frac{\omega m}{1+r^{2}}f_{t} & =0
\end{align}$$

here

$$\begin{align}
f^{t} & =g^{tt}f_{t}=-\frac{1}{1+r^{2}}f_{t} \\
f^{\phi} & =\frac{1}{r^{2}}f_{\phi}
\end{align}$$

introduce a new variable $\displaystyle{\xi = f_{\phi}'}$ to decouple the equations. these two equations can be combined into a single second order equation for $\displaystyle{\xi}$:

$$\begin{align}
(1+r^{2})\xi''+\frac{-1+5r^{2}}{r}\xi'+\left(3+\frac{\omega ^{2}-4}{1+r^{2}}-\frac{m^{2}-1}{r^{2}}\right)\xi & =0
\end{align}$$

To find the boundary condition for $\displaystyle{\xi}$ at $\displaystyle{r=r_{0}}$, we revisit the equation of motion for $\displaystyle{f_{\phi}}$:

$$\begin{align}
(1+r^{2})f_{\phi}''+\frac{-1+r^{2}}{r}f_{\phi}'+\frac{\omega ^{2}}{1+r^{2}}f_{\phi}+\frac{\omega m}{1+r^{2}}f_{t} & =0
\end{align}$$

Substitute $\displaystyle{f_{\phi}' = \xi}$ and $\displaystyle{f_{\phi}'' = \xi'}$ into this equation. At the boundary $\displaystyle{r=r_{0}}$, we have the Dirichlet conditions $\displaystyle{f_{\phi}(r_{0})=0}$ and $\displaystyle{f_{t}(r_{0})=0}$.
Thus, the terms proportional to $\displaystyle{f_{\phi}}$ and $\displaystyle{f_{t}}$ vanish at the boundary. The equation simplifies to:

$$\begin{align}
(1+r_{0}^{2})\xi'(r_{0})+\frac{-1+r_{0}^{2}}{r_{0}}\xi(r_{0}) & =0
\end{align}$$

This provides a mixed (Robin) boundary condition for $\displaystyle{\xi}$ at $\displaystyle{r=r_{0}}$.

To solve the equation for $\displaystyle{\xi}$, we can make a variable substitution to transform it into a standard Hypergeometric equation. Let $\displaystyle{z = -r^{2}}$ (or $\displaystyle{z = \frac{r^{2}}{1+r^{2}}}$ for finite domain).
Using $\displaystyle{z = -r^{2}}$, the equation becomes:
$$\begin{align}
z(1-z)\frac{\mathrm{d}^{2}\xi}{\mathrm{d}z^{2}} + (2-3z)\frac{\mathrm{d}\xi}{\mathrm{d}z} - \frac{1}{4}\left( 3 + \frac{\omega^{2}-4}{1-z} + \frac{m^{2}-1}{z} \right)\xi & = 0
\end{align}$$
We can strip off the asymptotic behaviors near singular points.
Near $\displaystyle{z \to 0}$ (origin $\displaystyle{r \to 0}$): The term $\displaystyle{-\frac{m^{2}-1}{4z}}$ dominates. The indicial equation gives characteristic exponents related to $\displaystyle{\frac{m^{2}-1}{4}}$.
Near $\displaystyle{z \to 1}$ (infinity if not cut off): The term $\displaystyle{-\frac{\omega^{2}-4}{4(1-z)}}$ dominates.

Let $\displaystyle{\xi(z) = z^{\alpha} (1-z)^{\beta} F(z)}$. The standard form requires $\displaystyle{\xi \sim z^{\alpha}}$ near 0.
Indicial equation at $\displaystyle{z=0}$: $\displaystyle{\alpha(\alpha-1) + 2\alpha - \frac{m^{2}-1}{4} = 0 \implies \alpha^{2} + \alpha - \frac{m^{2}-1}{4} = 0 \implies (2\alpha+1)^{2} = m^{2} \implies \alpha = \frac{\pm |m| - 1}{2}}$.
For regularity of $f_{\phi} \sim r^{|m|}$, we expect $\xi = f'_{\phi} \sim r^{|m|-1} \sim z^{(|m|-1)/2}$. Thus we choose $\displaystyle{\alpha = \frac{|m|-1}{2}}$.

Indicial equation at $\displaystyle{z=1}$: $\displaystyle{\beta(\beta-1) - (-3-1)\beta \dots}$ - wait, standard form is usually $\displaystyle{\frac{\dots}{1-z}}$. Let's just solve it directly.
Using ansatz $\displaystyle{\xi = r^{|m|-1} (1+r^{2})^{\delta} H(-r^{2})}$.
Let's try $\displaystyle{\xi = r^{|m|-1} (1+r^{2})^{1-\frac{\omega}{2}} F(-r^{2})}$.
...
(Detailed solution to usually follows here)
