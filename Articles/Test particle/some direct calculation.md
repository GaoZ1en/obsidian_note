$$\tag{0.1}
\begin{align}
S & =-m\int \mathrm{d}\tau \sqrt{ -g_{\mu \nu} \frac{\mathrm{d} x^{\mu}}{\mathrm{d} \tau} \frac{\mathrm{d} x^{\nu}}{\mathrm{d} \tau} }+q\int \mathrm{d}\tau A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}
\end{align}
$$

---

make a variation of $\displaystyle{x^{\mu}}$

$$\tag{1.1}
\begin{align}
\delta S & =-m\int \mathrm{d}\tau \frac{-g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\delta x^{\rho}}{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }} +q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu}+ A_{\mu} \frac{\mathrm{d}\delta x^{\mu}}{\mathrm{d}\tau}\right)
\end{align}
$$

by reparametrization invariance, we can choose $\displaystyle{\tau}$ such that $\displaystyle{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$, so we have

$$\tag{1.2}
\begin{align}
\delta S & =\int _{\tau _{i}}^{\tau _{f}} \mathrm{d}\tau E_{\sigma}\delta x^{\sigma}+\theta|_{\tau _{f}-\tau _{i}} \\
E_{\sigma} & =-mg_{\lambda \sigma}\left(\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right)-q \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}\tau}F_{\lambda \sigma} \\
\theta & =\left(mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}+qA_{\nu}\right)\delta x^{\nu}
\end{align}
$$

consider a infinitesimal diffeomorphism transformation parameterized by $\displaystyle{\xi ^{\mu}}$:

$$\tag{1.3}
\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu}=g_{\mu \nu}+\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} \\
A_{\mu} & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu}=A_{\mu}+\xi ^{\nu}\nabla _{\nu}A_{\mu}-A^{\nu}\nabla _{\nu}\xi _{\mu} \\
x^{\mu} & \to x^{\mu}+\xi ^{\mu}
\end{align}
$$

$$\tag{.}
\begin{align}
g_{\mu \nu} & \to g_{\mu \nu}+\mathcal{L}_{\xi}g_{\mu \nu}=g_{\mu \nu}+\xi ^{\rho}\partial _{\rho}g_{\mu \nu}+g_{\rho \nu}\partial _{\mu}\xi ^{\rho}+g_{\mu \rho}\partial _{\nu}\xi ^{\rho} \\
A_{\mu} & \to A_{\mu}+\mathcal{L}_{\xi}A_{\mu}=A_{\mu}+\xi ^{\nu}\partial _{\nu}A_{\mu}+A_{\nu}\partial _{\mu}\xi ^{\nu} \\
x^{\mu} & \to x^{\mu}+\xi ^{\mu}
\end{align}
$$

which can be represented as a vector in the set of configuration

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int \mathrm{d}\tau\left[ \left(\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}\right) \frac{\delta}{\delta g_{\mu \nu}}+(\xi ^{\nu}\nabla _{\nu}A_{\mu}-A^{\nu}\nabla _{\nu}\xi _{\mu}) \frac{\delta}{\delta A_{\mu}} +\xi ^{\mu} \frac{\delta}{\delta x^{\mu}} \right]
\end{align}
$$

act this symmetry on the action

$$\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta S & =-m\int \mathrm{d}\tau \left( -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}(X_{\xi}\cdot\delta x^{\nu})}{\mathrm{d}\tau}-\frac{1}{2}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}(X_{\xi}\cdot\delta x^{\rho}) \right) +q\int \mathrm{d}\tau \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}(X_{\xi}\cdot\delta x^{\nu})+ A_{\mu} \frac{\mathrm{d}(X_{\xi}\cdot\delta x^{\mu})}{\mathrm{d}\tau}\right) \\
 & -m\int \mathrm{d}\tau  \frac{-(X_{\xi}\cdot\delta g_{\mu \nu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }}+q\int \mathrm{d}\tau (X_{\xi}\cdot\delta A_{\mu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =m\int \mathrm{d}\tau\left(g_{\mu \nu}\partial _{\rho}\xi ^{\nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\rho}}{\mathrm{d}\tau}+\frac{1}{2}\xi ^{\rho}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) +q\int \mathrm{d}\tau\left( \xi ^{\nu}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} +\partial _{\nu}\xi ^{\mu}A_{\mu} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) \\
 & +\frac{m}{2} \int \mathrm{d}\tau\left(\xi ^{\rho}\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+g_{\rho \nu}\partial _{\mu}\xi ^{\rho} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+g_{\mu \rho}\partial _{\nu}\xi ^{\rho} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) +q\int \mathrm{d}\tau(\xi ^{\nu}\partial _{\nu}A_{\mu}+A_{\nu}\partial _{\mu}\xi ^{\nu}) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =2m\int \mathrm{d}\tau \mathcal{L}_{\xi}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}+2q\int \mathrm{d}\tau \mathcal{L}_{\xi}A_{\mu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =\int \mathrm{d}^{4}x\sqrt{ -g }(\mathcal{L}_{\xi}g_{\mu \nu} T^{\mu \nu}+2\mathcal{L}_{\xi}A_{\mu}j ^{\mu})
\end{align}
$$

where $\displaystyle{T^{\mu \nu}}$ and $\displaystyle{j^{\mu}}$ are defined as

$$\tag{1.6}
\begin{align}
T^{\mu \nu} & =m\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} \frac{\delta ^{4}(x-x(\tau))}{\sqrt{ -g }} \\
j ^{\mu} & =q\int \mathrm{d}\tau \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\delta^{4}(x-x(\tau))}{\sqrt{ -g }}
\end{align}
$$
$$\tag{.}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\left(mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}+qA_{\nu}\right)\xi ^{\nu}
\end{align}
$$


