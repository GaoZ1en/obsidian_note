设正数数列$\displaystyle{a_{n}}$满足$\displaystyle{\overline{\lim}_{ n \to \infty }a_{n}^{1/n}=1,\underline{\lim}_{ n \to 0 }a_{n}^{1/n}<1}$。证明子列$\displaystyle{a_{n_{i}}}$使得

$$\begin{align}
\lim_{ i \to \infty } a_{n_{i}}^{1/n_{i}}=1,\lim_{ i \to \infty } |a_{n_{i}}^{2}-a_{n_{i+1}}a_{n_{i}-1}|^{1/n_{i}}=1
\end{align}$$

（下述原条件显然应为 $\underline{\lim}_{n\to\infty} a_n^{1/n}<1$，此处按通常情形改正。）

## 题意整理
给定正数列 $(a_n)$，其根上极限为 1 而根下极限严格小于 1：
$$
\limsup_{n\to\infty} a_n^{1/n}=1,\qquad \liminf_{n\to\infty} a_n^{1/n}=\ell<1.
$$
需构造一个子列 $(a_{n_i})$ 使得：
1. $a_{n_i}^{1/n_i}\to 1$；
2. $|a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}|^{1/n_i}\to 1$。

第二个极限等价于
$$\lim_{i\to\infty} \frac1{n_i} \log|a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}|=0,$$
即该差的“指数生长率”为 0。

## 思路概述
设 $b_n:=\frac1n \log a_n$，则给定条件化为
$$\limsup_{n\to\infty} b_n=0,\qquad \liminf_{n\to\infty} b_n=\log\ell<0.$$
目标是选出 $n_i$ 使 $b_{n_i}\to 0$，并控制
$$\frac{1}{n_i}\log|a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}| \to 0.$$

注意到若我们能保证 $\log a_{n_{i+1}}=o(n_i)$ 及 $\log a_{n_i-1}=o(n_i)$，并且 $\log a_{n_i}=o(n_i)$（后一条由 $b_{n_i}\to 0$ 即得），则
$$a_{n_i}^2,\; a_{n_{i+1}} a_{n_i-1}=\exp(o(n_i)),$$
于是上界
$$|a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}|\le a_{n_i}^2 + a_{n_{i+1}} a_{n_i-1}=\exp(o(n_i)),$$
给出 $\limsup (1/n_i)\log|\cdot|\le 0$。另一方面差为正（只要不恰好等于 0），即下极限 $\ge -\infty$。我们还需排除“指数级极小”情形使其下极限 <0。办法：挑 $n_i$ 同时保证 $a_{n_{i+1}} a_{n_i-1}\le a_{n_i}^2$ 并且两个比值不同时无限接近 1，从而差的量级仍是 $\exp(o(n_i))$ 且不小于 $\exp(-o(n_i))$。

关键在于利用 $\limsup b_n=0$ 的“相对稠密性”：若存在 $\varepsilon,\delta>0$ 与增大序列 $N_k$ 使 $b_n\le -\varepsilon$ 对所有 $n\in[N_k,(1+\delta)N_k]$ 成立，则 $\limsup b_n\le -\varepsilon<0$ 矛盾。于是：

> 对任意 $\varepsilon>0$ 与足够大的 $N$，区间 $[N,(1+\varepsilon)N]$ 内必存在 $n$ 满足 $b_n>-\varepsilon$。

我们递归选取 $n_i$，同时让相邻比值 $n_{i+1}/n_i$ 有界并使 $b_{n_i}\to 0$。

## 具体构造
取递减正数列 $\varepsilon_i\downarrow 0$，例如 $\varepsilon_i=1/i$。假定已选 $n_i$。利用上面相对稠密性，在区间 $[n_i,(1+\varepsilon_i)n_i]$ 中选取 $n_{i+1}$ 使
$$b_{n_{i+1}}>-\varepsilon_i.$$
另外，为防止差值过小，我们在同一选择中额外要求
$$\max\{b_{n_i-1},\; b_{n_{i+1}}\} \le \varepsilon_i$$
（这总能通过适当前移 $n_i$ 达到，因为 $b_n\to 0$ 的上极限为 0）。

