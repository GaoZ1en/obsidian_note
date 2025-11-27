in [[Articles/Proca in AdS3/ADM decomposition|ADM decomposition]], we have derived an equation about $\displaystyle{A^{t}}$

$$\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\mu ^{2}A^{t} & =\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}$$

introduce Green function $\displaystyle{G(x,y)}$ that satisfying

$$
\begin{align}
\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}G(x,y)) \right)-\mu ^{2}G(x,y) & =\delta ^{2}(x-y) \\
\implies A^{t}(x) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

now we will solve the Green function $\displaystyle{G(x,y)}$ explicitly.

---

$$\begin{align}
\frac{1}{N}\sigma ^{ab}D_{a}\left( \frac{1}{N}D_{b}(N^{2}\phi) \right) & =\frac{1}{N}\sigma ^{ab}\partial_{a}\left( \frac{1}{N}\partial _{b}(N^{2}\phi) \right)-\frac{1}{N^{2}}\sigma ^{ab}\tilde{\Gamma}^{c}_{ab}\partial _{c}(N^{2}\phi)
\end{align}$$

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G(r,\phi;r',\phi')+\frac{1+5r^{2}}{r}\partial _{r}G(r,\phi;r',\phi')+(4-\mu ^{2})G(r,r';\phi,\phi')+\frac{1}{r^{2}}\partial _{\phi}^{2}G(r,r';\phi,\phi') & =\delta(r-r')\delta(\phi-\phi') \\
r\in(0,\infty),\phi \in[0,2\pi)
\end{align}$$

make a Fourier transform

$$\begin{align}
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

then $\displaystyle{G_{m}(r,r')}$ satisfies

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{m}(r,r') & =\delta(r-r') \\
\implies  \partial _{\rho}^{2}G_{m}(\rho,\rho')+\frac{\cos ^{2}\rho+3\sin ^{2}\rho}{\sin \rho \cos \rho} \partial _{\rho}G_{m}(\rho,\rho')+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin^{2}\rho} \right)G_{m}(\rho,\rho') & =0 \\
\implies 4z(1-z)\partial _{z}^{2}G_{m}(z,z')-4\partial _{z}G_{m}(z,z')+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)G_{m}(z,z') & =0 \\
\implies G_{m}(r,r') =C_{1}r^{|m|}(1+r^{2})^{-1-(|m|-\mu)/2}{}_{2}F_{1}\left(\frac{|m|-\mu}{2},1+\frac{|m|-\mu}{2};1-\mu;\frac{1}{1+r^{2}}\right) \\
  +C_{2} r^{|m|}(1+r^{2})^{-1-(|m|+\mu)/2}{}_{2}F_{1}\left(\frac{|m|+\mu}{2},1+ \frac{|m|+\mu}{2};1+\mu; \frac{1}{1+r^{2}}\right)
\end{align}$$

another set of solution is

$$\begin{align}
G_{m}(r,r') & =D_{1}r^{-|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu+|m|}{2}, \frac{\mu-|m|}{2};1-|m|;-r^{2} \right) \\
 & +D_{2}r^{|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left( -\frac{\mu-|m|}{2}, \frac{\mu+|m|}{2};1+|m|;-r^{2} \right)
\end{align}$$

by general theory of Green function we denote $\displaystyle{R^{(m)}_{<}(r)=r^{|m|}{}_{2}F_{1}\left( \frac{1}{2}(-\mu+2+|m|), \frac{1}{2}(\mu+2+|m|);1+|m|;-r^{2} \right)}$ and $\displaystyle{R^{(m)}_{>}(r)=r^{|m|}(1+r^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{1}{2}(\mu+|m|),\frac{1}{2}(\mu+2+|m|);1+\mu; \frac{1}{1+r^{2}}\right)}$. the Wronskian $\displaystyle{W[R_{<},R_{>}]}$ is defined as

$$\begin{align}
W(r) & =R_{<}^{(m)}(r)\partial _{r}R^{(m)}_{>}(r)-R^{(m)}_{>}(r)\partial _{r}R^{(m)}_{<}(r)
\end{align}$$

???
$$\begin{align}
\partial _{r}W+\frac{1+5r^{2}}{r(1+r^{2})}W=0 \\
\implies W^{(m)}(r) & =-\frac{2\Gamma(|m|+1)\Gamma(\mu+1)}{\Gamma\left( \frac{\mu+|m|}{2} \right)\Gamma\left( 1+\frac{\mu+|m|}{2} \right)}\frac{1}{r(1+r^{2})^{2}}
\end{align}$$

then the final result is

$$\begin{align}
G_{m}(r,r') & =\frac{R^{(m)}_{<}(r_{<})R^{(m)}_{>}(r_{>})}{(1+r'^{2})W^{(m)}(r')}, & m\neq0 \\
 & =\frac{1}{(1+r'^{2})[R_{<}^{(m)}(r')\partial _{r}R^{(m)}_{>}(r')-R^{(m)}_{>}(r')\partial _{r}R^{(m)}_{<}(r')]} \\
 & \times\left[\theta(r-r')r'^{|m|}(1+r'^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-|m|}{2},\frac{\mu+|m|}{2};1+|m|;-r'^{2}\right)r^{|m|}(1+r^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{\mu+|m|}{2},1+\frac{\mu+|m|}{2};1+\mu; \frac{1}{1+r^{2}}\right)\right. \\
 & +\left.\theta(r'-r)r^{|m|}(1+r^{2})^{-1}{}_{2}F_{1}\left(-\frac{\mu-|m|}{2},\frac{\mu+|m|}{2};1+|m|;-r^{2}\right)r'^{|m|}(1+r'^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{\mu+|m|}{2},1+\frac{\mu+|m|}{2};1+\mu; \frac{1}{1+r'^{2}}\right)\right] \\
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

---

$$\begin{align}
A^{t}(t,r,\phi) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right) \\
 & =-\int \mathrm{d}r'\mathrm{d}\phi'G(r,\phi;r',\phi') \frac{1}{1+r'^{2}}\left(\partial _{t}\partial _{r'}A^{r}+\partial _{t}\partial _{\phi'}A^{\phi}+\frac{1-r'^{2}}{r'(1+r'^{2})}\partial _{t}A^{r}\right)
\end{align}$$

consider

$$\begin{align}
{f^{(+)}_{l,0,0}}^{t} & = \frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} } e^{-i(\mu+1)t}e^{-i\phi}r(1+r^{2})^{-(\mu+3)/2} \\
{f^{(+)}_{l,0,0}}^{r} & =-\frac{i}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+1)t}e^{-i\phi}(1+r^{2})^{-(\mu+1)/2} \\
{f^{(+)}_{l,0,0}}^{\phi} & =-\frac{1}{2}\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+1)t}e^{-i\phi}r^{-1}(1+r^{2})^{-(\mu+1)/2}
\end{align}$$

