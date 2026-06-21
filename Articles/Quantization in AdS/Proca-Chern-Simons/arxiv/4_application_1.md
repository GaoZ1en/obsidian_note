---
title: "Application I: The Euclidean correlation function"
date: 2026-04-09
summary: "Analytic continuation of highest-weight mode expansion to Euclidean signature; derives the Euclidean two-point Green's function for Proca-Chern-Simons theory and discusses the path-integral vs canonical contact term."
---

# 4. Application I: The Euclidean correlation function

In this section, we analytically continue the highest-weight mode expansion obtained in Section 3 to Euclidean signature and derive the Green's function equation satisfied by the Euclidean two-point function of the Proca-Chern-Simons theory.

## 4.1 The Euclidean background

We perform the Wick rotation $t=-i\tau$. The global AdS$_3$ metric then becomes

$$\begin{align}
\mathrm{d}s^{2}_{E} & =(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

In the remainder of this section, we suppress the subscript $E$ on the background metric and other geometric quantities whenever no confusion can arise. The Euclidean Killing vectors are given by

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{\tau-i\phi}\left(ir(1+r^{2})^{-1/2} \frac{\partial}{\partial \tau}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi}\right) \\
\xi _{0} & =\frac{1}{2}\left(i \frac{\partial}{\partial \tau}-\frac{\partial}{\partial \phi}\right) \\
\xi _{-1} & =\frac{1}{2}e^{-\tau+i\phi}\left(ir(1+r^{2})^{-1/2} \frac{\partial}{\partial \tau}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{\tau+i\phi}\left(ir(1+r^{2})^{-1/2} \frac{\partial}{\partial \tau}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(i \frac{\partial}{\partial \tau}+\frac{\partial}{\partial \phi}\right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-\tau-i\phi}\left(ir(1+r^{2})^{-1/2} \frac{\partial}{\partial \tau}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi}\right)
\end{align}$$

These Killing vectors satisfy the following $\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})$ commutation relations:

$$\begin{align}
[\xi _{0},\xi _{\pm 1}] & =\pm i\xi _{\pm 1}, & [\xi _{1},\xi _{-1}] & =-2i\xi _{0}, \\
[\bar{\xi}_{0},\bar{\xi}_{\pm 1}] & =\pm i\bar{\xi}_{\pm 1}, & [\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}, \\
[\xi _{a},\bar{\xi}_{b}] & =0, & a,b & \in \{-1,0,1\}.
\end{align}$$

As in the Lorentzian discussion, the inverse metric can be written directly in terms of the Killing vectors as

$$\begin{align}
g^{\mu \nu} & =2\xi _{-1}^{\mu}\xi _{1}^{\nu}+2\xi _{1}^{\mu}\xi _{-1}^{\nu}-4\xi _{0}^{\mu}\xi _{0}^{\nu} \\
 & =2\bar{\xi}_{-1}^{\mu}\bar{\xi}_{1}^{\nu}+2\bar{\xi}_{1}^{\mu}\bar{\xi}_{-1}^{\nu}-4\bar{\xi}_{0}^{\mu}\bar{\xi}_{0}^{\nu}
\end{align}$$

The covariant derivatives of the Killing vectors are given by

$$\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =i\varepsilon _{\mu \nu \rho}\xi _{a}^{\rho} \\
\nabla _{\mu}\bar{\xi}_{a,\nu} & =-i\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{\rho}, \quad a=-1,0,1
\end{align}$$

## 4.2 The Euclidean correlation function

We now analytically continue the normalizable modes constructed in Section 3. Under the Wick rotation, the field components transform as

$$\begin{align}
A^{\tau}_{E}(\tau,r,\phi) & =iA^{t}(t=-i\tau,r,\phi) \\
A^{r}_{E}(\tau,r,\phi) & =A^{r}(t=-i\tau,r,\phi) \\
A^{\phi}_{E}(\tau,r,\phi) & =A^{\phi}(t=-i\tau,r,\phi)
\end{align}$$

Accordingly, the Euclidean highest-weight modes are

