define the rotation and boosts as

$$\begin{align}
J^{\sigma} & =\frac{1}{2}\varepsilon ^{\mu \nu \rho \sigma}n_{\mu}M_{\nu \rho} \\
K^{\mu} & =M^{\mu \nu}n_{\nu}
\end{align}$$

where $\displaystyle{n_{\mu}}$ is a general future-directed timelike unit vector, and $\displaystyle{M_{\mu \nu}}$ are the generators of the Lorentz group. the commutation relations of $\displaystyle{J^{\mu}}$ and $\displaystyle{K^{\mu}}$ are given by

$$\begin{align}
[J^{\mu},J^{\nu}] &= -\varepsilon^{\mu \nu \rho \sigma}n_{\rho}J_{\sigma} \\
[J^{\mu},K^{\nu}] &= -\varepsilon^{\mu \nu \rho \sigma}n_{\rho}K_{\sigma} \\
[K^{\mu},K^{\nu}] &= \varepsilon^{\mu \nu \rho \sigma}n_{\rho}J_{\sigma}
\end{align}$$

here we use

$$\begin{align}
[M_{\mu \nu},M_{\rho \sigma}] & =\eta _{\nu \rho}M_{\mu \sigma}-\eta _{\mu \rho}M_{\nu \sigma}+\eta _{\mu \sigma}M_{\nu \rho}-\eta_{\nu \sigma}M_{\mu \rho}
\end{align}$$

### $\displaystyle{[J^{\mu},J^{\nu}]}$

$$\begin{align}
[J^{\mu},J^{\nu}] & =\left[ \frac{1}{2}\varepsilon ^{\mu \alpha \beta \gamma}n_{\alpha}M_{\beta \gamma}, \frac{1}{2}\varepsilon ^{\nu \rho \sigma \lambda}n_{\rho}M_{\sigma \lambda} \right] \\
 & =\frac{1}{4}\varepsilon ^{\mu \alpha \beta \gamma}\varepsilon ^{\nu \rho \sigma \lambda}n_{\alpha}n_{\rho}[M_{\beta \gamma},M_{\sigma \lambda}] \\
 & =\frac{1}{4}\varepsilon ^{\mu \alpha \beta \gamma}\varepsilon ^{\nu \rho \sigma \lambda}n_{\alpha}n_{\rho}\left(\eta _{\gamma \sigma}M_{\beta \lambda}-\eta _{\beta \sigma}M_{\gamma \lambda}+\eta _{\beta \lambda}M_{\gamma \sigma}-\eta_{\gamma \lambda}M_{\beta \sigma}\right) \\
 & =\varepsilon ^{\mu \alpha \beta \gamma}\varepsilon ^{\nu \rho \sigma \lambda}n_{\alpha}n_{\rho}\eta _{\gamma \sigma}M_{\beta \lambda} \\
 & =n_{\alpha}n_{\rho}M_{\beta \lambda}\begin{vmatrix}
\eta ^{\mu \nu} & \eta ^{\mu \rho} & \eta ^{\mu \lambda} \\
\eta ^{\alpha \nu} & \eta ^{\alpha \rho} & \eta ^{\alpha \lambda} \\
\eta ^{\beta \nu} & \eta ^{\beta \rho} & \eta ^{\beta \lambda}
\end{vmatrix} \\
 & =n_{\alpha}n_{\rho}M_{\beta \lambda}\left(\eta ^{\mu \lambda}\eta ^{\alpha \nu}\eta ^{\beta \rho}-\eta ^{\mu \lambda}\eta ^{\alpha \rho}\eta ^{\beta \nu}+\eta ^{\alpha \lambda}\eta ^{\mu \rho}\eta ^{\beta \nu}-\eta ^{\alpha \lambda}\eta ^{\mu \nu}\eta ^{\beta \rho}\right) \\
 & =-M^{\mu \nu}+n^{\nu}n_{\rho}M^{\rho \mu}+n_{\lambda}n^{\mu}M^{\nu \lambda} \\
 & =-M^{\mu \nu}+n^{\mu}K^{\nu}-n^{\nu}K^{\mu}
