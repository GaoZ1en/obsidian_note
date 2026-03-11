# problem 1

for $\displaystyle{f(R)}$ theory+SM, the action is given by

$$\begin{align}
S & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\frac{1}{16\pi G}f(R)+\mathcal{L}_{\text{SM}}\right)
\end{align}$$

derive the eom with respect to the metric $g_{\mu\nu}$.

## solution

take a variation of the action and ignore all the total derivative terms, we have

$$\begin{align}
\delta S & =\frac{1}{16\pi G} \int \mathrm{d}^{4}x\sqrt{ -g }f'(R)\left(-R^{\mu \nu}\delta g_{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla ^{2}\delta g_{\mu \nu}\right) \\
 & +\frac{1}{32\pi G}\int \mathrm{d}^{4}x\sqrt{ -g }f(R)g^{\mu \nu}\delta g_{\mu \nu}-\frac{1}{2}\int \mathrm{d}^{4}x\sqrt{ -g }T^{\mu \nu}\delta g_{\mu \nu} \\
 & =\frac{1}{16\pi G}\int \mathrm{d}^{4}x\sqrt{ -g }\left(-f'(R)R^{\mu \nu}+\frac{1}{2}f(R)g^{\mu \nu}+(\nabla ^{\mu}\nabla ^{\nu}-g^{\mu \nu}\nabla ^{2})f'(R)-8\pi GT^{\mu \nu}\right)\delta g_{\mu \nu} \\
\implies & f'(R)R^{\mu \nu}-\frac{1}{2}f(R)g^{\mu \nu}-(\nabla ^{\mu}\nabla ^{\nu}-g^{\mu \nu}\nabla ^{2})f'(R)=8\pi GT^{\mu \nu}
\end{align}$$

(this problem can also be solved via the xAct package in Mathematica, but for the moment I don't have any passion to write the code for this problem.)

# problem 2

consider the Weyl transformation of the metric

$$\begin{align}
\hat{g}^{\mu \nu} & =e^{2\sigma}g^{\mu \nu}
\end{align}$$

derive the transformation of the Ricci scalar $\hat{R}$ under this Weyl transformation.

## solution

the following mathematica code can be used to derive the transformation of the Ricci scalar under the Weyl transformation (however, it is ugly):

```mathematica
<<xAct`xTras` (* Load the xTras package *)

(* Define the manifold, metric and the dimension of the manifold *)
DefConstantSymbol[DD]
DefManifold[MD,DD,IndexRange[a,f]]
DefMetric[-1,gmetric[-a,-b],CD]

(* Define the transformed metric *)
DefTensor[\sigma[],MD]
DefTensor[tg[-a,-b],MD,Symmetric[{1,2}]]
DefTensor[tgup[a,b],MD,Symmetric[{1,2}]]
IndexSet[tg[-a_,-b_],Exp[2 \sigma[]] gmetric[-a,-b]]
IndexSet[tgup[a_,b_],Exp[-2 \sigma[]] gmetric[-a,-b]]

(* Define and compute the transformed Christoffel symbols *)
DefTensor[tGamma[c,-a,-b],MD,Symmetric[{2,3}]]
IndexSet[tGamma[c_,-a_,-b_],(1/2) tgup[c,d] (PD[-a][tg[-b,d]] + PD[-b][tg[-a,d]] - PD[d][tg[-a,-b]])]

(* Define and compute the transformed Riemann tensor *)
DefTensor[tRiemann[c,-d,-a,-b],MD] (* I forget how to set the symmetry of the Riemann tensor, so I just ignore it *)
IndexSet[tRiemann[c_,-d_,-a_,-b_],PD[-a][tGamma[c,-b,-d]] - PD[-b][tGamma[c,-a,-d]] + tGamma[c,-a,-e] tGamma[e,-b,-d] - tGamma[c,-b,-e] tGamma[e,-a,-d]]

(* Define and compute the transformed Ricci tensor *)

DefTensor[tRicci[-a,-b],MD,Symmetric[{1,2}]]
IndexSet[tRicci[-a_,-b_],tRiemann[c,-a,-c,-b]]

(* Define and compute the transformed Ricci scalar *)
DefScalarFunction[tR[],MD]
IndexSet[tR[],tgup[a,b] tRicci[-a,-b]]

(* Print the final result *)
ChangeCovD[tR[],PD,CD]//FullSimplification[gmetric]
```

the final result is

$$\begin{align}
e^{2\sigma}\hat{R} & =R-(d-2)\nabla ^{2}\sigma -(d-1)(d-2)\nabla _{\mu}\sigma \nabla ^{\mu}\sigma
\end{align}$$

which is exacyly the form we expected.

# problem 3

the metric of the LTB model is given by

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+X^{2}(t,r)\mathrm{d}r^{2}+Y^{2}(t,r)\left(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}\right)
\end{align}$$

derive the Einstein tensor for this metric.

## solution

the following mathematica code can be used to derive the Einstein tensor for the LTB metric:

```mathematica
<<xAct`xTras` (* Load the xTras package *)

(* Define the manifold, metric and coordinates *)
DefManifold[M4,4,IndexRange[a,m]]
DefMetric[1,gmetric[-a,-b],CD]
DefChart[LTB,M4,{0,1,2,3},{t[],r[],theta[],phi[]}]

(* Define the metric components *)
DefScalarFunction@{X,Y}
gmatrix={{-1,0,0,0},
        {0,X[t[],r[]]^2,0,0},
        {0,0,Y[t[],r[]]^2,0},
        {0,0,0,Y[t[],r[]]^2 Sin[theta[]]^2}};
MetricInBasis[gmetric,-LTB,gmatrix]
MetricInBasis[gmetric,LTB,Inverse[gmatrix]]
MetricCompute[gmetric,LTB,All,CVSimplify->Simplify]

(* Compute the Einstein tensor *)
ComponentArray[EinsteinCD[-{a, LTB}, -{b, LTB}]] // ToValues // MatrixForm
```
the running result is

$$\begin{align}
G_{tt} & =\frac{2YX'Y'-X(Y'^{2}+2YY'')+2X^{2}Y\dot{X}\dot{Y}+X^{3}(1+\dot{Y}^{2})}{X^{3}Y^{2}} \\
G_{tr} & =\frac{2Y'\dot{X}-2XY''}{XY} \\
G_{rr} & =\frac{Y'^{2}-X^{2}(1+\dot{Y}^{2}+2Y\ddot{Y})}{Y^{2}} \\
G_{\theta \theta} & =-\frac{Y(X'Y'+X(-Y''+X(\dot{X}\dot{Y}+Y\ddot{X}+X\ddot{Y})))}{X^{3}} \\
G_{\phi \phi} & =-\sin^{2}\theta  \frac{Y(X'Y'+X(-Y''+X(\dot{X}\dot{Y}+Y\ddot{X}+XY\ddot{Y})))}{X^{3}}
\end{align}$$
