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
(1+r^{2})\partial _{r}^{2}G(r,\phi;r',\phi')+\frac{1+5r^{2}}{r}\partial _{r}G(r,\phi;r',\phi')+(4-\mu ^{2})G(r,r';\phi,\phi')+\frac{1}{r^{2}}\partial _{\phi}^{2}G(r,r';\phi,\phi') & =\frac{\sqrt{ 1+r^{2} }}{r}\delta(r-r')\delta(\phi-\phi') \\
r\in(0,\infty),\phi \in[0,2\pi)
\end{align}$$

make a Fourier transform

$$\begin{align}
G(r,\phi;r',\phi') & =\frac{1}{2\pi}\sum ^{\infty}_{m=-\infty}e^{im(\phi-\phi')}G_{m}(r,r')
\end{align}$$

then $\displaystyle{G_{m}(r,r')}$ satisfies

$$\begin{align}
(1+r^{2})\partial _{r}^{2}G_{m}(r,r')+\frac{1+5r^{2}}{r}\partial _{r}G_{m}(r,r')+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}} \right)G_{km}(r,r') & =\frac{\sqrt{ 1+r^{2} }}{r}\delta(r-r') \\
\implies  \partial _{\rho}^{2}G_{m}(\rho,\rho')+\frac{\cos ^{2}\rho+3\sin ^{2}\rho}{\sin \rho \cos \rho} \partial _{\rho}G_{m}(\rho,\rho')+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin^{2}\rho} \right)G_{m}(\rho,\rho') & =0 \\
\implies 4z(1-z)\partial _{z}^{2}G_{m}(z,z')-4\partial _{z}G_{m}(z,z')+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)G_{m}(z,z') & =0 \\
\implies G_{m}(r,r') & =C_{1}z^{1-\mu/2}(1-z)^{|m|/2}{}_{2}F_{1}\left( \frac{m-\mu}{2}, 1+\frac{m-\mu}{2};1-\mu;z \right) \\
 & +C_{2}z^{1+\mu/2}(1-z)^{-|m|/2}{}_{2}F_{1}\left(-\frac{m-\mu}{2},1-\frac{m-\mu}{2};1+\mu;z\right) \\
\end{align}$$

when $\displaystyle{r<r'}$

## 修正解的渐近行为分析

很好！你的这个形式更加清晰。让我仔细分析这两个解的渐近行为。

## 解的形式

$$u_1(z) = C_1 z^{1-\mu/2}(1-z)^{|m|/2} \,_{2}F_1\left(\frac{m-\mu}{2}, 1+\frac{m-\mu}{2}; 1-\mu; z\right)$$

$$u_2(z) = C_2 z^{1+\mu/2}(1-z)^{-|m|/2} \,_{2}F_1\left(-\frac{m-\mu}{2}, 1-\frac{m-\mu}{2}; 1+\mu; z\right)$$

其中 $$z = \frac{1}{1+r^2}$$，所以：
- $$r \to 0 \Rightarrow z \to 1$$
- $$r \to \infty \Rightarrow z \to 0$$
- $$r = \sqrt{\frac{1-z}{z}}$$

## 渐近行为分析

### Case 1: $$z \to 0$$ (即 $$r \to \infty$$)

当 $$z \to 0$$ 时：
- $$(1-z) \to 1$$
- $$\,_{2}F_1(a,b;c;z) \to 1$$

因此：
$$u_1(z) \sim C_1 z^{1-\mu/2} \cdot 1^{|m|/2} \cdot 1 = C_1 z^{1-\mu/2}$$

$$u_2(z) \sim C_2 z^{1+\mu/2} \cdot 1^{-|m|/2} \cdot 1 = C_2 z^{1+\mu/2}$$

转换回 $$r$$ 坐标：$$z = \frac{1}{1+r^2} \sim \frac{1}{r^2}$$ （当$$r \gg 1$$）

$$u_1(r) \sim C_1 r^{-2(1-\mu/2)} = C_1 r^{-2+\mu}$$

$$u_2(r) \sim C_2 r^{-2(1+\mu/2)} = C_2 r^{-2-\mu}$$

### Case 2: $$z \to 1$$ (即 $$r \to 0$$)

这是关键部分！当 $$z \to 1$$ 时，需要分析超几何函数的行为。

对于 $$z \to 1$$，超几何函数的行为由公式给出：
$$\,_{2}F_1(a,b;c;z) \sim (1-z)^{c-a-b} \quad \text{if } c-a-b > 0$$

#### 对于 $$u_1$$：
$$c-a-b = (1-\mu) - \frac{m-\mu}{2} - \left(1+\frac{m-\mu}{2}\right) = 1-\mu - (m-\mu) - 1 = -m$$

因此当 $$z \to 1$$：
$$\,_{2}F_1\left(\frac{m-\mu}{2}, 1+\frac{m-\mu}{2}; 1-\mu; z\right) \sim (1-z)^{-m}$$

所以：
$$u_1(z) \sim C_1 z^{1-\mu/2} (1-z)^{|m|/2} (1-z)^{-m}$$

**情况分析**：
- 如果 $$m \geq 0$$：$$u_1(z) \sim C_1 z^{1-\mu/2} (1-z)^{|m|/2-m} = C_1 z^{1-\mu/2} (1-z)^{-m/2}$$
- 如果 $$m < 0$$：$$u_1(z) \sim C_1 z^{1-\mu/2} (1-z)^{|m|/2-m} = C_1 z^{1-\mu/2} (1-z)^{3|m|/2}$$

#### 对于 $$u_2$$：
$$c-a-b = (1+\mu) - \left(-\frac{m-\mu}{2}\right) - \left(1-\frac{m-\mu}{2}\right) = 1+\mu + \frac{m-\mu}{2} - 1 + \frac{m-\mu}{2} = \mu + (m-\mu) = m$$

因此：
$$\,_{2}F_1\left(-\frac{m-\mu}{2}, 1-\frac{m-\mu}{2}; 1+\mu; z\right) \sim (1-z)^{m}$$

所以：
$$u_2(z) \sim C_2 z^{1+\mu/2} (1-z)^{-|m|/2} (1-z)^{m}$$

**情况分析**：
- 如果 $$m \geq 0$$：$$u_2(z) \sim C_2 z^{1+\mu/2} (1-z)^{m-|m|/2} = C_2 z^{1+\mu/2} (1-z)^{m/2}$$
- 如果 $$m < 0$$：$$u_2(z) \sim C_2 z^{1+\mu/2} (1-z)^{m-|m|/2} = C_2 z^{1+\mu/2} (1-z)^{-3|m|/2}$$

## 转换到 $$r$$ 坐标的 $$r \to 0$$ 行为

当 $$r \to 0$$ 时，$$z \to 1$$，$(1-z) = \frac{r^2}{1+r^2} \sim r^2$，$z \sim 1$

### 对于 $$m \geq 0$$：
$$u_1(r) \sim C_1 \cdot 1^{1-\mu/2} \cdot (r^2)^{-m/2} = C_1 r^{-m}$$

$$u_2(r) \sim C_2 \cdot 1^{1+\mu/2} \cdot (r^2)^{m/2} = C_2 r^{m}$$

### 对于 $$m < 0$$：
$$u_1(r) \sim C_1 r^{3|m|} = C_1 r^{-3m}$$

$$u_2(r) \sim C_2 r^{-3|m|} = C_2 r^{3m}$$

## 总结：边界条件选择

### 正则解（$$r \to 0$$ 时有界）：
- 对于 $$m \geq 0$$：选择 $$u_2$$ （$$\sim r^m$$）
- 对于 $$m < 0$$：选择 $$u_1$$ （$$\sim r^{-3m} = r^{3|m|}$$）

### 衰减解（$$r \to \infty$$ 时衰减）：
取决于 $$\mu$$ 的符号：
- 如果 $$\mu > 0$$：选择 $$u_2$$ （$$\sim r^{-2-\mu}$$）
- 如果 $$\mu < 0$$：选择 $$u_1$$ （$$\sim r^{-2+|\mu|}$$，需要 $$|\mu| < 2$$）

这个分析确认了你的解形式是正确的！现在可以根据具体的边界条件来构造Green函数了。