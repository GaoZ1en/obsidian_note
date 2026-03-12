$$\tag{1.1}
\begin{align}
S & =\int _{M}\mathbf{L}+\int _{\Gamma}\ell
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}\mathbf{E}_{\psi}\delta \psi+\int _{\Sigma _{f}-\Sigma _{i}}\Theta+\int _{\Gamma}(\Theta+\delta \ell) \\
 & =\int _{M}\mathbf{E}_{\psi}\delta \psi+\int _{\Sigma _{f}-\Sigma _{i}}\Theta-\int _{\partial \Sigma _{f}-\partial \Sigma _{i}}C+\int _{\Gamma}F^{\mu \nu}\delta \gamma _{\mu \nu}
\end{align}
$$

we have the sympletic potential

$$\tag{1.3}
\begin{align}
\theta & =\int _{\Sigma}\Theta-\int _{\partial \Sigma}C
\end{align}
$$

and the symplectic form

$$\tag{1.4}
\begin{align}
\omega & =\delta \theta
\end{align}
$$

consider a symmetry

$$\tag{1.5}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x\mathcal{L}_{\xi}\psi \frac{\delta}{\delta \psi}
\end{align}
$$

then act this symmetry on the action, we have

$$\tag{1.6}
\begin{align}
X_{\xi}\cdot \delta S & = \int _{M}X_{\xi}\cdot \delta \mathbf{L}+\int _{\Gamma}X_{\xi}\cdot \delta \ell \\
 & =\int _{M}\mathrm{d}\mu _{\xi}+\int _{\Gamma}X_{\xi}\cdot \delta \ell \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\mu _{\xi}+\int _{\Gamma}(\mu _{\xi}+X_{\xi}\cdot \delta \ell) \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\mu _{\xi}+\int _{\Gamma}\mathrm{d}\nu _{\xi} \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\mu _{\xi}-\int _{\partial\Sigma _{f}-\partial\Sigma _{i}}\nu _{\xi}
\end{align}
$$

where

$$\tag{1.7}
\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mu _{\xi}-\int _{\partial \Sigma}\nu _{\xi}
\end{align}
$$

and the anomaly term is $\displaystyle{\beta _{\xi}}$. then we have the Noether charge

$$\tag{1.8}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\mu _{\xi})-\int _{\partial \Sigma}(X_{\xi}\cdot C-\nu _{\xi})
\end{align}
$$

consider its variation

$$\tag{1.9}
\begin{align}
\delta H_{\xi} & =\int _{\Sigma}(\delta(X_{\xi}\cdot \Theta)-\delta \mu _{\xi})-\int _{\partial \Sigma}(\delta(X_{\xi}\cdot C)-\delta\nu _{\xi}) \\
 & =\int _{\Sigma}(\mathcal{L}_{X_{\xi}}\Theta-X_{\xi}\cdot \delta \Theta-\delta \mu _{\xi})-\int _{\partial \Sigma}(\mathcal{L}_{X_{\xi}}C-X_{\xi}\cdot \delta C-\delta \nu _{\xi}) \\
 & =\int _{\Sigma}(\mathcal{L}_{X_{\xi}}\Theta-\delta \mu _{\xi})-\int _{\partial \Sigma}(\mathcal{L}_{X_{\xi}}C-\delta \nu _{\xi})-X_{\xi}\cdot \omega
\end{align}
$$

here we use the following lemma

>[!Lemma ]
> $$\tag{1.10}
\begin{align}
\mathcal{L}_{X_{\xi}}\Theta & =\mathcal{L}_{\xi}\Theta+X_{\delta \xi}\cdot \Theta
\end{align}
$$

here we assume that $\displaystyle{\delta \xi=0}$, so $\displaystyle{\Theta}$ and $\displaystyle{C}$ are covariant. then we have

$$\tag{1.11}
\begin{align}
\mathcal{L}_{X_{\xi}}\Theta & =\mathcal{L}_{\xi}\Theta \\
 & =\xi \cdot \mathrm{d}\Theta+\mathrm{d}(\xi \cdot \Theta) \\
 & =\xi \cdot(\delta\mathbf{L}-\mathbf{E}_{\psi}\delta \psi)+\mathrm{d}(\xi \cdot \Theta) \\
 & =\delta(\xi \cdot \mathbf{L})-\xi \cdot \mathbf{E}_{\psi}\delta \psi+\mathrm{d}(\xi \cdot \Theta)
\end{align}
$$

$$\tag{1.12}
\begin{align}
\mathcal{L}_{X_{\xi}}C & =\mathcal{L}_{\xi}C \\
 & =\xi \cdot \mathrm{d}C+\mathrm{d}(\xi \cdot C) \\
 & =\xi \cdot(\Theta+\delta \ell-\mathbf{F}^{\mu \nu}\delta \gamma _{\mu \nu})+\mathrm{d}(\xi \cdot C) \\
 & =\xi \cdot \Theta+\xi \cdot \delta \ell-\xi \cdot \mathbf{F}^{\mu \nu}\delta \gamma _{\mu \nu}+\mathrm{d}(\xi \cdot C)
\end{align}
$$

then we have

$$\tag{1.11}
\begin{align}
\delta H_{\xi} & =\int _{\Sigma}(\delta(\xi \cdot \mathbf{L}-\mu _{\xi})-\xi \cdot \mathbf{E}_{\psi}\delta \psi+\mathrm{d}(\xi \cdot \Theta)) \\
 & -\int _{\partial \Sigma}(\xi \cdot \delta \ell-\delta \nu _{\xi}+\xi \cdot \Theta-\xi \cdot \mathbf{F}^{\mu \nu}\delta \gamma _{\mu \nu})-X_{\xi}\cdot \omega \\
 & \approx -X_{\xi}\cdot \omega
\end{align}
$$

