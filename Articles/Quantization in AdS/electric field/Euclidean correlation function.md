 temporal gauge

we have derived the normal modes in [[Articles/Quantization in AdS/electric field/solving modes/temporal gauge|temporal gauge]] as

$$\begin{align}
A^{t} & =0, & A^{r}=\frac{1+r^2}{r}\partial _{\phi} \Psi, & A^{\phi}=-\frac{1+r^2}{r}\partial _{r}\Psi
\end{align}$$

where

$$\begin{align}
\Psi_{nm}=\sqrt{ \frac{(n+|m|+1)}{2\pi \omega _{nm}^{2}(n+1)} }e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^2)^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}=2n+2+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z}
\end{align}$$

with these modes normalized as

$$\begin{align}
\omega[A_{nm},A_{n'm'}] & =-i\delta _{nn'}\delta _{mm'}
\end{align}$$

turn to Euclidean signature, we have

$$\begin{align}
A^{\tau}(\tau,r,\phi) & =iA^{t}(-i\tau,r,\phi)=0 \\
A^{r}(\tau,r,\phi) & =A^{r}(-i\tau,r,\phi) \\
A^{\phi}(\tau,r,\phi) & =A^{\phi}(-i\tau,r,\phi)
\end{align}$$

The Euclidean correlation function can be computed as

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =\theta(\tau_{1}-\tau_{2}) \sum_{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2})+\theta(\tau_{2}-\tau_{1}) \sum_{n,m}A^{\mu_{1}*}_{nm}(x_{1})A^{\mu_{2}}_{nm}(x_{2})
\end{align}$$

---

we have known that the Euclidean normal modes of scalar can be written as

$$\begin{align}
\phi _{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} } e^{-\omega _{n,m}\tau}e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n,m} & =\Delta +2n+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z} \\
\Delta & =1+\sqrt{ 1+\mu^{2} }
\end{align}$$

and the Euclidean correlation function of scalar can be computed as

$$\begin{align}
g_{\Delta}(x_{1},x_{2}) & :=\sum _{n,m}\phi _{n,m}(x_{1})\phi _{n,m}^{*}(x_{2}) \\
 & = \frac{1}{4\pi} \frac{e^{-(\Delta-1)\rho _{E}}}{\sinh \rho _{E}}
\end{align}$$

where $\displaystyle{\rho _{E}}$ is the geodesic distance between $x_{1}$ and $x_{2}$ in Euclidean AdS3, which can be computed as

$$\begin{align}
\cosh \rho _{E} & =(1+r_{1}^{2})^{1/2}(1+r_{2}^{2})^{1/2}\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2})
\end{align}$$

when $\displaystyle{\Delta=2}$, we have

$$\begin{align}
\phi _{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{n+|m|+1}{n+1} } e^{-\omega _{n,m}\tau}e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n,m} & =\Delta +2n+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z}
\end{align}$$

then

$$\begin{align}
\Psi_{nm} & =\frac{\phi _{n,m}}{\omega _{nm}}
\end{align}$$

---

defining the operator

$$\begin{align}
D^{t} & =0, &  D^{r} & =\frac{1+r^2}{r}\partial _{\phi}, &  D^{\phi} & =-\frac{1+r^2}{r}\partial _{r}
\end{align}$$

we have

$$\begin{align}
\sum _{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2}) & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(x_{1},x_{2})
\end{align}$$

where

$$\begin{align}
H(x_{1},x_{2}) & =\sum _{nm}\Psi_{nm}(x_{1})\Psi_{nm}^{*}(x_{2}) \\
 & =\sum _{nm} \frac{1}{\omega _{nm}^{2}}\phi _{nm}(x_{1})\phi _{nm}(x_{2}) \\
 & =\int _{0}^{\infty} \mathrm{d}s\, s\, g_{2}(T+s,r_{1},r_{2},\phi)
\end{align}$$

here $\displaystyle{T=\tau_{1}-\tau_{2}}$ and $\displaystyle{\phi=\phi_{1}-\phi_{2}}$. then we have

$$\begin{align}
\sum _{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2}) & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}\int _{0}^{\infty} \mathrm{d}s\, s\, g_{2}(T+s,r_{1},r_{2},\phi)
\end{align}$$

and

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =\theta(\tau_{1}-\tau_{2}) D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(T,r_{1},r_{2},\phi)+\theta(\tau_{2}-\tau_{1}) D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(-T,r_{1},r_{2},\phi) \\
 & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(|T|,r_{1},r_{2},\phi)
\end{align}$$

and this correlation function satisfies the Green function equation as

