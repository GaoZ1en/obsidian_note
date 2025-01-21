## 基本方法

文中我们使用一系列等 $\displaystyle{z}$ 类空面 $\displaystyle{\Gamma_{z}}$ 对时空进行ADM分解。首先定义垂直于 $\displaystyle{\Gamma_{z}}$ 的单位法余矢

$$\tag{A.1}
\begin{align}
n_{\mu} & =N\partial_{\mu}z
\end{align}
$$

归一化要求

$$\tag{A.2}
\begin{align}
g^{\mu \nu}n_{\mu}n_{\nu} & =1
\end{align}
$$

定义 $\displaystyle{\Gamma_{z}}$ 上的诱导度规

$$\tag{A.3}
\begin{align}
\gamma_{\mu \nu} & =g_{\mu \nu}-n_{\mu}n_{\nu}
\end{align}
$$

以及外曲率 $\displaystyle{K_{\mu \nu}}$ 和类似于类时ADM分解中加速度 $\displaystyle{a_{\mu}}$ 的量

$$\tag{A.4}
\begin{align}
K_{\mu \nu} & =\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma} \\
a_{\mu} & =n^{\nu}\nabla_{\nu}n_{\mu}=-D_{\mu}\ln N
\end{align}
$$

其中 $\displaystyle{D_{\mu}}$ 是对应于 $\displaystyle{\gamma_{\mu \nu}}$ 的协变导数算符，对于一般的张量场 $\displaystyle{T^{\mu_{1}\dots \mu_{k}}_{~~~~~~~~~~~~\nu_{1}\dots \nu_{l}}}$，$\displaystyle{D_{\alpha}T^{\mu_{1}\dots \mu_{k}}_{~~~~~~~~~~~~\nu_{1}\dots \nu_{l}}}$ 定义为

$$\tag{A.5}
\begin{align}
D_{\alpha}T^{\mu_{1}\dots \mu_{k}}_{~~~~~~~~~~~~\nu_{1}\dots \nu_{l}} & =\gamma^{\mu_{1}}_{\rho_{1}}\dots \gamma^{\mu_{k}}_{\rho_{k}}\gamma^{\sigma_{1}}_{\nu_{1}}\dots \gamma^{\sigma_{l}}_{\nu_{l}}\nabla_{\alpha}T^{\rho_{1}\dots \rho_{k}}_{~~~~~~~~~~~~\sigma_{1}\dots \sigma_{l}}
\end{align}
$$

## Gauss关系、Codazzi关系和Ricci关系

考虑

$$\tag{A.6}
\begin{align}
\tilde{R}^\mu_{~\alpha\beta\gamma}\chi^{\alpha}&=[D_\beta,D_\gamma]\chi^\mu=(D_\beta D_\gamma-D_\gamma D_\beta)\chi^\mu\\
&=\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma(\nabla_\rho D_\sigma-\nabla_\sigma D_\rho)\chi^\alpha\\
&=\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\rho(\gamma^\alpha_\delta\gamma^\nu_\sigma\nabla_\nu\chi^\delta)-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma(\gamma^\alpha_\delta\gamma^\nu_\rho\nabla_\nu\chi^\delta)\\
&=-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\rho(n^\alpha n_\delta)\gamma^\nu_\sigma\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\nabla_\rho(n^\nu n_\sigma)\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\gamma^\nu_\sigma\nabla_\rho\nabla_\nu\chi^\delta\\
&+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma(n^\alpha n_\delta)\gamma^\nu_\rho\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\nabla_\sigma(n^\nu n_\rho)\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\gamma^\nu_\rho\nabla_\sigma\nabla_\nu\chi^\delta\\
&=-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\nu_\gamma\nabla_\rho n^\alpha n_\delta\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma n_\rho n^\nu\nabla_\nu\chi^\alpha+\gamma^\mu_\alpha\gamma^\nu_\beta\gamma^\sigma_\gamma\nabla_\sigma n^\alpha n_\delta\nabla_\nu\chi^\delta\\
&+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma n^\nu n_\rho\nabla_\nu\chi^\alpha+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma[\nabla_\rho,\nabla_\sigma]\chi^\alpha\\
&=-\gamma_\alpha^\mu\gamma^\nu_\gamma K_{\beta}^\alpha n_\delta\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\nu_\beta K_\gamma^\alpha n_\delta\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma R^\alpha_{~\delta\rho\sigma}\chi^\delta\\
&=(K_\beta^\mu K_{\gamma\delta}-K^\mu_\gamma K_{\beta\delta}+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma R^\alpha_{\delta\rho\sigma})\chi^\delta
\end{align}
$$

