# Gauss, Codazzi Relations and Ricci equation

## Gauss, Codazzi Relations and Ricci equation

$$\begin{aligned}
\tilde{R}^\mu_{\alpha\beta\gamma}\chi^{\alpha}&=[D_\beta,D_\gamma]\chi^\mu=(D_\beta D_\gamma-D_\gamma D_\beta)\chi^\mu\\
&=\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma(\nabla_\rho D_\sigma-\nabla_\sigma D_\rho)\chi^\alpha\\
&=\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\rho(\gamma^\alpha_\delta\gamma^\nu_\sigma\nabla_\nu\chi^\delta)-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma(\gamma^\alpha_\delta\gamma^\nu_\rho\nabla_\nu\chi^\delta)\\
&=-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\rho(n^\alpha n_\delta)\gamma^\nu_\sigma\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\nabla_\rho(n^\nu n_\sigma)\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\gamma^\nu_\sigma\nabla_\rho\nabla_\nu\chi^\delta\\
&+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma(n^\alpha n_\delta)\gamma^\nu_\rho\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\nabla_\sigma(n^\nu n_\rho)\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\gamma^\alpha_\delta\gamma^\nu_\rho\nabla_\sigma\nabla_\nu\chi^\delta\\
&=-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\nu_\gamma\nabla_\rho n^\alpha n_\delta\nabla_\nu\chi^\delta-\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma n_\rho n^\nu\nabla_\nu\chi^\alpha+\gamma^\mu_\alpha\gamma^\nu_\beta\gamma^\sigma_\gamma\nabla_\sigma n^\alpha n_\delta\nabla_\nu\chi^\delta\\
&+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma n^\nu n_\rho\nabla_\nu\chi^\alpha+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma[\nabla_\rho,\nabla_\sigma]\chi^\alpha\\
&=-\gamma_\alpha^\mu\gamma^\nu_\gamma K_{\beta}^\alpha n_\delta\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\nu_\beta K_\gamma^\alpha n_\delta\nabla_\nu\chi^\delta+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma R^\alpha_{\delta\rho\sigma}\chi^\delta\\
&=(K_\beta^\mu K_{\gamma\delta}-K^\mu_\gamma K_{\beta\delta}+\gamma^\mu_\alpha\gamma^\rho_\beta\gamma^\sigma_\gamma R^\alpha_{\delta\rho\sigma})\chi^\delta
\end{aligned}$$

Therefore we have

$$\begin{aligned}
\gamma_\alpha^\mu\gamma_\beta^\nu\gamma^\rho_\gamma\gamma^\sigma_\delta R_{\mu\nu\rho\sigma}=\tilde R_{\alpha\beta\gamma\delta}-K_{\alpha\gamma}K_{\delta\beta}+K_{\alpha\delta}K_{\gamma\beta}
\end{aligned}$$

Contracting indices $\alpha$ and $\gamma$, we have

$$\begin{align}
\gamma^\mu_\alpha\gamma^\nu_\beta R_{\mu\nu}+n^\mu\gamma^\nu_\alpha n^\rho\gamma^\sigma_\beta R_{\mu\nu\rho\sigma}=\tilde R_{\alpha\beta}+K_{\alpha\gamma}K^{\gamma}_\beta-KK_{\alpha\beta}
\end{align}$$

Further contracting indices $\alpha$ and $\beta$, we have

$$\begin{align}
R+2n^\mu n^\nu R_{\mu\nu}=\tilde R+K_{\alpha\beta}K^{\alpha\beta}-K^2
\end{align}$$

Then project $R^\mu_{\nu\rho\sigma}n^\nu=[\nabla_\rho,\nabla_\sigma]n^\mu$ on $\Gamma$, we have

$$\begin{aligned}
\gamma^\alpha_\mu n^\nu\gamma^\rho_\beta\gamma^\sigma_\gamma R^\mu_{\nu\rho\sigma}&=\gamma^\alpha_\mu\gamma^\rho_\beta\gamma^\sigma_\gamma(\nabla_\rho\nabla_\sigma-\nabla_\sigma\nabla_\rho) n^\mu\\
&=\gamma^\alpha_\mu\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\rho(K_\sigma^\mu+a^\mu n_\sigma)-\gamma^\alpha_\mu\gamma^\rho_\beta\gamma^\sigma_\gamma\nabla_\sigma(K_\rho^\mu+a^\mu n_\rho)\\
&=D_\beta K_\gamma^\alpha+K_{\beta\gamma}\gamma^\alpha_\mu a^\mu-D_\gamma K_\beta^\alpha+K_{\gamma\beta}\gamma^\alpha_\mu a^\mu\\
&=D_\beta K_\gamma^\alpha -D_\gamma K_\beta^\alpha
\end{aligned}$$

