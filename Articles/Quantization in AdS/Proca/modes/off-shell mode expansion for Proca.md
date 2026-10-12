# Proca

We start from the action

$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\dfrac{1}{4}F_{\mu \nu}F^{\mu \nu}-\dfrac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left(r(\dot{A}_{r}-\partial _{r}A_{t})^{2}+\dfrac{1}{rf}(\dot{A}_{\phi}-\partial _{\phi}A_{t})^{2}\right. \\
 & \left.-\dfrac{f}{r}(\partial _{r}A_{\phi}-\partial _{\phi}A_{r})^{2}+\dfrac{\mu ^{2}r}{f}A_{t}^{2}-\mu ^{2}rfA_{r}^{2}-\dfrac{\mu ^{2}}{r}A_{\phi}^{2}\right)
\end{align}$$

where the metric is

$$\begin{align}
\mathrm{d}s^{2} & =-f\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{f}+r^{2}\mathrm{d}\phi ^{2}, & f=1+r^{2}
\end{align}$$

introduce

$$\begin{align}
(\alpha,\beta)_{0} & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi \dfrac{r}{f} \alpha ^{*}\beta \\
(a,b)_{E} & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left( ra^{*}_{r}b_{r}+\dfrac{1}{fr}a^{*}_{\phi}b_{\phi} \right)
\end{align}$$

split

$$\begin{align}
A & =A_{\mu}\mathrm{d}x^{\mu}=A_{t}\mathrm{d}t+a, & a=A_{i}\mathrm{d}x^{i} \\
F & =\mathrm{d}A=\mathrm{d}t\wedge(\dot{a}-\mathrm{d}_{\Sigma}A_{t})+\mathrm{d}_{\Sigma}a
\end{align}$$

complexify the field components (and impose the reality condition later), the action can be written as

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t((\dot{a}-\mathrm{d}_{\Sigma}A_{t},\dot{a}-\mathrm{d}_{\Sigma}A_{t})_{E}+\mu ^{2}(A_{t},A_{t})_{0}-V[a])
\end{align}$$

where

$$\begin{align}
V[a] & =(a,\mathsf{C}a)_{E} \\
 & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left( \dfrac{f}{r}|\partial _{r}a_{\phi}-\partial _{\phi}a_{r}|^{2}+\mu ^{2}rf|a_{r}|^{2}+\dfrac{\mu ^{2}}{r}|a_{\phi}|^{2} \right) \\
\implies (\mathsf{C}a)_{r} & =\mu ^{2}fa_{r}+\dfrac{1}{r}\partial _{\phi}\left( \dfrac{f}{r}(\partial _{r}a_{\phi}-\partial _{\phi}a_{r}) \right) \\
(\mathsf{C}a)_{\phi} & =\mu ^{2}fa_{\phi}-fr\partial _{r}\left( \dfrac{f}{r}(\partial _{r}a_{\phi}-\partial _{\phi}a_{r}) \right)
\end{align}$$

for spatial exterior derivative $\displaystyle{\mathrm{d}_{\Sigma}\alpha=(\partial _{r}\alpha,\partial _{\phi}\alpha)}$, we define its adjoint $\displaystyle{\mathrm{d}_{Sg,}^{\dagger}\alpha}$ as

$$\begin{align}
\mathrm{d}_{\Sigma}^{\dagger}\alpha & =-\dfrac{f}{r}\left(\partial _{r}(ra_{r})+\partial _{\phi}\left( \dfrac{a_{\phi}}{fr} \right)\right)
\end{align}$$

then we define the operator

$$\begin{align}
\mathsf{L}=\mathrm{d}_{\Sigma}^{\dagger}\mathrm{d}_{\Sigma}+\mu ^{2} & =\mu ^{2}-\dfrac{f}{r}\partial _{r}(r\partial _{r})-\dfrac{1}{r^{2}}\partial _{\phi}^{2}
\end{align}$$

which is positive and bounded below by $\mu^2$, so its inverse $\mathsf L^{-1}$ exists. Take a IbP of the action with respect to $A_t$, ignoring the boundary terms (which can be shown to vanish under the asymptotic boundary condition)

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}} \mathrm{d}t((\dot{a},\dot{a})_{E}+(A_{t},\mathsf{L}A_{t})_{0}-2\mathrm{Re}(A_{t},\mathrm{d}^{\dagger}\dot{a})_{0}-V[a])
\end{align}$$

define

$$\begin{align}
\mathsf{T} & =L^{-1}\mathrm{d}^{\dagger}_{\Sigma}, & \mathsf{K} & =1-\mathrm{d}_{\Sigma}\mathsf{L}^{-1}\mathrm{d}^{\dagger}_{\Sigma}, & \eta=A_{t}-\mathsf{T}\dot{a} \\
\implies \mathsf{K}^{-1} & =1+\dfrac{1}{\mu ^{2}}\mathrm{d}_{\Sigma}\mathrm{d}^{\dagger}_{\Sigma}
\end{align}$$

then completing the square, the action becomes

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t((\dot{a},\mathsf{K}\dot{a})_{E}-(a,\mathsf{C}a)_{E}+(\eta,\mathsf{L}\eta)_{0})
\end{align}$$

consider the generalized eigenvalue problem

$$\begin{align}
\omega ^{2}\mathsf{K}u & =\mathsf{C}u \\
\implies \mathsf{K^{-1}C}u & =\omega ^{2}u
\end{align}$$

write

$$\begin{align}
u_{m} & =\dfrac{e^{im\phi}}{\sqrt{ 2\pi }}\left( \dfrac{Q}{rf}\mathrm{d}r+iP\mathrm{d}\phi \right)
\end{align}$$

$\displaystyle{\mathsf{K^{-1}C}u=\omega ^{2}u}$ becomes

$$\begin{align}
\begin{pmatrix}
-f^{2}\partial _{r}^{2}+f\left( \dfrac{1}{r}-r \right)\partial _{r}+f\left( \mu ^{2}+\dfrac{m^{2}}{r^{2}} \right) & -\dfrac{2mf}{r^{2}} \\
-\dfrac{2mf}{r^{2}} & -f^{2}\partial _{r}^{2}+f\left( \dfrac{1}{r}-r \right)\partial _{r}+f\left( \mu ^{2}+\dfrac{m^{2}}{r^{2}} \right)
\end{pmatrix}\begin{pmatrix}
Q \\
P
\end{pmatrix} & =\omega ^{2}\begin{pmatrix}
Q \\
P
\end{pmatrix}
\end{align}$$

take $\displaystyle{Q=rv_{\sigma},P=\sigma rv_{\sigma},\sigma=\pm 1}$, the generalized eigenvalue problem becomes

$$\begin{align}
-\dfrac{1}{r}\partial _{r}(rf\partial _{r}v_{\sigma})+\left( \dfrac{(m-\sigma)^{2}}{r^{2}}+\mu ^{2}-1 \right)v_{\sigma} & =\dfrac{\omega ^{2}}{f}v_{\sigma}
\end{align}$$

which is exactly the scalar radial equation with mass square $\displaystyle{\mu ^{2}-1}$ and angular momentum $\displaystyle{m-\sigma}$. Let

$$\begin{align}
\Delta & =1+\mu, & \ell & =|m-\sigma|, & \omega _{n\ell} & =\Delta+2n+\ell, & n\geqslant 0
\end{align}$$

the radial eigenfunctions are chosen to be

$$\begin{align}
v_{n,\ell,\sigma}(r) & =\sqrt{ \dfrac{2\omega _{n\ell _{\sigma}}n!\Gamma(n+\ell+\mu+1)}{\Gamma(n+\ell+1)\Gamma(n+\mu+1)} }r^{\ell}f^{-(\Delta+\ell)/2}P_{n}^{(\ell,\mu)}\left(\dfrac{1-r^{2}}{1+r^{2}}\right)
\end{align}$$