gauge transformation

$$\tag{1.?}
\begin{align}
X_{\alpha}=\int \mathrm{d}\tau \partial _{\mu}\alpha  \frac{\delta}{\delta A_{\mu}} 
\end{align}
$$

act on the action, we have

$$\tag{1.?}
\begin{align}
X_{\alpha}\cdot \delta S & =-q\int \mathrm{d}\tau \partial_{\mu}\alpha \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \\
 & =-q\int \mathrm{d}\alpha=-q\alpha|_{\tau _{f}-\tau _{i}}
\end{align}
$$





---

$$\tag{0.2}
\begin{align}
S & =-\alpha \int \mathrm{d}^{2}\xi\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }
\end{align}
$$

make a variation on $\displaystyle{X^{\mu}}$:

$$\tag{2.1}
\begin{align}
\delta S \implies & =\int \mathrm{d}^{2}\xi E_{\sigma}\delta X^{\sigma}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
 E_{\sigma} & =-g_{\lambda \sigma}\eta ^{ab}\left(\frac{\mathrm{d}^{2}X^{\mu}}{\mathrm{d}\xi ^{a}\mathrm{d}\xi ^{b}}+\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}}\right) \\
\theta & =\int _{\Sigma}\mathrm{d}\xi \tau _{a}\eta ^{ab}g_{\mu \nu} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{b}}\delta X^{\nu}
\end{align}
$$

here we choose a parameterization such that $\displaystyle{\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }=1}$. by a conformal transformation on $\displaystyle{\eta ^{ab}}$, we can always bring it to the form $\displaystyle{\eta ^{ab}=\mathrm{diag}(1,-1)}$. consider flat spacetime $\displaystyle{g_{\mu \nu}=\eta _{\mu \nu}}$. we have simply

$$\tag{2.2}
\begin{align}
\frac{\mathrm{d}^{2}X^{\mu}}{\mathrm{d}\tau ^{2}}-\frac{\mathrm{d}^{2}X^{\mu}}{\mathrm{d}\sigma ^{2}}=0
\end{align}
$$

and we have the following constraints

$$\tag{2.3}
\begin{align}
\eta_{\mu \nu}\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\sigma} & =0 \\
\eta _{\mu \nu} \left( \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\tau} +\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\sigma}\frac{\mathrm{d}X^{\nu}}{\mathrm{d}\sigma}\right) & =0
\end{align}
$$

the general solution to (2.2) can be written as

$$\tag{2.4}
\begin{align}
X^{\mu}(\tau,\sigma) & =\frac{1}{2}[a^{\mu}(\tau+\sigma)+b^{\mu}(\tau-\sigma)]
\end{align}
$$

define the light-cone coordinates $\displaystyle{\xi ^{\pm}=\tau\pm \sigma}$, (2.3) can be rewritten as

$$\tag{2.5}
\begin{align}
\eta _{\mu \nu}(a^{\mu}+b^{\mu})(a^{\mu}-b^{\mu})=0 \\
\eta _{\mu \nu}(a^{\mu}+b^{\mu})(a^{\nu}+b^{\nu})+\eta _{\mu \nu}(a^{\mu}-b^{\mu})(a^{\nu}-b^{\nu})=0 \\
\implies \eta _{\mu \nu}(a^{\mu}a^{\nu}-b^{\mu}b^{\nu})=0 \\
\eta _{\mu \nu}(a^{\mu}a^{\nu}+b^{\mu}b^{\nu})=0 \\
\implies \eta _{\mu \nu}a^{\mu}a^{\nu}=0 \\
\implies \eta _{\mu \nu}b^{\mu}b^{\nu}=0
\end{align}
$$

so we can see that $\displaystyle{a^{0}}$ and $\displaystyle{b^{0}}$ are not independent. 