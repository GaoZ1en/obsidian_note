the eom of $\displaystyle{\mathrm{U}(1)}$ gauge theory is

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

and we impose the gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies\partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

take the following ansatz

$$\begin{align}
A^{\mu}(x) & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and insert the gauge condition to the second and third equations, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{r}+\frac{1+3r^{2}}{r}\partial _{r}f^{r}+\left( 1+\frac{\omega ^{2}}{1+r^{2}}-\frac{1+m^{2}}{r^{2}} \right)f^{r} & =\frac{2im}{r}f^{\phi} \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{r}+\left(4+\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)f^{\phi} & =-\frac{2im}{r^{3}}A^{r}
\end{align}$$

introduce

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}f^{r}\pm \frac{1}{2}rf^{\phi}
\end{align}$$

we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi_{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm}=0
\end{align}$$

here $\displaystyle{m_{\pm}^{2}=(m\mp 1)^{2}}$

the asymptotic boundary conditions of $\displaystyle{\Phi _{\pm}}$ are

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}) & \text{ as } & r\to \infty \\
\Phi _{\pm} & =\mathcal{O}(r^{0}) & \text{ as } & r\to 0
\end{align}$$

change of variable to $\displaystyle{\tan \rho=r}$ and then to $\displaystyle{z=\cos ^{2}\rho}$, we have

$$\begin{align}
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm}=0
\end{align}$$

---

consider a pure guage $\displaystyle{A_{\mu}=\nabla _{\mu}\Lambda}$ with $\displaystyle{\Lambda = e^{-i\omega t+im\phi}\lambda (r)}$. The Lorentz guage condition $\displaystyle{\nabla ^{\mu}A_{\mu}=0}$ implies the massless scalar equation $\displaystyle{\nabla ^{2}\Lambda =0}$, which reads

$$\begin{align}
\frac{1}{r}\partial _{r}\left( r(1+r^{2})\partial _{r}\lambda  \right)+\left( \frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}} \right)\lambda  & =0 \\
(1+r^{2})\lambda ''+\frac{1+3r^{2}}{r}\lambda '+\left( \frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}} \right)\lambda  & =0
\end{align}$$

The components of the pure gauge field are

$$\begin{align}
A_{r} & =\partial _{r}\Lambda \implies f^{r}=g^{rr}\partial _{r}\lambda =(1+r^{2})\lambda ' \\
A_{\phi} & =\partial _{\phi}\Lambda =im\Lambda \implies f^{\phi}=g^{\phi\phi}(im\lambda )=\frac{im}{r^{2}}\lambda 
\end{align}$$

Substitute these into the definition of $\displaystyle{\Phi _{\pm}}$:

$$\begin{align}
\Phi _{\pm}^{\text{gauge}} & =\frac{i}{2}f^{r}\pm \frac{1}{2}rf^{\phi} \\
 & =\frac{i}{2}\left[ (1+r^{2})\lambda '\pm \frac{m}{r}\lambda  \right]
\end{align}$$

Now we check if this satisfies the EOM for $\displaystyle{\Phi _{\pm}}$. The operator is:

$$\begin{align}
\mathcal{D}_{\pm}\Phi  & \equiv (1+r^{2})\Phi ''+\frac{1+3r^{2}}{r}\Phi '+\left( 1+\frac{\omega ^{2}}{1+r^{2}}-\frac{(m\mp 1)^{2}}{r^{2}} \right)\Phi 
\end{align}$$

Substitute $\displaystyle{\Phi _{\pm}^{\text{gauge}}}$ into $\displaystyle{\mathcal{D}_{\pm}\Phi }$. Using the scalar equation to replace $\displaystyle{\lambda ''}$ in terms of $\displaystyle{\lambda ',\lambda }$, one can verify that:

$$\begin{align}
\mathcal{D}_{\pm}\Phi _{\pm}^{\text{gauge}} & \equiv 0
\end{align}$$

This confirms that the general solution for $\displaystyle{\Phi _{\pm}}$ contains the residual pure gauge modes. The "slowly decaying" branch (logarithmic branch) typically corresponds to these non-normalizable pure gauge modes.


我来看看