$$\begin{align}
f_{+,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu _{+})_{n}(\mu _{+}+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{+,0,0}^{\mu}, \\
f_{+,0,0}^{\mu} & =\sqrt{ \frac{\mu _{+}+1}{\pi \bar{\mu}} } \frac{e^{-(\mu _{+}+2)\tau}}{(1+r^{2})^{(\mu _{+}+2)/2}}\xi _{1}^{\mu}, \\
f_{-,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu _{-}+2)_{n}(\mu _{-})_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{-,0,0}^{\mu}, \\
f_{-,0,0}^{\mu} & =\sqrt{ \frac{\mu _{-}+1}{\pi \bar{\mu}} } \frac{e^{-(\mu _{-}+2)\tau}}{(1+r^{2})^{(\mu _{-}+2)/2}}\bar{\xi} _{1}^{\mu}.
\end{align}$$

The analytically continued field operator, restricted to the physical solution space, therefore admits the mode expansion

$$\begin{align}
A^{\mu}(x)|_{\widetilde{\mathcal{P}}} & =\sum ^{\infty}_{n,\bar{n}=0}\left(f^{\mu}_{+,n,\bar{n}}(x)a_{+,n,\bar{n}}+f_{+,n,\bar{n}}^{*\mu}(x)a^{\dagger}_{+,n,\bar{n}}+f^{\mu}_{-,n,\bar{n}}(x)a_{-,n,\bar{n}}+f_{-,n,\bar{n}}^{*\mu}(x)a^{\dagger}_{-,n,\bar{n}}\right).
\end{align}$$

We define the Euclidean two-point function by analytic continuation of the Lorentzian vacuum correlator:

$$\begin{align}
G_{E}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } \\
& =\begin{cases}
\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{1}}_{+,n,\bar{n}}(x_{1})f^{*\mu_{2}}_{+,n,\bar{n}}(x_{2})+\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{1}}_{-,n,\bar{n}}(x_{1})f^{*\mu_{2}}_{-,n,\bar{n}}(x_{2}), & \tau _{1}>\tau _{2} \\
\sum ^{\infty}_{n,\bar{n}=0}f^{*\mu_{1}}_{+,n,\bar{n}}(x_{1})f^{\mu_{2}}_{+,n,\bar{n}}(x_{2})+\sum ^{\infty}_{n,\bar{n}=0}f^{*\mu_{1}}_{-,n,\bar{n}}(x_{1})f^{\mu_{2}}_{-,n,\bar{n}}(x_{2}), & \tau _{1}<\tau _{2}
\end{cases}
\end{align}$$

Here, $\mathcal{T}$ denotes ordering with respect to the Euclidean time $\tau$. In the remainder of this subsection, we suppress the subscript $E$ on the Proca-Chern-Simons correlators whenever no confusion can arise. Unless explicitly stated otherwise, all covariant derivatives in the Green's function equations below act on the first argument $x_{1}$.

## 4.3 The explicit Euclidean correlation function

We now perform the direct sums over the two highest-weight branches and derive an explicit expression for the Euclidean correlation function. To keep the calculation manageable, it is convenient to rewrite the vector modes in terms of scalar highest-weight modes and the relevant bitensors introduced in our previous paper.

### 4.3.1 Mode sums in the scalar basis

We first rewrite the vector highest-weight modes in a form adapted to the direct summation.

$$\begin{align}
f_{+,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{\bar{\mu}\mu _{+}} }\left(\sqrt{ 2(\mu _{+}+n)(\mu _{+}+n+1) }\phi _{\mu _{+}+2,n,\bar{n}}\xi _{1}^{\mu}\right. \\
 & +2i\sqrt{ 2n(\mu _{+}+n) }\phi _{\mu _{+}+2,n-1,\bar{n}}\xi _{0}^{\mu} \\
 & \left.-\sqrt{ 2n(n-1) }\phi _{\mu _{+}+2,n-2,\bar{n}}\xi _{-1}^{\mu}\right) \\
f_{-,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{\bar{\mu}\mu _{-}} }\left(\sqrt{ 2(\mu _{-}+\bar{n})(\mu _{-}+\bar{n}+1) }\phi _{\mu _{-}+2,n,\bar{n}}\bar{\xi}_{1}^{\mu}\right. \\
 & +2i\sqrt{ 2\bar{n}(\mu _{-}+\bar{n}) }\phi _{\mu _{-}+2,n,\bar{n}-1}\bar{\xi}_{0}^{\mu} \\
 & \left.-\sqrt{ 2\bar{n}(\bar{n}-1) }\phi _{\mu _{-}+2,n,\bar{n}-2}\bar{\xi}_{-1}^{\mu}\right)
