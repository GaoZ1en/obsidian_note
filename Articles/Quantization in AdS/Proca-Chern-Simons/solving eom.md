the metric is chosen to be

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

the eom is given by

$$\begin{align}
\nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho} & =0
\end{align}$$

here the Levi-Civita $\displaystyle{\varepsilon ^{\mu \nu \rho}}$ is normalized to be $\displaystyle{\sqrt{ -g }\varepsilon ^{\mu \nu \rho}=\epsilon ^{\mu \nu \rho}}$ with $\displaystyle{\epsilon _{tr\phi}=1}$. the Proca part of the eom gives

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+(4-\mu ^{2})A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} &  \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-\mu ^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} &  \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+(4-\mu ^{2})A^{\phi} &
\end{align}$$

and the Chern-Simons part gives

$$\begin{align}
-\frac{k}{2\pi}\left(r\partial _{r}A^{\phi}+2A^{\phi}-\frac{1}{r(1+r^{2})}\partial _{\phi}A^{r}\right) &  \\
+\frac{k}{2\pi r}\left(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t}\right) &  \\
-\frac{k}{2\pi}\left(\frac{1}{r(1+r^{2})}\partial _{t}A^{r}+\frac{1+r^{2}}{r}\partial _{r}A^{t}+2A^{t}\right) &
\end{align}$$

therefore, the full eom is

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+(4-\mu ^{2})A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi}-\frac{k}{2\pi}\left(r\partial _{r}A^{\phi}+2A^{\phi}-\frac{1}{r(1+r^{2})}\partial _{\phi}A^{r}\right) & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-\mu ^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi}+\frac{k}{2\pi r}\left(r^{2}\partial _{t}A^{\phi}+(1+r^{2})\partial _{\phi}A^{t}\right) & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+(4-\mu ^{2})A^{\phi}-\frac{k}{2\pi}\left(\frac{1}{r(1+r^{2})}\partial _{t}A^{r}+\frac{1+r^{2}}{r}\partial _{r}A^{t}+2A^{t}\right) & =0
\end{align}$$

the constraint equation remains unchanged

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies \partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

---

to solve the equations, define the operator

$$\begin{align}
(\mathcal{D}A)^{\mu} & =\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}.
\end{align}$$

the Proca-Chern-Simons equation is

$$\begin{align}
\left( \mathcal{D}^{2}+\frac{k}{2\pi}\mathcal{D}-\mu ^{2} \right)A & =0.
\end{align}$$

introduce

$$\begin{align}
\mu _{\pm} & =\sqrt{ \mu ^{2}+\frac{k^{2}}{16\pi ^{2}} }\pm \frac{k}{4\pi}.
\end{align}$$

then $\mu _{+}\mu _{-}=\mu ^{2}$ and $\mu_{+}-\mu_{-}=\frac{k}{2\pi}$, so the equation factorizes as

$$\begin{align}
(\mathcal{D}-\mu _{-})(\mathcal{D}+\mu _{+})A & =0
\end{align}$$

therefore the general solution is the sum of two massive vector branches

$$\begin{align}
A & =A_{+}+A_{-}, \\
\mathcal{D}A_{+} & =-\mu_{+}A_{+}, \\
\mathcal{D}A_{-} & =\mu_{-}A_{-}.
\end{align}$$

each branch obeys the ordinary Proca equation with the corresponding mass,

$$\begin{align}
(\mathcal{D}^{2}-\mu _{\pm}^{2})A_{\pm} & =0.
\end{align}$$

now make the same mode ansatz as in the Proca case,

$$\begin{align}
A_{\pm}^{\mu} & =e^{-i\omega t}e^{im\phi}f^{\mu}_{\pm}
\end{align}$$

for a Proca vector of mass $\mu$, define

$$\begin{align}
\psi & =\tilde{A}^{r}, \\
\varphi & =r\tilde{A}^{\phi}, \\
\Phi_{\tau} & =\frac{1}{2}\left(rf^{\phi} - i\tau f^{r}\right).
\end{align}$$

then the two decoupled radial equations are

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi ^{\sigma}_{\tau}+\frac{1+3r^{2}}{r}\partial _{r}\Phi ^{\sigma}_{\tau}+\left( 1-\mu _{\sigma}^{2}-\frac{\ell_{\tau}^{2}}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\Phi _{\tau}^{\sigma} & =0, \quad \sigma,\tau=\pm
\end{align}$$

where $\displaystyle{\ell _{\tau}=|m+\tau|}$. for each branch, we have four solutions

$$\begin{align}
\Phi _{\tau}^{\sigma} & =C_{\tau}^{\sigma}r^{\ell_{\tau}}(1+r^{2})^{-(\mu _{\sigma}+\ell_{\tau}+1)/2}{}_{2}F_{1}\left(\frac{\ell_{\tau}+\mu _{\sigma}-\omega+1}{2}, \frac{\ell_{\tau}+\mu _{\sigma}+\omega+1}{2}; 1+\mu _{\sigma}; \frac{1}{1+r^{2}}\right)
\end{align}$$

the quantization condition is

$$\begin{align}
\frac{\ell_{\tau}+\mu _{\sigma}-\omega +1}{2} & =-n,\qquad n\in \mathbb{N}, \\
\implies \omega ^{\sigma} _{\tau} & =\mu _{\sigma}+2n+\ell_{\tau}+1
\end{align}$$

then the solutions can be written as

$$\begin{align}
\Phi _{\tau}^{\sigma} =N_{\tau}^{\sigma}r^{\ell_{\tau}}(1+r^{2})^{-(\mu _{\sigma}+\ell_{\tau}+1)/2}P_{n}^{(\mu _{\sigma},\ell_{\tau})}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

the normalization constant is determined by the sympletcic form as

$$\begin{align}
\omega[A,A^{*}] & =-i
\end{align}$$

where the symplectic form reads

$$\begin{align}
\omega & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\mu \nu}\wedge \delta A_{\nu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\nu}\wedge \delta A_{\rho}\right)
\end{align}$$