其中第一个等号使用了Riemann张量 $\displaystyle{\tilde{R}^{\mu}_{~\alpha \beta \gamma}}$ 的定义；第二和第三个等号使用了协变导数 $\displaystyle{D_{\alpha}}$ 的定义；第四个等号使用了 $\displaystyle{\gamma_{\mu \nu}}$ 的定义；第五个等号使用了Leibniz律；第六和第七个等号使用了外曲率 $\displaystyle{K_{\mu \nu}}$ 和Riemann张量 $\displaystyle{R^{\rho}_{~\sigma \mu \nu}}$ 的定义。从而有Riemann张量的Gauss关系

$$\tag{A.7}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\gamma^{\rho}_{\gamma}\gamma^{\sigma}_{\delta}R_{\mu \nu \rho \sigma} & =\tilde{R}_{\alpha \beta \gamma \delta}-K_{\alpha \gamma}K_{\beta \delta}+K_{\alpha \delta}K_{\beta \gamma}
\end{align}
$$

缩并指标 $\displaystyle{\alpha}$ 和 $\displaystyle{\gamma}$，得到

$$\tag{A.8}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}R_{\mu \nu}+n^{\mu}\gamma^{\nu}_{\alpha}n^{\rho}\gamma^{\sigma}_{\beta}R_{\mu \nu \rho \sigma} & =\tilde{R}_{\alpha \beta}+K_{\alpha \gamma}K^{\gamma}_{\beta}-KK_{\alpha \beta}
\end{align}
$$

进一步缩并指标 $\displaystyle{\alpha}$ 和 $\displaystyle{\beta}$，得到

$$\tag{A.9}
\begin{align}
R+2n^{\mu}n^{\nu}R_{\mu \nu} & =\tilde{R}+K_{\alpha \beta}K^{\alpha \beta}-K^{2}
\end{align}
$$

然后将 $\displaystyle{R^{\mu}_{~\nu \rho \sigma}n^{\nu}=[\nabla_{\rho},\nabla_{\sigma}]n^{\mu}}$ 投影到 $\displaystyle{\Gamma}$ 上，得到

$$\tag{A.10}
\begin{align}
\gamma^{\alpha}_{\mu}n^{\nu}\gamma^{\rho}_{\beta}\gamma^{\sigma}_{\gamma}R^{\mu}_{~\nu \rho \sigma} & =\gamma^{\alpha}_{\mu}\gamma^{\rho}_{\beta}\gamma^{\sigma}_{\gamma}(\nabla_{\rho}\nabla_{\sigma}-\nabla_{\sigma}\nabla_{\rho})n^{\mu} \\
 & =\gamma^{\alpha}_{\mu}\gamma^{\rho}_{\beta}\gamma^{\sigma}_{\gamma}\nabla_{\rho}(K^{\mu}_{\sigma}+a^{\mu}n_{\sigma})-\gamma^{\alpha}_{\mu}\gamma^{\rho}_{\beta}\gamma^{\sigma}_{\gamma}\nabla_{\sigma}(K^{\mu}_{\rho}+a^{\mu}n_{\rho}) \\
 & =D_{\beta}K^{\alpha}_{\gamma}+K_{\beta \gamma}\gamma^{\alpha}_{\mu}a^{\mu}-D_{\gamma}K^{\alpha}_{\beta}-K_{\gamma \beta}\gamma^{\alpha}_{\mu}a^{\mu} \\
 & =D_{\beta}K^{\alpha}_{\gamma}-D_{\gamma}K^{\alpha}_{\beta}
\end{align}
$$

其中第一个等号使用了Riemann张量 $\displaystyle{R^{\mu}_{~\nu \rho \sigma}}$ 的定义；第二个等号使用了

$$\tag{A.11}
\begin{align}
K_{\mu \nu} & =\gamma^{\rho}_{\mu}\nabla_{\rho}n_{\nu} \\
 & =(\delta^{\rho}_{\mu}-n^{\rho}n_{\mu})\nabla_{\rho}n_{\nu} \\
 & =\nabla_{\mu}n_{\nu}-a_{\nu}n_{\mu} \\
