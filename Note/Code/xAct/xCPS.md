有人编写了这个包，感到高兴。现在写一点儿例子

# free scalar

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\nabla _{\mu}\phi \nabla ^{\mu}\phi & 
\end{align}$$

需要注意的是在我们常用的记号下辛势和辛形式会多一个负号

能动张量也多出来一个负号（当然你可以认为是取了+--的号差，万恶之源了属于是）

所谓Noether potential就是我们所说的$\displaystyle{\alpha _{\lambda}}$，也多出一个负号。然而Noether current没有多出负号，神奇。

怎么算Poisson bracket呢？使用VertInt和ExpandVertInt来计算contraction和展开

$$\begin{align}
 & -\tau ^{\alpha}(\mathcal{L}_{\xi}\phi\nabla _{\alpha}\mathcal{L}_{\zeta}\phi-\mathcal{L}_{\zeta}\phi \nabla _{\alpha}\mathcal{L}_{\xi}\phi)
\end{align}$$

注意到DefTensor有一个KillingVectorOf的选项可以使用。

# conformally coupled scalar

很遗憾的是对conformal transformation的变换支持不太行...

不过给出粒子的几率分布像是相对论量子力学的

