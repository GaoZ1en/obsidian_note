the action for a massive point particle is given by

$$\begin{align}
S & =-m\int _{\gamma} \mathrm{d}s \\
 & =-m\int _{\gamma} \mathrm{d}\tau\sqrt{ -g_{\mu \nu}(x) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }
\end{align}$$

where $\displaystyle{\gamma:[\tau_{i},\tau_{f}]\to M}$ is the world line of the particle. and the metric is given by

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

## CPS formalism

take a variance of the action (here we set $\displaystyle{\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau} }=1}$)

$$\begin{align}
\delta S & =\int _{\gamma}\mathrm{d}\tau E_{\mu} \delta x^{\mu}+\theta|_{\tau _{f}}-\theta|_{\tau _{i}} \\
E_{\sigma} & =-mg_{\lambda \sigma}\left( \frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\tau ^{2}}+\Gamma ^{\lambda}_{~\mu \nu}(x) \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}\right) \\
\theta & =mg_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\delta x^{\nu} \\
\implies \omega & =m\delta\left(g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\right)\wedge \mathrm{d}x^{\nu}
\end{align}$$

the eom reads, with $x^{\mu}=(t,r,\phi)$ and $\dot{x}^{\mu}=\mathrm{d}x^{\mu}/\mathrm{d}\tau$,

$$\begin{align}
\ddot{t}+\frac{2r}{1+r^{2}}\dot{r}\dot{t} & =0, \\
\ddot{r}+r(1+r^{2})\dot{t}^{2}-\frac{r}{1+r^{2}}\dot{r}^{2}-r(1+r^{2})\dot{\phi}^{2} & =0, \\
\ddot{\phi}+\frac{2}{r}\dot{r}\dot{\phi} & =0.
\end{align}$$

the proper-time gauge condition is

$$\begin{align}
-(1+r^{2})\dot{t}^{2}+\frac{\dot{r}^{2}}{1+r^{2}}+r^{2}\dot{\phi}^{2} & =-1.
\end{align}$$

## classical solution and symplectic form

to solve the eom, we embed global $\mathrm{AdS}_{3}$ in $\mathbb{R}^{2,2}$ as

$$\begin{align}
-X_{-1}^{2}-X_{0}^{2}+X_{1}^{2}+X_{2}^{2} & =-1, \\
X_{-1}+iX_{0} & =\sqrt{1+r^{2}}e^{it}, \\
X_{1}+iX_{2} & =re^{i\phi}.
\end{align}$$

equivalently, package the point into an $\mathrm{SL}(2,\mathbb{R})$ matrix

$$\begin{align}
g(X) & =\begin{pmatrix}
X_{-1}+X_{1} & X_{0}+X_{2} \\
-X_{0}+X_{2} & X_{-1}-X_{1}
\end{pmatrix},\qquad \det g=1.
\end{align}$$

the isometry acts by

$$\begin{align}
g(X) & \mapsto h_{L}g(X)h_{R}^{-1},\qquad h_{L},h_{R}\in \mathrm{SL}(2,\mathbb{R}).
\end{align}$$

the reference timelike geodesic is the one at the center, $r=0$ and $t=\tau$,

$$\begin{align}
g_{0}(\tau) & =\begin{pmatrix}
\cos \tau & \sin \tau \\
-\sin \tau & \cos \tau
\end{pmatrix}.
\end{align}$$

therefore the general timelike geodesic is its isometry image

$$\begin{align}
g(\tau) & =h_{L}g_{0}(\tau)h_{R}^{-1}.
\end{align}$$

In embedding coordinates this is

$$\begin{align}
X^{A}(\tau) & =U^{A}\cos \tau+V^{A}\sin \tau,
\end{align}$$

where $A=-1,0,1,2$ and

$$\begin{align}
\eta_{AB}U^{A}U^{B} & =-1, & \eta_{AB}V^{A}V^{B} & =-1, & \eta_{AB}U^{A}V^{B} & =0,
\end{align}$$

with $\eta=\operatorname{diag}(-1,-1,+1,+1)$. the corresponding global-coordinate solution is obtained from

$$\begin{align}
\sqrt{ 1+r^{2} }e^{it} & =(U_{-1}+iU_{0})\cos \tau+(V_{-1}+iV_{0})\sin \tau, \\
re^{i\phi} & =(U_{1}+iU_{2})\cos \tau+(V_{1}+iV_{2})\sin \tau,
\end{align}$$

thus

$$\begin{align}
r(\tau) & =\left[(U_{1}\cos \tau+V_{1}\sin \tau)^{2}+(U_{2}\cos \tau+V_{2}\sin \tau)^{2}\right]^{1/2}, \\
t(\tau) & =\operatorname{atan2}\left(U_{0}\cos \tau+V_{0}\sin \tau, U_{-1}\cos \tau+V_{-1}\sin \tau\right), \\
\phi(\tau) & =\operatorname{atan2}\left(U_{2}\cos \tau+V_{2}\sin \tau, U_{1}\cos \tau+V_{1}\sin \tau\right).
\end{align}$$

substituting the solution into the symplectic potential is simpler in embedding coordinates. since the induced metric is $\mathrm{d}s^{2}=\eta_{AB}\mathrm{d}X^{A}\mathrm{d}X^{B}$, we can rewrite the symplectic potential as

