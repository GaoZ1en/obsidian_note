For an arbitrary onshell configuration $\displaystyle{h_{\mu \nu}}$, which satisfies the linearized eom

$$\begin{align}
\mathcal{E}_{\mu \nu}^{(1)}[h] & =0
\end{align}$$

and the Brown-Henneaux boundary condition

$$\begin{align}
h_{tt},h_{t\varphi},h_{\varphi \varphi} & =\mathcal{O}(r^{0}), & h_{rt},h_{r\varphi} & =\mathcal{O}(r^{-3}), & h_{rr} & =\mathcal{O}(r^{-4})
\end{align}$$

We will prove that there exists a gauge transformation $\displaystyle{h\to h'=h+\mathcal{L}_{\eta}g^{(0)}}$ such that the transformed condiguration satisfies the de Donder gauge

$$\begin{align}
\nabla _{\mu}^{(0)}h^{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)\nu}h & =0
\end{align}$$

and therefore the transverse-traceless gauge

$$\begin{align}
\nabla ^{(0)}_{\mu}h^{\mu \nu} & =0, & h=0
\end{align}$$

by the residual gauge symmetry

$$\begin{align}
h^{\mathrm{dD}}\to h^{\mathrm{TT}} & =h^{\mathrm{dD}}+\mathcal{L}_{\eta'}g^{(0)} \\
\eta'_{\mu} & =-\dfrac{1}{8}\nabla _{\mu}h^{\mathrm{dD}}
\end{align}$$

where $\displaystyle{h=g^{(0)}_{\mu \nu}h^{\mu \nu}}$.

We work on a finite global-time interval, with a smooth center and the differentiated Brown–Henneaux falloffs. The gauge transformations are proper: their contravariant components obey $\eta^r=O(r^{-1})$ and $\eta^a=O(r^{-4})$.

---

The background spacetime metric is given by

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\phi ^{2}, & f(r) & =1+r^{2}
\end{align}$$

we first consider the gauge transformation vector

$$\begin{align}
\eta ^{r}(r,x) & =\dfrac{\sqrt{ f(r) }}{2}\int _{r}^{\infty}\mathrm{d}s\sqrt{ f(s) }h_{rr}(s,x)=\mathcal{O}(r^{-1}) \\
\eta ^{a}(r,x) & =\int _{r}^{\infty}\mathrm{d}sg^{(0)ab}(s)\left(h_{rb}(s,x)+\dfrac{1}{f(s)}\partial _{b}\eta ^{r}(s,x)\right)=\mathcal{O}(r^{-4}), & a,b=t,\varphi
\end{align}$$

then we have

$$\begin{align}
(h+\mathcal{L}_{\eta}g^{(0)})_{rr} & =(h+\mathcal{L}_{\eta}g^{(0)})_{ra}=0
\end{align}$$

in sufficiently large $\displaystyle{r}$. This radial gauge is only needed near the boundary in the following proof, without concerning regularity at the center. We can multiply $\displaystyle{\eta}$ by a smooth cutoff which equal to 1 near infinity and zero near the center, and continue to call the resulting global vector $\eta$.

Expand

$$\begin{align}
(h_{\mathrm{c}})_{ab} & =(h+\mathcal{L}_{\eta}g^{(0)})_{ab} \\
 & =b_{ab}(t,\varphi)+\sum _{n\geqslant 1}r^{-2n}b^{[n]}_{ab}
\end{align}$$

the radial Einstein equations imply

$$\begin{align}
b_{tt} & =b_{\varphi \varphi}, & \partial _{t}b_{\varphi \varphi} & =\partial _{\varphi}b_{t\varphi}, & \partial _{t}b_{t\varphi} & =\partial _{\varphi}b_{tt}
\end{align}$$

Define the de Donder functional and its gauge operator by

$$\begin{align}
C_{\nu}[h] & =\nabla ^{(0)\mu}h_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)}_{\nu}h \\
C_{\nu}[h+\mathcal{L}_{\xi}g^{(0)}] & =C_{\nu}[h]+Q\xi _{\nu}, & Q\xi _{\nu} & =(\nabla ^{(0)2}-2)\xi _{\nu}
\end{align}$$

to prove the existence of the gauge transformation, we solve the equation $\displaystyle{Q\xi=-C[h_{\mathrm{c}}]}$ for $\displaystyle{\xi}$.

In the radial collar, we have

$$\begin{align}
C_{a}[h_{\mathrm{c}}] & =\mathcal{O}(r^{-4}), & C_{r}[h_{\mathrm{c}}] & =\mathcal{O}(r^{-5})
\end{align}$$

and in all orders

