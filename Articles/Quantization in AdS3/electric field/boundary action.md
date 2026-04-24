we have already derived the [[Articles/Quantization in AdS3/electric field/solving modes/modes|modes]] for Maxwell theory in $\displaystyle{\mathrm{AdS}_{3}}$. the variation of the action leads to a boundary term supported on $\displaystyle{\Gamma}$, which is given by

$$\begin{align}
-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}F^{\mu \nu}\delta A_{\nu}= \mathcal{O}(r^{1})
\end{align}$$

which is non-vanishing and divergent as $\displaystyle{r\to \infty}$. thus we have to impose a suitable boundary Lagrangian to cancel this boundary term, and the variation of the total action is well-defined at least onshell.

---

for the branch $\displaystyle{(1,1)}$, the asymptotic behavior of the gauge field components is given by

$$\begin{align}
\psi _{(1,1)}^{t} & =\mathcal{O}(r^{-4}) \\
\psi _{(1,1)}^{r} & =\mathcal{O}(r^{-1}) \\
\psi _{(1,1)}^{\phi} & =\mathcal{O}(r^{-4}) \\
\end{align}$$

then we have

$$\begin{align}
-\sqrt{ -\gamma }n^{\mu}F_{\mu \nu}\delta A^{\nu} & =\mathcal{O}(r^{-4})
\end{align}$$

which is finite as $\displaystyle{r\to \infty}$, thus we don't need to add any boundary Lagrangian for this branch. we introduce

$$\begin{align}
A^{\pm} & =A^{t}\pm A^{\phi}
\end{align}$$

then for the $\displaystyle{(1,0)}$ branch, we have

$$\begin{align}
\psi ^{r}_{(1,0)} & =\mathcal{O}(r^{-1}) \\
\psi ^{+}_{(1,0)} & =\mathcal{O}(r^{-2}) \\
\psi ^{-}_{(1,0)} & =0 \\
\mathcal{L}_{\xi _{0}}\psi _{(1,0)}^{\mu} & \propto (\partial _{t}-\partial _{\phi})\psi _{(1,0)}^{\mu}=0
\end{align}$$

and for the $\displaystyle{(0,1)}$ branch, we have

$$\begin{align}
\psi ^{r}_{(0,1)} & =\mathcal{O}(r^{-1}) \\
\psi ^{+}_{(0,1)} & =0 \\
\psi ^{-} _{(0,1)} & =\mathcal{O}(r^{-2}) \\
\mathcal{L}_{\bar{\xi}_{0}}\psi ^{\mu}_{(0,1)} & \propto (\partial _{t}+\partial _{\phi})\psi _{(0,1)}^{\mu}=0
\end{align}$$

---

thus the boundary term is given by

$$\begin{align}
-\sqrt{ -\gamma }n^{\mu}F_{\mu \nu}\delta A^{\nu}& =-\frac{1}{2}\sqrt{ -\gamma }n^{r}\left(\partial _{r}A_{(1,0),+}\delta A^{+}_{(1,0)}+\partial _{r}A_{(0,1),-}\delta A_{(0,1)}^{-}\right. \\
 & \left.-(\partial _{t}+\partial _{\phi})A_{(1,0),r}\delta A_{(1,0)}^{+}-(\partial _{t}-\partial _{\phi})A_{(0,1),r}\delta A^{-}_{(0,1)}\right)
\end{align}$$

in which the first two terms are of order $\displaystyle{\mathcal{O}(r^{0})}$, and the last two terms are of order $\displaystyle{\mathcal{O}(r^{-2})}$.

---

however they are pure gauge and $\displaystyle{F_{\mu \nu}\approx 0}$ onshell, so the boundary term vanishes onshell so we need not to add any boundary Lagrangian for these two branches as well. thus the variational principle is well-defined for all the three branches without adding any boundary Lagrangian onshell.

we cannot normalize the $\displaystyle{(1,0)}$ and $\displaystyle{(0,1)}$ branches. they carry energy and angular momentum by the representation of the isometry group $\displaystyle{\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$, not by the symplectic form.