Therefore we have

$$\begin{align}
\gamma^\mu_\alpha\gamma^\nu_\beta\gamma^\rho_\gamma n^\sigma R_{\mu\nu\rho\sigma} =D_\alpha K_{\beta\gamma}-D_\beta K_{\alpha\gamma}
\end{align}$$

Again, contracting indices $\alpha$ and $\gamma$, we have

$$\begin{align}
\gamma^\mu_\beta n^\nu R_{\mu\nu}=D_\beta K^\beta_\alpha-D_\alpha K
\end{align}$$

Finally project $R^\mu_{\nu\rho\sigma}n^\nu n^\sigma=n^\sigma[\nabla_\rho,\nabla_\sigma]n^\mu$ on $\Gamma$, we have

$$\begin{aligned}
\gamma_{\alpha\mu}n^\nu\gamma^\rho_\beta n^\sigma R^\mu_{\nu\rho\sigma}&=\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta (\nabla_\rho\nabla_\sigma-\nabla_\sigma\nabla_\rho)n^\mu\\
&=\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta\nabla_\rho(K_\sigma^\mu+D^\mu\ln N n_\sigma)-\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta\nabla_\sigma(K_\rho^\mu+D^\mu\ln Nn_\rho)\\
&=\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta\nabla_\rho K_\sigma^\mu+\gamma_{\alpha\mu}\gamma^\rho_\beta\nabla_\rho D^\mu\ln N+\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta D^\mu\ln N\nabla_\rho n_\sigma\\
&-\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta\nabla_\sigma K_\rho^\mu-\gamma_{\alpha\mu}n^\sigma\gamma^\rho_\beta D^\mu\ln N\nabla_\sigma n_\rho\\
&=-\gamma_{\alpha\mu}\gamma^\rho_\beta\nabla_\rho n^\sigma K_\sigma^\mu+D_\beta D_\alpha\ln N+D_\alpha\ln N n^\sigma K_{\beta\sigma}\\
&-\gamma_{\alpha\mu}\gamma^\rho_\beta n^\sigma\nabla_\sigma K_\rho^\mu-D_\alpha\ln ND_\beta\ln N\\
&=-K_{\alpha\sigma}K^\sigma_{\beta}-\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}+\frac{1}{N}D_\beta D_\alpha N
\end{aligned}$$

Therefore we have

$$\begin{align}
\gamma^\mu_\alpha n^\nu\gamma^\rho_\beta n^\sigma R_{\mu\nu\rho\sigma}=-\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}-K_{\alpha\sigma}K^\sigma_{\beta}+\frac{1}{N}D_\beta D_\alpha N
\end{align}$$

Insert (9) into (3), we have

$$\begin{align}
\gamma^\mu_\alpha\gamma^\nu_\beta R_{\mu\nu}=\tilde R_{\alpha\beta}+\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}+2K_{\alpha\gamma}K^{\gamma}_\beta-KK_{\alpha\beta}-\frac{1}{N}D_\beta D_\alpha N
\end{align}$$

Finally contracting indices $\alpha$ and $\beta$, we have

$$\begin{align}
R=\tilde R-K^2-K_{\alpha\beta}K^{\alpha\beta}-2n^\alpha\nabla_\alpha K-\frac{2}{N}D^2N
\end{align}$$

## Variations and Infinitesimal transformations of $\gamma_{\mu\nu}$ and $K_{\mu\nu}$

From $g^{\mu\nu}n_\mu n_\nu=1$, we have

$$\begin{aligned}
0=\delta(g^{\mu\nu}n_\mu n_\nu)&=\delta g^{\mu\nu}n_\mu n_\nu+g^{\mu\nu}\delta n_\mu n_\nu+g^{\mu\nu}n_\mu\delta n_\nu\\
&=-g^{\mu\rho}g^{\nu\sigma}\delta g_{\rho\sigma} n_\mu n_\nu+2n^\mu\delta n_\mu\\
&=-n^\rho n^\sigma\delta g_{\rho\sigma}+2n^\mu\delta n_{\mu}\\
\Rightarrow \delta n_\mu&=\frac{1}{2}n_\mu n^\rho n^\sigma\delta g_{\rho\sigma}
\end{aligned}$$