$$\begin{align}
-C_{a}[h_{\mathrm{c}}] & =\sum _{s=4,6,8,\dots}F_{a,s}(t,\varphi)r^{-s} \\
-C_{r}[h_{c}] & =\sum _{4,6,8,\dots}F_{r,s}(t,\varphi)r^{-s-1}
\end{align}$$

we want a vector with powers

$$\begin{align}
\xi _{a} & =\sum _{s=4,6,8,\dots}a_{a,s}r^{-s} \\
\xi _{r} & =\sum _{s=4,6,8,\dots}a_{r,s}r^{-s-1}
\end{align}$$

at a fixed power $\displaystyle{s}$, the leading action of $\displaystyle{Q}$ is

$$\begin{align}
[Q\xi]_{r}|_{r^{-s-1}} & =(s^{2}-2s-4)a_{r,s}+(\text{lower-order terms}) \\
[Q\xi]_{a}|_{r_{-s}} & =(s^{2}-4)a_{a_{s}}+2\partial _{a}a_{r,s}+(\text{lower-order terms})
\end{align}$$

then we solves

$$\begin{align}
a_{r,s} & =\dfrac{F_{r,s}}{s^{2}-2s-4} \\
a_{a,s} & =\dfrac{F_{a,s}-2\partial _{a}a_{r,s}}{s^{2}-4}
\end{align}$$

we impose the same smooth cutoff for $\displaystyle{\xi _{\mu}}$ as for $\eta$, so that $\xi_\mu$ is smooth and compactly supported away from the center. We need another gauge transformation to remove the residual error

$$\begin{align}
F_{\nu} & =-C_{\nu}[h_{\mathrm{c}}]-Q\xi _{\nu}
\end{align}$$

which compactly supported near the center. We solve the equation

$$\begin{align}
Q\zeta & =F
\end{align}$$

define

$$\begin{align}
(\mathcal{P}v)_{\nu} & =\nabla ^{(0)\mu}(\nabla ^{(0)}_{\mu}v_{\nu}-\nabla ^{(0)}_{\nu}v_{\mu})-4v_{\nu} \\
\implies (Qv)_{\nu} & =(\mathcal{P}v)_{\nu}+\nabla ^{(0)}_{\nu}(\nabla ^{(0)}_{\rho}v^{\rho}) \\
\nabla ^{(0)}_{\mu}(\mathcal{P}v)^{\mu} & =-4\nabla ^{(0)}_{\mu}v^{\mu} \\
Q\nabla ^{(0)}u & =\nabla ^{(0)}(\nabla ^{(0)2}-4)u
\end{align}$$

therefore $\displaystyle{Q\zeta=F}$ factorize into

$$\begin{align}
\mathcal{P}v & =F, & (\nabla ^{(0)2}-4)u & =\nabla ^{(0)}_{\mu}F^{\mu} \\
\implies (Qv)_{\mu} & =F_{\mu}-\dfrac{1}{4}\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\nu}F^{\nu}) \\
(Q\nabla ^{(0)}u)_{\mu} & =\nabla _{\mu}^{(0)}\left(\nabla ^{(0)}_{\nu}F^{\nu}\right) \\
\implies \zeta & =v+\dfrac{1}{4}\nabla ^{(0)}u
\end{align}$$

by well-posedness of IBVP problem of massive vector, $\displaystyle{v}$ and $\displaystyle{u}$ are smooth and compactly supported away from the boundary, so that $\zeta$ is as well-defined. Hence de Donder gauge is imposed

$$\begin{align}
h^{\mathrm{dD}} & =h_{\mathrm{c}}+\mathcal{L}_{\xi+\zeta}g^{(0)}
\end{align}$$

finally consider the following vector

$$\begin{align}
\eta'_{\mu} & =-\dfrac{1}{8}\nabla ^{(0)}_{\mu}h^{\mathrm{dD}}
\end{align}$$

and we have

$$\begin{align}
Q\eta _{\mu}' & =-\dfrac{1}{8}\nabla ^{(0)}_{\mu}(\nabla ^{(0)2}-4)h^{\mathrm{dD}}=0 \\
g^{(0)}_{\mu \nu}(h^{\mu \nu}+\mathcal{L}_{\eta'}g^{(0)\mu \nu}) & =h^{\mathrm{dD}}+2\nabla ^{(0)\mu}\eta'_{\mu} \\
 & =-\dfrac{1}{4}(\nabla ^{(0)2}-4)h^{\mathrm{dD}}=0
\end{align}$$

hence for an arbitrary onshell configuration $\displaystyle{h}$, it is possible to gauge away de Donder functional and trace, leaving a transverse and traceless metric perturbation $\displaystyle{h^{\mathrm{TT}}}$.
