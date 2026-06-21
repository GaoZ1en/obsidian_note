Lovelock invariants are defined as

$$
\tag{lovelock invariant}
\begin{align}
\mathcal{L}_{n} & =\frac{1}{2^{n}}\delta^{\mu_{1}\mu_{2}\dots \mu_{2n-1}\mu_{2n}}_{\nu_{1}\nu_{2}\dots \nu_{2n-1}\nu_{2n}}R^{\nu_{1}\nu_{2}}_{\mu_{1}\mu_{2}}\dots R^{\nu_{2n-1}\nu_{2n}}_{\mu_{2n-1}\mu_{2n}} \\
\delta^{\mu_{1}\mu_{2}\dots \mu_{n}}_{\nu_{1}\nu_{2}\dots \nu_{n}} & =\begin{vmatrix}
\delta^{\mu_{1}}_{\nu_{1}} & \dots & \delta^{\mu_{1}}_{\nu_{n}} \\
\vdots & \ddots & \vdots \\
\delta^{\mu_{n}}_{\nu_{1}} & \dots & \delta^{\mu_{n}}_{\nu_{n}}
\end{vmatrix}=\begin{cases}
+1, & \text{if }\mu_{1},\mu_{2},\dots,\mu_{n}\text{ is an even permutation of }\nu_{1},\nu_{2},\dots,\nu_{n} \\
-1, & \text{if }\mu_{1},\mu_{2},\dots,\mu_{n}\text{ is an odd permutation of }\nu_{1},\nu_{2},\dots,\nu_{n} \\ \\
0, & \text{otherwise}
\end{cases}
\end{align}
$$

The lowest three terms are well known:

1. 1, cosmological constant term
1. $\displaystyle{R}$, Einstein-Hilbert action
1. $\displaystyle{R_{\mu \nu \rho \sigma}R^{\mu \nu \rho \sigma}-4R_{\mu \nu}R^{\mu \nu}+R^{2}}$, Gauss-Bonnet term.

Lovelock invariants are constructed to solve the problem that how to construct all the 2-order tensor $\displaystyle{A^{\mu \nu}}$ which satisfies the following conditions:

1. $\displaystyle{A^{\mu \nu}=A^{\mu \nu}(g_{\alpha \beta},\partial_{\lambda}g_{\alpha \beta},\partial_{\rho}\partial_{\lambda}g_{\alpha \beta})}$
1. $\displaystyle{\partial_{\nu}A^{\mu \nu}=0}$
1. $\displaystyle{A^{\mu \nu}=A^{\nu \mu}}$
1. second-derivative of the metric $\displaystyle{g_{\alpha \beta}}$ is linear.

Then the vacuum Einstein field equation is

$$
\tag{vacuum Einstein field equation}
\begin{align}
A^{\mu \nu}=0
\end{align}
$$

Lovelock proved that the exact form of $\displaystyle{A^{\mu \nu}}$ that satisfies 1-3 is

$$
\tag{lovelock eom}
\begin{align}
A^{\mu \nu}=\sum^{\infty}_{n=1}a_{n}g^{\lambda \mu}\delta^{\mu \mu_{1}..\mu_{2n}}_{\lambda \lambda_{1}\dots \lambda_{2n}}R_{\mu_{1}\mu_{2}}^{\lambda_{1}\lambda_{2}}\dots R^{\lambda_{2n-1}\lambda_{2n}}_{\mu_{2n-1}\mu_{2n}}+bg^{\mu \nu} \\
a_{n},b \in \mathbb{R}
\end{align}
$$

in 1972, Lovelock proved that in $\displaystyle{d=4}$, there is no need to require $\displaystyle{A^{\mu \nu}}$ to satisfies $\displaystyle{A^{\mu \nu}=A^{\nu \mu}}$. Then the only possibility in $\displaystyle{d=4}$ is the usual Einstein-Hilbert action with cosmological constant term, which are precisely the first and second Lovelock invariants.

After all the discussion, we want to remark that in order to get some theories that surpasses general relativity, we need at least one conditions listed below:

1. introduce non-metric field
1. introduce higher-derivative terms
1. construct theory in non-4-dimension
1. give up locality (not mainstream, but we must understand it to quantize gravity)
1. not conservation of stress-energy tensor