\end{align}$$

here, $\displaystyle{\varphi _{\Delta,n,\bar{n}}}$ is the scalar highest-weight mode defined by

$$\begin{align}
\phi _{\Delta,n,\bar{n}} & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{\Delta,0,0} \\
\phi _{\Delta,0,0} & =\frac{1}{\sqrt{ 2\pi }}\frac{e^{-\Delta \tau}}{(1+r^{2})^{\Delta /2}}
\end{align}$$

Following the same strategy as in our previous paper, we obtain

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}f_{+,n,\bar{n}}^{\mu_{1}}(x_{1})f^{*\mu_{2}}_{+,n,\bar{n}}(x_{2}) & = \frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}} g_{\mu _{+}+2}(x_{1},x_{2})+\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2}) \nabla _{\nu_{1}}g_{\mu _{+}+2}(x_{1},x_{2}) \\
 & +\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu _{+}+2}(x_{1},x_{2})
\end{align}$$

Similarly, for the $-$ branch we obtain

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}f_{-,n,\bar{n}}^{\mu_{1}}(x_{1})f^{*\mu_{2}}_{-,n,\bar{n}}(x_{2}) & =\frac{1}{2\bar{\mu}\mu _{-}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu _{-}+2}(x_{1},x_{2})-\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\bar{g}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}g_{\mu _{-}+2}(x_{1},x_{2}) \\
 & +\frac{\mu _{-}}{2\bar{\mu}}\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu _{-}+2}(x_{1},x_{2})
\end{align}$$

### 4.3.2 Time ordering and branch correlators

Given the unordered mode sums derived above, we now impose Euclidean time ordering and obtain the corresponding branch correlators.

We begin with the correlation function of the $+$ branch:

$$\begin{align}
G_{+}(x_{1},x_{2}) & =\lim_{ \varepsilon \to 0 } \left(\sum ^{\infty}_{n,\bar{n}=0} f_{+,n,\bar{n}}^{\mu_{1}}(x^{+}_{1})f_{+,n,\bar{n}}^{*\mu_{2}}(x_{2})\right)\Bigg|_{x^{+\mu}_{1}=x_{1}^{\mu}+\varepsilon \delta ^{\mu}_{\tau}}+\left(\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{2}}_{+,n,\bar{n}}(x_{2})f_{+,n,\bar{n}}^{*\mu_{1}}(x_{1}^{-})\right)\Bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta ^{\mu}_{\tau}} \\
 & =\lim_{ \varepsilon \to 0 } \left(\frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu _{+}+2}(x_{1}^{+},x_{2})+\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}g_{\mu _{+}+2}(x^{+}_{1},x_{2})+\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{1},\mu_{2}}g_{\mu _{+}+2}(x^{+}_{1},x_{2})\right)\Bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2}) \\
 & +\left(\frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{2}}\nabla ^{\mu_{1}}g_{\mu _{+}+2}(x_{2},x_{1}^{-})+\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~~\rho_{2}}g^{\rho_{2},\mu_{1}}\nabla _{\nu_{2}}g_{\mu _{+}+2}(x_{2},x_{1}^{-})+\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{2},\mu_{1}}g_{\mu _{+}+2}(x_{2},x_{1}^{-})\right)\Bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1}) \\
 & =\lim_{ \varepsilon \to 0 } \frac{1}{2\bar{\mu}\mu _{+}}\left(\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+\nabla ^{\mu_{2}}\nabla ^{\mu_{1}}g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right) \\
 & +\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\left(\nabla _{\nu_{1}}g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+\nabla _{\nu_{1}}g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right) \\
 & +\frac{\mu _{+}}{2\bar{\mu}}\left(g^{\mu_{1},\mu_{2}}(x_{1},x_{2})\left(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right)\right)
\end{align}$$

The three contributions can be evaluated separately.

$$\begin{align}
I & =\lim_{ \varepsilon \to 0 }  \frac{1}{2\bar{\mu}\mu _{+}}\left(\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+\nabla ^{\mu_{2}}\nabla ^{\mu_{1}}g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right) \\
 & =\lim_{ \varepsilon \to 0 } \frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}\left(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right) \\
 & -\lim_{ \varepsilon \to 0 } \frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta ^{\mu}_{\tau}}-g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta ^{\mu}_{\tau}})g^{\mu_{2}\tau}\delta(\tau_{1}-\tau_{2}) \\
 & -\lim_{ \varepsilon \to 0 } \frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{2}}\left(\left((g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta ^{\mu}_{\tau}}-g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\right)g^{\mu_{2}\tau}\delta(\tau_{1}-\tau_{2})\right) \\
 & =\frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}G_{\mu _{+}+2}(x_{1},x_{2})-\frac{1}{2\bar{\mu}\mu _{+}}g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