which are normalized as

$$\begin{align}
\int _{0}^{\infty} \mathrm{d}r \dfrac{r}{f}v_{n,\ell,\sigma}v_{m,\ell,\sigma} & =\delta _{nm}
\end{align}$$

introduce two one-forms

$$\begin{align}
\alpha _{\sigma} & =e^{i\sigma \phi}\left(\dfrac{\mathrm{d}r}{f}+i\sigma r \mathrm{d}\phi\right)
\end{align}$$

then our complete mode basis is

$$\begin{align}
u_{nm\sigma} & =\dfrac{e^{i(m-\sigma)\phi}}{\sqrt{ 2\pi }}v_{n,|m-\sigma|,\sigma}(r)\alpha _{\sigma}
\end{align}$$

these modes are not kinetic-orthonormal, and we need to diagonalize the Gram matrix

$$\begin{align}
G_{IJ} & =(u_{I},\mathsf{K}u_{J})_{E}
\end{align}$$

non-diagonal elements only occur when the modes share the same $\omega$ and $m$. For diagonal elements, we have

$$\begin{align}
G_{II} & =\int _{0}^{\infty}\mathrm{d}r\dfrac{r}{f^{2}}(1+f)v^{2}-\dfrac{1}{\omega ^{2}}\int _{0}^{\infty}\mathrm{d}rr\left(J^{2}-\dfrac{2r}{f}vJ\right)
\end{align}$$

here $\displaystyle{J=v'+\dfrac{1-\sigma m}{r}v}$. Integrate the second term by parts

$$\begin{align}
G_{II} & =\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f^{2}}(1+f)v^{2}- \dfrac{1}{\omega ^{2}}\int _{0}^{\infty}\mathrm{d}r\left(rv'^{2}+\dfrac{\ell ^{2}}{r}v^{2}-\dfrac{2(1-\sigma m)r}{f}v^{2}+\dfrac{2r}{f^{2}}v^{2}\right)
\end{align}$$

multiply the radial equation by $\displaystyle{\dfrac{rv}{f}}$ and integrate, we get

$$\begin{align}
-\int _{0}^{\infty}\mathrm{d}r\dfrac{v}{f}(rfv')'+\int _{0}^{\infty}\mathrm{d}r\left( \dfrac{\ell ^{2}}{r}+r(\mu ^{2}-1) \right)\dfrac{v^{2}}{f} & =\omega ^{2}\int _{0}^{\infty}\mathrm{d}r\dfrac{r}{f^{2}}v^{2} \\
\implies \int _{0}^{\infty}\mathrm{d}r\left(rv'^{2}-\dfrac{2r^{2}}{f}vv'\right)+\int _{0}^{\infty}\mathrm{d}r\left(\dfrac{\ell ^{2}}{r}+r(\mu ^{2}-1)\right)\dfrac{v^{2}}{f} & =\omega ^{2}\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f^{2}}v^{2} \\
\implies \int _{0}^{\infty}\mathrm{d}r \left(rv'^{2}+\dfrac{2r}{f^{2}}v^{2}\right)+\int _{0}^{\infty} \mathrm{d}r \left( \dfrac{\ell ^{2}}{r}+r(\mu ^{2}-1) \right) \dfrac{v^{2}}{f} & =\omega ^{2}\int _{0}^{\infty} \mathrm{d}r \dfrac{r}{f^{2}}v^{2} \\
\implies \int _{0}^{\infty}\mathrm{d}r \left( rv'^{2}+\dfrac{\ell ^{2}}{r}v^{2}-\dfrac{2(1-\sigma m)r}{f}v^{2}+\dfrac{2r}{f^{2}}v^{2} \right) & =\int _{0}^{\infty}\mathrm{d}r\left(\dfrac{\ell ^{2}}{r}-\dfrac{\ell ^{2}}{rf}-2\dfrac{(1-\sigma m)r}{f}-(\mu ^{2}-1) \dfrac{r}{f}\right)v^{2}+\omega ^{2}\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f^{2}}v^{2} \\
 & =\omega ^{2}\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f^{2}}v^{2}+(m^{2}-\mu ^{2})\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f}v^{2}
\end{align}$$

therefore

$$\begin{align}
G_{II} & =\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{f^{2}}(1+f)v^{2}-\dfrac{1}{\omega ^{2}}\left(\omega ^{2}\int _{0}^{\infty} \mathrm{d}r \dfrac{r}{f^{2}}v^{2}+(m^{2}-\mu ^{2}) \int _{0}^{\infty} \mathrm{d}r \dfrac{r}{f} v^{2}\right) \\
 & =\dfrac{\omega ^{2}+\mu ^{2}-m^{2}}{\omega ^{2}}
\end{align}$$

for non-zero non-diagonal elements, by some tedious calculation, we have

$$\begin{align}
G_{n\geqslant 1,m\neq 0} & =\begin{pmatrix}
g & b \\
b & g\end{pmatrix} \\
g & =\dfrac{\omega ^{2}+\mu ^{2}-m^{2}}{\omega ^{2}}\quad b=\dfrac{4\sqrt{ n(n+|m|)(n+\mu)(n+\mu+|m|) }}{\omega ^{2}} \\
G_{n,m=0} & =\begin{pmatrix}
 1+\dfrac{\mu ^{2}}{\omega ^{2}} & -1+\dfrac{\mu ^{2}}{\omega ^{2}} \\
 -1+\dfrac{\mu ^{2}}{\omega ^{2}} & 1+\dfrac{\mu ^{2}}{\omega ^{2}}
\end{pmatrix}
\end{align}$$

here the labels of $\displaystyle{G_{n\geqslant 1,m\neq 0}}$ are $\displaystyle{u_{1}=u_{n,m,\mathrm{sgn}( m )}}$ and $\displaystyle{u_{2}=u_{n-1,m,-\mathrm{sgn}( m )}}$.

therefore for $\displaystyle{|m|\geqslant 1,n\geqslant 1}$, take

$$\begin{align}
E_{\pm} & =\dfrac{u_{1}\pm u_{2}}{\sqrt{ 2(g\pm b) }}
\end{align}$$

for $\displaystyle{|m|\geqslant 1,n=0}$, take

$$\begin{align}
E & =\sqrt{ \dfrac{\omega}{2\mu} }u_{1}
\end{align}$$

and for $\displaystyle{m=0}$, take

$$\begin{align}
e_{r,n} & =\dfrac{1}{\sqrt{ 2\pi }} \dfrac{\omega}{\mu} \dfrac{v_{n,1}}{f}\mathrm{d}r, & e_{\phi,n} & =\dfrac{1}{\sqrt{ 2\pi }} rv_{n,1}\mathrm{d}\phi
\end{align}$$

collect these modes into a complete set $\displaystyle{\left\{e_{I}\right\}}$, and we have

$$\begin{align}
(e_{I},\mathsf{K}e_{J})_{E} & =\delta _{IJ}, & (e_{I},\mathsf{C}e_{J})_{E} & =\omega ^{2}_{J}\delta _{IJ}
\end{align}$$

for $\displaystyle{A_{t}=\mathsf{T}\dot{a}+\eta}$, we write

$$\begin{align}
b_{I} & =\mathsf{T}e_{I}
\end{align}$$

for the $\displaystyle{\mathsf{T}\dot{a}}$ part. For the $\displaystyle{\eta}$ part, we choose a complete basis $\displaystyle{\left\{w_{A}\right\}}$ orthonormal with respect to $\displaystyle{(\cdot,\mathsf{L}\cdot)_{0}}$ such that

$$\begin{align}
(w_{A},\mathsf{L}w_{B})_{0} & =\delta _{AB}
\end{align}$$

explicitly, for $\displaystyle{A=(n,m)}$ with $\displaystyle{n\geqslant 0}$ and $\displaystyle{m\in \mathbb{Z}}$

$$\begin{align}
w_{nm} & =\dfrac{e^{im\phi}}{\sqrt{ 2\pi }}\dfrac{\sqrt{ f }v_{n,|m|}}{\sqrt{ (\mu+2n+|m|+1)^{2}-1 }}
\end{align}$$

expand

$$\begin{align}
A_{i} & =\sum _{I}q_{I}(t) e_{Ii}(r,\phi) \\
A_{t} & =\sum _{I}\dot{q}_{I}(t)b_{I}(r,\phi)+\sum _{A}z_{A}(t)w_{A}(r,\phi)
\end{align}$$

plug these expansions into the action, and using the orthogonality relations above, we obtain

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\left(\sum _{I}( \dot{q}^{2}_{I}-\omega ^{2}_{I}q_{I}^{2})+\sum _{A}z_{A}^{2} \right)
\end{align}$$

# Maxwell

We start from the action

$$\begin{align}
S & =-\dfrac{1}{4}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu} \\
 & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t \int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi} \mathrm{d}\phi \left(r( \dot{A}_{r}-\partial _{r}A_{t})^{2}+\dfrac{1}{rf}(\dot{A}_{\phi}-\partial _{\phi}A_{t})^{2}-\dfrac{f}{r}(\partial _{r}A_{\phi}-\partial _{\phi}A_{r})^{2} \right)
