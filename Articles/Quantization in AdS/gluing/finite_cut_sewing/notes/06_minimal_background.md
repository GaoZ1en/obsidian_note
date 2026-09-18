# 阅读本包所需的最少数学背景

## 1. 一个“完整 region”究竟是什么

不是只给一个时空子集。还要说明作用量、真实 physical boundary conditions、允许的 incoming data 和需要比较的场标签。Closed 指这些信息使动力学问题完整，不指几何上没有边界，也不指一切物理解都固定为零。

每次 opening 只改变被选中的 timelike boundary。下一次才重新引入那次所需的 source；不保存一个永久打开的网络。

## 2. 为什么需要 source，而不只是解

知道两个理论都满足同一条无源 equation，不能直接计算 observables 的括号。Peierls bracket 问的是给 action 加一个很小的 observable 后，场如何响应。必须保留 bulk 与 boundary probes；完整 retarded-minus-advanced response 才给 Poisson structure。

比较所有 smooth probes 的响应，就比较了作为 distribution 的 Green kernel。有限几个数值 samples 不能替代“所有 probes”的定理。

## 3. 三种面的数据数量为何不同

对二阶波方程，一个 spacelike cap 的场值和未来法向导数是独立 Cauchy data。Timelike wall 则先选一套封闭边值条件，opening 释放其源后观察相应响应。Null normal 同时 tangent，因此其所谓 normal flux 不给第二份独立控制；缺的 transverse integration constants 必须来自完整 characteristic geometry 和相交处数据。

“Corner jets”只是同一 smooth field 在交点的 Taylor coefficients。它们满足 PDE 递推，不是一套从几何角点凭空增加的物理自由度。

## 4. Closed quadratic form 不是辛形式

区间上的

$$a_B(u,v)=\int(u'v'+m^2uv)+\sum_e\sigma_eu(e)v(e)$$

是正的能量型二次型。Dirichlet 条件放在允许函数的域中，Robin 放在 surface term 中。它确定空间算子 $K_B$ 和边界实现。

这与 CPS 的反对称 $\Omega$ 不同。这里从 action/能量型 operator realization 得 Green functions，再定义 Peierls bracket；没有用 $\Omega^{-1}$ 作为 observable admissibility 的入口。

## 5. Wavefront 条件在防什么

一个 distribution 不只可能在某点奇异，还可能沿特定频率方向奇异。Wavefront set 记录这些位置与方向。如果两个奇异频率在同一点恰好相消，直接乘积可能没有定义。

当前 polynomial coefficients 的限制排除所有外腿同时未来或同时过去的 causal directions。Positive-frequency $W$ 的两端有相反方向，故允许 Wick contractions。Timelike trace 的 conormal 是 spacelike，常可安全使用；null conormal 本身就是 characteristic，不能自动安全 restriction。

不需要先掌握整个 microlocal analysis 才能读主体证明；但“某个 sharp trace 存在”必须由这里的检验或独立模型计算支持，不能只靠画图。

## 6. Renormalization 的三件事

第一，局部 Wick field 并非直接令 $W(x,x)$ 成为有限值，而是给 coincidence prescription。第二，相互作用 time ordering 需要将图 distributions 延拓到 collision sets。第三，不同 finite conventions 如何表示同一个物理 interaction 和同一个 insertion，需要明确 conversion maps。

Ordinary $\star$-product、time-ordered product 和将两个已重整化场再取 sharp coincidence 是不同操作。一个操作已定义，不代表另两个自动定义。

## 7. 什么叫条件定理

“若每个 intermediate problem 已有满足 boundary Ward identity 的 time-ordered products，则 sewing 保持它们”是一条比较定理。“这些 boundary products 确实存在”是另一条存在性定理。前者可以已经证明，后者还没有构造出来。

本包的 claim ledger 刻意保留这个区别。它也区分自由精确定理、形式逐阶结果、独立计算核验和真正的反例；不会用一张通过测试的表替代存在性证明。
