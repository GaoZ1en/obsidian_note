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

$$\begin{align}
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
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{km}(r,r') & =\frac{\sqrt{ 1+r^{2} }}{r}\delta(r-r') \\
\implies  \partial _{\rho}^{2}G_{m}(\rho,\rho')+\frac{\cos ^{2}\rho+3\sin ^{2}\rho}{\sin \rho \cos \rho} \partial _{\rho}G_{m}(\rho,\rho')+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin^{2}\rho} \right)G_{m}(\rho,\rho') & =0 \\
\implies 4z(1-z)\partial _{z}^{2}G_{m}(z,z')-4\partial _{z}G_{m}(z,z')+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)G_{m}(z,z') & =0 \\
\implies G_{m}(r,r') & =C_{1}r^{|m|}(1+r^{2})^{-1-|m|/2+\mu/2}{}_{2}F_{1}\left( \frac{|m|-\mu}{2},1+\frac{|m|-\mu}{2};1-\mu; \frac{1}{1+r^{2}} \right) \\
 & +C_{2}r^{-|m|}(1+r^{2})^{-1+|m|/2-\mu/2}{}_{2}F_{1}\left(-\frac{|m|-\mu}{2},1-\frac{|m|-\mu}{2};1+\mu; \frac{1}{1+r^{2}}\right)
\end{align}$$

by general theory of Green function we denote $\displaystyle{R_{<}(r)=r^{|m|}(1+r^{2})^{-1-|m|/2+\mu/2}{}_{2}F_{1}\left(\frac{|m|-\mu}{2},1+\frac{|m|-\mu}{2};1-\mu; \frac{1}{1+r^{2}}\right),R_{>}(r)=r^{-|m|}(1+r^{2})^{-1+|m|/2-\mu/2}{}_{2}F_{1}\left( -\frac{|m|-\mu}{2},1-\frac{|m|-\mu}{2};1+\mu; \frac{1}{1+r^{2}} \right)}$, the Wronskian $\displaystyle{W[R_{<},R_{>}]}$ is

$$\begin{align}
W[R_{<},R_{>}] & =-\frac{2|m|}{r(1+r^{2})^{2}}
\end{align}$$

then the final result is

$$\begin{align}
G(r,\phi;r',\phi') & =-\frac{1}{2\pi}\sum_{m\neq0}\frac{(1+r'^{2})^{3/2}}{2|m|}R_{<}(r_{<})R_{>}(r_{>})e^{im(\phi-\phi')}+(m=0)
\end{align}$$

when $\displaystyle{m=0}$, ???