$$\tag{0.1}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}
\end{align}
$$

---

make a variation

$$\tag{1.1}
\begin{align}
\delta S & =-m \int \mathrm{d}\tau  \frac{-2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}+\partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu} \\
 & -m \int \mathrm{d}\tau  \frac{-\delta g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau \delta A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =\int \mathrm{d}\tau E_{x,\nu}\delta x^{\nu}+\int \mathrm{d}^{4}x\sqrt{ -g }\left(\frac{1}{2}T^{\mu \nu}\delta g_{\mu \nu}+j ^{\mu}\delta A_{\mu}\right)+\theta|_{\tau _{f}-\tau _{i}}
\end{align}
$$

where

$$\tag{1.2}
\begin{align}
T^{\mu \nu} & =m\int \mathrm{d}\tau \frac{\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }}\\
j ^{\mu} & =q \int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
E_{x,\sigma} & =-mg_{\lambda \sigma} \left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}} +\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)+q F_{\sigma \rho} \frac{\mathrm{d}x^{\rho}}{\mathrm{d}\tau} \\
\theta & =\left( mg_{\mu \nu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+qA_{\mu} \right) \delta x^{\mu}
\end{align}
$$

first consider the reparametrization symmetry:

$$\tag{1.3}
\begin{align}
X_{n} & =\int \mathrm{d}\tau \tau ^{n} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\delta}{\delta x^{\mu}}
\end{align}
$$

act on the action, we have

$$\tag{1.4}
\begin{align}
X_{\varepsilon}\cdot \delta S & =-m \int \mathrm{d}\tau \frac{ -2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}(X_{n}\cdot \delta x^{\nu})}{\mathrm{d}\tau}-\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}(X_{n}\cdot \delta x^{\rho}) }{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}(X_{n}\cdot \delta x^{\mu})}{\mathrm{d}\tau}+\partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}(X_{\varepsilon}\cdot \delta x^{\nu}) \\
 & =m\int \mathrm{d}\tau  \frac{\left( 2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}}{\mathrm{d}\tau}\left(\tau ^{n}\frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \right)+\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \tau ^{n} \right)}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} +q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}}{\mathrm{d}\tau}\left(\tau ^{n}\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \right)+\tau ^{n}\partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \\
 & =
\end{align}
$$

$$\tag{.}
\begin{align}
f(\tau)
\end{align}
$$
