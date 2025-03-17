## 1-form symmetry



## CPS formalism

$$\tag{2.1}
\begin{align}
S & =-\frac{1}{4}\int _{M}F_{\mu \nu}F^{\mu \nu}\varepsilon
\end{align}
$$

where $\displaystyle{\varepsilon=\frac{1}{d!}\varepsilon _{\mu_{0}\dots \mu _{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge \mathrm{d}x^{\mu _{d-1}}}$. perform a variation

$$\tag{2.2}
\begin{align}
S & =-\frac{1}{2}\int _{M} F^{\mu \nu}\delta F_{\mu \nu}\varepsilon \\
 & =-\int _{M} F^{\mu \nu}\partial _{\mu}\delta A_{\nu}\varepsilon \\
 & =\int _{M} \delta A_{\mu}\partial _{\nu}F^{\nu \mu}\varepsilon-\int _{M}\partial _{\mu}(F^{\mu \nu}\delta A_{\nu})\varepsilon \\
 & =\int _{M}\delta A_{\nu}\partial _{\mu}F^{\mu \nu}\varepsilon+
\end{align}
$$

$$\tag{2.2}
\begin{align}
\delta S & =\int _{M}-\frac{1}{2}\delta F\wedge \star F-\frac{1}{2}F\wedge \star \delta F \\
 & =\int _{M}-\mathrm{d}\delta A\wedge \star F\\
 & =\int _{M}-\delta A\wedge \mathrm{d}\star F-\mathrm{d}(\delta A\wedge \star F) \\
 & =\int M-\delta A\wedge \mathrm{d}\star F+\int _{\Sigma _{f}-\Sigma _{i}}\delta A\wedge \star F
\end{align}
$$

consider the following diffeomorphism

$$\tag{2.3}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}
\end{align}
$$