\end{align}$$

the asymptotic boundary conditions are the same as in [[Articles/Quantization in AdS/electric field/asymptotic behavior|asymptotic behavior]]. In addition to $\displaystyle{(\cdot,\cdot)_{E}}$ and $\displaystyle{(\cdot,\cdot)_{0}}$, we introduce

$$\begin{align}
(v,w)_{W} & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi \dfrac{r}{f^{2}}v^{*}w
\end{align}$$

define

$$\begin{align}
\mathfrak{b}a & =\dfrac{f}{r}(\partial _{r}a_{\phi}-\partial _{\phi}a_{r})
\end{align}$$

the action becomes

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\left((\dot{a}-\mathrm{d}_{\Sigma}A_{t},\dot{a}-\mathrm{d}_{\Sigma}A_{t})_{E}-(\mathfrak{b}a,\mathfrak{b}a)_{0}\right)
\end{align}$$

it is convenient to introduce

$$\begin{align}
u & =\dfrac{r}{\sqrt{ f }}, & r & =\dfrac{u}{\sqrt{ 1-u^{2} }}, & 0\leqslant u< 1
\end{align}$$

we first construct the transverse spatial modes. Define

$$\begin{align}
\mathsf{T}s & =\dfrac{1}{r}\partial _{\phi}s\mathrm{d}r-rf\partial _{r}s\mathrm{d}\phi \\
 & =\dfrac{\partial _{\phi}s}{u(1-u^{2})}\mathrm{d}u-u \partial _{u}s\mathrm{d}\phi \\
\mathsf{B} & =-\dfrac{f}{r}\partial _{r}(rf\partial _{r})-\dfrac{f}{r^{2}}\partial _{\phi}^{2} \\
 & =-\dfrac{1-u^{2}}{u}\partial _{u}(u \partial _{u})-\dfrac{1}{u^{2}}\partial _{\phi}^{2}
\end{align}$$

one can check that

$$\begin{align}
\partial _{r}[r(\mathsf{T}s)_{r}]+\partial _{\phi}\left[ \dfrac{(\mathsf{T}s)_{\phi}}{fr} \right] & =0, & \mathfrak{b}\mathsf{T}=\mathsf{B}
\end{align}$$

therefore transverse modes can be written as $\displaystyle{a=\mathsf{T}s}$. For regular $\displaystyle{s,t=\mathcal{O}(r^{-2})}$ and smooth bounded $\displaystyle{\chi}$, integration by parts gives

$$\begin{align}
(\mathsf{T}s,\mathsf{T}t)_{E} & =(s,\mathsf{B}t)_{0}, & (\mathsf{T}s,\mathrm{d}_{\Sigma}\chi)_{E} & =0
\end{align}$$

we need to solve the following scalar eigenvalue problem

$$\begin{align}
\mathsf{B}s & =\omega ^{2}s
\end{align}$$

the eigenfunctions are

$$\begin{align}
s_{nm} & =\sqrt{ \dfrac{\omega _{nm}(n+|m|+1)}{\pi(n+1)} } e^{im\phi}u^{|m|}(1-u^{2})P_{n}^{(|m|,1)}(1-2u^{2}) \\
 & =\sqrt{ \dfrac{\omega _{nm}(n+|m|+1)}{\pi(n+1)} }e^{im\phi} r^{|m|}f^{-(|m|+2)/2}P_{n}^{(|m|,1)}\left( \dfrac{1-r^{2}}{1+r^{2}} \right)
\end{align}$$

which are orthonormal with respect to $(\cdot,\cdot)_0$. Now take