$$\begin{align}
\partial _{t}\partial _{r'}{f^{(+)}_{l,0,0}}^{r}+\partial _{t}\partial _{\phi'}{f^{(+)}_{l,0,0}}^{\phi}+\frac{1-r'^{2}}{r'(1+r'^{2})}\partial _{t}{f^{(+)}_{l,0,0}}^{r} & = \sqrt{ \frac{\mu+1}{\pi\mu} } \frac{(\mu+1)(\mu+3)}{2}e^{-i(\mu+1)t}e^{-i\phi}r(1+r^{2})^{-(\mu+3)/2}
\end{align}$$

$$\begin{align}
G_{-1}(r,r') & =\frac{(\theta(r-r')R^{(-1)}_{<}(r')R_{>}^{(-)}(r)+\theta(r'-r)R_{<}^{(-1)}(r)R_{>}^{(-1)}(r'))}{(1+r'^{2})[R_{<}^{(-1)}(r')\partial _{r}R^{(-1)}_{>}(r')-R^{(-1)}_{>}(r')\partial _{r}R^{(-)}_{<}(r')]} \\
A^{t}\propto \int _{0}^{\infty}\mathrm{d}r' G_{-1}(r,r')r'(1+r'^{2})^{-(\mu+5)/2} & =R_{>}^{(-1)}(r)\int _{0}^{r}\mathrm{d}r' \frac{R_{<}^{(-1)}(r')r'(1+r'^{2})^{-(\mu+7)/2}}{R_{<}^{(-1)}(r')\partial _{r}R^{(-1)}_{>}(r')-R^{(-1)}_{>}(r')\partial _{r}R^{(-)}_{<}(r')} \\
 & +R^{(-1)}_{<}(r)\int ^{\infty}_{r}\mathrm{d}r' \frac{R_{>}^{(-1)}(r')r'(1+r'^{2})^{-(\mu+7)/2}}{R_{<}^{(-1)}(r')\partial _{r}R^{(-1)}_{>}(r')-R^{(-1)}_{>}(r')\partial _{r}R^{(-)}_{<}(r')} \\
 & \propto{f^{(+)}_{l,0,0}}^{t}
\end{align}$$

and the coefficient seems right.

