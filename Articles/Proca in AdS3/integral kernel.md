in [[Articles/Proca in AdS3/ADM decomposition|ADM decomposition]], we have derived an equation about $\displaystyle{A^{t}}$

$$\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\mu ^{2}A^{t} & =\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}$$

introduce Green function $\displaystyle{G(x,y)}$ that satisfying

$$
\begin{align}
\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}G(x,y)) \right)-\mu ^{2}G(x,y) & =\delta ^{2}(x-y) \\
\implies A^{t}(x) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

now we will solve the Green function $\displaystyle{G(x,y)}$ explicitly.

---

$$\tag{.}\begin{align}
\frac{1}{N}\sigma ^{ab}D_{a}\left( \frac{1}{N}D_{b}(N^{2}\phi) \right) & =\frac{1}{N}\sigma ^{ab}\partial_{a}\left( \frac{1}{N}\partial _{b}(N^{2}\phi) \right)-\frac{1}{N^{2}}\sigma ^{ab}\tilde{\Gamma}^{c}_{ab}\partial _{c}(N^{2}\phi)
\end{align}$$

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G(r,\phi;r',\phi')+\frac{1+5r^{2}}{r}\partial _{r}G(r,\phi;r',\phi')+(4-\mu ^{2})G(r,r';\phi,\phi')+\frac{1}{r^{2}}\partial _{\phi}^{2}G(r,r';\phi,\phi') & =\frac{\sqrt{ 1+r^{2} }}{r}\delta(r-r')\delta(\phi-\phi') \\
r\in(0,\infty),\phi \in[0,2\pi)
\end{align}$$

make a Fourier transform

$$\begin{align}
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

then $\displaystyle{G_{m}(r,r')}$ satisfies

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{km}(r,r') & =\frac{\sqrt{ 1+r^{2} }}{r}\delta(r-r')
\end{align}$$

when $\displaystyle{r<r'}$

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{m}(r,r') & =0 \\
\implies \cos ^{2}\rho \partial _{\rho}^{2}G_{m}(\rho,\rho')+\frac{\cos ^{2}\rho+3\sin ^{2}\rho}{\sin \rho \cos \rho}\cos ^{2}\rho \partial _{\rho}G_{m}(\rho,\rho')+\left( 4-\mu ^{2}-\frac{m^{2}}{\tan ^{2}\rho} \right)G_{m}(\rho,\rho') & =0 \\
\implies
\end{align}$$

$$\begin{align}
z & =\cos ^{2}\rho \\
\partial _{\rho} & =\frac{\partial z}{\partial \rho}\partial _{z} \\
 & =-2\sqrt{ z(1-z) }\partial _{z} \\
\partial _{\rho}^{2} & =4z(1-z)\partial _{z}^{2}+2(1-2z)\partial _{z}
\end{align}$$