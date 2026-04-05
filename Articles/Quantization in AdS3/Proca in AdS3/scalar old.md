in this note we will argue why in global $\displaystyle{\text{AdS}_{3}}$, scalar field modes can be written in Jacobi polynomials. we start with the metric of global $\displaystyle{\text{AdS}_{3}}$

$$\begin{align}
\mathrm{d}s^{2} & = -\left(1+r^{2}\right) \mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2} \mathrm{d}\phi^{2}
\end{align}$$

and the action is given by

$$\begin{align}
S & =-\frac{1}{2}\int _{M} \mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu ^{2}\phi ^{2})
\end{align}$$

the asymptotic behavior of the scalar field is

$$\begin{align}
\phi & =o(r^{-1}), & \text{as } r\to \infty \\
\phi & =\mathcal{O}(r^{0}), & \text{as } r\to 0
\end{align}$$

the eom is given by

$$\begin{align}
\nabla ^{2}\phi-\mu ^{2}\phi & =0 \\
\implies (1+r^{2})\partial _{r}^{2}\phi+\frac{1+3r^{2}}{r}\partial _{r}\phi-\mu ^{2}\phi-\frac{1}{1+r^{2}}\partial _{t}^{2}+\frac{1}{r^{2}}\partial _{\phi}^{2}\phi & =0
\end{align}$$

make the ansatz

$$\begin{align}
\phi & = e^{-i\omega t}e^{im\phi}R(r)
\end{align}$$

and insert into the eom, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}R+\frac{1+3r^{2}}{r}\partial _{r}R+\left(-\mu ^{2}+ \frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}} \right) R & =0
\end{align}$$

change variables to $\displaystyle{r=\tan \rho}$, we have

$$\begin{align}
\partial _{\rho}^{2}R+\frac{1}{\sin \rho \cos \rho}\partial _{\rho}R+\left( -\frac{\mu ^{2}}{\cos ^{2}\rho}+\omega ^{2}-\frac{m^{2}}{\sin ^{2}\rho} \right)R & =0
\end{align}$$

the two solutions near the boundary $\displaystyle{\rho=\frac{\pi}{2}}$ are

$$\begin{align}
R^{(1)} & =(\sin \rho)^{|m|/2}(\cos \rho)^{\Delta _{-}/2}{}_{2}F_{1}\left(\frac{\Delta _{-}+|m|-\omega}{2},\frac{\Delta _{-}+|m|-\omega}{2};\Delta _{-};\cos ^{2}\rho\right) \\
R^{(2)} & =(\sin \rho)^{|m|/2}(\cos \rho)^{\Delta _{+}/2}{}_{2}F_{1}\left(\frac{\Delta _{+}+|m|-\omega}{2},\frac{\Delta _{+}+|m|-\omega}{2};\Delta _{+};\cos ^{2}\rho\right)
\end{align}$$

where $\displaystyle{\Delta _{\pm}=1\pm \sqrt{1+\mu ^{2}}}$. to satisfy the asymptotic boundary condition $\displaystyle{\phi=o(r^{-1})}$, we need to set $\displaystyle{R^{(1)}=0}$, since $\displaystyle{R^{(1)}\sim \mathcal{O}(\cos ^{\Delta _{-}/2}\rho)\sim \mathcal{O}(r^{-\Delta _{-}/2})}$ as $\displaystyle{\rho \to \frac{\pi}{2}}$. at the origin $\displaystyle{\rho=0}$, the hypergeometric function in $\displaystyle{R^{(2)}}$ has to truncate to a polynomial to satisfy the regularity condition at the origin, which gives the quantization condition

$$\begin{align}
\frac{\Delta _{+}+m-\omega}{2} & =-n, n=0,1,2,\dots \\
\implies \omega & =\Delta _{+}+|m|+2n
\end{align}$$

and the final solution is given by

$$\begin{align}
\phi _{n,m} & = e^{-i\omega _{n,m}t}e^{im\phi} r^{|m|}(1+r^{2})^{-\frac{\Delta _{+}+|m|}{2}}P_{n}^{(\Delta _{+}-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

here we rewrite the hypergeometric function in terms of Jacobi polynomials $\displaystyle{P_{n}^{(\alpha ,\beta )}(x)}$ using the following relation

$$\begin{align}
{}_{2}F_{1}\left(-n, n+\alpha +\beta +1;\alpha +1;\frac{1-x}{2}\right) & =\frac{n!}{(\alpha +1)_{n}}P_{n}^{(\alpha ,\beta )}(x)
\end{align}$$

---