Here $N$ is the lapse function, $\sigma$ is the determinant of the induced metric on $\Sigma$, and $G_{\Delta}(x_{1},x_{2})$ denotes the scalar Euclidean correlator with conformal dimension $\Delta$, defined by

$$\begin{align}
G_{\Delta}(x_{1},x_{2}) & =\lim_{ \varepsilon \to 0 } \left(g_{\Delta}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+g_{\Delta}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right)
\end{align}$$

$$\begin{align}
II & =\lim_{ \varepsilon \to 0 }\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\left(\nabla _{\nu_{1}}g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+\nabla _{\nu_{1}}g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right) \\
 & =\lim_{ \varepsilon \to 0 } \frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\left(\nabla _{\nu_{1}}(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta ^{\mu}_{\tau}}\theta(\tau_{1}-\tau_{2})+g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1}))\right. \\
 & \left.-(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}-g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}})g_{\nu_{1}\tau}\delta(\tau_{1}-\tau_{2})\right) \\
 & =\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}G_{\mu _{+}+2}(x_{1},x_{2})
\end{align}$$

$$\begin{align}
III & =\lim_{ \varepsilon \to 0 } \frac{\mu _{+}}{2\bar{\mu}}\left(g^{\mu_{1},\mu_{2}}(x_{1},x_{2})\left(g_{\mu _{+}+2}(x_{1}^{+},x_{2})\bigg|_{x_{1}^{+\mu}=x_{1}^{\mu}+\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{1}-\tau_{2})+g_{\mu _{+}+2}(x_{1}^{-},x_{2})\bigg|_{x_{1}^{-\mu}=x_{1}^{\mu}-\varepsilon \delta _{\tau}^{\mu}}\theta(\tau_{2}-\tau_{1})\right)\right) \\
 & =\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})G_{\mu _{+}+2}(x_{1},x_{2})
\end{align}$$

Adding these three terms gives the correlation function of the $+$ branch:

$$\begin{align}
G_{+}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}G_{\mu _{+}+2}(x_{1},x_{2})+\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}G_{\mu _{+}+2}(x_{1},x_{2})+\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})G_{\mu _{+}+2}(x_{1},x_{2}) \\
 & -\frac{1}{2\bar{\mu}\mu _{+}} g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

The same calculation for the $-$ branch yields

$$\begin{align}
G_{-}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}\mu _{-}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}G_{\mu _{-}+2}(x_{1},x_{2})-\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\bar{g}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}G_{\mu _{-}+2}(x_{1},x_{2})+\frac{\mu _{-}}{2\bar{\mu}}\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2})G_{\mu _{-}+2}(x_{1},x_{2}) \\
 & -\frac{1}{2\bar{\mu}\mu _{-}} g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

Finally, the full Euclidean correlation function is

$$\begin{align}
G^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G^{\mu_{1},\mu_{2}}_{+}(x_{1},x_{2})+G^{\mu_{1},\mu_{2}}_{-}(x_{1},x_{2}) \\
 & =\frac{1}{2\bar{\mu}\mu _{+}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}G_{\mu _{+}+2}(x_{1},x_{2})+\frac{1}{2\bar{\mu}\mu _{-}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}G_{\mu _{-}+2}(x_{1},x_{2}) \\
 & +\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}G_{\mu _{+}+2}(x_{1},x_{2})-\frac{i}{2\bar{\mu}}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\bar{g}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}G_{\mu _{-}+2}(x_{1},x_{2}) \\
 & +\frac{\mu _{+}}{2\bar{\mu}}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})G_{\mu _{+}+2}(x_{1},x_{2})+\frac{\mu _{-}}{2\bar{\mu}}\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2})G_{\mu _{-}+2}(x_{1},x_{2}) \\
 & -\frac{1}{\mu ^{2}} g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

## 4.4 Verification of the covariant Green's function equation