$$\begin{align}
e_{nm} & =\dfrac{1}{\omega _{nm}}\mathsf{T}s_{nm} \\
\implies(e_{I},e_{I'}) & =\delta _{II'}, & (\mathfrak{b}e_{I},\mathfrak{b}e_{I'}) & =\omega ^{2}_{I}\delta _{II'}
\end{align}$$

for the longitudinal modes, we define

$$\begin{align}
\mathsf{D} & =-\dfrac{f^{2}}{r}\partial _{r}(r\partial _{r})-\dfrac{f}{r^{2}}\partial _{\phi}^{2} \\
 & =-\dfrac{1}{u}\partial _{u}(u(1-u^{2})\partial _{u})-\dfrac{1}{u^{2}}\partial _{\phi}^{2} \\
\implies(\mathrm{d}_{\Sigma}\chi,\mathrm{d}_{\Sigma}\eta)_{E} & =(\chi,\mathsf{D}\eta)_{W}
\end{align}$$

and we need to solve the following generalized eigenvalue problem

$$\begin{align}
\mathsf{D}v & =\lambda v
\end{align}$$

the normalized eigenfunctions are

$$\begin{align}
v_{nm} & =\sqrt{ \dfrac{2n+|m|+1}{\pi} } e^{im\phi} r^{|m|}f^{-|m|/2}P_{n}^{(|m|,0)}\left( \dfrac{1-r^{2}}{1+r^{2}} \right), & n\geqslant 0 \\
\lambda _{nm} & =(2n+|m|)(2n+|m|+2)
\end{align}$$

which are orthonornal with respect to $\displaystyle{(\cdot,\cdot)_{W}}$. In particular, there is one zero eigenvalue,

$$\begin{align}
\lambda _{00} & =0, & v_{00} & =\dfrac{1}{\sqrt{ \pi }}
\end{align}$$

keep this constant mode separately. For $\displaystyle{J=(n,m)\neq(0,0)}$, define

$$\begin{align}
w_{J} & =\dfrac{v_{J}}{\sqrt{ \lambda _{J} }}
\end{align}$$

then

$$\begin{align}
(\mathrm{d}_{\Sigma}w_{J},\mathrm{d}_{\Sigma}w_{J'}) & =\delta _{JJ'}, & (e_{I},\mathrm{d}_{\Sigma}w_{J})_{E} & =0
\end{align}$$

expand

$$\begin{align}
A_{i} & =\sum _{I}q_{I}(t)e_{Ii}(r,\phi)+\sum _{J}x_{J}(t)\partial _{i}w_{J}(r,\phi) \\
A_{t} & =y_{0}(t)v_{0}+\sum _{J}y_{j}(t)w_{J}(r,\phi)
\end{align}$$

plug back into the action, and use the orthogonality relations above, we have

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\left(\sum _{I}(\dot{q}_{I}-\omega ^{2}_{I}q_{I}^{2})+\sum _{J}(\dot{x}_{J}-y_{J})^{2}\right)
\end{align}$$

---

# Linearized Gravity

Start from the action

$$\begin{align}
S & =\dfrac{1}{\kappa ^{2}}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\dfrac{2}{\kappa ^{2}}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-1)
\end{align}$$

with $\displaystyle{\kappa ^{2}=16\pi G}$. We expand the metric as

$$\begin{align}
g & =g^{(0)}+\kappa h+\mathcal{O}(\kappa ^{2})
\end{align}$$

around the background

$$\begin{align}
\mathrm{d}s^{2}_{0} & =-f\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{f}+r^{2}\mathrm{d}\phi ^{2}, & f=1+r^{2}
\end{align}$$

we impose the Brown-Henneaux boundary conditions

$$\begin{align}
h_{tt},h_{t\phi},h_{\phi \phi} & =\mathcal{O}(r^{0}), & h_{rr} & =\mathcal{O}(r^{-4}), & h_{tr},h_{r\phi} & =\mathcal{O}(r^{-3})
\end{align}$$

introduce the spatial disk coordinate

$$\begin{align}
\rho & = \dfrac{r}{1+f}, & r & =\dfrac{2\rho}{1-\rho ^{2}}, & z & =\rho e^{i\phi}, & 0\leqslant \rho< 1 \\
\mathrm{d}s^{2}_{0} & =-N^{2}\mathrm{d}t^{2}+\sigma _{ij}\mathrm{d}x^{i}\mathrm{d}x^{j}, & N & =\dfrac{1+\rho ^{2}}{1-\rho ^{2}}, \\
\sigma _{ij}\mathrm{d}x^{i}\mathrm{d}x^{j} & =\dfrac{4(\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\phi ^{2})}{(1-\rho ^{2})^{2}}, & R[\sigma] & =-2, & D_{i}D_{j}N & =N\sigma _{ij}
\end{align}$$

Split the ADM variables as

$$\begin{align}
N_{\mathrm{ADM}}&=N+\nu, &(N_i)_{\mathrm{ADM}}&=\beta_i, &(\sigma_{ij})_{\mathrm{ADM}}&=\sigma_{ij}+s_{ij},\\
h_{tt}&=-2N\nu, &h_{ti}&=\beta_i, &h_{ij}&=s_{ij}.
\end{align}$$

Define

$$\begin{align}
B_{ij}&=\dot s_{ij}-D_i\beta_j-D_j\beta_i, &s&=\sigma^{ij}s_{ij}, &B&=\sigma^{ij}B_{ij},\\
\mathcal Ls&=D_iD_js^{ij}-\Delta s+s, &\Delta&=D_iD^i.
\end{align}$$

Then the quadratic action is

$$\begin{align}
S^{(2)}&=\int\mathrm{d}t\left[ \frac{1}{4\kappa^2}\int_\Sigma\mathrm{d}^2x\frac{\sqrt\sigma}{N} (B_{ij}B^{ij}-B^2) +\frac{1}{\kappa^2}\int_\Sigma\mathrm{d}^2x\sqrt\sigma\,\nu\mathcal Ls -V[s]\right].
\end{align}$$

The spatial potential is

$$\begin{align}
C^k{}_{ij}[s]&=\frac12(D_is_j{}^k+D_js_i{}^k-D^ks_{ij}), &v^k[s]&=D_js^{jk}-\frac12D^ks,\\
V[s]&=\frac{1}{2\kappa^2}\int_\Sigma\mathrm{d}^2x\sqrt\sigma \left[N(s_{ij}s^{ij}-s^2) +(s^{ij}C^k{}_{ij}[s]-s\,v^k[s])D_kN\right].
\end{align}$$

Here the spatial boundary Hessian has been included before taking the cutoff to infinity; its contribution vanishes under the stated boundary conditions. The lapse has no quadratic term and no time derivative, so we keep it as an independent multiplier.

The momentum conjugate to $s_{ij}$ is

$$\begin{align}
\pi^{ij}&=\frac{\sqrt\sigma}{2\kappa^2N}(B^{ij}-\sigma^{ij}B), &p^{ij}&=\frac{\pi^{ij}}{\sqrt\sigma}.
\end{align}$$

Varying the lapse and shift gives the constraints

$$\begin{align}
\mathcal Ls&=0, &(\mathcal Mp)_i&=-2D_jp^j{}_i=0.
\end{align}$$

We identify these constraints without imposing them on the expansion. For the spatial pairing

$$\begin{align}
\langle X,Y\rangle&=\int_\Sigma\mathrm{d}^2x\sqrt\sigma\,X_{ij}Y^{ij},
\end{align}$$

the adjoints are

$$\begin{align}
(\mathcal L^*\alpha)_{ij} &=D_iD_j\alpha-\sigma_{ij}\Delta\alpha+\sigma_{ij}\alpha, &(\mathcal M^*v)_{ij}&=D_iv_j+D_jv_i,\\
\mathcal L\mathcal M^*&=0, &\mathcal M\mathcal L^*&=0.
\end{align}$$

Together with the vanishing lapse and shift momenta, these are first-class constraints. Proper gauge directions have the form

$$\begin{align}
\delta s_{ij}&=(\mathcal M^*v)_{ij}, &\delta p^{ij}&=\frac{1}{\kappa^2}(\mathcal L^*\alpha)^{ij},
\end{align}$$

with smearings in the proper-gauge domain, whose canonical boundary charges vanish. Boundary symmetry transformations must be kept.

After constraint reduction and the proper gauge quotient, the spatial data are transverse and traceless. On the disk they can be written as

$$\begin{align}
T&=\operatorname{Re}(F(z)\mathrm{d}z^2), &\partial_{\bar z}F&=0.
\end{align}$$

Choose the real modes

$$\begin{align}
T_{mc}&=\operatorname{Re}(z^{m-2}\mathrm{d}z^2), &T_{ms}&=\operatorname{Im}(z^{m-2}\mathrm{d}z^2), &m&\geqslant2,\\
U_{mc}&=\operatorname{Re}z^m, &U_{ms}&=\operatorname{Im}z^m.
\end{align}$$

The TT condition here is on the two-dimensional spatial disk. These tensors are smooth at the center in $X=\rho\cos\phi$, $Y=\rho\sin\phi$. Direct integration gives

$$\begin{align}
\langle T_{mA},T_{m'B}\rangle &=I_m\delta_{mm'}\delta_{AB}, &I_m&=\frac{\pi}{m(m^2-1)},\\
\langle T_{mA},NT_{m'B}\rangle &=mI_m\delta_{mm'}\delta_{AB}, &A,B&\in\{c,s\}.
\end{align}$$

For example,

$$\begin{align}
I_m&=\pi\int_0^1\mathrm{d}\rho\,\rho^{2m-3}(1-\rho^2)^2,\\
mI_m&=\pi\int_0^1\mathrm{d}\rho\,\rho^{2m-3}(1-\rho^4).
\end{align}$$

For a TT tensor the potential simplifies to

$$\begin{align}
V[T]&=\frac{1}{4\kappa^2}\langle T,NT\rangle.
\end{align}$$

The distinction between proper gauge and boundary modes can be seen explicitly. Define

$$\begin{align}
F_{mA}&=\rho^m\frac{(m+1)-(m-1)\rho^2}{1-\rho^2}
\begin{cases}\cos(m\phi),&A=c,\\
\sin(m\phi),&A=s.
\end{cases}\\
(\Delta-2)F_{mA}&=0, &\mathcal L^*F_{mA}&=m(m^2-1)T_{mA}.
\end{align}$$

Here $F_{mA}\sim r$, so the corresponding time component $F_{mA}/N$ does not vanish at the boundary. These modes are large boundary directions. The $m=0,1$ expressions give zero tensors, while the would-be TT profiles $z^{-2}\mathrm{d}z^2$ and $z^{-1}\mathrm{d}z^2$ are singular at the center.

To construct a history with arbitrary time dependence, use

$$\begin{align}
D_iD_jU_{mA}&=m(m-N)T_{mA,ij}, &b_{mA,i}&=\frac{1}{2m^2}\partial_iU_{mA}.
\end{align}$$

For one mode, suppress $m,A$ and take

$$\begin{align}
\widetilde h_{ij}[a]&=a(t)T_{ij}, &\widetilde h_{ti}[a]&=\dot a(t)b_i, &\widetilde h_{tt}[a]&=0.
\end{align}$$

Then

$$\begin{align}
B_{ij}&=\frac{N}{m}\dot a\,T_{ij}, &p^{ij}&=\frac{\dot a}{2\kappa^2m}T^{ij},
\end{align}$$

so the lapse and shift constraints hold for arbitrary $a(t)$. The remaining Einstein equation is visible in the residual

$$\begin{align}
\mathcal E_{\mu\nu}&=G_{\mu\nu}-g_{\mu\nu},\\
\delta\mathcal E_{t\mu}[\widetilde h]&=0, &\delta\mathcal E_{ij}[\widetilde h] &=\frac{\ddot a+m^2a}{2mN}T_{ij}.
\end{align}$$

We do not set this residual to zero. Substitution into the quadratic action gives

$$\begin{align}
S^{(2)}[\widetilde h[a]] &=\frac{I_m}{4\kappa^2m}\int\mathrm{d}t\,(\dot a^2-m^2a^2).
\end{align}$$

We still need to repair the radial mixed components. In disk coordinates the boundary conditions require $h_{t\rho},h_{\rho\phi}=O(1-\rho^2)$, whereas the corresponding components of $\widetilde h$ are generally $O(1)$.

Take a smooth cutoff $\chi(\rho)$ which is zero for $\rho\leqslant1/3$ and one for $\rho\geqslant2/3$. Define

$$\begin{align}
V^\rho&=0, &V^\phi(\rho,\phi) &=\chi(\rho)\int_\rho^1\mathrm{d}u\, \frac{T_{u\phi}(u,\phi)}{\sigma_{\phi\phi}(u)},\\
W(\rho,\phi)&=-\chi(\rho)\int_\rho^1\mathrm{d}u\, \frac{b_\rho(u,\phi)}{N(u)^2}.
\end{align}$$

Set both functions to zero on the inner disk, so the integrals are used only away from the center. Write

$$\begin{align}
X[a]&=\dot a\,W\partial_t+aV^\phi\partial_\phi, &\mathcal H[a]&=\widetilde h[a]+\mathcal L_{X[a]}g_0,\\
S_{ij}&=T_{ij}+D_iV_j+D_jV_i, &\mathcal B_i&=b_i+V_i-N^2\partial_iW.
\end{align}$$

The repaired components are

$$\begin{align}
\mathcal H_{ij}[a]&=aS_{ij}, &\mathcal H_{ti}[a]&=\dot a\,\mathcal B_i, &\mathcal H_{tt}[a]&=-2N^2W\ddot a.
\end{align}$$

In the outer collar $S_{\rho\phi}=\mathcal B_\rho=0$, and $V^\phi,W=O((1-\rho)^3)$. Thus each repaired history satisfies the strict Brown–Henneaux conditions. The intermediate field $\widetilde h$ is used only to calculate the profiles and action.

Since the background satisfies the Einstein equations,

$$\begin{align}
\delta\mathcal E[\mathcal L_Xg_0]&=0, &\delta\mathcal E_{ij}[\mathcal H[a]] &=\frac{\ddot a+m^2a}{2mN}T_{ij},\\
S^{(2)}[\mathcal H[a]]&=S^{(2)}[\widetilde h[a]], &\mathcal LS&=0.
\end{align}$$

The $\ddot a$ term appears only in the lapse, whose coefficient $\mathcal LS$ vanishes. It adds no higher-time-derivative term to this mode action.

Normalize the profiles by

$$\begin{align}
c_m&=\sqrt{\frac{2\kappa^2m}{I_m}}, &Q_{mA}&=\frac{a_{mA}}{c_m},\\
e_{mA,ij}&=c_mS_{mA,ij}, &b^{\mathrm{BH}}_{mA,i}&=c_m\mathcal B_{mA,i}, &\ell_{mA}&=c_mNW_{mA}.
\end{align}$$

This gives unit kinetic normalization. The same normalization follows from the original ADM symplectic potential,

$$\begin{align}
\Theta_{\mathrm{red}} &=\sum_{m\geqslant2,A}\frac{I_m}{2\kappa^2m}\dot a_{mA},\delta a_{mA} =\sum_{m\geqslant2,A}\dot Q_{mA}\,\delta Q_{mA}.
\end{align}$$

To complete the expansion, separate the boundary modes from the remaining lapse, shift and spatial metric. The repaired profiles obey

$$\begin{align}
\langle T_{mA},S_{m'B}\rangle&=I_m\delta_{mm'}\delta_{AB}.
\end{align}$$

Thus, for any original history, define

$$\begin{align}
a_{mA}(t)&=\frac{\langle T_{mA},h_{ij}(t)\rangle}{I_m}, & h_0&=h-\sum_{m\geqslant2,A}\mathcal H_{mA}[a_{mA}],\\
h_{0,ij}&=s_{0,ij}, &h_{0,ti}&=\beta_{0,i}, &h_{0,tt}&=-2N\nu_0,\\
\langle T_{mA},s_0\rangle&=0.
\end{align}$$

This is a spatial projection; $\mathcal Ls_0$ is unrestricted, and the $m=0,1$ off-shell components remain in $h_0$. To separate the action, use

$$\begin{align}
\mathscr B(h,k) &=S^{(2)}[h+k]-S^{(2)}[h]-S^{(2)}[k]\\
&=-\frac{1}{\kappa^2}\int\mathrm{d}t\,\mathrm{d}^2x \sqrt{-g_0}\,k^{\mu\nu}\delta\mathcal E_{\mu\nu}[h].
\end{align}$$

For each physical profile,

$$\begin{align}
\mathscr B(\mathcal H_{mA}[a],h_0) &=-\frac{1}{2\kappa^2m}\int\mathrm{d}t\, (\ddot a+m^2a)\langle T_{mA},s_0\rangle=0.
\end{align}$$

The same orthogonality removes cross terms between distinct boundary modes. It remains to put the action for $h_0$ into independent blocks.

Put $w=1-\rho^2$ and write

$$\begin{align}
s_{0,ij}&=\kappa^2\sigma_{ij}\psi+(\mathcal M^*v)_{ij}, & \beta_{0,i}&=\dot v_i+\widehat\beta_i, & \nu_0&=v^iD_iN+\widehat\nu.
\end{align}$$

Here $v^i$ is a proper spatial vector, with $v^\rho=O(w^3)$ and $v^\phi=O(w^4)$, and $\psi=O(w^2)$. This is a change of variables on histories; neither $\psi$ nor $\widehat\beta$ is set to zero. The terms containing $v$ form $\mathcal L_vg_0$, so they drop out of the quadratic action with the boundary prescription above.

The spatial decomposition follows directly from the TT orthogonality. In Cartesian disk coordinates, define

$$\begin{align}
\mathfrak j(z,\bar z)&=\frac{w^2}{16} \left(s_{0,XX}-s_{0,YY}+2i s_{0,XY}\right), & \partial_{\bar z}(v^X+iv^Y)&=\mathfrak j,\\
v^X+iv^Y&=\frac1\pi\int_{|\zeta|<1} \frac{\mathfrak j(\zeta,\bar\zeta)}{z-\zeta}\,\mathrm d^2\zeta, & \psi&=\frac{\sigma^{ij}s_{0,ij}-2D_iv^i}{2\kappa^2}.
\end{align}$$

The conditions $\langle T_{mA},s_0\rangle=0$ are precisely the vanishing moments $\int\mathrm d^2\zeta\,\zeta^k\mathfrak j=0$, $k\geqslant0$. Thus the Cauchy integral is zero outside the disk. Since $\mathfrak j=O(w^2)$, its interior solution starts at order $w^3$; the stronger condition $s_{0,\rho\phi}=O(w)$ makes the tangential component start at order $w^4$. The solution is smooth at the center. A homogeneous solution would be holomorphic with zero boundary value and hence vanish. This also shows that no spatial boundary mode is discarded in this decomposition.

For the conformal part, the constraint and potential simplify to

$$\begin{align}
\mathcal A&=-\Delta+2, & \mathcal L(\kappa^2\sigma\psi)&=\kappa^2\mathcal A\psi, & V[\kappa^2\sigma\psi]&=-\kappa^2\int_\Sigma\mathrm d^2x\sqrt\sigma\,N\psi^2.
\end{align}$$

In particular, $\mathcal A$ has no kernel in the regular $O(w^2)$ domain: integration by parts gives $\int\sqrt\sigma\,\psi\mathcal A\psi=\int\sqrt\sigma\,(D_i\psi D^i\psi+2\psi^2)$.

For the shift, define the symmetric quadratic form

$$\begin{align}
\mathfrak d(X,Y)&=X_{ij}Y^{ij}-(\sigma^{ij}X_{ij})(\sigma^{kl}Y_{kl}),\\
\mathfrak D(b,c)&=\frac1{2\kappa^2}\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N} \mathfrak d(\mathcal M^*b,\mathcal M^*c),\\
\operatorname{curl}a&=\varepsilon^{ij}D_ia_j, & \varepsilon^{\rho\phi}&=\frac1{\sqrt\sigma}.
\end{align}$$

Using $R_{ij}[\sigma]=-\sigma_{ij}$ and $D_iD_jN=N\sigma_{ij}$, integration by parts gives

$$\begin{align}
\mathfrak D(b,c)&=\frac1{\kappa^2}\int_\Sigma\mathrm d^2x\sqrt\sigma\,N^3 \operatorname{curl}\left(\frac b{N^2}\right) \operatorname{curl}\left(\frac c{N^2}\right).
\end{align}$$

The surface term vanishes for $b_\rho,c_\rho=O(w)$ and $b_\phi,c_\phi=O(1)$. Hence $\mathfrak D$ is nonnegative. The complementary action becomes

$$\begin{align}
S_0^{(2)}=\int\mathrm dt\Bigg[& -\frac{\kappa^2}{2}\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N}\dot\psi^2 +\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N}\dot\psi D_i\widehat\beta^{\,i} +\frac12\mathfrak D(\widehat\beta,\widehat\beta)\\
&+\int_\Sigma\mathrm d^2x\sqrt\sigma\,\widehat\nu\mathcal A\psi +\kappa^2\int_\Sigma\mathrm d^2x\sqrt\sigma\,N\psi^2\Bigg].
\end{align}$$