\implies \nabla_{\mu}n_{\nu} & =K_{\mu \nu}+a_{\nu}n_{\mu}
\end{align}
$$

第三个等号使用了外曲率 $\displaystyle{K_{\mu \nu}}$ 和 $\displaystyle{a_{\mu}}$ 的定义。从而有Riemann张量的Codazzi关系

$$\tag{A.12}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\gamma^{\rho}n^{\sigma}R_{\mu \nu \rho \sigma} & =D_{\alpha}K_{\beta \gamma}-D_{\beta}K_{\alpha \gamma}
\end{align}
$$

缩并指标 $\displaystyle{\alpha}$ 和 $\displaystyle{\gamma}$，得到Ricci张量的Codazzi关系

$$\tag{A.13}
\begin{align}
\gamma^{\mu}_{\alpha}n^{\nu}R_{\mu \nu} & =D_{\beta}K^{\beta}_{\alpha}-D_{\alpha}K
\end{align}
$$

最后将 $\displaystyle{R^{\mu}_{~\nu \rho \sigma}n^{\nu}n^{\sigma}=n^{\sigma}[\nabla_{\rho},\nabla_{\sigma}]n^{\mu}}$ 投影到 $\displaystyle{\Gamma}$ 上，得到

$$\tag{A.14}
\begin{align}
\gamma_{\alpha \mu}n^{\nu}\gamma^{\rho}_{\beta}n^{\sigma}R^{\mu}_{~\nu \rho \sigma} & =\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}(\nabla_{\rho}\nabla_{\sigma}-\nabla_{\sigma}\nabla_{\rho})n^{\mu} \\
 & =\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}\nabla_{\rho}(K_{\sigma}^{\mu}+D^{\mu}\ln Nn_{\sigma})-\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}\nabla_{\sigma}(K^{\mu}_{\rho}+D^{\mu}\ln Nn_{\rho}) \\
 & =\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}\nabla_{\rho}K^{\mu}_{\sigma}+\gamma_{\alpha \mu}\gamma^{\rho}_{\beta}\nabla_{\rho}D^{\mu}\ln N+\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}D^{\mu}\ln N\nabla_{\rho}n_{\sigma} \\
 & -\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}\nabla_{\sigma}K^{\mu}_{\rho}-\gamma_{\alpha \mu}n^{\sigma}\gamma^{\rho}_{\beta}D^{\mu}\ln N\nabla_{\sigma}n_{\rho} \\
 & =-\gamma_{\alpha \mu}\gamma^{\rho}_{\beta}\nabla_{\rho}n^{\sigma}K^{\mu}_{\sigma}+D_{\beta}D_{\alpha}\ln N+D_{\alpha}\ln Nn^{\sigma}K_{\beta \sigma}-\gamma_{\alpha \mu}\gamma^{\rho}_{\beta}n^{\sigma}\nabla_{\sigma}K^{\mu}_{\rho}-D_{\alpha}\ln ND_{\beta}\ln N \\
 & =-K_{\alpha \sigma}K^{\sigma}_{\beta}-\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}+\frac{1}{N}D_{\beta}D_{\alpha}N
\end{align}
$$

其中第一个等号使用了Riemann张量 $\displaystyle{R^{\mu}_{~\nu \rho \sigma}}$ 的定义；第二个等号使用了(A.11)和 $\displaystyle{a^{\mu}}$ 的定义；第三个等号使用了Leibniz律；第四个等号使用了 $\displaystyle{a^{\mu}}$ 的定义；第五个等号使用了外曲率 $\displaystyle{K_{\mu \nu}}$ 的定义以及

$$\tag{A.15}
\begin{align}
D_{\mu}D_{\nu}\ln N+D_{\mu}\ln ND_{\nu}\ln N & =\frac{1}{N}D_{\mu}D_{\nu}N
\end{align}
$$

从而得到Riemann张量的Ricci关系

$$\tag{A.16}
\begin{align}
\gamma^{\mu}_{\alpha}n^{\nu}\gamma^{\rho}_{\beta}n^{\sigma}R_{\mu \nu \rho \sigma} & =-\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}-K_{\alpha \mu}K^{\mu}_{\beta}+\frac{1}{N}D_{\alpha}D_{\beta}N
\end{align}
$$

