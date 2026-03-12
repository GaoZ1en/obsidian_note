# problem

given the Lagrangian

$$\begin{align}
\mathcal{L} & =-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-D_{\mu}\phi(D^{\mu}\phi)^{*}-V(|\phi|^{2})
\end{align}$$

where $\displaystyle{D_{\mu}=\nabla _{\mu}-iA_{\mu}}$. show that this Lagrangian is invariant under gauge transformation

$$\begin{align}
\phi' & =e^{i\alpha}\phi \\
A_{\mu}' & =A_{\mu}+\nabla_{\mu}\alpha
\end{align}$$

and derive the corresponding Noether current.

*sol.*

here we use the so-called *covariant phase space formalism*, please refer to **[covariant phase space with boundaries](https://arxiv.org/abs/1906.08616)**.

take a variation of the Lagrangian

$$\begin{align}
\delta \mathcal{L} & =E^{\mu}\delta A_{\mu}+E_{\phi}\delta \phi ^{*}+E_{\phi ^{*}}\delta \phi+\nabla _{\mu}\theta ^{\mu} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}+i(\phi(D^{\nu}\phi)^{*}-\phi ^{*}D^{\nu}\phi) \\
E_{\phi} & =D^{2}\phi-V'\phi \\
E_{\phi ^{*}} & =(D^{2}\phi)^{*}-V'\phi ^{*} \\
\theta ^{\mu} & =F^{\mu \nu}\delta A_{\nu}+(D^{\mu}\phi)^{*}\delta \phi+(D^{\mu}\phi)\delta \phi ^{*}
\end{align}$$

we can write the guage transformation into a vector on the configuration space

$$\begin{align}
X_{\alpha} & =\int \mathrm{d}^{d}x\left(i\alpha \frac{\delta}{\delta \phi}-i\alpha \frac{\delta}{\delta \phi ^{*}}+\nabla_{\mu}\alpha \frac{\delta}{\delta A_{\mu}}\right)
\end{align}$$

act this symmetry on the Lagrangian

$$\begin{align}
X_{\alpha}\cdot \delta\mathcal{L} & =-F^{\mu \nu}\nabla _{\mu}(X_{\alpha}\cdot \delta A_{\nu})- [X_{\alpha}\cdot \delta (D_{\mu}\phi)](D^{\mu}\phi)^{*}- D_{\mu}\phi[X_{\alpha}\cdot \delta(D^{\mu}\phi)]^{*}-X_{\alpha}\cdot \delta V(|\phi|^{2}) \\
 & =-F^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\alpha-\frac{i}{2}\alpha D_{\mu}\phi(D^{\mu}\phi)^{*}+\frac{i}{2}\alpha D_{\mu}\phi(D^{\mu}\phi)^{*} \\
 & =0
\end{align}$$

thus the Lagrangian is invariant under the guage transformation. here we use

$$\begin{align}
X_{\alpha}\cdot \delta (D_{\mu}\phi) & =X_{\alpha}\cdot \delta(\nabla _{\mu}\phi-iA_{\mu}\phi) \\
 & =\nabla _{\mu}(i\alpha \phi)-i(X_{\alpha}\cdot \delta A_{\mu})\phi-iA_{\mu}(X_{\alpha}\cdot \delta \phi) \\
 & =i\nabla _{\mu}\alpha \phi+i\alpha\nabla _{\mu}\phi-i\nabla _{\mu}\alpha \phi+\alpha A_{\mu}\phi \\
 & =i\alpha D_{\mu}\phi
\end{align}$$

the corresponding Noether current is

$$\begin{align}
J^{\mu}_{\alpha} & =X_{\alpha}\cdot \theta ^{\mu} \\
 & =F^{\mu \nu}\nabla _{\nu}\alpha+i\alpha (\phi(D^{\mu}\phi)^{*}-\phi ^{*}(D^{\mu}\phi)) \\
 & \approx 2i\alpha(\phi(D^{\mu}\phi)^{*}-\phi ^{*}(D^{\mu}\phi))
\end{align}$$

here we take a integration by part and use the eom

$$\begin{align}
\nabla _{\mu}F^{\mu \nu}+i(\phi(D^{\nu}\phi)^{*}-\phi ^{*}D^{\nu}\phi) & =0
\end{align}$$