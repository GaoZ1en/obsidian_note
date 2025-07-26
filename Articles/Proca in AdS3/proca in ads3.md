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

$$\tag{1.6'}
\begin{align}
(1+\rho ^{2})\partial _{\rho}^{2}A^{t}+\frac{1+5\rho ^{2}}{\rho}\partial _{\rho}A^{t}+\frac{1}{\rho ^{2}}\partial _{\theta}^{2}A^{t}+(4-\mu ^{2})A^{t}+\frac{1}{1+\rho ^{2}}\partial _{t}\partial _{\rho}A^{\rho}+\frac{1-\rho ^{2}}{\rho(1+\rho ^{2})^{2}}\partial _{t}A^{\rho}+\frac{1}{1+\rho ^{2}}\partial _{t}\partial _{\theta}A^{\theta} & =0 \\
-(1+\rho ^{2})\partial _{t}\partial _{\rho}A^{t}-2\rho \partial _{t}A^{t}-\frac{1}{1+\rho ^{2}}\partial _{t}^{2}A^{\rho}+\frac{1}{\rho ^{2}}\partial _{\theta}^{2}A^{\rho}-\mu ^{2}A^{\rho}-(1+\rho ^{2})\partial _{\rho}\partial _{\theta}A^{\theta}-\frac{2(1+\rho ^{2})}{\rho}\partial _{\theta}A^{\theta} & =0 \\
\frac{1}{\rho ^{2}}\partial _{t}\partial _{\theta}A^{t}-\frac{1}{\rho ^{2}}\partial _{\rho}\partial _{\theta}A^{\rho}+\frac{1}{\rho ^{3}}\partial _{\theta}A^{\rho}-\frac{1}{1+\rho ^{2}}\partial _{t}^{2}A^{\theta}+(1+\rho ^{2})\partial _{\rho}^{2}A^{\theta}+\frac{3+5\rho ^{2}}{\rho}\partial _{\rho}A^{\theta}+(4-)\mu ^{2}A^{\theta} & =0
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
\mathcal{D}_{\ell} & =-\partial _{t}^{2}+\partial _{r}^{2}-(1+\rho ^{2})\left(\frac{\ell^{2}}{\rho ^{2}}+\mu ^{2}+\frac{1}{4}\right) \\
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
q_{k} & =\rho ^{j_{k}+1/2}(1+\rho ^{2})^{-(j_{k}+|\mu|+1)/2}{}_{2}F_{1}\left( -n,-n+\omega _{k};|\mu|+1;\frac{1}{1+\rho ^{2}} \right)e^{-i(2n+j_{k}+|\mu|+1)t}
\end{align}
$$

with energy level

$$\tag{1.11}
\begin{align}
\omega _{k} & =2n+j_{k}+|\mu|+1
\end{align}
$$

---
in general we have two sets of solutions. one of the series is given by

$$\tag{2.1}
\begin{align}
A^{t}_{1} & =-\frac{i}{2n+\ell+|\mu|+2}\rho ^{-1/2}(1+\rho ^{2})^{-1}\left(  (1+\rho ^{2})\partial _{\rho}q_{1}+\frac{\ell+1}{\rho}q_{1} +C_{1} \right)e^{im\theta} \\
A^{\rho}_{1} & =\rho ^{-1/2}q_{1}e^{im\theta} \\
A^{\theta}_{1} & =-i(-1)^{m}\rho ^{-3/2}q_{1}e^{im\theta}
\end{align}
$$

where

$$\tag{2.2}
\begin{align}
q_{1} & =\rho ^{\ell+3/2}(1+\rho ^{2})^{-(\ell+|\mu|+2)/2}{}_{2}F_{1}\left( -n,n+\ell+|\mu|+2;|\mu|+1;\frac{1}{1+\rho ^{2}} \right)e^{-i(2n+\ell+|\mu|+2)t}
\end{align}
$$

the lowest energy level of this series, $\displaystyle{n=0,\ell=m=0}$, is given by

$$\tag{.}
\begin{align}
q_{1} & =\rho ^{3/2}(1+\rho ^{2})^{-(|\mu|+2)/2}e^{-i(|\mu|+2)t}
\end{align}
$$

$$\tag{2.3}
\begin{align}
A^{t}_{1} & =-\frac{i}{|\mu|+2}\left( \frac{3}{2}+\rho-\left( |\mu|+\frac{1}{2} \right)\rho ^{2} \right) (1+\rho ^{2})^{-(|\mu|+2)/2}e^{-i(|\mu|+2)t} \\
A^{\rho}_{1} & =\rho(1+\rho ^{2})^{-(|\mu|+2)/2}e^{-i(|\mu|+2)t} \\
A^{\theta}_{1} & =-i(1+\rho ^{2})^{-(|\mu|+2)/2}e^{-i(|\mu|+2)t}
\end{align}
$$

it can be check that the solution satisfies the eom (1.4). the other series is given by

$$\tag{.}
\begin{align}
A^{t}_{2} & =-\frac{i}{2n+\ell+|\mu|}\rho ^{-1/2}(1+\rho ^{2})^{-1}\left(  (1+\rho ^{2})\partial _{\rho}q_{2}+\frac{1}{\rho}\left( \frac{1}{2}-\ell \right)q_{2}+C \right)e^{im\theta} \\
A^{\rho}_{2} & =\rho ^{-1/2}q_{2}e^{im\theta} \\
A^{\theta}_{2} & =i(-1)^{m}\rho ^{-3/2}q_{2}e^{im\theta}
\end{align}
$$

with

$$\tag{.}
\begin{align}
q_{2} & =\rho ^{\ell-1/2}(1+\rho ^{2})^{-(\ell+|\mu|)/2}{}_{2}F_{1}\left( -n,n+\ell+|\mu|;|\mu|+1;\frac{1}{1+\rho ^{2}} \right)e^{-i(2n+\ell+|\mu|)t}
\end{align}
$$

the lowest energy level of this series, $\displaystyle{n=0,\ell=m=0}$, is given by

$$\tag{.}
\begin{align}
A^{t}_{2} & =\frac{i}{|\mu|}(1+\rho ^{2})^{-|\mu|/2}\left( \frac{1}{2}+|\mu|(1+\rho ^{2}) \right)e^{-i|\mu|t} \\
A^{\rho}_{2} & =\rho ^{-1}(1+\rho ^{2})^{-|\mu|/2}e^{-i|\mu|t} \\
A^{\theta}_{2} & =i\rho ^{-2}(1+\rho ^{2})^{-|\mu|/2}e^{-i|\mu|t}
\end{align}
$$

Wen's result is

$$\tag{1.1}
\begin{align}
\sqrt{ k!\bar{k}! \frac{\Gamma(\mu+2+k)}{\Gamma(\mu+2)} \frac{\Gamma(\mu+\bar{k})}{\Gamma(\mu)} }A^{\mu}_{k,\bar{k}}(t,r,\theta) & =F_{k,\bar{k}}\tilde{\xi}^{\mu}_{-1}+2\bar{k}F_{k,\bar{k}-1}\tilde{\xi}^{\mu}_{0}+\bar{k}(\bar{k}-1)F_{k,\bar{k}-2}\tilde{\xi}^{\mu}_{1} \\
F_{k,\bar{k}}(t,r,\theta) & =(-1)^{k+\bar{k}} \frac{\Gamma(\mu+k+2)}{\Gamma(\mu+2)} \frac{\Gamma(\mu+\bar{k}+2)}{\Gamma(\mu+2)} (\sin r)^{|k-\bar{k}|}(\cos r)^{\mu+2} \\
 & \times{}_{2}F_{1}(-n,n+m+\mu+2;\mu+2;\cos ^{2}r)e^{i(k+\bar{k}+\mu+2)t} e^{i(k-\bar{k})\theta}
\end{align}
$$

with energy level $\displaystyle{\omega=k+\bar{k}+\mu+1}$.

PROTON_USE_WINED3D=1 %command% PROTON_HIDE_NVIDIA_GPU=0 PROTON_ENABLE_NVAPI=1