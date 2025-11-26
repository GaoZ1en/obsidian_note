in this note we will try to derive the eom

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h=0
\end{align}$$

from the bulk Lagrangian of linearized gravity in AdS3

$$\begin{align}
L & =\sqrt{ -g }(R+2) \\
 & =\sqrt{ -g^{(0)} }\left( -4 \right)+\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h) \\
 & +\sqrt{ -g^{(0)} }\left(\frac{3}{2}h^{2}-4h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h\right. \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-2h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \\
 & \left.+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}h\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}+\mathcal{O}(h^{3})\right)
\end{align}$$

where we defined

$$\begin{align}
h & =g^{(0)\mu \nu}h_{\mu \nu} 
\end{align}$$
1. $\displaystyle{\mathcal{L}_{a}=\frac{3}{2}\sqrt{ -g^{(0)} }h^{2}}$
$$\begin{align}
\delta\mathcal{L}_{a} & =3\sqrt{ -g^{(0)} }hg^{(0)}_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$
2. $\displaystyle{\mathcal{L}_{b}=-4\sqrt{ -g^{(0)} }h_{\mu \nu}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{b} & =-8\sqrt{ -g^{(0)} }h_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$
3. $\displaystyle{\mathcal{L}_{c}=\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h}$
$$\begin{align}
\delta \mathcal{L}_{c} & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla _{\rho}^{(0)}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}) \\
 & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}h+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\rho}h^{\rho \sigma})\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})
\end{align}$$
4. $\displaystyle{\mathcal{L}_{d}=-\frac{1}{4}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h}$
$$\begin{align}
\delta \mathcal{L}_{d} & =-\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\nabla ^{(0)}_{\rho}\delta h^{\mu \nu} \\
 & =\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu})
\end{align}$$
5. $\displaystyle{\mathcal{L}_{e}=-\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}}$
$$\begin{align}
\delta \mathcal{L}_{e} & =-2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\nabla ^{(0)}_{\mu}\delta h^{\mu \nu} \\
 & =2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu}-2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu})
\end{align}$$
6. $\displaystyle{\mathcal{L}_{f}=\sqrt{ -g^{(0)} }\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}}$
$$\begin{align}
\delta \mathcal{L}_{f} & =\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}+\nabla ^{(0)}_{\mu}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}) \\
 & =\sqrt{ -g^{(0)} }(-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\delta h^{\mu \nu} \\
 & +\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu})
\end{align}$$
7. $\displaystyle{\mathcal{L}_{g}=-2\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}}$
$$\begin{align}
\delta \mathcal{L}_{g} & =-2\sqrt{ -g^{(0)} }(\delta h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+h_{\nu}^{~\rho}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}\delta h^{\mu\nu}) \\
 & =-2\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho})\delta h^{\mu \nu} \\
 & -2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\delta ^{\rho}_{\mu}h_{\nu}^{~\sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}\delta h^{\mu \nu})
\end{align}$$
8. $\displaystyle{\mathcal{L}_{h}=\frac{1}{2}\sqrt{ -g^{(0)} }h\nabla _{\mu}^{(0)}\nabla ^{(0)}_{\nu}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{h} & =\frac{1}{2}\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\delta h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}) \\
 & =\frac{1}{2}\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\delta h^{\mu \nu} \\
 & +\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\delta ^{\rho}_{\mu}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu})
\end{align}$$
9. $\displaystyle{\mathcal{L}_{i}=\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}}$
$$\begin{align}

\end{align}$$
#### (i) $+h^{\mu\nu}\nabla^{2}h_{\mu\nu}$ 项

$$
\mathcal{L}_{i}=\sqrt{-g}\,h^{\mu\nu}\nabla^{2}h_{\mu\nu}.
$$

变分：

$$
\delta\mathcal{L}_{i}=\sqrt{-g}\Big[
 \delta h^{\mu\nu}\nabla^{2}h_{\mu\nu}
 + h^{\mu\nu}\nabla^{2}\delta h_{\mu\nu}
\Big].
$$

对第二项分两次部积分（类似 (g)）：

$$
\sqrt{-g}\,h^{\mu\nu}\nabla^{2}\delta h_{\mu\nu}
 = \nabla_{\rho}\Big(\sqrt{-g}\,h^{\mu\nu}\nabla^{\rho}\delta h_{\mu\nu}\Big)
 - \sqrt{-g}\,(\nabla_{\rho}h^{\mu\nu})\nabla^{\rho}\delta h_{\mu\nu},
$$

接着

