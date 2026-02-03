in this note we analyze the asymptotic behavior of the electromagnetic field in global $\displaystyle{\mathrm{AdS}_{3}}$ spacetime, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

by requiring that the convergence of the action

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

we obtain the naïve asymptotic behavior of the field components

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}) \\
A^{r} & =\mathcal{O}(r^{-1}) \\
A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

however, for a general solution of the eom

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =0
\end{align}$$

and not satisfying the Lorentz gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0
\end{align}$$

we can take a gauge transformation

$$\begin{align}
A_{\mu} & \to A_{\mu}+\nabla _{\mu}\chi
\end{align}$$

with $\displaystyle{\chi}$ satisfying

$$\begin{align}
\nabla ^{2}\chi & =-\nabla _{\mu}A^{\mu}
\end{align}$$

to bring the field to the Lorentz gauge. the asymptotic behavior of $\displaystyle{\chi}$ can be determined by solving the above equation asymptotically. at infinity, the RHS behaves as

$$\begin{align}
-\nabla _{\mu}A^{\mu} & =\partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} \\
 & =\mathcal{O}(r^{-2})
\end{align}$$

and the LHS behaves as $\displaystyle{r\to \infty}$

$$\begin{align}
\nabla ^{2}\chi & =(1+r^{2})\partial _{r}^{2}\chi+\frac{1+3r^{2}}{r}\partial _{r}\chi+\frac{1}{r^{2}}\partial _{\phi}^{2}\chi-\frac{1}{1+r^{2}}\partial _{t}^{2}\chi \\
 & \approx r^2 \partial_r^2 \chi + 3r \partial_r \chi + \mathcal{O}(r^{-2}) \partial_\Omega^2 \chi
\end{align}$$

the homogeneous part $\displaystyle{r^{2}\chi''+3r\chi'=0}$ has solutionts $\displaystyle{\chi \sim \mathcal{O}(r^{0})}$ and $\displaystyle{\chi \sim \mathcal{O}(r^{-2})}$. notice that the source term $\displaystyle{-\nabla _{\mu}A^{\mu}}$ is of order $\displaystyle{\mathcal{O}(r^{-2})}$, which resonates with the second homogeneous solution, and implies that the particular solution must contains a logarithmic term:

$$\begin{align}
\chi \sim \mathcal{O}(r^{-2}\ln r)
\end{align}$$

this implies that we have to relax the boundary conditions for the gauge field components accordingly:

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}) \\
A^{r} & =\mathcal{O}(r^{-1}\ln r) \\
A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

to be able to impose the Lorentz gauge condition. then

$$\begin{align}
F_{tr} & =\partial _{t}A_{r}-\partial _{r}A_{t}=\mathcal{O}(r^{-1}\ln r) \\
F_{t\phi} & =\partial _{t}A_{\phi}-\partial _{\phi}A_{t}=\mathcal{O}(r^{0}) \\
F_{r\phi} & =\partial _{r}A_{\phi}-\partial _{\phi}A_{r}=\mathcal{O}(r^{-1}\ln r) \\
F^{tr} & =g^{tt}g^{rr}F_{tr}=\mathcal{O}(r^{-3}\ln r) \\
F^{t\phi} & =g^{tt}g^{\phi \phi}F_{t\phi}=\mathcal{O}(r^{-2}) \\
F^{r\phi} & =g^{rr}g^{\phi \phi}F_{r\phi}=\mathcal{O}(r^{-3}\ln r) \\
\implies \sqrt{ -g }F_{\mu \nu}F^{\mu \nu} & =r F_{tr}F^{tr}+r F_{r\phi}F^{r\phi}+\frac{1}{r}F_{t\phi}F^{t\phi}=\mathcal{O}(r^{-2}\ln ^{2}r) \\
\implies S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu} \\
 & =-\frac{1}{4}\int \mathrm{d}t\mathrm{d}r\mathrm{d}\phi \sqrt{ -g }F_{\mu \nu}F^{\mu \nu} \\
 & =-\frac{1}{4}\int \mathrm{d}t\mathrm{d}\phi \int \mathrm{d}r\,\mathcal{O}(r^{-2}\ln ^{2}r) \\
 & =\text{finite}
\end{align}$$

the action still converges, and the Lorentz gauge can be imposed. then we will consider the solutions of the eom

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
\Phi _{\pm} & =z^{1/2}(1-z)^{|m_{\pm}|/2}{}_{2}F_{1}\left(\frac{1+|m_{\pm}|-\omega}{2}, \frac{1+m_{\pm}+\omega}{2};1+|m_{\pm}|; 1-z\right)
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

the above formula is not applicable. instead, we use the following formula:

$$\begin{align}
F(a,b,c,z) & =-\frac{\Gamma(c)}{\Gamma(a)\Gamma(b)}\sum ^{\infty}_{n=0} \frac{(a)_{n}(b)_{n}}{(n!)^{2}}(1-z)^{n} \\
 & \times\left\{\psi(a+n)+\psi(b+n)-2\psi(1+n)+\ln(1-z)\right\}
\end{align}$$

for $\displaystyle{c-a-b=0}$, where $\displaystyle{\psi(x)=\frac{\mathrm{d}}{\mathrm{d}x}\ln \Gamma(x)}$ is the digamma function. then we have

$$\begin{align}
\Phi _{\pm} & =z^{1/2}(1-z)^{|m_{\pm}|/2}{}_{2}F_{1}\left(\frac{1+|m_{\pm}|-\omega}{2}, \frac{1+|m_{\pm}|+\omega}{2};1+|m_{\pm}|; 1-z\right) \\
 & = z^{1/2}(1-z)^{|m_{\pm}|/2} \frac{\Gamma(1+|m_{\pm}|)}{\Gamma\left( \frac{1+|m_{\pm}|-\omega}{2} \right)\Gamma\left( \frac{1+|m_{\pm}|+\omega}{2} \right)} \\
 & \times \sum ^{\infty}_{n=0} \frac{\left( \frac{1+|m_{\pm}|-\omega}{2} \right)_{n} \left( \frac{1+|m_{\pm}|+\omega}{2} \right)_{n}}{(n!)^{2}} z^{n} \\
\end{align}$$