The lapse is an independent multiplier. We absorb the terms containing $\psi$ into it before choosing the scalar and shift modes. For the potential term, use

$$\begin{align}
X_N&=D^iN D_i=\rho\partial_\rho, & X_N^\dagger&=-X_N-2N, & \mathcal A X_N+X_N^\dagger\mathcal A&=-4N,\\
\int_\Sigma\mathrm d^2x\sqrt\sigma\,(X_N\psi)\mathcal A\psi &=-2\int_\Sigma\mathrm d^2x\sqrt\sigma\,N\psi^2.
\end{align}$$

The spatial surface terms vanish for $\psi=O(w^2)$. Define the shifted lapse by

$$\begin{align}
\widehat\nu&=\nu_{\mathrm C}+\frac{\kappa^2}{2}X_N\psi -\mathcal A^{-1}\left[ \frac{\kappa^2}{2N}\ddot\psi-\frac1N D_i\dot{\widehat\beta}^{\,i} \right],\\
\mathcal F&=\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N} \left[-\frac{\kappa^2}{2}\psi\dot\psi+\psi D_i\widehat\beta^{\,i}\right].
\end{align}$$

Here $\mathcal A^{-1}$ is the regular $O(w^2)$ inverse on smooth $O(w^3)$ sources; its explicit scalar profiles are given below. The expression in brackets has this falloff, while $X_N\psi=O(w)$. Thus both lapse variables have the original smooth $O(w)$ boundary behavior. Integrating by parts in time gives