$$
-(\nabla_{\rho}h^{\mu\nu})\nabla^{\rho}\delta h_{\mu\nu}
 = -\nabla_{\rho}\Big((\nabla_{\sigma}h^{\mu\nu})\delta h_{\mu\nu}\Big)
 + (\nabla_{\rho}\nabla_{\sigma}h^{\mu\nu})\,\delta h_{\mu\nu}.
$$

从而

$$
\delta\mathcal{L}_{i}
 = \sqrt{-g}\Big[\delta h^{\mu\nu}\nabla^{2}h_{\mu\nu}
 + (\nabla_{\rho}\nabla^{\rho}h^{\mu\nu})\,\delta h_{\mu\nu}\Big]
 + \nabla_{\rho}\Big[\sqrt{-g}\,\Xi_{i}^{\rho}\Big],
$$

其中

$$
\Xi_{i}^{\rho}= h^{\mu\nu}\nabla^{\rho}\delta h_{\mu\nu}
 - (\nabla^{\rho}h^{\mu\nu})\delta h_{\mu\nu}.
$$

注意 $\nabla^{2}h_{\mu\nu}$ 与 $\nabla_{\rho}\nabla^{\rho}h_{\mu\nu}$ 等价，因此两项 bulk 贡献可以合并。

小结：

$$
\boxed{\text{(i) bulk}:\ \ 2\,\delta h^{\mu\nu}\nabla^{2}h_{\mu\nu}}
\qquad
\boxed{\text{(i) boundary}:\ \ \Xi_{i}^{\rho}= h^{\mu\nu}\nabla^{\rho}\delta h_{\mu\nu}
 - (\nabla^{\rho}h^{\mu\nu})\delta h_{\mu\nu}}
$$

#### (j) $-\tfrac{1}{2}h\nabla^{2}h$ 项

$$
\mathcal{L}_{j}=-\frac{1}{2}\sqrt{-g}\,h\nabla^{2}h.
$$

变分：

$$
\delta\mathcal{L}_{j}=-\frac{1}{2}\sqrt{-g}\Big[\delta h\nabla^{2}h + h\nabla^{2}\delta h\Big].
$$

对 $h\nabla^{2}\delta h$ 分两次部积分：

$$
-\frac{1}{2}\sqrt{-g}\,h\nabla^{2}\delta h
 = -\frac{1}{2}\nabla_{\mu}\Big(\sqrt{-g}\,h\nabla^{\mu}\delta h\Big)
 + \frac{1}{2}\sqrt{-g}\,(\nabla_{\mu}h)\nabla^{\mu}\delta h,
$$

而

$$
\frac{1}{2}\sqrt{-g}\,(\nabla_{\mu}h)\nabla^{\mu}\delta h
 = \frac{1}{2}\nabla_{\mu}\Big(\sqrt{-g}\,\nabla^{\mu}h\,\delta h\Big)
 - \frac{1}{2}\sqrt{-g}\,(\nabla^{2}h)\delta h.
$$

合并得到

$$
\delta\mathcal{L}_{j}
 = -\frac{1}{2}\sqrt{-g}\,\delta h\nabla^{2}h
 -\frac{1}{2}\sqrt{-g}\,(\nabla^{2}h)\delta h
 + \nabla_{\rho}\Big[\sqrt{-g}\,\Xi_{j}^{\rho}\Big]
 = -\sqrt{-g}\,(\nabla^{2}h)\delta h
 + \nabla_{\rho}\Big[\sqrt{-g}\,\Xi_{j}^{\rho}\Big],
$$

其中

$$
\Xi_{j}^{\rho}= -\frac{1}{2}h\nabla^{\rho}\delta h + \frac{1}{2}\nabla^{\rho}h\,\delta h.
$$

小结：

$$
\boxed{\text{(j) bulk}:\ \ -\,(\nabla^{2}h)\,\delta h}
\qquad
\boxed{\text{(j) boundary}:\ \ \Xi_{j}^{\rho}= -\tfrac{1}{2}h\nabla^{\rho}\delta h + \tfrac{1}{2}\nabla^{\rho}h\,\delta h}
$$

#### (k) $-\tfrac{1}{2}\nabla_{\mu}h_{\nu\rho}\nabla^{\rho}h^{\mu\nu}$ 项

$$
\mathcal{L}_{k}=-\frac{1}{2}\sqrt{-g}\,\nabla_{\mu}h_{\nu\rho}\nabla^{\rho}h^{\mu\nu}.
$$

变分：

