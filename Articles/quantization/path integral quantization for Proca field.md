
$$\tag{2.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$

introduce

$$\tag{2.2}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A_{\mu}\left(\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}\right)A_{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}x'J^{\mu}(x)(D^{-1})_{\mu \nu}(x,x')J^{\nu}(x')\right)
\end{align}
$$

where $\displaystyle{D^{\mu \nu}=\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}}$, and $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{2.3}
\begin{align}
iD^{\mu \nu}(x)(D^{-1})_{\nu \rho}(x,x') & =\delta ^{\mu}_{\rho}\delta ^{4}(x-x') \\
(D^{-1})_{\mu \nu}(x,x') & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot (x-x')}\left( \eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{m^{2}} \right)
\end{align}
$$

then we have the time-ordered correlation function

$$\tag{2.4}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(x') }  & = \frac{\braket{ 0|\mathcal{T}A_{\mu}(x)A_{\nu}(x')|0 }}{\braket{ 0|0 } } \\
 & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J^{\mu}(x)\delta J^{\nu}(x')}\Big|_{J=0} \\
 & =  (D^{-1})_{\mu \nu}(x,x')
\end{align}
$$

---

