$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =-N^{2}\mathrm{d}t^{2}+h_{ab}(\mathrm{d}x^{a}+N^{a}\mathrm{d}t)(\mathrm{d}x^{b}+N^{b}\mathrm{d}t)
\end{align}
$$

$$\tag{.}
\begin{align}
g_{tt} & =-N^{2}+h_{ab}N^{a}N^{b}, & g_{ta} & =h_{ab}N^{a}, & g_{ab} & =h_{ab} \\
g^{tt} & =-\frac{1}{N^{2}}, & g^{ta} & = \frac{N^{a}}{N^{2}}, & g^{ab} & =h^{ab}-\frac{N^{a}N^{b}}{N^{2}}
\end{align}
$$

---

in this part we assume that $\displaystyle{N,h_{ij}}$ and $\displaystyle{N^{i}}$ are independent from $\displaystyle{t}$.

$$\tag{.}
\begin{align}
\Gamma _{~\mu \nu} ^{\rho}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =\frac{1}{2}g^{\rho \sigma}(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu})\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =g^{\rho \sigma}\mathrm{d}g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}
$$

$$\tag{.}
\begin{align}
\Gamma ^{t}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} =& \left( \frac{N^{a}}{N}\partial _{a}N -\frac{1}{2} \frac{N^{a}}{N^{2}}\partial _{a}h_{bc}N^{b}N^{c}-\frac{N^{a}}{N^{2}}h_{bc}N^{b}\partial _{a}N^{c} \right)\mathrm{d}t^{2} \\
 & +2\left( \frac{1}{N}\partial _{a}N-\frac{1}{N^{2}}N_{b}\partial _{a}N^{b}+\frac{N^{b}}{2N^{2}}h_{bc}\partial _{a}N^{c}-\frac{N^{b}}{2N^{2}}h_{ac}\partial _{b}N^{c} -\frac{N^{b}}{2N^{2}}\partial _{b}h_{ac}N^{c}\right)\mathrm{d}t\mathrm{d}x^{a} \\
 & +\left( -\frac{1}{N^{2}}\partial _{a}h_{bc}N^{c}-\frac{1}{N^{2}}h_{bc}\partial _{a}N^{c}+\frac{N^{c}}{N^{2}}\partial _{b}h_{ac}-\frac{1}{2} \frac{N^{c}}{N^{2}}\partial _{c}h_{ab} \right)\mathrm{d}x^{a}\mathrm{d}x^{b}
\end{align}
$$







$$\tag{.}
\begin{align}
\Gamma ^{t}_{~tt} & =\frac{N^{a}}{N}\partial _{a}N-\frac{1}{2} \frac{N^{a}}{N^{2}}\partial _{a}h_{bc}N^{b}N^{c}-\frac{N^{a}}{N^{2}}h_{bc}N^{b}\partial _{a}N^{c} \\
\Gamma ^{t}_{~ta} & =\frac{\partial _{a}N}{N}+\frac{1}{2N^{2}}\partial _{a}h_{bc}N^{b}N^{c}+\frac{1}{N^{2}}h_{bc}N^{b}\partial _{a}N^{c} \\
 & +\frac{1}{2} \frac{N^{b}}{N^{2}}(\partial _{a}h_{bc}N^{c}+h_{bc}\partial _{a}N^{c}-\partial _{b}h_{ac}N^{c}-h_{ac}\partial _{b}N^{c}) \\
\Gamma ^{t}_{~ab} & =-\frac{1}{2N^{2}}(h_{bc}\partial _{a}N^{c}+h_{ac}\partial _{b}N^{c})+\frac{1}{2} \frac{N^{c}}{N^{2}}(-\partial _{c}h_{ab}) \\
\Gamma ^{a}_{~tt} & =-\frac{1}{2}\left( h^{ab}-\frac{N^{a}N^{b}}{N^{2}} \right)\partial _{b}(-N^{2}+h_{ab}N^{a}N^{b}) \\
\Gamma ^{a}_{~tb} & =\frac{1}{2} \frac{N^{a}}{N^{2}} \partial _{b}(-N^{2}+h_{ab}N^{a}N^{b})+\frac{1}{2}g^{ac}(\partial _{b}(h_{cd}N^{d})-\partial _{c}(h_{bd}N^{d})) \\
\Gamma ^{a}_{~bc} & =\frac{1}{2} \frac{N^{a}}{N^{2}}(\partial _{b}(h_{cd}N^{d})+\partial _{c}(h_{bd}N^{d}))+\frac{1}{2}\left( h^{ab}-\frac{N^{a}N^{b}}{N^{2}} \right)(\partial _{b}h_{dc}+\partial _{a}h_{bd}-\partial _{d}h_{bc})
\end{align}
$$