$$
\delta\mathcal{L}_{k}=-\frac{1}{2}\sqrt{-g}\Big[
 (\nabla_{\mu}\delta h_{\nu\rho})\nabla^{\rho}h^{\mu\nu}
 + \nabla_{\mu}h_{\nu\rho}\,\nabla^{\rho}\delta h^{\mu\nu}
\Big].
$$

对第一项（$\nabla_{\mu}\delta h_{\nu\rho}$）分部积分：

$$
-\frac{1}{2}\sqrt{-g}(\nabla_{\mu}\delta h_{\nu\rho})\nabla^{\rho}h^{\mu\nu}
 = -\frac{1}{2}\nabla_{\mu}\Big(\sqrt{-g}\,\delta h_{\nu\rho}\nabla^{\rho}h^{\mu\nu}\Big)
 + \frac{1}{2}\sqrt{-g}\,\delta h_{\nu\rho}\nabla_{\mu}\nabla^{\rho}h^{\mu\nu}.
$$

对第二项（$\nabla^{\rho}\delta h^{\mu\nu}$）分部积分：

$$
-\frac{1}{2}\sqrt{-g}\,\nabla_{\mu}h_{\nu\rho}\,\nabla^{\rho}\delta h^{\mu\nu}
 = -\frac{1}{2}\nabla^{\rho}\Big(\sqrt{-g}\,\nabla_{\mu}h_{\nu\rho}\,\delta h^{\mu\nu}\Big)
 + \frac{1}{2}\sqrt{-g}\,\delta h^{\mu\nu}\nabla^{\rho}\nabla_{\mu}h_{\nu\rho}.
$$

合并：

$$
\delta\mathcal{L}_{k}
 = \frac{1}{2}\sqrt{-g}\Big[
 \delta h_{\nu\rho}\nabla_{\mu}\nabla^{\rho}h^{\mu\nu}
 + \delta h^{\mu\nu}\nabla^{\rho}\nabla_{\mu}h_{\nu\rho}
\Big]
 + \nabla_{\rho}\Big[\sqrt{-g}\,\Xi_{k}^{\rho}\Big],
$$

其中

$$
\Xi_{k}^{\rho}= -\frac{1}{2}\delta h_{\nu\sigma}\nabla^{\sigma}h^{\rho\nu}
 -\frac{1}{2}\nabla_{\mu}h_{\nu}{}^{\rho}\,\delta h^{\mu\nu}.
$$

小结：

$$
\boxed{\text{(k) bulk}:\ \ \tfrac{1}{2}\,\delta h_{\nu\rho}\nabla_{\mu}\nabla^{\rho}h^{\mu\nu}
 + \tfrac{1}{2}\,\delta h^{\mu\nu}\nabla^{\rho}\nabla_{\mu}h_{\nu\rho}}
$$

$$
\boxed{\text{(k) boundary}:\ \ \Xi_{k}^{\rho}= -\tfrac{1}{2}\delta h_{\nu\sigma}\nabla^{\sigma}h^{\rho\nu}
 -\tfrac{1}{2}\nabla_{\mu}h_{\nu}{}^{\rho}\,\delta h^{\mu\nu}}
$$

#### (l) $+\tfrac{3}{4}\nabla_{\rho}h_{\mu\nu}\nabla^{\rho}h^{\mu\nu}$ 项

$$
\mathcal{L}_{l}=\frac{3}{4}\sqrt{-g}\,\nabla_{\rho}h_{\mu\nu}\nabla^{\rho}h^{\mu\nu}.
$$

变分：

$$
\delta\mathcal{L}_{l}=\frac{3}{4}\sqrt{-g}\Big[
 (\nabla_{\rho}\delta h_{\mu\nu})\nabla^{\rho}h^{\mu\nu}
 + \nabla_{\rho}h_{\mu\nu}\,\nabla^{\rho}\delta h^{\mu\nu}
\Big].
$$

这两项在 $\mu\nu$ 交换下等价，所以我们可以对其中一个进行分部积分然后乘以 2：

$$
\delta\mathcal{L}_{l}=
\frac{3}{2}\sqrt{-g}\,(\nabla_{\rho}\delta h_{\mu\nu})\nabla^{\rho}h^{\mu\nu}.
$$

对 $\nabla_{\rho}\delta h_{\mu\nu}$ 分部积分：

$$
\frac{3}{2}\sqrt{-g}\,(\nabla_{\rho}\delta h_{\mu\nu})\nabla^{\rho}h^{\mu\nu}
 = \frac{3}{2}\nabla_{\rho}\Big(\sqrt{-g}\,\delta h_{\mu\nu}\nabla^{\rho}h^{\mu\nu}\Big)
 - \frac{3}{2}\sqrt{-g}\,\delta h_{\mu\nu}\nabla_{\rho}\nabla^{\rho}h^{\mu\nu}.
