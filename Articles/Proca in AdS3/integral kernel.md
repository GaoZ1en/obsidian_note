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
(1+r^{2})\partial _{r}^{2}G(r,\phi;r',\phi')+\frac{1+5r^{2}}{r}\partial _{r}G(r,\phi;r',\phi')+(4-\mu ^{2})G(r,r';\phi,\phi')+\frac{1}{r^{2}}\partial _{\phi}^{2}G(r,r';\phi,\phi') & =\delta(r-r')\delta(\phi-\phi') \\
r\in(0,\infty),\phi \in[0,2\pi)
\end{align}$$

make a Fourier transform

$$\begin{align}
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

then $\displaystyle{G_{m}(r,r')}$ satisfies

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{m}(r,r') & =\delta(r-r') \\
\implies  \partial _{\rho}^{2}G_{m}(\rho,\rho')+\frac{\cos ^{2}\rho+3\sin ^{2}\rho}{\sin \rho \cos \rho} \partial _{\rho}G_{m}(\rho,\rho')+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin^{2}\rho} \right)G_{m}(\rho,\rho') & =0 \\
\implies 4z(1-z)\partial _{z}^{2}G_{m}(z,z')-4\partial _{z}G_{m}(z,z')+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)G_{m}(z,z') & =0 \\
\implies G_{m}(r,r') =C_{1}r^{|m|}(1+r^{2})^{-1-(|m|-\mu)/2}{}_{2}F_{1}\left(\frac{|m|-\mu}{2},1+\frac{|m|-\mu}{2};1-\mu;\frac{1}{1+r^{2}}\right) \\
  +C_{2} r^{|m|}(1+r^{2})^{-1-(|m|+\mu)/2}{}_{2}F_{1}\left(\frac{|m|+\mu}{2},1+ \frac{|m|+\mu}{2};1+\mu; \frac{1}{1+r^{2}}\right)
\end{align}$$

another set of solution is

$$\begin{align}
G_{m}(r,r') & =D_{1}r^{-|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu+|m|}{2}, \frac{\mu-|m|}{2};1-|m|;-r^{2} \right) \\
 & +D_{2}r^{|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left( -\frac{\mu-|m|}{2}, \frac{\mu+|m|}{2};1+|m|;-r^{2} \right)
\end{align}$$

by general theory of Green function we denote $\displaystyle{R^{(m)}_{<}(r)=r^{|m|}{}_{2}F_{1}\left( \frac{1}{2}(-\mu+2+|m|), \frac{1}{2}(\mu+2+|m|);1+|m|;-r^{2} \right)}$ and $\displaystyle{R^{(m)}_{>}(r)=r^{|m|}(1+r^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{1}{2}(\mu+|m|),\frac{1}{2}(\mu+2+|m|);1+\mu; \frac{1}{1+r^{2}}\right)}$. the Wronskian $\displaystyle{W[R_{<},R_{>}]}$ satisfies the following equation

$$\begin{align}
\partial _{r}W+\frac{1+5r^{2}}{r(1+r^{2})}W=0 \\
\implies W^{(m)}(r) & =-\frac{2\Gamma(|m|+1)\Gamma(\mu+1)}{\Gamma\left( \frac{\mu+|m|}{2} \right)\Gamma\left( 1+\frac{\mu+|m|}{2} \right)}\frac{1}{r(1+r^{2})^{2}}
\end{align}$$

then the final result is

$$\begin{align}
G_{m}(r,r') & =\frac{R^{(m)}_{<}(r_{<})R^{(m)}_{>}(r_{>})}{(1+r'^{2})W^{(m)}(r')}, & m\neq0 \\
 & =-\frac{\Gamma\left( \frac{\mu+|m|}{2} \right)\Gamma\left( 1+\frac{\mu+|m|}{2} \right)}{2\Gamma(|m|+1)\Gamma(\mu+1)} r'(1+r') \\
 & \times\left[\theta(r-r')r'^{|m|}(1+r'^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-|m|}{2},\frac{\mu+|m|}{2};1+|m|;-r'^{2}\right)r^{|m|}(1+r^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{\mu+|m|}{2},1+\frac{\mu+|m|}{2};1+\mu; \frac{1}{1+r^{2}}\right)\right. \\
 & +\left.\theta(r'-r)r^{|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-|m|}{2},\frac{\mu+|m|}{2};1+|m|;-r^{2}\right)r'^{|m|}(1+r'^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{\mu+|m|}{2},1+\frac{\mu+|m|}{2};1+\mu; \frac{1}{1+r'^{2}}\right)\right] \\
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

---

$$\begin{align}
A^{t}(t,r,\phi) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right) \\
 & =-\int \mathrm{d}r'\mathrm{d}\phi'G(r,\phi;r',\phi') \frac{1}{1+r'^{2}}\left(\partial _{t}\partial _{r'}A^{r}+\partial _{t}\partial _{\phi'}A^{\phi}+\frac{1-r'^{2}}{r'(1+r'^{2})}\partial _{t}A^{r}\right)
\end{align}$$

consider

$$\begin{align}
{f^{(+)}_{l,0,0}}^{t} & = \frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} } e^{-i(\mu+1)t}e^{-i\phi}r(1+r^{2})^{-(\mu+3)/2} \\
{f^{(+)}_{l,0,0}}^{r} & =-\frac{i}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+1)t}e^{-i\phi}(1+r^{2})^{-(\mu+1)/2} \\
{f^{(+)}_{l,0,0}}^{\phi} & =-\frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+1)t}e^{-i\phi}r^{-1}(1+r^{2})^{-(\mu+1)/2}
\end{align}$$