将(A.16)代入(A.8)，得到

$$\tag{A.17}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}R_{\mu \nu} & =\tilde{R}_{\alpha \beta}+\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}+2K_{\alpha \gamma}K^{\gamma}_{\beta}-KK_{\alpha \beta}-\frac{1}{N}D_{\alpha}D_{\beta}N
\end{align}
$$

进一步缩并指标 $\displaystyle{\alpha}$ 和 $\displaystyle{\gamma}$，得到

$$\tag{A.18}
\begin{align}
R=\tilde{R}-K^{2}-K_{\alpha \beta}K^{\alpha \beta}-2n^{\alpha}\nabla_{\alpha}K-\frac{2}{N}D^{2}N
\end{align}
$$

## 诱导度规和外曲率的变分

由归一化条件(A.2)可知 $\displaystyle{\delta(g^{\mu \nu}n_{\mu}n_{\nu})=0}$，展开得到

$$\tag{A.19}
\begin{align}
\delta n_{\mu} & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma} \\
\delta n^{\mu} & =-\frac{1}{2}n^{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}
\end{align}
$$

从而得到诱导度规 $\displaystyle{\gamma_{\mu \nu}}$ 的变分

$$\tag{A.20}
\begin{align}
\delta \gamma_{\mu \nu} & =\delta(g_{\mu \nu}-n_{\mu}n_{\nu}) \\
 & =\delta g_{\mu \nu}-n_{\mu}n_{\nu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}
\end{align}
$$

下面我们计算诱导度规 $\displaystyle{\gamma_{\mu \nu}}$ 和外曲率 $\displaystyle{K_{\mu \nu}}$ 变分在 $\displaystyle{\Gamma}$ 上的投影

$$\tag{A.21}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta \gamma_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}(\delta g_{\mu \nu}-n_{\mu}n_{\nu}n^{\rho}n^{\sigma}\delta g_{\mu \nu}) \\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}
\end{align}
$$

$$\tag{A.22}
\begin{align}

\end{align}
$$

总之，有

$$\tag{A.23}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta \gamma_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu} \\
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu} & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}+\frac{1}{2}K^{\mu}_{\beta}\gamma^{\nu}_{\alpha}\delta g_{\mu \nu} \\
 & -\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}D_{\beta}(\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}\\
 & +\frac{1}{2N}D_{\beta}N\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2N}D_{\alpha}N\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu} 
\end{align}
$$

进一步计算他们在无穷小变换下的行为

$$\tag{A.24}
\begin{align}

\end{align}
$$

$$\tag{A.25}
\begin{align}

\end{align}
$$

$$\tag{A.26}
\begin{align}

\end{align}
$$

总之，有

$$\tag{A.27}
\begin{align}
X_{\xi}\cdot \delta n_{\mu} & =[n^{\rho}\nabla_{\rho}(n_{\sigma}\xi^{\sigma})-a_{\rho}\gamma^{\rho}_{\sigma}\xi^{\sigma}]n_{\mu} \\
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta\gamma_{\mu \nu} & =D_{\alpha}(\gamma_{\beta \gamma}\xi^{\gamma})+D_{\beta}(\gamma_{\alpha \gamma}\xi^{\gamma})+2K_{\alpha \beta}n_{\gamma}\xi^{\gamma} \\
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta K_{\mu \nu} & =D_{\alpha}(\gamma^{\mu}_{\nu}\xi^{\nu})K_{\mu \beta}+D_{\beta}(\gamma^{\mu}_{\nu}\xi^{\nu})K_{\alpha \mu}+D_{\mu}K_{\alpha \beta}(\gamma^{\mu}_{\nu}\xi^{\nu})-D_{\alpha}D_{\beta}(n_{\mu}\xi^{\mu}) \\
 & +\left( \gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}+2K_{\alpha \mu}K_{\beta}^{\mu}+\frac{1}{N}D_{\alpha}D_{\beta}N \right)n_{\sigma}\xi^{\sigma}
\end{align}
$$

这里我们仍取

$$\tag{A.28}
\begin{align}
X_{\xi}=\int_{M}\mathrm{d}^{3}x\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}}
\end{align}
$$