$$\begin{align}
S_0^{(2)}&=\int\mathrm dt\left[ \int_\Sigma\mathrm d^2x\sqrt\sigma\,\nu_{\mathrm C}\mathcal A\psi +\frac12\mathfrak D(\widehat\beta,\widehat\beta) \right]+\mathcal F\big|_{t_i}^{t_f}.
\end{align}$$

This is an invertible change of history variables and uses no equation of motion. It is not a point canonical transformation: for finite endpoints, retain $\mathcal F$ and transport the endpoint conditions through the same change of variables. We now choose spatial modes for the proper gauge histories and the two remaining pairings.

For the proper spatial vectors, introduce the disk polynomials

$$\begin{align}
Z_{nm}(\rho,\phi) &=\rho^{|m|}P_n^{(|m|,0)}(1-2\rho^2)e^{im\phi}, &n&\geqslant0, &m&\in\mathbb Z.
\end{align}$$

And select an independent real basis $\{v_\lambda\}$ from

$$\begin{align}
\left\{ \chi w^3e^{im\phi}\partial_\rho,\quad w^4Z_{nm}\partial_X,\quad w^4Z_{nm}\partial_Y \right\}, &\qquad v(t,x)=\sum_\lambda g_\lambda(t)v_\lambda(x).
\end{align}$$

Take real and imaginary parts and remove zero and duplicate functions. The collar term supplies the possible leading radial coefficient.

For the lapse--constraint pairing, choose two dual scalar bases. Let $J=(n,m,A)$, with $n,m\geqslant0$, and use the real angular functions

$$\begin{align}
Y_{0c}&=\frac1{\sqrt{2\pi}}, & Y_{mc}&=\frac{\cos(m\phi)}{\sqrt\pi}, & Y_{ms}&=\frac{\sin(m\phi)}{\sqrt\pi}, &m&\geqslant1.
\end{align}$$

There is no $Y_{0s}$. The radial operator obeys

$$\begin{align}
\mathcal A\left[\rho^mw^2P_n^{(m,3)}(1-2\rho^2)Y_{mA}\right] &=(n+2)(n+m+2)\rho^mw^3P_n^{(m,3)}(1-2\rho^2)Y_{mA},\\
P_n^{(m,2)}&=\frac{n+m+3}{2n+m+3}P_n^{(m,3)} +\frac{n+m}{2n+m+3}P_{n-1}^{(m,3)}.
\end{align}$$