We now verify that the covariant part of the correlation function obtained above satisfies the expected Green's function equation. The non-covariant contact term exhibited in Section 4.3 is not included in this check and will be discussed separately.

To derive the Green's function equation, it is useful to compare each branch with the corresponding pure Proca problem. The normalizable Euclidean modes of the pure Proca theory can be written as

$$\begin{align}
F_{+,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}F_{+,0,0}^{\mu} \\
F_{+,0,0}^{\mu} & =\sqrt{ \frac{\mu +1}{\pi \mu} } \frac{e^{-(\mu +2)\tau}}{(1+r^{2})^{(\mu +2)/2}}\xi _{1}^{\mu} \\
F_{-,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}F_{-,0,0}^{\mu} \\
F_{-,0,0}^{\mu} & =\sqrt{ \frac{\mu +1}{\pi \mu} } \frac{e^{-(\mu +2)\tau}}{(1+r^{2})^{(\mu +2)/2}}\bar{\xi} _{1}^{\mu}
\end{align}$$

These expressions coincide with the Proca-Chern-Simons modes when $\mu_{+}=\mu_{-}=\mu$. They satisfy the first-order equations

$$\begin{align}
\varepsilon _{\mu \nu \rho}\nabla ^{\nu}F^{\rho}_{+,n,\bar{n}} & =-i\mu F_{\mu,+,n,\bar{n}} \\
\varepsilon _{\mu \nu \rho}\nabla ^{\nu}F^{\rho}_{-,n,\bar{n}} & =i\mu F_{\mu,-,n,\bar{n}}.
\end{align}$$

The Euclidean correlation function of the pure Proca theory is therefore

$$\begin{align}
\mathcal{G}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\begin{cases}
\sum ^{\infty}_{n,\bar{n}=0}F^{\mu_{1}}_{+,n,\bar{n}}(x_{1})F^{*\mu_{2}}_{+,n,\bar{n}}(x_{2})+\sum ^{\infty}_{n,\bar{n}=0}F^{\mu_{1}}_{-,n,\bar{n}}(x_{1})F^{*\mu_{2}}_{-,n,\bar{n}}(x_{2}), & \tau _{1}>\tau _{2} \\
\sum ^{\infty}_{n,\bar{n}=0}F^{*\mu_{1}}_{+,n,\bar{n}}(x_{1})F^{\mu_{2}}_{+,n,\bar{n}}(x_{2})+\sum ^{\infty}_{n,\bar{n}=0}F^{*\mu_{1}}_{-,n,\bar{n}}(x_{1})F^{\mu_{2}}_{-,n,\bar{n}}(x_{2}), & \tau _{1}<\tau _{2}
\end{cases}
\end{align}$$

and it satisfies the Green's function equation

$$\begin{align}
(\delta ^{\mu_{1}}_{~\nu_{1}}\nabla ^{2}-\nabla _{\nu_{1}}\nabla ^{\mu_{1}}-\delta _{\nu_{1}}^{\mu_{1}}\mu ^{2})\mathcal{G}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

To isolate a single highest-weight branch, it is convenient to introduce the projected correlators

$$\begin{align}
\mathcal{G}_{+}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\mu}(i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}+\mu \delta ^{\mu_{1}}_{\rho_{1}})\mathcal{G}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) \\
\mathcal{G}_{-}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{2\mu}(i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu \delta _{\rho_{1}}^{\mu_{1}})\mathcal{G}^{\rho_{1},\mu_{2}}(x_{1},x_{2}).
\end{align}$$

These operators project onto the two eigenspaces of the first-order Proca operator. Acting once more with the complementary first-order operators $i\varepsilon _{\mu}^{~~~\nu \rho}\nabla _{\nu}\mp \mu \delta _{\mu}^{\rho}$ on $\mathcal{G}_{\pm}^{\mu_{1},\mu_{2}}$, we obtain

$$\begin{align}
(i\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu g_{\mu_{1}\rho_{1}})\mathcal{G}_{+}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\mu}\left(\delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2}\right)\mathcal{G}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) \\
 & =-\frac{1}{2\mu} \frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
(i\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}+\mu g_{\mu_{1}\rho_{1}})\mathcal{G}_{-}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{2\mu}\left(\delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2}\right)\mathcal{G}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) \\
 & =\frac{1}{2\mu} \frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

