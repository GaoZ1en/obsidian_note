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
q_{k} & =\rho ^{j_{k}+1/2}(1+\rho ^{2})^{n-\omega _{k}/2}{}_{2}F_{1}\left( -n,-n+\omega _{k};j_{k}+1;\frac{\rho ^{2}}{1+\rho ^{2}} \right)
\end{align}
$$

and

$$\tag{1.11}
\begin{align}
A_{\rho} & =\left( \mathcal{N}_{1}\rho ^{\ell-1}(1+\rho ^{2})^{-(\ell+\mu)/2-1}{}_{2}F_{1}\left( -n,n+\ell+\mu;\mu+1;\frac{1}{1+\rho ^{2}} \right)e^{-i\omega _{k}t}+\mathcal{N}_{2}\rho ^{\ell+1}(1+\rho ^{2})^{-(\ell+\mu)/2-2}{}_{2}F_{1}\left( -n,n+\ell+\mu+2;\mu+1; \frac{1}{1+\rho ^{2}} \right) e^{-i\omega _{k}t}\right)e^{im\theta} \\
A_{\theta} & =i\left( \mathcal{N}_{1}\rho ^{\ell}(1+\rho ^{2})^{-(\ell+\mu)/2}{}_{2}F_{1}\left( -n,n+\ell+\mu;\mu+1; \frac{1}{1+\rho ^{2}} \right)e^{-i\omega _{k}t}-\mathcal{N}_{2}\rho ^{\ell+2}(1+\rho ^{2})^{-(\ell+\mu)/2-1}{}_{2}F_{1}\left( -n,n+\ell+\mu+2;\mu+1; \frac{1}{1+\rho ^{2}} \right) e^{-i\omega _{2}t}\right)e^{im\theta}
\end{align}
$$

with

$$\tag{1.11}
\begin{align}
\omega _{k} & =2n+j_{k}+\mu+1
\end{align}
$$

---

Wen's result is

$$\tag{2.1}
\begin{align}
\sqrt{ k!\bar{k}! \frac{\Gamma(\mu+2+k)\Gamma(\mu+\bar{k})}{\Gamma(\mu+2)\Gamma(\mu)} }A^{\dagger \mu}_{k,\bar{k}}(t,r,\theta) & =F_{k,\bar{k}}\tilde{\xi}^{\mu}_{-1}+2\bar{k}F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}-1)F_{k,\bar{k}-2}\tilde{\xi} ^{\mu}_{1} \\
F_{k,\bar{k}} & =(-1)^{k+\bar{k}} \frac{\Gamma(\mu+2+k)}{\Gamma(\mu+2)} \frac{\Gamma(\mu+2+\bar{k})}{\Gamma(\mu+2)} (\sin r)^{|k-\bar{k}|}(\cos r)^{\mu+2} \\
 &\times{}_{2}F_{1}(-n,n+m+\mu+2;\mu+2;\cos ^{2}r)e^{i(k+\bar{k}+\mu+2)t} e^{i(k-\bar{k})\theta}
\end{align}
$$

with

$$\tag{2.3}
\begin{align}
\omega _{k,\bar{k}} & =k+\bar{k}+\mu+1 \\
m & =|k-\bar{k}|
\end{align}
$$

we can see that in Wen's result, there are three hypergeometric functions $\displaystyle{F(\beta,\gamma),F(\beta-1,\gamma),F(\beta-2,\gamma)}$ (here we only care the second and the third parameters) and in my result, there are only two hypergeometric functions $\displaystyle{F(\beta-2,\gamma-1),F(\beta,\gamma-1)}$. 

Gauss prove that every three hypergeometric functions $\displaystyle{F(\alpha+l,\beta+m;\gamma+n;z)}$s satisfy the following linear relation

$$
\tag{2.4}
\begin{align}
A_{1}F_{1}+A_{2}F_{2}+A_{3}F_{3} & =0
\end{align}
$$

here $\displaystyle{A_{1},A_{2},A_{3}}$ are rational function of $\displaystyle{z}$. so it is possible to use

$$\tag{2.5}
\begin{align}
A_{1}F(\gamma-1)+A_{2}F+A_{3}F(\beta-1)=0 \\
B_{1}F(\gamma-1)+B_{2}F+B_{3}F(\beta+1)=0
\end{align}
$$
to express my result in terms of Wen's result...

$$\tag{.}
\begin{align}
S & =-\frac{1}{2}\int _{\Sigma _{f}}^{\Sigma _{i}} \mathrm{d}^{d}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi) \\
\delta S & =\int _{\Sigma _{f}}^{\Sigma _{i}}\mathrm{d}^{d}x\sqrt{ -g }(\nabla ^{2}-m^{2})\delta \phi+\theta|^{\Sigma _{f}}_{\Sigma _{i}} \\
\theta & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ h } n^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$