All polynomials in the second line have the same argument. We therefore define

$$\begin{align}
\mathcal N_{nm}&=\sqrt{\frac{(2n+m+3)(n+m+1)(n+m+2)}{2(n+1)(n+2)}},\\
\varphi_J&=\mathcal N_{nm}\rho^mP_n^{(m,2)}(1-2\rho^2)Y_{mA}, & w_J^{\mathrm C}&=w\varphi_J,\\
\psi_J&=\frac{\mathcal N_{nm}\rho^mw^2Y_{mA}}{2n+m+3} \left[ \frac{n+m+3}{(n+2)(n+m+2)}P_n^{(m,3)}(1-2\rho^2) +\frac{n+m}{(n+1)(n+m+1)}P_{n-1}^{(m,3)}(1-2\rho^2) \right].
\end{align}$$

The second term is omitted for $n=0$. Jacobi orthogonality then gives

$$\begin{align}
\mathcal A\psi_J&=w^3\varphi_J, & \int_\Sigma\mathrm d^2x\sqrt\sigma\,w^4\varphi_J\varphi_K&=\delta_{JK},\\
f_{J,ij}&=\kappa^2\sigma_{ij}\psi_J, & \frac1{\kappa^2}\int_\Sigma\mathrm d^2x\sqrt\sigma\, w_J^{\mathrm C}\mathcal Lf_K&=\delta_{JK}.
\end{align}$$

These profiles also give $\mathcal A^{-1}(w^3\varphi_J)=\psi_J$. The lapse profiles have the allowed $O(w)$ falloff, while the conformal scalars have the required $O(w^2)$ falloff. Their polynomial spans give the respective smooth disk expansions.

Expand

$$\begin{align}
\psi&=\sum_J\xi_J(t)\psi_J, & \nu_{\mathrm C}&=\sum_Jz_J^{\mathrm C}(t)w_J^{\mathrm C}, & \xi_J&=\frac1{\kappa^2}\int_\Sigma\mathrm d^2x\sqrt\sigma\, w_J^{\mathrm C}\mathcal Ls_0.
\end{align}$$

Thus $\xi_J$ are the independent constraint coefficients, including $m=0,1$. The pairing in the action is $\sum_Jz_J^{\mathrm C}\xi_J$, before any constraint is imposed.

For the shift pairing, first keep the null directions. Since the disk is simply connected, these are exactly

$$\begin{align}
b_i&=N^2\partial_i\tau, &\tau&=O(w^4),
\end{align}$$

where the irrelevant spatial constant in $\tau$ has been fixed to zero. A complete scalar basis for these null directions is given by the real and imaginary parts of $\tau_a=w^4Z_{nm}$; write $n_{a,i}=N^2\partial_i\tau_a$.

The nonzero shift profiles can be written explicitly. Introduce another radial coordinate,

$$\begin{align}
y&=\frac{2\rho^2}{1+\rho^2}, & N&=\frac1{1-y}, & \sqrt\sigma\,\mathrm d^2x&=\frac{\mathrm dy\,\mathrm d\phi}{(1-y)^2},\\
\sigma_{ij}\mathrm dx^i\mathrm dx^j &=\frac1{(1-y)^2}\left[\frac{\mathrm dy^2}{y(2-y)} +y(2-y)\mathrm d\phi^2\right].
\end{align}$$

For an allowed shift $b$, its scalar curl $c=\operatorname{curl}(b/N^2)$ is smooth at the center and has $c=O((1-y)^3)$. Stokes' theorem also gives

$$\begin{align}
\int_\Sigma\mathrm d^2x\sqrt\sigma\,c &=\oint_{\partial\Sigma}\frac b{N^2}=0.
\end{align}$$

Thus choose the curl profiles

$$\begin{align}
\mathcal N^\beta_{nm} &=\sqrt{\frac{(2n+m+2)(n+m+1)}{n+1}},\\
c_p&=\kappa\mathcal N^\beta_{nm}(1-y)^3y^{m/2} P_n^{(m,1)}(1-2y)Y_{mA}, & p&=(n,m,A).
\end{align}$$

The labels are $n\geqslant1$ for $m=0,A=c$, and $n\geqslant0$ for $m\geqslant1,A=c,s$. The omitted $(n,m)=(0,0)$ profile is proportional to $N^{-3}$ and has nonzero total flux. All the retained profiles have zero total flux: for $m>0$ the angular integral vanishes, while for $m=0,n\geqslant1$ this follows from Jacobi orthogonality. In fact,

$$\begin{align}
\int_0^1\mathrm dy\,y^m(1-y) P_n^{(m,1)}(1-2y)P_{n'}^{(m,1)}(1-2y) &=\frac{n+1}{(2n+m+2)(n+m+1)}\delta_{nn'},\\
\frac1{\kappa^2}\int_\Sigma\mathrm d^2x\sqrt\sigma\,N^3c_pc_q &=\delta_{pq}.
\end{align}$$

We next reconstruct one allowed shift for each $c_p$. Put $\alpha=m/2$ and define the finite radial primitive

$$\begin{align}
G_{nm}(y) &=\frac{(m+1)_n}{n!}\sum_{k=0}^n \frac{(-n)_k(n+m+2)_k}{(m+1)_k\,k!} \left[\frac{y^{\alpha+k+1}}{\alpha+k+1} -\frac{y^{\alpha+k+2}}{\alpha+k+2}\right],\\
G'_{nm}(y)&=(1-y)y^{m/2}P_n^{(m,1)}(1-2y), & \mathcal I_{nm}&=G_{nm}(1) =\frac{(n+1)(m/2)_n}{(m/2+1)_{n+2}}.
\end{align}$$

Here $(a)_k$ is the rising factorial, with $(a)_0=1$. The primitive follows by integrating the terminating hypergeometric series for the Jacobi polynomial; its endpoint value is the terminating Saalschütz sum. For $m>0$, also define

$$\begin{align}
\widetilde Y_{mA}&=-\frac1m\partial_\phi Y_{mA}, & \partial_\phi\widetilde Y_{mA}&=mY_{mA},\\
H_m(y)&=\frac{\alpha(\alpha+1)(\alpha+2)(\alpha+3)}6 \left[\frac{y^\alpha}{\alpha} -\frac{3y^{\alpha+1}}{\alpha+1} +\frac{3y^{\alpha+2}}{\alpha+2} -\frac{y^{\alpha+3}}{\alpha+3}\right],\\
H_m(1)&=1, & H'_m(y)&=\frac{\alpha(\alpha+1)(\alpha+2)(\alpha+3)}6 y^{\alpha-1}(1-y)^3.
\end{align}$$

The explicit shift one-forms are

