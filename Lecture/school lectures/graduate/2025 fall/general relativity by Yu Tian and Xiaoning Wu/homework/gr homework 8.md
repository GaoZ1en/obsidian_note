# problem 1

in linearized gravity theory with background 4d Minkowski spacetime, let

$$\begin{align}
\bar{h}_{\mu \nu} & =h_{\mu \nu}-\frac{1}{2}\eta _{\mu \nu}h \\
h & =\eta ^{\mu \nu}h_{\mu \nu}
\end{align}$$

prove that the linearized Einstein equation

$$\begin{align}
\bar{R}_{\mu \nu} & =8\pi GT_{\mu \nu}
\end{align}$$

can be written as

$$\begin{align}
\frac{1}{2}(\bar{h}^{\alpha}_{~\mu \nu,\alpha}+\eta _{\mu \nu}\bar{h}^{\alpha \beta}_{~~~~,\alpha \beta}-\bar{h}^{\alpha}_{~\mu \alpha,\nu}-\bar{h}^{\alpha}_{~\nu \alpha,\mu}) & =-8\pi GT_{\mu \nu}
\end{align}$$

*sol*. we have

$$\begin{align}
\bar{R}_{\mu \nu} & =\frac{1}{2}(-\partial ^{2}h_{\mu \nu}+\partial _{\mu}\partial _{\alpha}h_{\nu}^{~\alpha}+\partial _{\nu}\partial _{\alpha}h_{\mu}^{~\alpha}-\partial _{\mu}\partial _{\nu}h)+\mathcal{O}(h^{2}) \\
\bar{R} & =\partial _{\mu}\partial _{\nu}h^{\mu \nu}-\partial ^{2}h+\mathcal{O}(h^{2})
\end{align}$$

then the linearized eom becomes

$$\begin{align}
8\pi T_{\mu \nu} & =\bar{R}_{\mu \nu}-\frac{1}{2}\eta _{\mu \nu}\bar{R} \\
 & =\frac{1}{2}(\partial ^{2}h_{\mu \nu}+\partial _{\mu}\partial _{\alpha}h_{\nu}^{~\alpha}+\partial _{\nu}\partial _{\alpha}h_{\mu}^{~\alpha}-\partial _{\mu}\partial _{\nu}h)-\frac{1}{2}\eta _{\mu \nu}(\partial _{\rho}\partial _{\sigma}h^{\rho \sigma}-\partial ^{2}h) \\
 & =\frac{1}{2}\left( \partial ^{2}\left( h_{\mu \nu}-\frac{1}{2}\eta _{\mu \nu}h \right)+\partial _{\mu}\partial _{\alpha}\left( h_{\nu}^{~\alpha}-\frac{1}{2}\delta _{\nu}^{~\alpha}h \right)+\partial _{\nu}\partial _{\alpha}\left( h_{\mu}^{~\alpha}-\frac{1}{2}\delta _{\mu}^{~\alpha}h \right)-\eta _{\mu \nu}\partial _{\rho}\partial _{\sigma}\left( h^{\rho \sigma}-\frac{1}{2}\eta ^{\rho \sigma}h \right) \right) \\
 & =\frac{1}{2}(\partial ^{2}\bar{h}_{\mu \nu}+\partial _{\mu}\partial _{\alpha}\bar{h}_{\nu}^{~\alpha}+\partial _{\nu}\partial _{\alpha}\bar{h}_{\mu}^{~\alpha}-\eta _{\mu \nu}\partial _{\rho}\partial _{\sigma}\bar{h}^{\rho \sigma})
\end{align}$$

which is exactly the required form.

# problem 2

define

$$\begin{align}
A_{\pm}:= A_{11}\mp iA_{12}
\end{align}$$

and take the rotation

$$\begin{align}
\begin{pmatrix}
\tilde{x} \\
\tilde{y}
\end{pmatrix} & =\begin{pmatrix}
\cos \theta & \sin \theta \\
-\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
x \\
y
\end{pmatrix}
\end{align}$$

$\displaystyle{A_{ij}}$ transforms as tensor. prove that

$$\begin{align}
\tilde{A}_{\pm} & =e^{2i\theta}A_{\pm}
\end{align}$$

thus the helicity of $\displaystyle{A_{\pm}}$ is $\displaystyle{\pm 2}$

*sol*. denote $\displaystyle{\tilde{X}=UX}$, then the transformation of $\displaystyle{A}$ reads

$$\begin{align}
\tilde{A} & =UAU^{\dagger} \\
 & =\begin{pmatrix}
\cos \theta & \sin \theta \\
-\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
A_{11} & A_{12} \\
A_{12} & -A_{11}
\end{pmatrix}\begin{pmatrix}
\cos \theta & -\sin \theta \\
\sin \theta & \cos \theta
\end{pmatrix} \\
 & =\begin{pmatrix}
A_{11}\cos 2\theta+A_{12}\sin 2\theta & -A_{11}\sin 2\theta+A_{12}\cos2\theta \\
-A_{11}\sin 2\theta+A_{12}\cos 2\theta & -A_{11}\cos 2\theta-A_{12}\sin2\theta
\end{pmatrix}
\end{align}$$

thus

$$\begin{align}
\tilde{A}_{\pm} & =\tilde{A}_{11}\mp i\tilde{A}_{12} \\
 & =A_{11}\cos 2\theta+A_{12}\sin 2\theta\mp i(-A_{11}\sin 2\theta +A_{12}\cos 2\theta) \\
 & =e^{\pm 2i\theta}A_{\pm}
\end{align}$$