we have

$$\begin{align}
N_{\tau}^{\sigma} & =\sqrt{ \frac{\omega _{\tau}^{\sigma}{}^{2}}{2\pi(\mu _{\sigma}^{2}+\omega _{\tau}^{\sigma}{}^{2}-m^{2}-2\tau \kappa \omega _{\tau}^{\sigma})} \frac{\Gamma(n+\mu _{\sigma}+\ell_{\tau}+1) \Gamma(n+1)}{\Gamma(n+\mu _{\sigma}+1)\Gamma(n+\ell_{\tau}+1)}}
\end{align}$$

where $\displaystyle{\kappa=\frac{k}{2\pi}}$. to write the four normalized modes explicitly, define

$$\begin{align}
R_{\tau,nm}^{(\sigma)}(r) & =N_{\tau}^{\sigma}r^{\ell_{\tau}}(1+r^{2})^{-(\mu _{\sigma}+\ell_{\tau}+1)/2}P_{n}^{(\mu _{\sigma},\ell_{\tau})}\left(\frac{r^{2}-1}{r^{2}+1}\right).
\end{align}$$

then, for each independent choice $\displaystyle{\tau,\sigma=\pm}$, the mode solution is

$$\begin{align}
A^{t}_{(\tau,\sigma),nm} & =e^{-i\omega _{\tau}^{\sigma}t}e^{im\phi}\frac{1}{\omega _{\tau}^{\sigma}}\left(\tau \partial _{r}R_{\tau,nm}^{(\sigma)}+\frac{m+\tau}{r}R_{\tau,nm}^{(\sigma)}\right), \\
A^{r}_{(\tau,\sigma),nm} & =i\tau e^{-i\omega _{\tau}^{\sigma}t}e^{im\phi}R_{\tau,nm}^{(\sigma)}, \\
A^{\phi}_{(\tau,\sigma),nm} & =e^{-i\omega _{\tau}^{\sigma}t}e^{im\phi}\frac{1}{r}R_{\tau,nm}^{(\sigma)}.
\end{align}$$

---

to compare with the $f$ symbols, set

$$\begin{align}
\bar{\mu} & =\sqrt{\mu ^{2}+\frac{k^{2}}{16\pi ^{2}}}, & M_{\sigma} & =\mu _{\sigma}.
\end{align}$$

the $+$ mass branch corresponds to the $f_{+}$ symbols in `formalism.md`, and the $-$ mass branch corresponds to the $f_{-}$ symbols. compared with the Proca $f_{l/r}$ symbols, the normalizations are

$$\begin{align}
f_{+,p,q}^{\mu} & =\sqrt{\frac{M_{+}}{\bar{\mu}}}\,f_{l,p,q}^{(M_{+})\mu}, &
f_{-,p,q}^{\mu} & =\sqrt{\frac{M_{-}}{\bar{\mu}}}\,f_{r,p,q}^{(M_{-})\mu}.
\end{align}$$

for a fixed mass branch $\displaystyle{\sigma}$, write the unnormalized Proca-type modes as

$$\begin{align}
H_{+,nm}^{(\sigma)\mu} & =\frac{1}{N_{-,nm}^{(\sigma)}}A_{(-,\sigma),nm}^{\mu}, &
H_{-,nm}^{(\sigma)\mu} & =-\frac{1}{N_{+,nm}^{(\sigma)}}A_{(+,\sigma),nm}^{\mu}.
\end{align}$$

suppose a degenerate pair satisfies

$$\begin{align}
H_{+}^{\mu} & =a f_{r}^{(M_{\sigma})\mu}+b f_{l}^{(M_{\sigma})\mu}, \\
H_{-}^{\mu} & =c f_{r}^{(M_{\sigma})\mu}+d f_{l}^{(M_{\sigma})\mu}.
\end{align}$$

then Mathematica gives the inverse relation