$$

因此

$$
\delta\mathcal{L}_{l}
 = -\frac{3}{2}\sqrt{-g}\,\delta h_{\mu\nu}\nabla^{2}h^{\mu\nu}
 + \nabla_{\rho}\Big[\sqrt{-g}\,\Xi_{l}^{\rho}\Big],
$$

其中

$$
\Xi_{l}^{\rho}= \frac{3}{2}\,\delta h_{\mu\nu}\nabla^{\rho}h^{\mu\nu}.
$$

小结：

$$
\boxed{\text{(l) bulk}:\ \ -\tfrac{3}{2}\,\delta h_{\mu\nu}\nabla^{2}h^{\mu\nu}}
\qquad
\boxed{\text{(l) boundary}:\ \ \Xi_{l}^{\rho}= \tfrac{3}{2}\,\delta h_{\mu\nu}\nabla^{\rho}h^{\mu\nu}}
$$

### 3. 大汇总：bulk 与 $E_{\mu\nu}$，以及边界项

现在收集所有项 (a)–(l) 的 bulk 和 boundary 贡献。

首先把作用写成统一形式：

$$
\delta S^{(2)}
 = \int d^{3}x\,\sqrt{-g}\,\Big[ E_{\mu\nu}(h)\,\delta h^{\mu\nu}
 + \nabla_{\rho}\Theta^{\rho}[h,\delta h]\Big],
$$

其中

$$
\Theta^{\rho}[h,\delta h] = \Xi_{a}^{\rho}+\Xi_{b}^{\rho}+\cdots+\Xi_{l}^{\rho},
$$

而 bulk 系数 $E_{\mu\nu}$ 是所有 (a)–(l) bulk 结果按 $\delta h_{\mu\nu}$ 重写并在 AdS 背景上化简的结果。利用

$$
R_{\mu\nu}=-2g_{\mu\nu},
\qquad
R_{\mu\alpha\nu\beta}=g_{\mu\nu}g_{\alpha\beta}-g_{\mu\beta}g_{\alpha\nu},
$$

及导数交换关系

$$
[\nabla_{\mu},\nabla_{\nu}]h_{\alpha\beta}
 = R_{\mu\nu\alpha}{}^{\rho}h_{\rho\beta}
 + R_{\mu\nu\beta}{}^{\rho}h_{\alpha\rho},
$$

可以将所有二阶导数整理成对称的形式，得到

$$
E_{\mu\nu}(h) = -h_{\mu \nu}-\frac{1}{2}\nabla ^{2}h_{\mu \nu}
-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\nabla _{\sigma}h^{\rho \sigma}
+\frac{1}{2}g_{\mu \nu}\nabla ^{2}h
+\frac{1}{2}\nabla _{\mu}\nabla _{\rho}h_{\nu}^{~\rho}
+\frac{1}{2}\nabla _{\nu}\nabla _{\rho}h_{\mu}^{~\rho}
-\frac{1}{2}\nabla _{\mu}\nabla _{\nu}h.
$$

线性化方程 $E_{\mu\nu}(h)=0$ 就是本笔记开头给出的 eom：

$$
-h_{\mu \nu}-\frac{1}{2}\nabla ^{2}h_{\mu \nu}-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\nabla _{\sigma}h^{\rho \sigma}
+\frac{1}{2}g_{\mu \nu}\nabla ^{2}h+\frac{1}{2}\nabla _{\mu}\nabla _{\rho}h_{\nu}^{~\rho}
+\frac{1}{2}\nabla _{\nu}\nabla _{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla _{\mu}\nabla _{\nu}h=0.
$$

对应的边界项则是

$$
\Theta^{\rho}[h,\delta h]
 = \Xi_{c}^{\rho}+\Xi_{d}^{\rho}+\Xi_{e}^{\rho}+\Xi_{f}^{\rho}
 +\Xi_{g}^{\rho}+\Xi_{h}^{\rho}+\Xi_{i}^{\rho}+\Xi_{j}^{\rho}
 +\Xi_{k}^{\rho}+\Xi_{l}^{\rho},
$$

其中每一项的 $\Xi^{\rho}$ 在对应小节已经给出，显式保留了所有全导数结构，方便后续按 Iyer–Wald 方案构造辛形式

$$
\omega^{\rho}(h;\delta_{1}h,\delta_{2}h)
 = \delta_{1}\Theta^{\rho}[h,\delta_{2}h]
 - \delta_{2}\Theta^{\rho}[h,\delta_{1}h].
$$


