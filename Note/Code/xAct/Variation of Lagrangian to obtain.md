except

``` Mathematica
>>xAct`xPert`
```

we can also load packages as

``` Mathematica
Needs["xAct`xPert`"]
```

## Function defination

In order to calculate equation of motions with respect to metric $\displaystyle{g_{\mu \nu}}$, we define the following functions

``` Mathematica
PerturbAction[expr_, 
  g_?MetricQ[a_?UpIndexQ, b_?UpIndexQ] | 
   g_?MetricQ[a_?DownIndexQ, b_?DownIndexQ]] := 
 Module[{pertexpr, res, dgloc,(*dummyloc,*)hp},
  
  (* We define the metric perturbation, if not defined already *)
  dgloc = SymbolJoin["\[Delta]", g];
  
  hp = Head@Perturbation[g[DownIndex@a, DownIndex@b]];
  
  If[hp === Perturbation, 
   DefMetricPerturbation[g, dgloc, SymbolJoin["\[Epsilon]", g]], 
   dgloc = hp];
  
  
  Block[{$DefInfoQ = False},
   
   (* We perturb wrt to the metric and if it is the inverse metric we put a minus sign *)
   pertexpr = (If[DownIndexQ[a], 1, -1])*
      ToCanonical@
       ContractMetric@ExpandPerturbation@Perturbation[expr] /. 
     Perturbation[tens_] :> 0;
   
   (*We then use VarD. It happens that some trivial Kronecker appear which need to be handle manually *)
   res = 
    ToCanonical[(SameDummies@
        ContractMetric@
         VarD[dgloc[LI[1], a, b], CovDOfMetric[g]][pertexpr]) /. 
      delta[-LI[n_], LI[m_]] :> 
       KroneckerDelta[NoScalar[n], NoScalar[m]]];
   ];
  res
  ]
```

However when we take variation with respect to a tensor, indices are not specified, we can make the following definition

``` Mathematica
PerturbAction[expr_, tensor_?xTensorQ, covd_] := 
 Module[{res, dummyloc, pertexpr, inds},
  Block[{$DefInfoQ = False},
   
   (* We use a dummy name for the variation of the tensor, and use it to replace the formal first order perturbation the tensor *)
   (* So first we define this dummy tensor *)
   dummyloc = SymbolJoin["Var", tensor];
   inds = DummyIn /@ SlotsOfTensor[tensor];
   If[! xTensorQ[dummyloc], 
    DefTensor[dummyloc @@ inds, First@DependenciesOfTensor@tensor]];
   SymmetryGroupOfTensor[dummyloc] ^= SymmetryGroupOfTensor[tensor];
   
   (* Then we perturb the action and replace Perturbation[Tensor[..]] by this dummy tensor *)
   pertexpr = (ToCanonical@
      ContractMetric[
       ExpandPerturbation@Perturbation[expr] /. 
         Perturbation[tens_?((# =!= tensor) &)[ar___]] :> 0 /. 
        Perturbation[tensor[ind___]] :> dummyloc[ind]]);
   
   (* With this simple head, VarD works correctly. Again we need to handel some trivial Kronecker *)
   res = 
    ToCanonical[(SameDummies@
        ContractMetric@VarD[dummyloc @@ inds, covd][pertexpr]) /. 
      delta[-LI[n_], LI[m_]] :> 
       KroneckerDelta[NoScalar[n], NoScalar[m]]];
   ];
  res
  ]
```

When the derivative wrt to which the integration by parts is not specified, we take the Covariant derivative of the ambiant metric

``` Mathematica
PerturbAction[expr_, tensor_[inds___]] := 
 PerturbAction[expr, tensor[inds], CovDOfMetric@First@$Metrics]
```