$$\tag{.}\begin{align}
A^{t} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{(\mu+1)(\mu+3)}{2}\int _{0}^{\infty}\mathrm{d}r'G_{-1}(r,r')r'(1+r'^{2})^{-(\mu+5)/2} \\
 & =-\frac{\Gamma\left( \frac{\mu+1}{2} \right)^{2}}{4\Gamma(\mu+1)}\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{(\mu+1)^{2}(\mu+3)}{2}\left[R^{(-1)}_{>}(r)\int ^{r}_{0} \mathrm{d}r' R_{<}^{(-1)}(r')r'^{2}(1+r'^{2})^{-(\mu+3)/2}+R_{<}^{(-1)}(r)\int _{r}^{\infty}\mathrm{d}r' R_{>}^{(-1)}(r')r'^{2}(1+r'^{2})^{-(\mu+3)/2} \right]
\end{align}$$


$$\tag{.}\begin{align}
R^{(-1)}_{<}(r) & =r{}_{2}F_{1}\left( \frac{1}{2}(-\mu+3), \frac{1}{2}(\mu+3);2;-r^{2} \right)\\
R^{(-1)}_{>}(r) & =r(1+r^{2})^{-(\mu+3)/2}{}_{2}F_{1}\left(\frac{1}{2}(\mu+1),\frac{1}{2}(\mu+3);1+\mu; \frac{1}{1+r^{2}}\right) \\
W^{(-1)}(r) & =-\frac{4\Gamma(\mu+1)}{(\mu+1)\Gamma\left( \frac{\mu+1}{2} \right)^{2}}\frac{1}{r(1+r^{2})^{2}}
\end{align}$$

here is the mma code generated by Claude 4

```Mathematica
(*定义超几何函数解*)
R1minus[r_, \[Mu]_] := 
 r*Hypergeometric2F1[(1/2)*(-\[Mu] + 3), (1/2)*(\[Mu] + 3), 2, -r^2]

R2minus[r_, \[Mu]_] := 
 r*(1 + r^2)^(-(\[Mu] + 3)/2)*
  Hypergeometric2F1[(1/2)*(\[Mu] + 1), (1/2)*(\[Mu] + 3), 1 + \[Mu], 
   1/(1 + r^2)]

(*计算导数*)
dR1minus[r_, \[Mu]_] := D[R1minus[r, \[Mu]], r]
dR2minus[r_, \[Mu]_] := D[R2minus[r, \[Mu]], r]

(*定义分母的Wronskian*)
wronskian[r_, \[Mu]_] := 
 R1minus[r, \[Mu]]*dR2minus[r, \[Mu]] - 
  R2minus[r, \[Mu]]*dR1minus[r, \[Mu]]

(*定义被积函数*)
integrand1[
  rp_, \[Mu]_] := (R1minus[rp, \[Mu]]*rp*(1 + rp^2)^(-(\[Mu] + 7)/2))/
  wronskian[rp, \[Mu]]
integrand2[
  rp_, \[Mu]_] := (R2minus[rp, \[Mu]]*rp*(1 + rp^2)^(-(\[Mu] + 7)/2))/
  wronskian[rp, \[Mu]]

(*定义主函数*)
mainFunction[r_, \[Mu]_] := 
 Module[{int1, int2},(*第一个积分项*)
  int1 = NIntegrate[integrand1[rp, \[Mu]], {rp, 0, r}, 
    Method -> "AdaptiveMonteCarlo", MaxRecursion -> 20];
  (*第二个积分项*)
  int2 = NIntegrate[integrand2[rp, \[Mu]], {rp, r, Infinity}, 
    Method -> "AdaptiveMonteCarlo", MaxRecursion -> 20];
  -(R2minus[r, \[Mu]]*int1 + R1minus[r, \[Mu]]*int2)/(
  r (1 + r^2)^(-(\[Mu] + 3)/2))]

(*绘图参数设置*)
\[Mu]Value = 1; (*可以调整\[Mu]值*)
rMin = 0.1;
rMax = 20;

(*创建绘图*)
Plot[mainFunction[r, \[Mu]Value], {r, rMin, rMax}, 
 PlotStyle -> {Blue, Thick}, PlotRange -> All, GridLines -> Automatic,
  Frame -> True, FrameLabel -> {"r", "Function Value"}, 
 PlotLabel -> 
  StringForm["Complex Integral Function with \[Mu] = ``", \[Mu]Value],
  ImageSize -> Large, PlotPoints -> 50, MaxRecursion -> 4]
```

---

now we will try

$$\begin{align}
{h^{(+)}_{+,m=0,n=0}}^{t} & =e^{-i(\mu+2)t} \frac{1}{\mu+2}(\mu r^{2}-2)(1+r^{2})^{-(\mu+4)/2} \\
{h^{(+)}_{+,m=0,n=0}}^{r} & =-ie^{-i(\mu+2)t}r(1+r^{2})^{-(\mu+2)/2} \\
{h^{(+)}_{+,m=0,n=0}}^{\phi} & =e^{-i(\mu+2)t}(1+r^{2})^{-(\mu+2)/2}
\end{align}$$