when $\displaystyle{N^{a}=0}$, they are simplified to

---

$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =-N^{2}\mathrm{d}t^{2}+h_{ab}\mathrm{d}x^{a}\mathrm{d}x^{b}
\end{align}
$$

$$\tag{.}
\begin{align}
\Gamma ^{t}_{~tt} & =0, & \Gamma ^{t}_{~ta} & =\frac{\partial _{a}N}{N}, & \Gamma ^{t}_{~ab} & =0 \\
\Gamma ^{a}_{~tt} & =h^{ab}N\partial _{b}N, & \Gamma ^{a}_{~tb} & =0, & \Gamma ^{c}_{~ab} & =\tilde{\Gamma}^{c}_{~ab}
\end{align}
$$

$$\tag{.}
\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}g_{\mu \nu}A^{\mu}A^{\nu}\right) \\
 & =\int \mathrm{d}t\int \mathrm{d}^{2}xN\sqrt{ h }\left(-\frac{1}{2}F_{ta}F^{ta}-\frac{1}{4}F_{ab}F^{ab}+\frac{1}{2}\mu ^{2}N^{2}A^{t}A^{t}-\frac{1}{2}\mu ^{2}h_{ab}A^{a}A^{b}\right)
\end{align}
$$

$$\tag{.}
\begin{align}
-\partial _{a}F^{ta}-\left( \frac{\partial _{a}N}{N} +\tilde{\Gamma}^{a}_{~ab}\right)F^{ta} & =\mu ^{2}A^{t} \\
\partial _{t}F^{ta}-\partial _{b}F^{ab}+\left( \delta ^{a}_{c}\frac{\partial _{b}N}{N}+\delta ^{a}_{c}\tilde{\Gamma} ^{d}_{~bd}+\tilde{\Gamma} ^{a}_{~bc} \right)F^{bc} & =\mu ^{2}A^{a}
\end{align}
$$

where $\displaystyle{\tilde{\Gamma}^{c}_{~ab}=\frac{1}{2}h^{cd}(\partial _{a}h_{db}+\partial _{b}h_{ad}-\partial _{d}h_{ab})}$

$$\tag{.}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =-\frac{1}{2}\partial _{\mu}A_{\nu}\partial ^{\mu}A^{\nu}+\frac{1}{2}\partial _{\mu}A_{\nu}\partial ^{\nu}A^{\mu} \\
 & =-\frac{1}{2}\partial _{\mu}(g_{\nu \rho}A^{\rho})g^{\mu \sigma}\partial _{\sigma}A^{\nu}+\frac{1}{2}\partial _{\mu}(g_{\nu \rho}A^{\rho})g^{\nu \sigma}\partial _{\sigma}A^{\mu} \\
 & =\frac{1}{2}\partial _{\mu}A^{\nu}\partial _{\nu}A^{\mu}+\frac{1}{2}g^{\nu \sigma}\partial _{\mu}g_{\nu \rho}A^{\rho}\partial _{\sigma}A^{\mu}-\frac{1}{2}g^{\mu \sigma}g_{\nu \rho}\partial _{\mu}A^{\rho}\partial _{\sigma}A^{\nu}-\frac{1}{2}g^{\mu \sigma}\partial _{\mu}g_{\nu \rho}A^{\rho}\partial _{\sigma}A^{\nu} \\
 & =\frac{1}{2}\partial _{\mu}A^{\nu}\partial _{\nu}A^{\mu}-\frac{1}{2}g^{\mu \sigma}g_{\nu \rho}\partial _{\mu}A^{\rho}\partial _{\sigma}A^{\nu}+\frac{1}{2}g^{\nu \sigma}(\partial _{\mu}g_{\nu \rho}-\partial _{\nu}g_{\mu \rho})A^{\rho}\partial _{\sigma}A^{\mu}
\end{align}
$$