The same reasoning applies to the Proca-Chern-Simons theory. Comparing the Euclidean mode functions above with the pure Proca modes, each branch is obtained by the replacement $\mu \rightarrow \mu_{\pm}$ together with the normalization factor $\sqrt{ \frac{\mu_{\pm}}{\bar{\mu}} }$. Since the correlator is quadratic in the modes, this precisely changes the source coefficient from $1/(2\mu_{\pm})$ to $1/(2\bar{\mu})$. Therefore the branch correlators of the Proca-Chern-Simons theory satisfy

$$\begin{align}
(i\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu _{+}g_{\mu_{1}\rho_{1}})G_{+}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{1}{2\bar{\mu}} \frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
(i\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}+\mu _{-}g_{\mu_{1}\rho_{1}})G_{-}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}} \frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Acting on these equations with the complementary operators $i\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}+\mu_{-}\delta _{\mu}^{\rho}$ for the $+$ branch and $i\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}-\mu_{+}\delta _{\mu}^{\rho}$ for the $-$ branch, we obtain

$$\begin{align}
\left( \delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\frac{ik}{2\pi}\varepsilon ^{\mu_{1}}_{~~~\nu_{1}\rho_{1}}\nabla ^{\nu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2} \right)G_{+}^{\rho_{1},\mu_{2}}(x_{1},x_{2})  & =-\frac{1}{2\bar{\mu}}\left(i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}+\mu _{-}\delta ^{\mu_{1}}_{\rho_{1}}\right) \frac{g^{\rho_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }} \delta ^{3}(x_{1}-x_{2}) \\
\left( \delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\frac{ik}{2\pi}\varepsilon ^{\mu_{1}}_{~~~\nu_{1}\rho_{1}}\nabla ^{\nu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2} \right)G_{-}^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}}\left(i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu _{+}\delta ^{\mu_{1}}_{\rho_{1}}\right) \frac{g^{\rho_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }} \delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Finally, defining the full Euclidean correlator by $G^{\mu_{1},\mu_{2}}(x_{1},x_{2})=G_{+}^{\mu_{1},\mu_{2}}(x_{1},x_{2})+G_{-}^{\mu_{1},\mu_{2}}(x_{1},x_{2})$ and summing the two branch equations, we obtain

$$\begin{align}
\left( \delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\frac{ik}{2\pi}\varepsilon ^{\mu_{1}}_{~~~\nu_{1}\rho_{1}}\nabla ^{\nu_{1}}-\delta _{\rho_{1}}^{\mu_{1}}\mu ^{2} \right)G^{\rho_{1},\mu_{2}}(x_{1},x_{2}) & =-\frac{g^{\mu_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

This is the desired Euclidean Green's function equation for the full Proca-Chern-Simons two-point function.

## 4.5 The path-integral interpretation of the contact term

We now explain the origin of the contact term from the Euclidean path integral of the full Proca-Chern-Simons theory.

We write the Euclidean metric in ADM form,

$$\begin{align}
\mathrm{d}s^{2} & =N^{2}\mathrm{d}\tau ^{2}+\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b},
\end{align}$$

with

$$\begin{align}
N & =\sqrt{ 1+r^{2} }, & \sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}.
\end{align}$$

Let $D_{a}$ denote the covariant derivative compatible with $\sigma _{ab}$, and define the spatial field strength

$$\begin{align}
\widetilde{F}_{ab} & :=D_{a}A_{b}-D_{b}A_{a}.
\end{align}$$

In Euclidean signature, the full Proca-Chern-Simons action can be written as

$$\begin{align}
S_{E}[A] & =\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)-\frac{ik}{8\pi}\int _{\mathcal{M}}\mathrm{d}^{3}x\sqrt{ g }\,\varepsilon ^{\mu \nu \rho}A_{\mu}F_{\nu \rho}.
\end{align}$$

The Euclidean path-integral two-point function is defined by

$$\begin{align}
G_{\mathrm{path}}^{\mu _{1},\mu _{2}}(x_{1},x_{2}) & :=\frac{\displaystyle{\int \mathcal{D}A\,e^{-S_{E}[A]}A^{\mu _{1}}(x_{1})A^{\mu _{2}}(x_{2})}}{\displaystyle{\int \mathcal{D}A\,e^{-S_{E}[A]}}}.
\end{align}$$

