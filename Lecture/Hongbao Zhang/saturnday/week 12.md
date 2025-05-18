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

$$\tag{2.1}
\begin{align}
S & =-m\int \mathrm{d}\tau\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }-q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d} \tau} A_{\mu}
\end{align}
$$

make a variation

$$\tag{2.2}
\begin{align}
\delta S & =m\int\mathrm{d}\tau  \frac{2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}+\partial _{\sigma}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\sigma}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} -q\int \mathrm{d}\tau \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}A_{\mu}-q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\partial _{\nu}A_{\mu}\delta x^{\nu} \\
 & =\int \mathrm{d}\tau E_{\sigma}\delta x^{\sigma}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\ 
E_{\sigma} & = -mg_{\lambda \sigma}\left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)+q \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}\tau}F_{\lambda \sigma} \\
\theta & =\left( mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}-qA_{\nu} \right)\delta x^{\nu}
\end{align}
$$

here we choose parameterization $\displaystyle{\tau}$ such that $\displaystyle{\sqrt{ -g_{\mu \nu}\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$

then make a variation on $\displaystyle{g_{\mu \nu}}$, we have

$$\tag{2.3}
\begin{align}
\delta S & = -m\int \mathrm{d}\tau \frac{ \delta g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} \\
 & =-\int \mathrm{d}\tau  \frac{1}{2}m \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \delta g_{\mu \nu}
\end{align}
$$

introduce covariant Dirac delta function $\displaystyle{\tilde{\delta}^{d}(x)}$, which satisfies

$$\tag{2.4}
\begin{align}
\int \mathrm{d}^{d}x \sqrt{ -g } \tilde{\delta} ^{d}(x) =1
\end{align}
$$

then the action becomes

$$\tag{2.5}
\begin{align}
S & =-m \int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} } \int \mathrm{d}^{d}x \sqrt{ -g } \tilde{\delta}^{d}(x) \\
 & =-m\int \mathrm{d}^{d}x'\sqrt{ -g }\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} } \tilde{\delta}^{d}(x-x')
\end{align}
$$

and the variation of the action

$$\tag{2.6}
\begin{align}
\delta S & =-\int \mathrm{d}\tau  \frac{1}{2}m \frac{\mathrm{d}x'^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x'^{\nu}}{\mathrm{d}\tau} \delta g_{\mu \nu} \int \mathrm{d}^{d}x \sqrt{ -g } \frac{\delta ^{d}(x-x')}{\sqrt{ -g }} \\
 & =-\int \mathrm{d}^{d}x\sqrt{ -g } \int \mathrm{d}\tau  \frac{1}{2}m \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \frac{\delta ^{d}(x-x')}{\sqrt{ -g }} \\
\implies T^{\mu \nu} & = -\frac{2}{\sqrt{ -g }} \frac{\delta S}{\delta g^{\mu \nu}} \\
 & =\int \mathrm{d}\tau  \frac{\delta ^{d}(x-x')}{\sqrt{ -g }} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}
\end{align}
$$

then we have the conserved charge

$$\tag{2.7}
\begin{align}
H_{\xi} & =\int _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

we have a diffeomorphism anomaly that

$$\tag{2.8}
\begin{align}
\nabla _{\mu}T^{\mu \nu}\neq 0
\end{align}
$$

under a infinitesimal diffeomorphism transformation

$$\tag{2.9}
\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu} \\
A_{\mu}  & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu} \\
x^{\mu} & \to x^{\mu}+\xi ^{\mu}
\end{align}
$$

$$\tag{2.10}
\begin{align}
X_{\xi}\cdot \delta S & =\int \mathrm{d}\tau q \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\mathcal{L}_{\xi}+ \int \mathrm{d}\tau \dots \\
 & =\dots
\end{align}
$$

in black hole.... make a perturbation by introduce a point particle and drop into the black hole. after the particle drop into the black hole, how is the final state $\displaystyle{(M',Q',J')}$ related to the stress tensor $\displaystyle{T_{\mu \nu}}$?

***do this problem next week***

how is this problem emerges?

the temperature of extremal black hole is 0, but still decay(?).
1. Schwinger effect
2. require electric force > gravitation
these two requirements are somehow the same requirement.
3. weak cosmic censorship conjecture

这篇论文的主体于2025年2月10日完成，但致谢一直拖到了5月18日才开始动笔。一方面是拖延，另一方面是不知道该说些什么。