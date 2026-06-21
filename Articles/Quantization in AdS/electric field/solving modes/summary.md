# solution

in this note we analyze the asymptotic behavior of the electromagnetic field in global $\displaystyle{\mathrm{AdS}_{3}}$ spacetime, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

the action is given by

$$\begin{align}
S & =-\frac{1}{4}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

and the asymptotic behavior of the gauge field components

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}) \\
A^{r} & =\mathcal{O}(r^{-1}\ln r) \\
A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

$$\begin{align}
A_{r} & =\mathcal{O}(r^{-3}\ln r) \\
\Lambda & =\mathcal{O}(r^{-2}\ln r)
\end{align}$$

here the eom is

$$\begin{align}
\nabla _{\mu}F^{\mu \nu}=0
\end{align}$$

and we impose the Lorentz gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0
\end{align}$$

this asymptotic behavior is invariant under gauge transformation $\displaystyle{A_{\mu}\to A_{\mu}+\nabla _{\mu}\Lambda}$ with $\displaystyle{\Lambda \sim O(r^{-2}\ln r)}$, and is invariant under the AdS isometry group $\displaystyle{\mathrm{SO}(2,2)\cong\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$.

however, with the above asymptotic behavior, we have

$$\begin{align}
\sqrt{ -g }F_{\mu \nu}F^{\mu \nu} & =\mathcal{O}(r^{-1})
\end{align}$$

and the whole action contains a logarithmic divergence... but we keep this in mind for now and proceed to analyze the solutions of the eom with the above asymptotic behavior.

---

then we will consider the solutions of the eom

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

and the gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies \partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

by taking the ansatz

$$\begin{align}
A^{\mu} & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and defining

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}f^{r}\pm \frac{1}{r}rf^{\phi}
\end{align}$$

we obtain decoupled equations for $\displaystyle{\Phi _{\pm}}$:

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi _{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm} & =0
\end{align}$$

with $\displaystyle{m_{\pm}=m\pm 1}$ and the asymptotic behavior

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}\ln r)
\end{align}$$

as $\displaystyle{r\to \infty}$. take the coordinate change $\displaystyle{\tan \rho =r}$ and $\displaystyle{z=\cos ^{2}\rho}$, the equation becomes

$$\begin{align}
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm} & =0
\end{align}$$

around the origin $\displaystyle{r=0\implies z=1}$, the two independent solutions are

$$\begin{align}
\Phi _{\pm}^{(1)} & =z^{1/2}(1-z)^{-m_{\pm}/2}{}_{2}F_{1}\left(\frac{1-m_{\pm}-\omega}{2},\frac{1-m_{\pm}+\omega}{2};1-m_{\pm};1-z\right)\sim \mathcal{O}(r^{-m_{\pm}}) \\
\Phi _{\pm}^{(2)} & =z^{1/2}(1-z)^{m_{\pm}/2}{}_{2}F_{1}\left(\frac{1+m_{\pm}-\omega}{2},\frac{1+m_{\pm}+\omega}{2};1+m_{\pm};1-z\right)\sim \mathcal{O}(r^{m_{\pm}})
\end{align}$$

the first solution is singular at the origin for $\displaystyle{m_{\pm}>0}$, and the second solution is singular for $\displaystyle{m_{\pm}<0}$. thus we take the regular solution at the origin as

$$\begin{align}
\Phi _{\pm} & =z^{1/2}(1-z)^{|m_{\pm}|/2}{}_{2}F_{1}\left(\frac{1+|m_{\pm}|-\omega}{2}, \frac{1+|m_{\pm}|+\omega}{2};1+|m_{\pm}|; 1-z\right)
\end{align}$$

then using the transformation formula for hypergeometric functions. in general, we have

$$\begin{align}
F(a,b,c,z) & =\frac{\Gamma(c)\Gamma(c-a-b)}{\Gamma(c-a)\Gamma(c-b)}F(a,b,a+b-c+1,1-z) \\
 & +\frac{\Gamma(c)\Gamma(a+b-c)}{\Gamma(a)\Gamma(b)}(1-z)^{c-a-b}F(c-a,c-b,c-a-b+1,1-z)
\end{align}$$

for general $\displaystyle{a,b,c}$ with $\displaystyle{c-a-b\notin \mathbb{Z}}$. however in our case, we have

$$\begin{align}
c-a-b & =1+|m_{\pm}|-\frac{1+|m_{\pm}|-\omega}{2}-\frac{1+|m_{\pm}|+\omega}{2}=0
\end{align}$$

the above formula is not applicable. instead, we have to use the following formula:

$$\begin{align}
F(a,b,c,1-z) & =-\frac{\Gamma(c)}{\Gamma(a)\Gamma(b)}\sum ^{\infty}_{n=0} \frac{(a)_{n}(b)_{n}}{(n!)^{2}}z^{n} \\
 & \times\left\{\psi(a+n)+\psi(b+n)-2\psi(1+n)+\ln z\right\}
\end{align}$$