$$\begin{align}
\theta & =m\eta_{AB}\dot{X}^{A}\delta X^{B}. \\
 & =m\eta _{AB}V^{A} \delta U^{B} \\
\implies \omega & =m\eta _{AB}\delta V^{A}\wedge \delta U^{B}
\end{align}$$

the only nonvanishing Poisson bracket is given by

$$\begin{align}
\left\{U^{A},V^{B}\right\} & =\frac{1}{m}\eta ^{AB}
\end{align}$$

## quantization

a convenient set of gauge-invariant observables is given by the isometry charges

$$\begin{align}
J_{AB} & =m\left(U_{A}V_{B}-U_{B}V_{A}\right),\qquad A,B=-1,0,1,2,
\end{align}$$

which obey the classical $\mathfrak{so}(2,2)$ algebra

$$\begin{align}
\left\{J_{AB},J_{CD}\right\}& =\eta_{AC}J_{BD}-\eta_{AD}J_{BC}-\eta_{BC}J_{AD}+\eta_{BD}J_{AC}.
\end{align}$$

upon quantization, the charge algebra becomes

$$\begin{align}
[ J_{AB}, J_{CD}]& =i\left(\eta_{AC} J_{BD}-\eta_{AD} J_{BC}-\eta_{BC} J_{AD}+\eta_{BD} J_{AC}\right).
\end{align}$$

the two Casimirs are fixed by the orbit

$$\begin{align}
\frac{1}{2}J_{AB}J^{AB} & =m^{2}, &J\wedge J & =0.
\end{align}$$

the second equation means that the left and right quadratic Casimirs are equal. Using

$$\begin{align}
\mathfrak{so}(2,2) & \simeq \mathfrak{sl}(2,\mathbb{R})_{L}\oplus \mathfrak{sl}(2,\mathbb{R})_{R},
\end{align}$$

introduce generators $L_{0},L_{\pm 1}$ and $\bar{L}_{0},\bar{L}_{\pm 1}$ as

$$\begin{align}
L_{0} & =\frac{1}{2}\left(J_{-1,0}+J_{1,2}\right), \\
L_{1} & =\frac{1}{2}\left(J_{-1,1}+J_{0,2}-iJ_{-1,2}+iJ_{0,1}\right), \\
L_{-1} & =\frac{1}{2}\left(J_{-1,1}+J_{0,2}+iJ_{-1,2}-iJ_{0,1}\right), \\
\bar{L}_{0} & =\frac{1}{2}\left(J_{-1,0}-J_{1,2}\right), \\
\bar{L}_{1} & =\frac{1}{2}\left(J_{-1,1}-J_{0,2}+iJ_{-1,2}+iJ_{0,1}\right), \\
\bar{L}_{-1} & =\frac{1}{2}\left(J_{-1,1}-J_{0,2}-iJ_{-1,2}-iJ_{0,1}\right).
\end{align}$$

these generators satisfy two copies of $\displaystyle{\mathfrak{sl}(2,\mathbb{R})}$ algebras

$$\begin{align}
[L_{p},L_{q}] & =(p-q)L_{p+q}, & [\bar{L}_{p},\bar{L}_{q}] & =(p-q)\bar{L}_{p+q}, & [L_{p},\bar{L}_{q}] & =0,
\end{align}$$

where $p,q=0,\pm 1$. the quadratic Casimirs of the two $\mathfrak{sl}(2,\mathbb{R})$ factors are

$$\begin{align}
C_{L} & =L_{0}^{2}-\frac{1}{2}\left(L_{1}L_{-1}+L_{-1}L_{1}\right), \\
C_{R} & =\bar{L}_{0}^{2}-\frac{1}{2}\left(\bar{L}_{1}\bar{L}_{-1}+\bar{L}_{-1}\bar{L}_{1}\right).
\end{align}$$

for a spinless particle the orbit has

$$\begin{align}
C_{L} & =C_{R}=\frac{m^{2}}{4},
\end{align}$$

a highest-weight quantization chooses a state $\ket{h,\bar{h}}$ called primary state such that

$$\begin{align}
L_{1}\ket{h,\bar{h}} & =0, &\bar L_{1}\ket{h,\bar{h}} & =0, \\
L_{0}\ket{h,\bar{h}} & =h\ket{h,\bar{h}}, &\bar L_{0}\ket{h,\bar{h}} & =\bar h\ket{h,\bar{h}}.
\end{align}$$

the descendants are generated by

$$\begin{align}
|n,\bar n;h,\bar h\rangle & \propto L_{-1}^{n}\bar L_{-1}^{\bar n}\ket{h,\bar{h}},\qquad n,\bar n\in \mathbb{Z}_{\geq 0}.
\end{align}$$

on the primary state,

$$\begin{align}
C_{L}\ket{h,\bar{h}} & =h(h-1)\ket{h,\bar{h}}, \\
C_{R}\ket{h,\bar{h}} & =\bar h(\bar h-1)\ket{h,\bar{h}}.
\end{align}$$

thus a spinless massive particle is described by $h=\bar h$ with

$$\begin{align}
h(h-1) & =\frac{m^{2}}{4}, & \Delta & :=h+\bar h=2h.
\end{align}$$

equivalently,

$$\begin{align}
h=\bar h & =\frac{\Delta}{2}, & \Delta & =1+\sqrt{1+m^{2}},
\end{align}$$
