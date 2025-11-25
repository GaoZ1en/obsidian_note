we first consider two harmonic oscillators with frequencies $\displaystyle{\omega}$ and $\displaystyle{\tilde{\omega}}$ satisfying

$$\begin{align}
\tilde{\omega}=e^{-2\theta}\omega
\end{align}$$

the wave function of state $\displaystyle{\ket{n}}$ is

$$\begin{align}
\psi _{n}(x) & =\braket{ x|n } \\
 & = \frac{1}{\sqrt{ 2^{n}n! }} \left( \frac{m\omega }{\pi   } \right)^{1/4}e^{-\frac{m\omega x^{2}}{2  }}H_{n}\left( \sqrt{\frac{m\omega }{  }}x \right) \\
\psi _{\tilde{n}}(x) & = \braket{ x|\tilde{n} }  \\
 & = \frac{1}{\sqrt{ 2^{\tilde{n}}\tilde{n}! }} \left( \frac{m\tilde{\omega} }{\pi   } \right)^{1/4}e^{-\frac{m\tilde{\omega} x^{2}}{2  }}H_{\tilde{n}}\left( \sqrt{\frac{m\tilde{\omega} }{  }}x \right)
\end{align}$$

the vacuum amplitude is given by

$$\begin{align}
\braket{ 0|\tilde{0} }  & =\left(\frac{m\omega}{\pi  }e^{-\theta}\right)^{1/2}\int _{-\infty}^{+\infty} \mathrm{d}x e^{-\frac{m\omega ^{2}x^{2}}{2}(1+e^{-2\theta})} \\
 & =\left(\frac{m\omega}{\pi}e^{-\theta}\right)^{1/2} \left( \frac{2\pi}{m\omega(1+e^{-2\theta})} \right)^{1/2} \\
 & =\frac{1}{\sqrt{ \cosh \theta }}
\end{align}$$

---

now we will consider the vacuum state of two scalar field theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$ defined in $\displaystyle{\mathbb{R}_{1}\times S^{1}}$, where $\displaystyle{S^{1}}$ is a circle with circumference $\displaystyle{L}$. eom of the scalar field is given by

$$\begin{align}
\nabla ^{2}\phi-\mu^{2}\phi & =0
\end{align}$$

the general solution can be expanded as the Fourier modes

$$\begin{align}
\phi _{n} & =C_{n}e^{i\omega _{n} t}e^{ik_{n}x} \\
k _{n} & =\frac{2\pi n}{L} ,\quad n\in \mathbb{Z} \\
\omega _{n} & =\sqrt{ k _{n}^{2}+\mu ^{2} }
\end{align}$$

the field operator can be expressed as

$$\begin{align}
\phi(t,x) & =\sum _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ 2L\omega _{n} }}\left( a _{n}e^{-i\omega _{n} t}e^{ik_{n}x}+a _{n}^{\dagger}e^{i\omega _{n} t}e^{-ik_{n}x} \right)
\end{align}$$

the vacuum state $\displaystyle{\ket{0}}$ is defined by

$$\begin{align}
a _{n}\ket{0} & =0 ,\quad \forall n\in \mathbb{Z}
\end{align}$$

how to compute the vacuum amplitude $\displaystyle{\braket{0|\tilde{0}}}$ between two theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$? we can express the field operator of the second theory as

$$\begin{align}
\tilde{\phi}(t,x) & =\sum _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ 2L\tilde{\omega} _{n} }}\left( \tilde{a} _{n}e^{-i\tilde{\omega} _{n} t}e^{ik_{n}x}+\tilde{a} _{n}^{\dagger}e^{i\tilde{\omega} _{n} t}e^{-ik_{n}x} \right)
\end{align}$$

then we can expand $\displaystyle{\tilde{\phi}(t,x)}$ in terms of the modes of the first theory

$$\begin{align}
\tilde{\phi}(t,x) & =\sum _{n=-\infty}^{+\infty} \left( \alpha _{n}\phi _{n}+\beta _{n}\phi _{n}^{*} \right)
\end{align}$$

where the Bogoliubov coefficients $\displaystyle{\alpha _{n}}$ and $\displaystyle{\beta _{n}}$ are given by

$$\begin{align}
\alpha _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right) \\
\beta _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}-\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right)
\end{align}$$

it is convenient to write $\displaystyle{\tilde{\omega} _{n}=\omega _{n}e^{-2\theta _{n}}}$, then

$$\begin{align}
\alpha _{n} & =\cosh \theta _{n} \\
\beta _{n} & =\sinh \theta _{n}
\end{align}$$

then the creation and annhilation operators are related by

$$\begin{align}
\tilde{a} _{n} & =\alpha _{n}a _{n}+\beta _{n}^{*}a _{n}^{\dagger} \\
\tilde{a} _{n}^{\dagger} & =\alpha _{n}^{*}a _{n}^{\dagger}+\beta _{n}a _{n}
\end{align}$$