\end{align}$$

on the other hand, we have

$$\begin{align}
\varepsilon ^{\mu \nu \rho \sigma}n_{\rho}J_{\sigma} & =\varepsilon ^{\mu \nu \rho \sigma}n_{\rho} \frac{1}{2}\varepsilon ^{\alpha \beta \gamma}_{~~~~~~~\sigma}n_{\alpha}M_{\beta \gamma} \\
 & =\frac{1}{2}n_{\rho}n_{\alpha}M_{\beta \gamma}\begin{vmatrix}
\eta ^{\mu \alpha} & \eta ^{\mu \beta} & \eta ^{\mu \gamma} \\
\eta ^{\nu \alpha} & \eta ^{\nu \beta} & \eta ^{\nu \gamma} \\
\eta ^{\rho \alpha} & \eta ^{\rho \beta} & \eta ^{\rho \gamma}
\end{vmatrix} \\
 & \quad \text{(Summing determinant terms in pairs $(\beta,\gamma) \leftrightarrow (\gamma,\beta)$ cancels the factor of 1/2)} \\
 & = n_{\rho}n_{\alpha} \left( \eta^{\mu\alpha} M^{\nu\rho} + \eta^{\nu\alpha} M^{\rho\mu} + \eta^{\rho\alpha} M^{\mu\nu} \right) \\
 & = n^{\mu} n_{\rho} M^{\nu\rho} + n^{\nu} n_{\rho} M^{\rho\mu} + (n_{\rho}n^{\rho}) M^{\mu\nu} \\
 & = n^{\mu} (-K^{\nu}) + n^{\nu} (K^{\mu}) - M^{\mu\nu} \\
 & = -(M^{\mu \nu}-n^{\mu}K^{\nu}+n^{\nu}K^{\mu}) = -[J^{\mu},J^{\nu}]
\end{align}$$

### $\displaystyle{[J^{\mu},K^{\nu}]}$

$$\begin{align}
[J^{\mu},K^{\nu}] & =\frac{1}{2}\varepsilon ^{\mu \alpha \beta \gamma}n_{\alpha}[M_{\beta \gamma},M^{\nu \rho}]n_{\rho} \\
 & =\varepsilon ^{\mu \alpha \beta \gamma}n_{\alpha}n_{\rho}\left(\delta _{\gamma}^{~\nu}M_{\beta}^{~\rho}-\delta _{\gamma}^{~\rho}M_{\beta}^{~\nu}\right) \\
 & =\varepsilon ^{\mu \alpha \beta \nu}n_{\alpha}K_{\beta}-\varepsilon ^{\mu \alpha \beta \rho}n_{\alpha}n_{\rho}M_{\beta}^{~\nu} \\
 & =-\varepsilon ^{\mu \nu \alpha \beta}n_{\alpha}K_{\beta}
\end{align}$$

### $\displaystyle{[K^{\mu},K^{\nu}]}$

$$\begin{align}
[K^{\mu},K^{\nu}] & =n_{\rho}n_{\sigma}[M^{\mu \rho},M^{\nu \sigma}] \\
 & =n_{\rho}n_{\sigma}\left(\eta ^{\rho \nu}M^{\mu \sigma}-\eta ^{\mu \nu}M^{\rho \sigma}+\eta ^{\mu \sigma}M^{\rho \nu}-\eta ^{\rho \sigma}M^{\mu \nu}\right) \\
 & =n^{\nu}K^{\mu}-n^{\mu}K^{\nu}-(n_{\rho}n^{\rho})M^{\mu \nu} \\
 & =n^{\nu}K^{\mu}-n^{\mu}K^{\nu}+M^{\mu \nu} \\
 & =\varepsilon ^{\mu \nu \rho \sigma}n_{\rho}J_{\sigma}
\end{align}$$

