## ## 匹配条件

### 连续性条件
在 $$r = r'$$ 处：
$$A_1 R_<(r') = A_2 R_>(r') \quad \cdots (1)$$

### 跳跃条件推导
将格林函数方程在 $$r'$$ 附近从 $$r'-\epsilon$$ 到 $$r'+\epsilon$$ 积分：

$$\int_{r'-\epsilon}^{r'+\epsilon} \left[(1+r^2)\partial_r^2 G_m + \cdots \right] dr = \int_{r'-\epsilon}^{r'+\epsilon} \frac{\sqrt{1+r^2}}{r}\delta(r-r') dr$$

右边给出：$$\frac{\sqrt{1+r'^2}}{r'}$$

左边的主要贡献来自二阶导数项：
$$(1+r'^2)[\partial_r G_m]_{r'-\epsilon}^{r'+\epsilon} = \frac{\sqrt{1+r'^2}}{r'}$$

即：
$$(1+r'^2)[A_2 R_>'(r') - A_1 R_<'(r')] = \frac{\sqrt{1+r'^2}}{r'}$$

$$A_2 R_>'(r') - A_1 R_<'(r') = \frac{1}{r'(1+r'^2)} \quad \cdots (2)$$

## ## 求解系数

从方程(1)和(2)：
$$\begin{pmatrix} R_<(r') & -R_>(r') \\ R_<'(r') & -R_>'(r') \end{pmatrix} \begin{pmatrix} A_1 \\ A_2 \end{pmatrix} = \begin{pmatrix} 0 \\ \frac{1}{r'(1+r'^2)} \end{pmatrix}$$

解得：
$$A_1 = \frac{R_>(r')}{W[R_<,R_>]} \cdot \frac{1}{r'(1+r'^2)}$$
$$A_2 = \frac{R_<(r')}{W[R_<,R_>]} \cdot \frac{1}{r'(1+r'^2)}$$

其中朗斯基行列式：$$W[R_<,R_>] = R_< R_>' - R_<' R_>$$

## ## 最终结果

将系数代入：

$$\boxed{G_m(r,r') = \begin{cases}
\frac{R_<(r) R_>(r')}{W[R_<,R_>]} \cdot \frac{1}{r'(1+r'^2)} & \text{for } r < r' \\
\frac{R_<(r') R_>(r)}{W[R_<,R_>]} \cdot \frac{1}{r'(1+r'^2)} & \text{for } r > r'
\end{cases}}$$

**注意**：这里包含了源项的归一化因子 $$\frac{1}{r'(1+r'^2)}$$，这来自您的方程右端 $$\frac{\sqrt{1+r^2}}{r}\delta(r-r')$$。

## ## 与您公式的关系

您给出的公式中的 $$W$$ 实际上已经包含了归一化，所以是等价的形式。关键在于理解**分段性质**来自边界条件和物理要求的正则性。