$$\begin{align}
(\delta ^{\mu_{1}}_{~\nu_{1}}\nabla ^{2}-\nabla _{\nu_{1}}\nabla ^{\mu_{1}}) \braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =-\frac{g^{\mu_{1}\mu_{2}}(x_{1})}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \quad \mu_{1}\text{ or }\mu_{2}\neq \tau
\end{align}$$

# highest weight

we have derived the bulk modes forms a $\displaystyle{(1,1)}$ rep for the isometry group $\displaystyle{\mathrm{SO}(2,2)\cong \mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$ in [[Articles/Quantization in AdS/electric field/solving modes/highest weight|highest weight]] as

$$\begin{align}
\psi_{0,0}^\mu& =\frac{1}{\sqrt{2\pi}}\frac{r e^{-3it}}{(1+r^2)^{3/2}}\left(e^{-i\phi}\bar{\xi}_1^\mu-e^{i\phi}\xi_1^\mu\right). \\
\psi_{n,\bar{n}}^\mu& =\frac{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi_{0,0}^\mu}{\sqrt{n!(n+1)!\bar{n}!(\bar{n}+1)!}},&n,\bar{n} & \geq 0
\end{align}$$

after Wick rotation, write

$$\begin{align}
\psi_{n,\bar n,E}^{\mu}(\tau,r,\phi)&=e^{-\omega_{n,\bar n}\tau}e^{im_{n,\bar n}\phi}\left(v_{n,\bar n}^{\tau}(r),v_{n,\bar n}^{r}(r),v_{n,\bar n}^{\phi}(r)\right),
\end{align}$$

where

$$\begin{align}
\omega_{n,\bar n}&=2+n+\bar n, &m_{n,\bar n}&=n-\bar n, &p&=\min(n,\bar n), &q&=|n-\bar n|.
\end{align}$$

define

$$\begin{align}
S_{n,\bar n}(r)&=\frac{-i}{\sqrt{2\pi}}\frac{(-i)^q p!(p+q+1)!}{\sqrt{n!(n+1)!\bar n!(\bar n+1)!}}\frac{r^q}{(1+r^2)^{1+q/2}}P_p^{(q,1)}\left(\frac{1-r^2}{1+r^2}\right).
\end{align}$$

for $m_{n,\bar n}\neq0$,

$$\begin{align}
v_{n,\bar n}^r&=\frac{m_{n,\bar n}\left(\omega_{n,\bar n}S_{n,\bar n}-r(1+r^2)\partial_rS_{n,\bar n}\right)}{(m_{n,\bar n}^2-\omega_{n,\bar n}^2)r}, \\
v_{n,\bar n}^{\tau}&=\frac{r}{1+r^2}v_{n,\bar n}^r, \\
v_{n,\bar n}^{\phi}&=\frac{(1+r^2)\partial_rS_{n,\bar n}+m_{n,\bar n}v_{n,\bar n}^r}{i\omega_{n,\bar n}r}.
\end{align}$$

for $m_{n,\bar n}=0$,

$$\begin{align}
v_{n,\bar n}^{\tau}&=0, &v_{n,\bar n}^{r}&=0, &v_{n,\bar n}^{\phi}&=\frac{(1+r^2)\partial_rS_{n,\bar n}}{i\omega_{n,\bar n}r}.
\end{align}$$

therefore the highest-weight-gauge Euclidean two-point function is

$$\begin{align}
G_{\mathrm{hw}}^{\mu_{1}\mu_{2}}(x_{1},x_{2})&=\theta(T)\sum_{n,\bar n\geq0}e^{-\omega_{n,\bar n}T}e^{im_{n,\bar n}\phi}v_{n,\bar n}^{\mu_{1}}(r_{1})v_{n,\bar n}^{\mu_{2}*}(r_{2}) \\
&\quad+\theta(-T)\sum_{n,\bar n\geq0}e^{\omega_{n,\bar n}T}e^{-im_{n,\bar n}\phi}v_{n,\bar n}^{\mu_{1}*}(r_{1})v_{n,\bar n}^{\mu_{2}}(r_{2}),
\end{align}$$

with $T=\tau_{1}-\tau_{2}$ and $\phi=\phi_{1}-\phi_{2}$. to compare it with the temporal gauge expression, define

$$\begin{align}
\chi_{n,\bar n}&=\frac{i}{\omega_{n,\bar n}}e^{-\omega_{n,\bar n}\tau}e^{im_{n,\bar n}\phi}S_{n,\bar n}(r), \\
\lambda_{n,\bar n}&=-\frac{r}{\omega_{n,\bar n}}e^{-\omega_{n,\bar n}\tau}e^{im_{n,\bar n}\phi}v_{n,\bar n}^{r}(r).
\end{align}$$

then each highest-weight mode decomposes as

$$\begin{align}
\psi_{n,\bar n,E}^{\mu}&=D^{\mu}\chi_{n,\bar n}+\nabla^{\mu}\lambda_{n,\bar n},
\end{align}$$

where

$$\begin{align}
D^{\tau}&=0, &D^{r}&=\frac{1+r^2}{r}\partial_{\phi}, &D^{\phi}&=-\frac{1+r^2}{r}\partial_r.
\end{align}$$

by introducing the operators

$$\begin{align}
\mathcal{O} & =\partial _{\tau}^{2}+\partial _{\phi}^{2}, \\
\mathcal Q_1&=\mathcal O^{-1}\partial_\phi\left(\partial_T+r_1(1+r_1^2)\partial_{r_1}\right), \\
\mathcal Q_2&=-\mathcal O^{-1}\partial_\phi\left(\partial_T+r_2(1+r_2^2)\partial_{r_2}\right).
\end{align}$$

where the inverse $\mathcal O^{-1}$ spectrally by

$$\begin{align}
\mathcal O^{-1}\left(e^{-\omega_{n,\bar n}T}e^{im_{n,\bar n}\phi}\right)&=\frac{1}{\omega_{n,\bar n}^2-m_{n,\bar n}^2}e^{-\omega_{n,\bar n}T}e^{im_{n,\bar n}\phi}.
\end{align}$$

then the pure-gauge part is generated by act $\displaystyle{\mathcal{Q}}$ on $\displaystyle{\chi}$'s, indeed,

$$\begin{align}
\lambda_{n,\bar n}(x_{1})\chi_{n,\bar n}^{*}(x_{2}) &=\mathcal Q_1\left(\chi_{n,\bar n}(x_{1})\chi_{n,\bar n}^{*}(x_{2})\right), \\
\chi_{n,\bar n}(x_{1})\lambda_{n,\bar n}^{*}(x_{2}) &=\mathcal Q_2\left(\chi_{n,\bar n}(x_{1})\chi_{n,\bar n}^{*}(x_{2})\right)
\end{align}$$

therefore for $\displaystyle{T>0}$, we have

$$\begin{align}
G_{\mathrm{hw},+}^{\mu_1\mu_2}&=(D_1^{\mu_1}+\nabla_1^{\mu_1}\mathcal Q_1)(D_2^{\mu_2}+\nabla_2^{\mu_2}\mathcal Q_2)H.
\end{align}$$

where

$$\begin{align}
H(x_{1},x_{2})&=\sum_{n,\bar n\geq0}\chi_{n,\bar n}(x_{1})\chi_{n,\bar n}^{*}(x_{2}) \\
 & =\int _{0}^{\infty} \mathrm{d}s\, s\, g_{2}(T+s,r_{1},r_{2},\phi)
\end{align}$$

is exactly the mode sums defined in the discussion of temporal gauge.

---

using $\displaystyle{P_{p}^{(q,1)}(-x)=(-1)^pP_{p}^{(1,q)}(x)}$, one finds

$$\begin{align}
\chi_{n,\bar n}(x)&=(-1)^p(-i)^q\Psi_{p,m_{n,\bar n}}(x),&p&=\min(n,\bar n),&q&=|n-\bar n|.
\end{align}$$

therefore the phases cancel in the product, and

$$\begin{align}
\sum_{n,\bar n\geq0}\chi_{n,\bar n}(x_{1})\chi_{n,\bar n}^{*}(x_{2})&=\sum_{p\geq0,m\in\mathbb Z}\Psi_{p,m}(x_{1})\Psi_{p,m}^{*}(x_{2}).
\end{align}$$

---

the $T<0$ expression is obtained by complex conjugating the modes and exchanging the two insertions, as in the explicit mode sum above. we have

$$\begin{align}
G^{\mu_{1},\mu_{2}}_{\text{hw}} & =\theta(T)G^{\mu_{1},\mu_{2}}_{\text{hw},+}+\theta(-T)G^{\mu_{1},\mu_{2}}_{\text{hw},-} \\
 & =(D_{1}^{\mu_{1}}+\nabla _{1}^{\mu_{1}}\mathcal{Q}_{1})(D_{2}^{\mu_{2}}+\nabla _{2}^{\mu_{2}}\mathcal{Q}_{2})H(|T|,r_{1},r_{2},\phi)
\end{align}$$
