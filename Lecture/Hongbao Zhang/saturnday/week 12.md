charged particle satisfies

$$\tag{.}
\begin{align}
mU^{a}\nabla _{a}U^{b} & =qF^{bc}U_{c}
\end{align}
$$

in a static spacetime, there exists a timelike Killing vector $\displaystyle{\xi ^{a}}$. we can choose the gauge $\displaystyle{\mathcal{L}_{\xi}A_{a}=0}$ (for example, the RN black hole). consider

$$\tag{.}
\begin{align}
mU^{a}\nabla _{a}(U^{b}\xi _{b}) & =mU^{a}\nabla _{a}U^{b}\xi _{b}+mU^{a}U^{b}\nabla _{a}\xi _{b} \\
 & =qF^{bc}U_{c}\xi _{b} \\
 & =qU^{c}\xi ^{b}F_{bc}=qU^{c}\xi ^{b}(\nabla _{b}A_{c}-\nabla _{c}A_{b}) \\
 & =qU^{c}\nabla _{c}(\xi ^{b}A_{b}) \\
\implies U^{a}\nabla _{a}(mU^{b}\xi _{b}+q\xi ^{b}A_{b}) & =0 \\
\implies (mU^{b}+qA^{b})\xi _{b} & =\mathrm{Const}.
\end{align}
$$

seems like some canonical momentum. the problem is in asymptotic AdS spacetime, $\displaystyle{\xi}$ cannot be normalised. 

dive into the problem...

use covariant phase space formalism... it is compatible for me.

$$\tag{.}
\begin{align}
S & =-m\int \mathrm{d}\tau\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }-q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d} \tau} A_{\mu}
\end{align}
$$

make a variation

$$\tag{.}
\begin{align}
\delta S & =m\int\mathrm{d}\tau  \frac{2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}+\partial _{\sigma}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\sigma}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} -q\int \mathrm{d}\tau \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}A_{\mu}-q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\partial _{\nu}A_{\mu}\delta x^{\nu} \\
 & =\int \mathrm{d}\tau E_{\sigma}\delta x^{\sigma}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\ 
E_{\sigma} & = -mg_{\lambda \sigma}\left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)+q \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}\tau}F_{\lambda \sigma} \\
\theta & =\left( mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}-qA_{\nu} \right)\delta x^{\nu}
\end{align}
$$

here we choose parameterization $\displaystyle{\tau}$ such that $\displaystyle{\sqrt{ -g_{\mu \nu}\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$

$$\tag{.}
\begin{align}
-g_{\mu \nu}\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}=
\end{align}
$$
