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

then we can expand each normalized positive-frequency mode of the second theory in terms of the normalized modes of the first theory. write

$$\begin{align}
u _{n}(t,x) & =\frac{1}{\sqrt{ 2L\omega _{n} }}e^{-i\omega _{n}t}e^{ik_{n}x}, \\
\tilde{u}_{n}(t,x) & =\frac{1}{\sqrt{ 2L\tilde{\omega} _{n} }}e^{-i\tilde{\omega} _{n}t}e^{ik_{n}x}.
\end{align}$$

Since $\displaystyle{u_{-n}^{*}}$ has the same spatial dependence as $\displaystyle{\tilde{u}_{n}}$, the mode matching is

$$\begin{align}
\tilde{u}_{n} & =\alpha _{n}u _{n}-\beta _{n}u_{-n}^{*},
\end{align}$$

where

$$\begin{align}
\alpha _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right), \\
\beta _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}-\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right).
\end{align}$$

it is convenient to write $\displaystyle{\tilde{\omega} _{n}=\omega _{n}e^{-2\theta _{n}}}$, then

$$\begin{align}
\alpha _{n} & =\cosh \theta _{n}, \\
\beta _{n} & =-\sinh \theta _{n}.
\end{align}$$

The momentum label in the mixing term is important. With the above convention, the creation and annihilation operators are related by

$$\begin{align}
\tilde{a} _{n} & =\alpha _{n}a _{n}+\beta _{n}^{*}a _{-n}^{\dagger}, \\
\tilde{a} _{n}^{\dagger} & =\alpha _{n}^{*}a _{n}^{\dagger}+\beta _{n}a _{-n}.
\end{align}$$

This preserves the canonical commutator because

$$\begin{align}
|\alpha _{n}|^{2}-|\beta _{n}|^{2} & =1.
\end{align}$$

the vacuum amplitude can be computed as

$$\begin{align}
\braket{0|\tilde{0}} & =\prod _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ \cosh \theta _{n} }} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right) \right)^{-1/2} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1/2} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2} \prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2}\prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \left( \frac{1+\left( \frac{\tilde{\mu}L}{2\pi n} \right)^{2}}{1+\left( \frac{\mu L}{2\pi n} \right)^{2}} \right)^{1/4}+ \left( \frac{1+\left( \frac{L\mu}{2\pi n} \right)^{2}}{1+\left( \frac{L\tilde{\mu}}{2\pi n} \right)^{2}} \right)^{1/4} \right) \right)^{-1} \\
\end{align}$$