$$\begin{align}
\partial _{t}\partial _{r}A^{r}+\partial _{t}\partial _{\phi}A^{\phi}+\frac{1-r^{2}}{r(1+r^{2})}\partial _{t}A^{r} & =e^{-i(\mu+2)t}(1+r^{2})^{-(\mu+4)/2}((\mu+2)r^{2}-2)
\end{align}$$

$$\begin{align}
A^{t}(t,r,\phi) & =e^{-i(\mu+2)t}\int \mathrm{d}r'G_{0}(r,r')(1+r^{2})^{-(\mu+6)/2}((\mu+2)r^{2}-2) \\
 & \propto \int _{0}^{\infty}\mathrm{d}r'\frac{(\theta(r-r')R^{(0)}_{<}(r')R_{>}^{(-)}(r)+\theta(r'-r)R_{<}^{(0)}(r)R_{>}^{(0)}(r'))}{R_{<}^{(0)}(r')\partial _{r}R^{(0)}_{>}(r')-R^{(0)}_{>}(r')\partial _{r}R^{(0)}_{<}(r')}(1+r'^{2})^{-(\mu+6)/2}((\mu+2)r'^{2}-2) \\
 & =R^{(0)}_{>}(r)\int _{0}^{r} \frac{R_{<}^{(0)}(r')(1+r'^{2})^{-(\mu+6)/2}((\mu+2)r'^{2}-2)}{R_{<}^{(0)}(r')\partial _{r}R^{(0)}_{>}(r')-R^{(0)}_{>}(r')\partial _{r}R^{(0)}_{<}(r')} \\
 & +R^{(0)}_{<}(r)\int _{r}^{\infty} \frac{R^{(0)}_{>}(r')(1+r'^{2})^{-(\mu+6)/2}((\mu+2)r'^{2}-2)}{R_{<}^{(0)}(r')\partial _{r}R^{(0)}_{>}(r')-R^{(0)}_{>}(r')\partial _{r}R^{(0)}_{<}(r')} \\
 & \propto{h^{(+)}_{+,m=0,n=0}}^{t}
\end{align}$$

$$\begin{align}
G_{0}(r_{1},r_{2}) & =\frac{(\theta(r_{1}-r_{2})R^{(0)}_{<}(r_{2})R_{>}^{(0)}(r_{1})+\theta(r_{2}-r_{1})R_{<}^{(0)}(r_{1})R_{>}^{(0)}(r_{2}))}{(1+r_{2}^{2})[R_{<}^{(0)}(r_{2})\partial _{r}R^{(0)}_{>}(r_{2})-R^{(0)}_{>}(r_{2})\partial _{r}R^{(0)}_{<}(r_{2})]}
\end{align}$$

where

$$\begin{align}
R^{(0)}_{<}(r) & ={}_{2}F_{1}\left( \frac{1}{2}(-\mu+2), \frac{1}{2}(\mu+2);1;-r^{2} \right) \\
R^{(0)}_{>}(r) & =(1+r^{2})^{-(\mu+2)/2}{}_{2}F_{1}\left(\frac{1}{2}\mu,\frac{1}{2}(\mu+2);1+\mu; \frac{1}{1+r^{2}}\right)
\end{align}$$

i have no idea. 

---

$$\begin{align}
W(r) & =R_{<}^{(m)}(r)\partial _{r}R^{(m)}_{>}(r)-R^{(m)}_{>}(r)\partial _{r}R^{(m)}_{<}(r) \\
R^{(m)}_{>}(r) & =r^{|m|}(1+r^{2})^{-(\mu+2+|m|)/2}{}_{2}F_{1}\left(\frac{1}{2}(\mu+|m|),\frac{1}{2}(\mu+2+|m|);1+\mu; \frac{1}{1+r^{2}}\right) \\
R^{(m)}_{<}(r) & =r^{|m|}{}_{2}F_{1}\left( \frac{1}{2}(-\mu+2+|m|), \frac{1}{2}(\mu+2+|m|);1+|m|;-r^{2} \right) \\
W^{(m)}(r) & =-\frac{2\Gamma(|m|+1)\Gamma(\mu+1)}{\Gamma\left( \frac{\mu+|m|}{2} \right)\Gamma\left( 1+\frac{\mu+|m|}{2} \right)}\frac{1}{r(1+r^{2})^{2}}
\end{align}$$

these two formula are equivalent, but i can't prove it due to complicated hypergeometric function identities. 

---

we will prove that $\displaystyle{A^{t}}$ expressed by Green function satisfies

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0
\end{align}$$