$$\begin{align}
b_p&=\frac{\kappa\mathcal N^\beta_{nm}}{(1-y)^2} \left[ -\frac{\mathcal I_{nm}}m H'_m(y)\widetilde Y_{mA}\,\mathrm dy +\big(G_{nm}(y)-\mathcal I_{nm}H_m(y)\big)Y_{mA}\,\mathrm d\phi \right], &&m\geqslant1,\\
b_{n0c}&=\frac{\kappa\sqrt{2n+2}}n\, yP_{n-1}^{(1,2)}(1-2y)Y_{0c}\,\mathrm d\phi, &&n\geqslant1.
\end{align}$$

The second line uses $G_{n0}(y)=y(1-y)^2P_{n-1}^{(1,2)}(1-2y)/n$. These are covector components in $(y,\phi)$; in the original disk coordinate, $b_\rho=4\rho\,b_y/(1+\rho^2)^2$.

To check the first line, divide it by $N^2$ and write

$$\begin{align}
\frac{b_p}{N^2} &=\kappa\mathcal N^\beta_{nm} \left[G_{nm}Y_{mA}\,\mathrm d\phi -\frac{\mathcal I_{nm}}m\, \mathrm d_\Sigma(H_m\widetilde Y_{mA})\right],\\
\operatorname{curl}\left(\frac{b_p}{N^2}\right) &=(1-y)^2\kappa\mathcal N^\beta_{nm}G'_{nm}Y_{mA} =c_p.
\end{align}$$

The exact term has zero curl and supplies the required boundary behavior; the boundary condition applies to the sum of the two terms. Since $G'_{nm}=O(1-y)$, $H'_m=O((1-y)^3)$ and $G_{nm}(1)=\mathcal I_{nm}$, we have $G_{nm}-\mathcal I_{nm}H_m=O((1-y)^2)$. Hence $b_\rho=O(w)$ and $b_\phi=O(1)$. At the center, $G_{nm}=y^{m/2+1}$ times a polynomial and $H_m=y^{m/2}$ times a polynomial. The scalar $H_m\widetilde Y_{mA}$ and the one-form $G_{nm}Y_{mA}\mathrm d\phi$ are therefore smooth in Cartesian disk coordinates. The axisymmetric profiles are smooth for the same reason, since $y\,\mathrm d\phi$ is smooth.

It follows that

$$\begin{align}
\mathfrak D(b_p,b_q)&=\delta_{pq}, & \mathfrak D(b_p,n_a)&=0.
\end{align}$$

The functions $c_p/[\kappa(1-y)^3]$, together with the omitted constant member, form a complete Jacobi basis for the weighted scalar space with measure $(1-y)\mathrm dy\,\mathrm d\phi$. Removing the constant imposes precisely the zero-flux condition on $c$. The displayed lift then represents every allowed curl, and any remaining shift has the form $N^2\mathrm d_\Sigma\tau$. Thus the $b_p$ span the shift complement modulo its null directions, with smooth convergence understood in the original boundary domain. Their unit quadratic coefficients are normalizations, not time frequencies.

Now write

$$\begin{align}
\widehat\beta_i&=\sum_p\eta_p(t)b_{p,i}+\sum_a\lambda_a(t)n_{a,i}, & \eta_p&=\mathfrak D(b_p,\widehat\beta),\\
\mathfrak D(\widehat\beta,\widehat\beta)&=\sum_p\eta_p^2.
\end{align}$$

The residual after subtracting the $b_p$ expansion has zero curl after division by $N^2$, so it supplies the scalar $\tau=\sum_a\lambda_a\tau_a$. All sums are taken in the smooth domain and the quadratic-form norms specified above; a spatial truncation must preserve the displayed constraint and gauge identities.

To write the lapse reconstruction in mode coefficients, define

$$\begin{align}
\mathsf A_{JK}&=-\kappa^2\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N}\psi_J\psi_K,\\
\mathsf R_J[b]&=\int_\Sigma\mathrm d^2x\frac{\sqrt\sigma}{N}\psi_JD_ib^i,\\
\mathsf H_{JK}&=\frac{\kappa^2}{2}\int_\Sigma\mathrm d^2x\sqrt\sigma\, (\mathcal A\psi_J)X_N\psi_K,\\
\mathsf W_{JK}&=-2\kappa^2\int_\Sigma\mathrm d^2x\sqrt\sigma\,N\psi_J\psi_K, & \mathsf H+\mathsf H^T&=\mathsf W.
\end{align}$$

These are fixed spatial integrals of the profiles above. The nonsymmetric matrix $\mathsf H$ implements the local potential shift $\kappa^2X_N\psi/2$; only its symmetric part enters the action. If $\widehat\nu=\sum_J\widehat z_Jw_J^{\mathrm C}$, the lapse transformation and endpoint term read

$$\begin{align}
\widehat z_J&=z_J^{\mathrm C}+\frac12\sum_K\mathsf A_{JK}\ddot\xi_K +\mathsf R_J[\dot{\widehat\beta}] +\sum_K\mathsf H_{JK}\xi_K,\\
\mathcal F&=\frac12\xi^T\mathsf A\dot\xi +\sum_J\xi_J\mathsf R_J[\widehat\beta].
\end{align}$$

The complete off-shell expansion is therefore

$$\begin{align}
h_{ij}&=\sum_{m\geqslant2,A}Q_{mA}e_{mA,ij} +\sum_J\xi_Jf_{J,ij}+(\mathcal M^*v)_{ij},\\
h_{ti}&=\sum_{m\geqslant2,A}\dot Q_{mA}b^{\mathrm{BH}}_{mA,i} +\dot v_i+\widehat\beta_i,\\
h_{tt}&=-2N\left[\sum_{m\geqslant2,A}\ddot Q_{mA}\ell_{mA} +v^iD_iN +\sum_Jw_J^{\mathrm C}\left( z_J^{\mathrm C}+\frac12\sum_K\mathsf A_{JK}\ddot\xi_K +\mathsf R_J[\dot{\widehat\beta}] +\sum_K\mathsf H_{JK}\xi_K \right)\right],\\
v&=\sum_\lambda g_\lambda v_\lambda, & \widehat\beta&=\sum_p\eta_pb_p+\sum_a\lambda_an_a.
\end{align}$$

All $Q_{mA}$, $\xi_J$, $z_J^{\mathrm C}$, $\eta_p$, $g_\lambda$ and $\lambda_a$ are independent time functions. In particular, the derivatives appearing in $h_{tt}$ do not restrict its independent lapse coefficients. Plug these expansions into the action and use the orthogonality relations above. We obtain

$$\begin{align}
S^{(2)}&=\int\mathrm dt\left[ \frac12\sum_{m\geqslant2,A=c,s}(\dot Q_{mA}^2-m^2Q_{mA}^2) +\sum_Jz_J^{\mathrm C}\xi_J+\frac12\sum_p\eta_p^2 \right]+\mathcal F\big|_{t_i}^{t_f}.
\end{align}$$

The variables $g_\lambda$ and $\lambda_a$ retain the proper gauge histories and are absent from the bulk mode action. For the temporal directions this can also be checked from

$$\begin{align}
\mathsf R_J[N^2\mathrm d_\Sigma\tau] &=-\int_\Sigma\mathrm d^2x\sqrt\sigma\,N\tau\mathcal A\psi_J.
\end{align}$$

Thus $\widehat\beta=N^2\mathrm d_\Sigma\tau$ and $\widehat\nu=-N\dot\tau$ give $z_J^{\mathrm C}=0$, as required for $\mathcal L_{-\tau\partial_t}g_0$.

If a fully diagonal real quadratic form is desired, set

$$\begin{align}
u_J^+&=\frac{z_J^{\mathrm C}+\xi_J}{\sqrt2}, & u_J^-&=\frac{z_J^{\mathrm C}-\xi_J}{\sqrt2},\\
S^{(2)}&=\frac12\int\mathrm dt\left[ \sum_{m\geqslant2,A=c,s}(\dot Q_{mA}^2-m^2Q_{mA}^2) +\sum_p\eta_p^2+\sum_J\big((u_J^+)^2-(u_J^-)^2\big) \right]+\mathcal F\big|_{t_i}^{t_f}.
\end{align}$$

The $u_J^\pm$ and $\eta_p$ blocks have no time derivatives, so they are algebraic modes, not additional propagating oscillators. Only after varying the action do we obtain $\xi_J=z_J^{\mathrm C}=\eta_p=0$; none of these equations was used in constructing the off-shell expansion.