Then the variation of the induced metric and its projection onto $\Gamma$ are

$$\begin{aligned}
\delta\gamma_{\mu\nu}&=\delta g_{\mu\nu}-\delta n_\mu n_\nu-n_\mu\delta n_\nu\\
&=\delta g_{\mu\nu}-n_\mu n_\mu n^\rho n^\sigma\delta g_{\rho\sigma}\\
\gamma^\mu_\alpha\gamma^\nu_\beta\delta\gamma_{\mu\nu}&=\gamma^\mu_\alpha\gamma^\nu_\beta\delta g_{\mu\nu}
\end{aligned}$$

We can further calculate the projection onto $\Gamma$ of the infinitesimal transformation of induced metric

$$\begin{aligned}
\gamma^\mu_\alpha\gamma^\nu_\beta(X_\xi\cdot\delta\gamma_{\mu\nu})&=\gamma^\mu_\alpha\gamma^\nu_\beta{\cal L}_\xi g_{\mu\nu}=\gamma^\mu_\alpha\gamma^\nu_\beta(\nabla_\mu\xi_\nu+\nabla_\nu\xi_\mu)\\
&=\gamma^\mu_\alpha\gamma^\nu_\beta\nabla_\mu((\gamma_{\nu\rho}+n_\nu n_\rho)\xi^\rho)+\gamma^\mu_\alpha\gamma^\nu_\beta\nabla_\nu((\gamma_{\mu\rho}+n_\mu n_\rho)\xi^\rho)\\
&=D_\alpha(\gamma_{\beta\gamma}\xi^\gamma)+D_\beta(\gamma_{\alpha\gamma}\xi^\gamma)+\gamma^\mu_\alpha\gamma^\nu_\beta(\nabla_\mu n_\nu+\nabla_\nu n_\mu)n_\rho\xi^\rho\\
&=D_\alpha(\gamma_{\beta\gamma}\xi^\gamma)+D_\beta(\gamma_{\alpha\gamma}\xi^\gamma)+2K_{\alpha\beta}n_\gamma\xi^\gamma
\end{aligned}$$

The projection of the variation of the extrinsic curvature onto $\Gamma$ and the infinitesimal transformation of it are

$$\begin{aligned}
\gamma^\mu_\alpha\gamma^\nu_\beta\delta K_{\mu\nu}&=\frac{1}{2}\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho(\gamma^\sigma_\nu\gamma^\lambda_\nu\delta g_{\sigma\lambda})+\frac{1}{2}K_\alpha^\mu\gamma^\nu_\beta\delta g_{\mu\nu}+\frac{1}{2}K_\beta^\mu\gamma^\nu_\alpha\delta g_{\mu\nu}-\frac{1}{2}K_{\alpha\beta}n^\mu n^\nu\delta g_{\mu\nu}\\
&-\frac{1}{2}D_\alpha(\gamma^\mu_\beta n^\nu\delta g_{\mu\nu})-\frac{1}{2}D_\beta(\gamma^\mu_\alpha n^\nu\delta g_{\mu\nu})+\frac{1}{2N}D_\alpha N\gamma^\mu_\beta n^\nu\delta g_{\mu\nu}+\frac{1}{2N}D_\beta N\gamma^\mu_\alpha n^\mu\delta g_{\mu\nu}\\
\gamma^\mu_\alpha\gamma^\nu_\beta(X_\xi\cdot\delta K_{\mu\nu})&=K_{\alpha\mu}D_\beta(\gamma^\mu_\nu\xi^\nu)+K_{\beta\mu}D_\alpha(\gamma^\mu_\nu\xi^\nu)+D_\mu K_{\alpha\beta}\gamma^\mu_\nu\xi^\nu-D_\alpha D_\beta(n_\mu\xi^\mu)\\
&+(\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}+2K_{\alpha\mu}K_\beta^\mu+\frac{1}{N}D_\alpha D_\beta N)n_\sigma\xi^\sigma
\end{aligned}$$

The proof left unknown to me.
