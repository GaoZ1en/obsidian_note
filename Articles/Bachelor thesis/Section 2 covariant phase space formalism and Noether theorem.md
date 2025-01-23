## 形式理论

首先我们写下一般的场论作用量

$$\tag{2.1}
\begin{align}
S & =\int_{M}\mathbf{L}(\phi,\chi)+\int_{\partial M}\ell(\phi,\chi)
\end{align}
$$

设流形 $\displaystyle{M}$ 的维数为 $\displaystyle{d}$。其中 $\displaystyle{\mathbf{L}}$ 是流形 $\displaystyle{M}$ 上的 $\displaystyle{d}$-形式，$\displaystyle{\ell}$是流形边界 $\displaystyle{\partial M}$ 上的 $\displaystyle{d-1}$-形式，$\displaystyle{\phi}$ 是动力学场，$\displaystyle{\chi}$ 是背景场。我们假设流形 $\displaystyle{M}$ 不存在类光边界，即流形边界 $\displaystyle{\partial M}$ 可以分解为类空边界 $\displaystyle{\Gamma}$ 和类时边界 $\displaystyle{\Sigma_{\pm}}$，也就是 $\displaystyle{\partial M=\Gamma \cup \Sigma_{-}\cup \Sigma_{+}}$。动力学场 $\displaystyle{\phi}$ 的边界条件将取在类空边界 $\displaystyle{\Gamma}$ 上，（脚注，不同的边界条件对应不同的理论）而作用量取极值可以差出在 $\displaystyle{\Sigma_{\pm}=\Sigma_{+}-\Sigma_{-}}$ 上取值的项。对作用量做变分得到

$$\tag{2.2}
\begin{align}
\delta S & =\int_{M}\mathbf{E}\delta \phi+\int_{\partial M}(\Theta+\delta \ell) \\
 & =\int_{M}\mathbf{E}\delta \phi+\int_{\Gamma}(\Theta+\delta \ell)+\int_{\Sigma_{\pm}}(\Theta+\delta \ell)
\end{align}
$$

我们要求

$$\tag{2.3}
\begin{align}
(\Theta+\delta \ell)|_{\Gamma} & =\mathrm{d}C
\end{align}
$$