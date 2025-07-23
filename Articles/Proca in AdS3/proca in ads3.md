we will write down how we get these results in detail. we choose the following coordinates

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+\rho^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}\rho ^{2}}{1+\rho ^{2}}+\rho ^{2}\mathrm{d}\theta ^{2}
\end{align}
$$

make the following ansatz

$$\tag{1.2}
\begin{align}
A_{a} & =\psi _{a}(t,\rho)e^{im\theta} \\
A_{i} & =im\phi(t,\rho)e^{im\theta}
\end{align}
$$

the stress tensor $\displaystyle{F_{\mu \nu}=\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu}}$ is given by

$$\tag{1.3}
\begin{align}
F^{ab} & =(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla} ^{b}\psi ^{a})e^{im\theta} \\
F^{a\theta} & =\frac{im}{\rho ^{2}}(\tilde{\nabla} ^{a}\phi-\psi ^{a})e^{im\theta} \\
\end{align}
$$

here $\displaystyle{a,b=\left\{t,\rho\right\}}$. the eom is given by

$$\tag{1.4}
\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu^{2}A^{\nu} \\
\nabla _{\mu}A^{\mu} & =0
\end{align}
$$

which is equivalent to

$$\tag{1.5}
\begin{align}
\tilde{\nabla}_{b}F^{ab}+\tilde{\nabla} _{i}F^{ai}+\frac{\partial _{b}\rho}{\rho}F^{ab}+\mu ^{2}A^{a} & =0 \\
\tilde{\nabla}_{b}F^{ib}+ \frac{\partial _{b}\rho}{\rho}F^{ib}+\mu ^{2}A^{i} & =0 \\
\tilde{\nabla}_{a}A^{a}+\tilde{\nabla}_{i}A^{i}+ \frac{\partial _{a}\rho}{\rho}A^{a} & =0
\end{align}
$$

insert (5.2) and (5.3) into (5.5), we have

$$\tag{1.6}
\begin{align}
\tilde{\nabla}_{b}(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla}^{b}\psi ^{a})-\frac{\ell^{2}}{\rho ^{2}}(\tilde{\nabla}^{a}\phi-\psi ^{a})+\frac{\partial _{b}\rho}{\rho}(\tilde{\nabla}^{a}\psi ^{b}-\tilde{\nabla}^{b}\psi ^{a})+\mu ^{2}\psi ^{a} & =0 \\
\tilde{\nabla}_{b}\tilde{\nabla}^{b}\phi- \frac{\partial _{b}\rho}{\rho}\partial ^{b}\phi-\mu ^{2}\phi-\tilde{\nabla}_{b}\psi ^{b}+ \frac{\partial _{b}\rho}{\rho}\psi ^{b} & =0 \\
\tilde{\nabla}_{b}\psi ^{b}+ \frac{\partial _{b}\rho}{\rho}\psi ^{b}-\frac{\ell ^{2}}{\rho ^{2}}\phi & =0
\end{align}
$$

here we denote $\displaystyle{\ell=|m|}$. define

$$\tag{1.7}
\begin{align}
q_{0} & =\psi _{t}\rho^{\frac{1}{2}} \\
q_{1} & =\frac{\psi _{\rho}(1+\rho ^{2})-\ell\phi \rho ^{-1}}{2}\rho ^{\frac{1}{2}} \\
q_{2} & =\frac{\psi _{\rho}(1+\rho ^{2})+\ell\phi \rho ^{-1}}{2}\rho ^{\frac{1}{2}}
\end{align}
$$

then (5.6) can be rewritten as

$$\tag{1.8}
\begin{align}
\mathcal{D}_{\ell}q_{0}+2\rho(\partial _{t}q_{1}+\partial _{t}q_{2}-\partial _{r}q_{0}) & =0 \\
\mathcal{D}_{j_{k}}q_{k} & =0 \\
\partial _{t}q_{0}-\partial _{r}(q_{1}+q_{2}) & =\frac{1}{\rho}\left( \frac{1}{2}-\ell \right)q_{2}+\frac{1}{\rho}\left( \ell+1 \right)q_{1}
\end{align}
$$

where

$$\tag{1.9}
\begin{align}
\mathcal{D}_{\ell} & =-\partial _{t}^{2}+\partial _{r}^{2}-\left(\frac{\ell^{2}}{\rho ^{2}}+\mu ^{2}+\frac{1}{4}\right) \\
r & =\arctan \rho \\
j_{k} & =\begin{cases}
\ell+1 & \ell \in \mathbb{N}\ \text{if } k=1 \\
\ell-1 & \ell \in \mathbb{N}\ \text{if } k=2
\end{cases}
\end{align}
$$

the solution of the above equation is

$$\tag{1.10}
\begin{align}
q_{k} & =\rho ^{j_{k}+1/2}(1+\rho ^{2})^{n-\omega _{k}/2}{}_{2}F_{1}\left( -n,-n+\omega _{k};j_{k}+1;\frac{\rho ^{2}}{1+\rho ^{2}} \right)e^{-i\omega _{k}t}
\end{align}
$$