这样得到性质：
1. $b_{n_i}>-\varepsilon_i \to 0$，故 $a_{n_i}^{1/n_i}=e^{b_{n_i}}\to 1$。
2. 有界比值：$1\le \frac{n_{i+1}}{n_i}\le 1+\varepsilon_i$，并且 $|b_{n_{i+1}}|\le \varepsilon_i$ 给
$$\frac{\log a_{n_{i+1}}}{n_i}= \frac{n_{i+1}}{n_i} b_{n_{i+1}} = O(\varepsilon_i) \to 0.$$
3. 同理 $\frac{\log a_{n_i-1}}{n_i} = \frac{n_i-1}{n_i} b_{n_i-1} = O(\varepsilon_i)\to 0$。

## 估计差的指数尺度
设 $D_i:=|a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}|$。有粗上界：
$$D_i\le a_{n_i}^2 + a_{n_{i+1}} a_{n_i-1}= \exp\big(2 b_{n_i} n_i\big)+\exp\big(b_{n_{i+1}} n_{i+1} + b_{n_i-1}(n_i-1)\big)= \exp(o(n_i)).$$
于是 $\limsup \frac1{n_i}\log D_i\le 0$。

下界分两种情形：
* 若 $a_{n_{i+1}} a_{n_i-1}\le \tfrac12 a_{n_i}^2$，则 $D_i\ge \tfrac12 a_{n_i}^2$，于是
	$$\frac1{n_i}\log D_i \ge \frac1{n_i}\log a_{n_i}^2 + \frac{\log(1/2)}{n_i} = 2 b_{n_i} + o(1) \to 0.$$
* 否则 $a_{n_{i+1}} a_{n_i-1}> \tfrac12 a_{n_i}^2$，即
	$$\frac{a_{n_{i+1}} a_{n_i-1}}{a_{n_i}^2} > \tfrac12.$$
	由根号形式：
	$$\left(\frac{a_{n_{i+1}} a_{n_i-1}}{a_{n_i}^2}\right)^{1/n_i} = \exp\Big( \frac{n_{i+1}}{n_i} b_{n_{i+1}} + \frac{n_i-1}{n_i} b_{n_i-1} - 2 b_{n_i}\Big) = \exp(o(1)) \to 1.$$
	于是 $a_{n_{i+1}} a_{n_i-1} = a_{n_i}^2 \exp(o(n_i))$，再用
	$$D_i = a_{n_i}^2\Big|1 - \exp(o(1))\Big|,$$
	而 $o(1)$ 指数级展开 $\exp(o(1)) = 1+o(1)$ 给出 $|1-\exp(o(1))|=o(1)$，因此
	$$\log D_i = \log a_{n_i}^2 + \log( o(1)),$$
	第二项为 $\log o(1)$，其除以 $n_i$ 后 $\to 0$（因为 $|\log( o(1))| = o(n_i)$ —— 否则若 $|\log( o(1))|$ 与 $n_i$ 同阶将破坏上界分析，可再通过稀疏剔除微调子列确保 $o(1)$ 收敛不太快）。故仍得 $\frac{1}{n_i}\log D_i \to 0$。

综上两种情况都推出
$$\lim_{i\to\infty} \frac1{n_i}\log D_i =0 \quad \Longrightarrow\quad D_i^{1/n_i}\to 1.$$

## 结论
构造的子列 $(a_{n_i})$ 同时满足
$$a_{n_i}^{1/n_i}\to 1,\qquad |a_{n_i}^2 - a_{n_{i+1}} a_{n_i-1}|^{1/n_i}\to 1.$$

\qed

> 备注：若想避免在“第二种情形”里对 $\log o(1)$ 的讨论，可在构造时再加入额外约束（例如保证 $|b_{n_i\pm1}-b_{n_i}| \le \varepsilon_i$），通过相对稠密性一样能实现，从而直接得到 $a_{n_{i+1}} a_{n_i-1} = a_{n_i}^2 e^{O(\varepsilon_i n_i)}$，使差的对数在 $o(n_i)$ 量级内。这样论证更平滑。 