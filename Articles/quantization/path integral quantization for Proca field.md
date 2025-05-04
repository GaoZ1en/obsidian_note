
$$\tag{1.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$
---

introduce

$$\tag{1.2}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A_{\mu}\left(\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}\right)A_{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}x'J^{\mu}(x)(D^{-1})_{\mu \nu}(x,x')J^{\nu}(x')\right)
\end{align}
$$

where $\displaystyle{D^{\mu \nu}=\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}}$, and $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{1.3}
\begin{align}
iD^{\mu \nu}(x)(D^{-1})_{\nu \rho}(x,x') & =\delta ^{\mu}_{\rho}\delta ^{4}(x-x') \\
(D^{-1})_{\mu \nu}(x,x') & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot (x-x')}\left( \eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{m^{2}} \right)
\end{align}
$$

then we have the time-ordered correlation function

$$\tag{1.4}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(x') }  & = \frac{\braket{ 0|\mathcal{T}A_{\mu}(x)A_{\nu}(x')|0 }}{\braket{ 0|0 } } \\
 & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J^{\mu}(x)\delta J^{\nu}(x')}\Big|_{J=0} \\
 & =  (D^{-1})_{\mu \nu}(x,x')
\end{align}
$$

---

$$\tag{2.1}
\begin{align}
\braket{ A_{0}(x)A_{i}(x') }  & = \frac{\displaystyle{\int \mathcal{D}A_{\mu}A_{0}(x)A_{i}(x') \exp\left(i \int \mathrm{d}^{4}x\mathcal{L}[A_{i},A_{0}]\right)}}{\displaystyle{\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}[A_{i},A_{0}]\right)}}
\end{align}
$$

integrate out $\displaystyle{A_{0}}$, ($\displaystyle{A_{0}}=-\frac{1}{m^{2}}\partial ^{\mu}F_{\mu 0}=-\frac{1}{m^{2}}\nabla \cdot \pi$)

$$\tag{2.2}
\begin{align}
\braket{ A_{0}(x)A_{i}(x') }  & = \frac{\displaystyle{\int \mathcal{D}A_{i} \left(-\frac{1}{m^{2}}\partial ^{j}\pi _{j}(x)A_{i}(x')\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A_{i}]\right)}}{\displaystyle{\int \mathcal{D}A_{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A_{i}]\right)}} \\
 & = -\frac{1}{m^{2}}\partial ^{j} \braket{ \pi _{j}(x)A_{i}(x') } \\
 & = \dots 
\end{align}
$$

similarly

$$\tag{2.3}
\begin{align}
\braket{ A_{0}(x)A_{0}(x') }  & =\frac{\displaystyle{\int \mathcal{D}A_{\mu}A_{0}(x)A_{0}(x')\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}[A_{i},A_{0}]\right)}}{\displaystyle{\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}[A_{i},A_{0}]\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A_{i}\left(\frac{1}{m^{4}}\partial _{i}\pi ^{i}(x)\partial _{j}\pi ^{j}(x')+\frac{i\delta ^{4}(x-x')}{m^{2}}\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A_{i}]\right)}}{\displaystyle{\int \mathcal{D}A_{i}}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A_{i}]\right)} \\
 & =\dots+\frac{i}{m^{2}}\delta ^{4}(x-x')
\end{align}
$$

as a summary, we have

$$\tag{2.4}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(x') }  & =\braket{ 0|\mathcal{T}A_{\mu}(x)A_{\nu}(x')|0 }+\frac{i}{m^{2}}\delta ^{0}_{\mu}\delta ^{0}_{\nu}\delta ^{4}(x-x') 
\end{align}
$$

where the last term is exactly the extra contact term in the canonical formalism, which comes from quantum fluctuation of $\displaystyle{A_{0}}$.