$$\begin{align}
\partial _{t}\partial _{r'}{f^{(+)}_{l,0,0}}^{r}+\partial _{t}\partial _{\phi'}{f^{(+)}_{l,0,0}}^{\phi}+\frac{1-r'^{2}}{r'(1+r'^{2})}\partial _{t}{f^{(+)}_{l,0,0}}^{r} & = \sqrt{ \frac{\mu+1}{\pi\mu} } \frac{(\mu+1)(\mu+3)}{2}e^{-i(\mu+1)t}e^{-i\phi}r(1+r^{2})^{-(\mu+3)/2}
\end{align}$$

$$\tag{.}\begin{align}
A^{r}(t,r,\phi) & =-\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{(\mu+1)(\mu+3)}{2}e^{-i(\mu+1)t}e^{-i\phi}\int_{0}^{\infty} \mathrm{d}r' G_{-1}(r,r')r'(1+r'^{2})^{-(\mu+5)/2} \\
 & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{(\mu+1)(\mu+3)}{2} \frac{\Gamma\left( \frac{\mu+1}{2} \right)\Gamma\left( \frac{\mu+3}{2} \right)}{2\Gamma(\mu+1)}e^{-i(\mu+1)t}e^{-i\phi} \\
 & \times \left[r(1+r^{2})^{-(\mu+3)/2}{}_{2}F_{1}\left(\frac{\mu+1}{2}, \frac{\mu+3}{2};1+\mu; \frac{1}{1+r^{2}}\right)\int ^{r}_{0}\mathrm{d}r'r'^{2}(1+r'^{2})^{-(\mu+7)/2}{}_{2}F_{1}\left(-\frac{\mu-1}{2},\frac{\mu+1}{2};2;-r'^{2}\right)\right. \\
 & +r(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-1}{2},\frac{\mu+1}{2};2;-r^{2}\right)\int _{r}^{\infty}\mathrm{d}r' r'^{2}(1+r'^{2})^{-(\mu+4)}{}_{2}F_{1}\left(\frac{\mu+1}{2},\frac{\mu+3}{2};1+\mu; \frac{1}{1+r^{2}}\right)
\end{align}$$

$$\tag{.}\begin{align}
G_{-1}(r,r') & =-\frac{\Gamma\left( \frac{\mu+1}{2} \right)\Gamma\left( \frac{\mu+3}{2} \right)}{2\Gamma(\mu+1)} r'(1+r'^{2}) \\
 & \times\left[\theta(r-r')r'^{1}(1+r'^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-1}{2},\frac{\mu+1}{2};1+1;-r'^{2}\right)r^{1}(1+r^{2})^{-(\mu+2+1)/2}{}_{2}F_{1}\left(\frac{\mu+1}{2},1+\frac{\mu+1}{2};1+\mu; \frac{1}{1+r^{2}}\right)\right. \\
 & +\left.\theta(r'-r)r^{1}(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-1}{2},\frac{\mu+1}{2};1+1;-r^{2}\right)r'^{1}(1+r'^{2})^{-(\mu+2+1)/2}{}_{2}F_{1}\left(\frac{\mu+1}{2},1+\frac{\mu+1}{2};1+\mu; \frac{1}{1+r'^{2}}\right)\right] \\

\end{align}$$