``` Mathematica
PerturbAction[expr_, tensor_?xTensorQ[inds___], covd_] := 
 Module[{res, dummyloc, pertexpr},
  Block[{$DefInfoQ = False},
   dummyloc = SymbolJoin["Var", tensor];
   
   If[! xTensorQ[dummyloc], 
    DefTensor[dummyloc[inds], First@DependenciesOfTensor@tensor]];
   SymmetryGroupOfTensor[dummyloc] ^= SymmetryGroupOfTensor[tensor];
   
   (* Perturbation with xPert*)
   pertexpr = (ToCanonical@
      ContractMetric[
       ExpandPerturbation@Perturbation[expr] /. 
         Perturbation[tens_?((# =!= tensor) &)[ar___]] :> 0 /. 
        Perturbation[tensor[ind___]] :> dummyloc[ind]]);
   (* VarD and removal of KroneckerDelta*)
   res = 
    ToCanonical[(SameDummies@
        ContractMetric@VarD[dummyloc[inds], covd][pertexpr]) /. 
      delta[-LI[n_], LI[m_]] :> 
       KroneckerDelta[NoScalar[n], NoScalar[m]]];
   ];
  res
  ]
```

Then we define a function VarAction, which is used to perturb the Lagrangian times the determinant of the metric.

``` Mathematica
VarAction[expr_, 
  g_?MetricQ[as__?((UpIndexQ[#] || DownIndexQ[#]) &)]] := 
 Module[{sqrtg},
  sqrtg = Sqrt[SignDetOfMetric[g] Determinant[g][]];
  ToCanonical[
   PerturbAction[expr, g[as]] + 
    ReplaceDummies@expr*PerturbAction[sqrtg, g[as]]/sqrtg ]
  ]
```

However when we vary with respect to a tensor, it is no need to include the determinant of the metric.

``` Mathematica
VarAction[expr_, tensor_?((xTensorQ[#] && Not[MetricQ[#]]) &), 
  g_?MetricQ] := PerturbAction[expr, tensor, CovDOfMetric[g]]
VarAction[expr_, tensor_?((xTensorQ[#] && Not[MetricQ[#]]) &)] := 
  VarAction[expr, tensor, First@$Metrics];

VarAction[expr_, 
  tensor_?((xTensorQ[#] && Not[MetricQ[#]]) &)[inds___], g_?MetricQ] :=
  PerturbAction[expr, tensor[inds], CovDOfMetric[g]]
VarAction[expr_, 
   tensor_?((xTensorQ[#] && Not[MetricQ[#]]) &)[inds___]] := 
  VarAction[expr, tensor[inds], First@$Metrics];
```

PerturbAction just calculate the derivative of the Lagrangian with respect to the tensor field without considering the change of measure. However VarAction take it into consideration. For other tensor field other than the metric, they are equivalent.
## Examples

### Preliminaries

``` Mathematica
DD = 4
DefManifold[M4,DD,IndexRange[a,m]]
DefMetric[-1,g[-a,-b],CD,{";","$\nabla$"},PrintAs->"g"]

DefTensor[A[-a],M4]
DefTensor[φ[],M4]
DefTensor[F[-a,-b],M4,AntiSymmetric[{-a,-b}]] (*AntiSymmetric[{1,2}] also works*)

DefScalarFunction[V]
DefScalarFunction[f]

IndexSetDelayed[F[a_,b_],CD[a][A[b]]-CD[b][A[a]]] (*Set value when we need them*)
```

### Scalar field action

``` Mathematica
L=1/2CD[a][ɸ[]]CD[-a][ɸ[]]-V[ɸ]
```

Then we use VarAction to get the stress tensor and equations of motion

``` Mathematica
VarAction[L,g[a,b]]
VarAction[L,ɸ[]]
```

### ElectroMagnetism

``` Mathematica
L=F[a,b]F[-a,-b]/4
VarAction[L,g[a,b]]
VarAction[L,A[a]]
```

### Einstein-Hilbert action

``` Mathematica
L=RicciScalarCD[]
VarAction[L,g[a,b]]
```

### $\displaystyle{f(R)}$ theories

``` Mathematica
L=f[RicciScalarCD[]]
VarAction[L,g[a,b]]
```

### Lovelock invariant

See [[../../Physics/Lovelock theorem|Lovelock theorem]]. Now we will consider the Gauss-Bonnet term, $\displaystyle{\mathcal{L}_{2}}$

``` Mathematica
L=RiemannCD[a,b,c,d]Riemann[-a,-b,-c,-d]-4RicciCD[a,b]RicciCD[-a,-b]+RicciScalarCD[]RicciScalarCD[]
VarAction[L,g[a,b]]
```