the vacuum amplitude can be computed as

$$\begin{align}
\braket{0|\tilde{0}} & =\prod _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ \cosh \theta _{n} }} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right) \right)^{-1/2} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1/2} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2} \prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2}\prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \left( \frac{1+\left( \frac{\tilde{\mu}L}{2\pi n} \right)^{2}}{1+\left( \frac{\mu L}{2\pi n} \right)^{2}} \right)^{1/4}+ \left( \frac{1+\left( \frac{L\mu}{2\pi n} \right)^{2}}{1+\left( \frac{L\tilde{\mu}}{2\pi n} \right)^{2}} \right)^{1/4} \right) \right)^{-1} \\
\end{align}$$

---

now we consider two scalar field theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$ defined in $\displaystyle{\mathrm{AdS}_{3}}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

the general solution of the eom can be expanded as

$$\begin{align}
\varphi _{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
\varphi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} }
\end{align}$$

we want to do the same computation of the vacuum amplitude $\displaystyle{\braket{0|\tilde{0}}}$. by the same procedure, we can express the field operator of the second theory in terms of the modes of the first theory, and the Bogoliubov coefficients are given by

$$\begin{align}
\alpha _{n,\bar{n}} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\Delta} +n+\bar{n}}{\Delta +n+\bar{n}}}+\sqrt{\frac{\Delta +n+\bar{n}}{\tilde{\Delta} +n+\bar{n}}} \right) \\
\beta _{n,\bar{n}} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\Delta} +n+\bar{n}}{\Delta +n+\bar{n}}}-\sqrt{\frac{\Delta +n+\bar{n}}{\tilde{\Delta} +n+\bar{n}}} \right)
\end{align}$$

then the vacuum amplitude is given by

$$\begin{align}
\braket{0|\tilde{0}} & =\prod _{n=0}^{\infty}\prod _{\bar{n}=0}^{\infty} \frac{1}{\sqrt{ \alpha _{n,\bar{n}} }} \\
 & =\prod _{n=0}^{\infty}\prod _{\bar{n}=0}^{\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\Delta} +n+\bar{n}}{\Delta +n+\bar{n}}}+\sqrt{\frac{\Delta +n+\bar{n}}{\tilde{\Delta} +n+\bar{n}}} \right) \right)^{-1/2} \\
 & =\prod _{k=0}^{\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\Delta} +k}{\Delta +k}}+\sqrt{\frac{\Delta +k}{\tilde{\Delta} +k}} \right) \right)^{-(k+1)/2}
\end{align}$$

at large $\displaystyle{k}$, the factor of the product behaves as

$$\begin{align}
\left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\Delta} +k}{\Delta +k}}+\sqrt{\frac{\Delta +k}{\tilde{\Delta} +k}} \right) \right)^{-(k+1)/2} & =\left( 1+\frac{(\tilde{\Delta} -\Delta)^{2}}{8k^{2}}+O\left( \frac{1}{k^{3}} \right) \right)^{-(k+1)/2} \\
 & =1-\frac{(\tilde{\Delta} -\Delta)^{2}}{16k}+O\left( \frac{1}{k^{2}} \right)
\end{align}$$

which indicates that the product is divergent to zero. therefore, the vacuum amplitude $\displaystyle{\braket{0|\tilde{0}}=0}$, which means that the two vacua are orthogonal to each other.

notice that the product $\prod ^{\infty}_{n}(1+a_{n})$converges to a nonzero finite value if and only if the series $\sum ^{\infty}_{n}a_{n}$ converges.

---

if we consider the following off-shell expansion

$$\begin{align}
\phi(t,\vec{x}) & = \int _{0}^{\infty} \mathrm{d}k a_{k}(t)\phi _{k}(\vec{x}) \\
\phi _{k}(\vec{x}) & = C_{k} P^{|m|}_{-\frac{1}{2}+ik}(\sqrt{ 1+r^{2} }) \frac{e^{im\phi}}{\sqrt{ 2\pi }}\\
S & =\sum _{m=-\infty}^{\infty}\int _{0}^{\infty} \mathrm{d}k\int ^{t_{f}}_{t_{i}} \left(\frac{1}{2}\dot{a}^{2}_{k}-\frac{1}{2}\lambda(k)a_{k}^{2}\right) \\
\lambda(k) & =\frac{1}{4}+k^{2}+\mu ^{2}
\end{align}$$

$$\begin{align}

\end{align}$$

the vacuum amplitude between two theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$ is given by

$$\begin{align}
\braket{0|\tilde{0}} & =\prod _{m=-\infty}^{\infty}\prod \!\!\!\!\!\!\!\!\int\,\,\,\, _{k=0}^{\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\lambda}(k)}{\lambda(k)}}+\sqrt{\frac{\lambda(k)}{\tilde{\lambda}(k)}} \right) \right)^{-1/2} \\
 & =0
\end{align}$$