for $\displaystyle{c-a-b=0}$, where $\displaystyle{\psi(x)=\frac{\mathrm{d}}{\mathrm{d}x}\ln \Gamma(x)}$ is the digamma function. the whole series is always convergent for $\displaystyle{|z|< 1}$. if we impose the strict asymptotic behavior

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1})
\end{align}$$

as $\displaystyle{r\to \infty}$, then we have to set the coefficient of the leading term $\displaystyle{\ln z}$ to zero, which implies

$$\begin{align}
\frac{1}{\Gamma(\frac{1+|m_{\pm}|-\omega}{2})} & =0 \\
\implies \omega & =1+|m_{\pm}|+2n, \quad n=0,1,2,...
\end{align}$$

in this case, $\displaystyle{a=-n,b=1+|m_{\pm}|+n}$, and we have

$$\begin{align}
F(-n,1+|m_{\pm}|+n,1+|m_{\pm}|,1-z) & =\frac{\Gamma(1+|m_{\pm}|)}{\Gamma(n)\Gamma(1+|m_{\pm}|+n)} F(-n,1+|m_{\pm}|+n,1,z)
\end{align}$$

and the solution becomes

$$\begin{align}
\Phi _{\pm} & =z^{1/2}(1-z)^{|m_{\pm}|/2}{}_{2}F_{1}\left(-n,1+|m_{\pm}|+n;1+|m_{\pm}|; 1-z\right) \\
 & \propto z^{1/2}(1-z)^{|m_{\pm}|/2}{}_{2}F_{1}\left(-n,1+|m_{\pm}|+n;1;z\right)
\end{align}$$

if we only impose the relaxed asymptotic behavior, there is no need to set the coefficient of the leading term to zero, and there is no quantization condition on $\displaystyle{\omega}$, which leads to a continuous spectrum of $\displaystyle{\omega}$.

however, since $\displaystyle{A^{\phi}\sim \mathcal{O}(r^{-2})}$, we need to reorganize $\displaystyle{\Phi _{\pm}}$ to eliminate the leading $\displaystyle{\ln r}$ term in $\displaystyle{f^{\phi}}$:

$$\begin{align}
f^{\phi} & =\frac{2}{r}(\Phi _{+}-\Phi _{-}) \\
 & =\frac{2}{r}\left\{Az^{1/2}(1-z)^{|m_{+}|/2}{}_{2}F_{1}\left(\frac{1+|m_{+}|-\omega}{2},\frac{1+|m_{+}|+\omega}{2};1+|m_{+}|;1-z\right)\right. \\
 & \left.-Bz^{1/2}(1-z)^{|m_{-}|/2}{}_{2}F_{1}\left(\frac{1+|m_{-}|-\omega}{2},\frac{1+|m_{-}|+\omega}{2};1+|m_{-}|;1-z\right)\right\}
\end{align}$$

this is impossible to achieve for general $\displaystyle{m}$ since $\displaystyle{m_{\pm}=m\pm 1}$ are different, and there is no continuous spectrum for $\displaystyle{\omega}$. only when $\displaystyle{m=0}$, we have $\displaystyle{|m_{+}|=|m_{1}|=1}$, and we can set $\displaystyle{A=B}$ to eliminate the leading $\displaystyle{\ln r}$ term of $\displaystyle{A^{\phi}}$. in this case, we have

$$\begin{align}
f^{\phi} & =0 \\
f^{r} & =-iAr(1+r^{2})^{-1}{}_{2}F_{1}\left(1-\frac{\omega}{2},1+\frac{\omega}{2};2;\frac{r^{2}}{1+r^{2}}\right) \\
f^{t} & =-\frac{1}{\omega}\left(\partial _{r}+\frac{1}{r}\right)\left(Ar(1+r^{2})^{-1}{}_{2}F_{1}\left(1-\frac{\omega}{2},1+\frac{\omega}{2};2;\frac{r^{2}}{1+r^{2}}\right)\right)
\end{align}$$

notice that the asymptotic behavior of $\displaystyle{A^{t}}$ is still $\displaystyle{\mathcal{O}(r^{-2})}$, and we have to impose quantization condition on $\displaystyle{\omega}$ to eliminate the leading $\displaystyle{\ln r}$ term in $\displaystyle{A^{t}}$

$$\begin{align}
\omega & =2+2n, \quad n=0,1,2,...
\end{align}$$

and there is no continuous spectrum for $\displaystyle{\omega}$ in all cases.

# action

now we will take a more careful look at the action. under the asymptotic behavior

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}) \\
A^{r} & =\mathcal{O}(r^{-1}\ln r) \\
A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

we have

$$\begin{align}
F^{tr} & =\mathcal{O}(r^{-1}) \\
F^{t\phi} & =\mathcal{O}(r^{-4}) \\
F^{r\phi} & =\mathcal{O}(r^{-1})
\end{align}$$

and the divergent part of the action is

$$\begin{align}
\sqrt{ -g }\left(F_{tr}F^{tr}+F_{r\phi}F^{r\phi}\right) & =\mathcal{O}(r^{-1})
\end{align}$$

is it possible to add some boundary terms to cancel this divergence in bulk? I have no idea for the moment...