Up to boundary terms, the corresponding quadratic kernel is precisely the operator that appeared in Section 4.4, so $G_{\mathrm{path}}^{\mu _{1},\mu _{2}}$ satisfies

$$\begin{align}
\left( \delta _{\rho _{1}}^{\mu _{1}}\nabla ^{2}-\nabla _{\rho _{1}}\nabla ^{\mu _{1}}-\frac{ik}{2\pi}\varepsilon ^{\mu _{1}}_{~~~\nu _{1}\rho _{1}}\nabla ^{\nu _{1}}-\delta _{\rho _{1}}^{\mu _{1}}\mu ^{2} \right)G_{\mathrm{path}}^{\rho _{1},\mu _{2}}(x_{1},x_{2}) & =-\frac{g^{\mu _{1}\mu _{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Equivalently, using the factorization into the two first-order branches, we may write

$$\begin{align}
G_{\mathrm{path}}^{\mu _{1},\mu _{2}}(x_{1},x_{2}) & =G_{+,\mathrm{path}}^{\mu _{1},\mu _{2}}(x_{1},x_{2})+G_{-,\mathrm{path}}^{\mu _{1},\mu _{2}}(x_{1},x_{2}),
\end{align}$$

where

$$\begin{align}
(i\varepsilon _{\mu _{1}~~~\rho _{1}}^{~~~~\nu _{1}}\nabla _{\nu _{1}}-\mu _{+}g_{\mu _{1}\rho _{1}})G_{+,\mathrm{path}}^{\rho _{1},\mu _{2}}(x_{1},x_{2}) & =-\frac{1}{2\bar{\mu}}\frac{g^{\mu _{1}\mu _{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}), \\
(i\varepsilon _{\mu _{1}~~~\rho _{1}}^{~~~~\nu _{1}}\nabla _{\nu _{1}}+\mu _{-}g_{\mu _{1}\rho _{1}})G_{-,\mathrm{path}}^{\rho _{1},\mu _{2}}(x_{1},x_{2}) & =\frac{1}{2\bar{\mu}}\frac{g^{\mu _{1}\mu _{2}}}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

These are the path-integral counterparts of the branch equations in Section 4.4.

To see how the contact term arises, we now decompose the action into the spatial components $A_{a},a=r,\phi$ and the Euclidean time component $A_{\tau}$. The ADM decomposition of the Euclidean action is

$$\begin{align}
S_{E} & =\int \mathrm{d}\tau \int _{\Sigma _{\tau}} \mathrm{d}^{2}x\sqrt{ \sigma }\left(\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma ^{ab}(\partial _{\tau}A_{a}-D_{a}A_{\tau})(\partial _{\tau}A_{b}-D_{b}A_{\tau})+\frac{\mu ^{2}N}{2}\sigma ^{ab}A_{a}A_{b}+\frac{\mu ^{2}}{2N}A_{\tau}^{2}\right. \\
 & \left.-\frac{ik}{4\pi}\varepsilon ^{ab}(A_{\tau}D_{a}A_{b}-A_{a}(\partial _{\tau}A_{b}-D_{b}A_{\tau}))\right)
\end{align}$$

where $\varepsilon ^{ab}$ is the antisymmetric tensor on the Cauchy surface $\displaystyle{\Sigma _{\tau}}$, normalized by $\sqrt{ \sigma }\varepsilon ^{r\phi}=1$. After integrating by parts on $\Sigma$, the Euclidean action can be written as a sum of two pieces:

$$\begin{align}
S_{E}[A_{a},A_{\tau}] & =S_{E}^{\mathrm{red}}[A_{a}]+S_{E}^{(A_{\tau})}[A_{a},A_{\tau}] \\
S_{E}^{(A_{\tau})}[A_{a},A_{\tau}] & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\left[\frac{\sqrt{ \sigma }}{2}A_{\tau}\mathcal{D}A_{\tau}+A_{\tau}\mathcal{J}^{a}A_{a}\right],
\end{align}$$

where

$$\begin{align}
\mathcal{D} & :=\frac{\mu ^{2}}{N}-D_{a}\left(\frac{1}{N}\sigma ^{ab}D_{b}\right) \\
\mathcal{J}^{a} & =D_{b}\left(\frac{\sqrt{ \sigma }}{N}\sigma ^{ba}\partial _{\tau}\right)-\frac{ik}{2\pi}\varepsilon ^{ba}D_{b}.
\end{align}$$

At this stage one can already see that $A_{\tau}$ is non-dynamical. Integrating it out in the second-order Euclidean path integral produces the inverse kernel $\mathcal{D}^{-1}$ in the $\tau\tau$ component of $G_{\mathrm{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})$. However, in the canonical formalism one first eliminates $A_{\tau}$ through the constraint. The canonical momentum conjugate to $A_{a}$ is

$$\begin{align}
\pi ^{a} & =\frac{\partial \mathcal{L}_{E}}{\partial(\partial _{\tau}A_{a})} \\
 & =\frac{\sqrt{ \sigma }}{N}\sigma ^{ab}(\partial _{\tau}A_{b}-D_{b}A_{\tau})-\frac{ik}{4\pi}\varepsilon ^{ab}A_{b}
\end{align}$$

and varying the action with respect to $A_{\tau}$ gives the constraint equation

$$\begin{align}
D_{a}\pi ^{a}+\frac{\mu ^{2}\sqrt{ \sigma }}{N}A_{\tau}-\frac{ik}{4\pi}\epsilon ^{ab}D_{a}A_{b} & \approx0
\end{align}$$

Therefore

$$\begin{align}
\mathcal{A}_{\tau}^{\mathrm{cl}} & :=-\frac{N}{\mu ^{2}\sqrt{ \sigma }}\left( D_{a}\pi ^{a}-\frac{ik}{4\pi}\epsilon ^{ab}D_{a}A_{b} \right)
\end{align}$$

The part of the action containing $A_{\tau}$ is then

$$\begin{align}
S_{E}^{(A_{\tau})} & =S_{E}^{\mathrm{red}}[A_{a},\pi ^{a}]+\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\,\frac{\mu ^{2}\sqrt{ \sigma }}{2N}\left(A_{\tau}-\mathcal{A}_{\tau}^{\mathrm{cl}}\right)^{2}.
\end{align}$$

Completing the square, we obtain

$$\begin{align}
S_{E}^{(\eta)} & =\int \mathrm{d}\tau \int _{\Sigma}\mathrm{d}^{2}x\,\frac{\mu ^{2}\sqrt{ \sigma }}{2N}\eta ^{2}.
\end{align}$$

It is therefore natural to separate the constrained part and the independent quantum fluctuation of $A_{\tau}$ by writing

$$\begin{align}
A_{\tau} & =A_{\tau}^{\mathrm{cl}}+\eta
\end{align}$$

with $\eta$ the shifted fluctuation integrated over in the path integral. The action then becomes

$$\begin{align}
S_{E}[A_{\tau},A_{a}] & =S_{E}^{\mathrm{red}}[A_{a},\pi ^{a}]+S_{E}^{(\eta)}[\eta]
\end{align}$$

The $\tau\tau$ component of the path-integral correlator therefore splits into two pieces:

$$\begin{align}
G_{\mathrm{path};\tau \tau}(x_{1},x_{2}) & = \left\langle A_{\tau}(x_{1})A_{\tau}(x_{2})\right\rangle _{\mathrm{path}} \\
 & = \left\langle A_{\tau}^{\mathrm{cl}}(x_{1})A_{\tau}^{\mathrm{cl}}(x_{2})\right\rangle +\langle \eta (x_{1})\eta (x_{2})\rangle \\
 & = G_{\tau,\tau}(x_{1},x_{2})+\frac{N(x_{1})}{\mu ^{2}\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

The first term is precisely the canonical correlator. Therefore

$$\begin{align}
G_{\tau,\tau}(x_{1},x_{2}) & =G_{\mathrm{path};\tau \tau}(x_{1},x_{2})-\frac{N(x_{1})}{\mu ^{2}\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2}).
\end{align}$$

Raising the two indices, we obtain exactly the same contact term as in the explicit mode sum:

$$\begin{align}
G^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =G_{\mathrm{path}}^{\mu_{1},\mu_{2}}(x_{1},x_{2})-\frac{1}{\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau}\frac{N(x_{1})}{\sqrt{ \sigma }(x_{1})}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

This also agrees with the branch decomposition of the explicit mode sum.

For a more systematic constrained-Hamiltonian derivation of this statement, based on the Faddeev-Senjanovic path integral for second-class systems, see [[Articles/Quantization in AdS/Proca-Chern-Simons/arxiv/appendix_b|Appendix B]].