$$\begin{align}
f_{+,p,q}^{\mu} & =\sqrt{\frac{M_{\sigma}}{\bar{\mu}}}\frac{aA_{(+,\sigma)}^{\mu}/N_{+}^{(\sigma)}+cA_{(-,\sigma)}^{\mu}/N_{-}^{(\sigma)}}{bc-ad}, \qquad \sigma=+, \\
f_{-,p,q}^{\mu} & =-\sqrt{\frac{M_{\sigma}}{\bar{\mu}}}\frac{bA_{(+,\sigma)}^{\mu}/N_{+}^{(\sigma)}+dA_{(-,\sigma)}^{\mu}/N_{-}^{(\sigma)}}{bc-ad}, \qquad \sigma=-.
\end{align}$$

here the $A$ modes and the normalization constants in each line are the degenerate pair specified below.

for $\displaystyle{m=0}$, the degenerate pair is $\displaystyle{A_{(-,\sigma),n0}^{\mu}}$ and $\displaystyle{A_{(+,\sigma),n0}^{\mu}}$. it is related to $\displaystyle{f_{+,n+1,n}^{\mu}}$ for $\displaystyle{\sigma=+}$ and $\displaystyle{f_{-,n,n+1}^{\mu}}$ for $\displaystyle{\sigma=-}$. with

$$\begin{align}
W & =M_{\sigma}+2n+2, &
Q & =\frac{2i^{2n+1}\sqrt{\pi}}{W}\sqrt{\frac{n+1}{M_{\sigma}+n+1}},
\end{align}$$

we have

$$\begin{align}
a & =Q(M_{\sigma}+n+1), &
b & =-Q(n+1), \\
c & =-Q(n+1), &
d & =Q(M_{\sigma}+n+1).
\end{align}$$

for $\displaystyle{m\geqslant 1}$, the degenerate pair is $\displaystyle{A_{(-,\sigma),n+1,m}^{\mu}}$ and $\displaystyle{A_{(+,\sigma),nm}^{\mu}}$. it is related to $\displaystyle{f_{+,m+n+1,n}^{\mu}}$ for $\displaystyle{\sigma=+}$ and $\displaystyle{f_{-,m+n,n+1}^{\mu}}$ for $\displaystyle{\sigma=-}$. with

$$\begin{align}
W & =M_{\sigma}+m+2n+2, \\
S_{+} & =\sqrt{\frac{\Gamma(m+n+1)\Gamma(M_{\sigma}+n+2)}{\Gamma(n+2)\Gamma(M_{\sigma}+m+n+1)}}, \\
S_{-} & =\sqrt{\frac{\Gamma(m+n+2)\Gamma(M_{\sigma}+n+1)}{\Gamma(n+1)\Gamma(M_{\sigma}+m+n+2)}},
\end{align}$$

the coefficients are

$$\begin{align}
a & =\frac{2i^{m+2n+1}\sqrt{\pi}}{W}\sqrt{(M_{\sigma}+n+1)(M_{\sigma}+m+n+1)}\,S_{+}, \\
b & =-\frac{2i^{m+2n+1}\sqrt{\pi}}{W}\sqrt{(n+1)(m+n+1)}\,S_{+}, \\
c & =-\frac{2i^{m+2n+1}\sqrt{\pi}}{W}\sqrt{(n+1)(m+n+1)}\,S_{-}, \\
d & =\frac{2i^{m+2n+1}\sqrt{\pi}}{W}\sqrt{(M_{\sigma}+n+1)(M_{\sigma}+m+n+1)}\,S_{-}.
\end{align}$$

for $\displaystyle{m\leqslant -1}$, the degenerate pair is $\displaystyle{A_{(-,\sigma),nm}^{\mu}}$ and $\displaystyle{A_{(+,\sigma),n+1,m}^{\mu}}$. it is related to $\displaystyle{f_{+,n+1,n-m}^{\mu}}$ for $\displaystyle{\sigma=+}$ and $\displaystyle{f_{-,n,n-m+1}^{\mu}}$ for $\displaystyle{\sigma=-}$. with

$$\begin{align}
W & =M_{\sigma}-m+2n+2, \\
S_{+} & =\sqrt{\frac{\Gamma(n-m+2)\Gamma(M_{\sigma}+n+1)}{\Gamma(n+1)\Gamma(M_{\sigma}-m+n+2)}}, \\
S_{-} & =\sqrt{\frac{\Gamma(n-m+1)\Gamma(M_{\sigma}+n+2)}{\Gamma(n+2)\Gamma(M_{\sigma}-m+n+1)}},
\end{align}$$

the coefficients are

$$\begin{align}
a & =\frac{2i^{2n-m+1}\sqrt{\pi}}{W}\sqrt{(M_{\sigma}+n+1)(M_{\sigma}-m+n+1)}\,S_{+}, \\
b & =-\frac{2i^{2n-m+1}\sqrt{\pi}}{W}\sqrt{(n+1)(n-m+1)}\,S_{+}, \\
c & =-\frac{2i^{2n-m+1}\sqrt{\pi}}{W}\sqrt{(n+1)(n-m+1)}\,S_{-}, \\
d & =\frac{2i^{2n-m+1}\sqrt{\pi}}{W}\sqrt{(M_{\sigma}+n+1)(M_{\sigma}-m+n+1)}\,S_{-}.
\end{align}$$
