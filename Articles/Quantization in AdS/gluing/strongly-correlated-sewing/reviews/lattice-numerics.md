# 有限量子链：独立基态、纠缠与 CMI 检验

**结论：有限链数据与 Ising 的 $c=1/2$、三态 Potts 的 $c=4/5$ 对数纠缠规律相容，但不证明连续极限，也没有验证一般 sewing 命题。** 这些基态的连续分区 CMI 显著非零，因而不支持把区域重构简化成精确量子 Markov 条件 $I(A:C|B)=0$。允许保留完整界面相互作用／历史的 sewing 不要求这个条件，不能由非零 CMI 否定。

本次按缩小后的授权范围只做 PBC 稀疏基态；thermal、Trotter、replica swap 不在本报告内。OBC 仅用于小尺寸 Hamiltonian 与熵实现核对，不作 OBC 尺寸拟合。

## 可复现材料与实际运行

- 实际执行代码：[spin_chain_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_checks.py>)。
- 完整结果、每个区间的 $S_1/S_2$、各拟合窗口、误差、随机种子、版本与代码 SHA256：[spin_chain_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_results.json>)。
- 执行环境：Sage 10.9，Python 3.14.3，NumPy 2.4.4，SciPy 1.17.1，macOS arm64；没有安装依赖。
- 最终运行时间戳：2026-11-06 16:07:39 UTC；内部计时约 0.255 s，不包含 Sage/Python 启动开销。初次后台运行已收集且退出码为 0；增加独立偏迹熵检查后重跑完成。

在项目根目录运行：

```bash
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 \
  /usr/local/bin/sage --nodotsage -python verification/spin_chain_checks.py
```

脚本只生成／覆盖上述 JSON；各尺寸完成后保存进度，全部完成才写入 `"status": "complete"`。固定初始随机向量种子；不同 BLAS／硬件允许末位浮点变化。

## 1. 对象、归一化与边界

取局域 Hilbert 空间 $\mathbb C^q$，总空间 $(\mathbb C^q)^{\otimes N}$，格距与 $\hbar$ 为 1，站点编号 $0,\ldots,N-1$，所有对数为自然对数。生产计算直接在完整张量积基底中建立全局稀疏 Hamiltonian；没有从待验证的 sewing 关系生成它。

- **Ising，$q=2$：**
  $$H=-\sum_{(j,k)\in E}Z_jZ_k-g\sum_jX_j,\qquad g=1,$$
  其中 $Z=\operatorname{diag}(1,-1)$，$X$ 为 Pauli 翻转矩阵。
- **三态 clock/Potts，$q=3$：**
  $$H=-\sum_{(j,k)\in E}(Z_jZ_k^\dagger+Z_j^\dagger Z_k)
       -g\sum_j(X_j+X_j^\dagger),\qquad g=1,$$
  $$Z|s\rangle=\omega^s|s\rangle,\quad X|s\rangle=|s+1\bmod3\rangle,
    \quad\omega=e^{2\pi i/3},\quad ZX=\omega XZ.$$
  相邻基态标号相等时键能为 $-2$，不等时为 $+1$。
- **OBC：** $E=\{(j,j+1):j=0,\ldots,N-2\}$，共 $N-1$ 条键。
- **PBC：** 在 OBC 键集上加 $(N-1,0)$，共 $N$ 条键。所有生产尺寸至少为 6，避免 $N=2$ 重复键约定。

**不能把三态公式直接令 $q=2$ 后称为本报告的 Ising 归一化。** 此时 $Z=Z^\dagger$、$X=X^\dagger$，两个 h.c. 和各给出因子 2，故 $H_{\mathrm{clock},q=2}=2H_{\mathrm{Ising}}$。临界比值仍是 $g=1$，但能量单位翻倍；若比较 Gibbs 态，要同时转换 $\beta$。小尺寸矩阵直接检验了这一等式。

## 2. 数值方法与交叉检查

稀疏矩阵由进制数字的局域更新构造，`scipy.sparse.linalg.eigsh(which="SA")` 求基态；`tol=2e-12, ncv=40, maxiter=10000`。报告的能量为归一化向量的 Rayleigh quotient，残差为 $\|H\psi-E\psi\|_2$，不是求解器自报精度。

每个区间把 $\psi$ 重排成 $q^{\ell}\times q^{N-\ell}$ 矩阵，SVD 的平方奇异值为 Schmidt 概率 $p_i$；记录原始概率和偏离 1 的误差后归一化，计算
$$S_1=-\sum_{p_i>0}p_i\log p_i,\qquad S_2=-\log\sum_i p_i^2.$$
没有用有限 Schmidt 截断，也没有用 CFT 公式生成熵。低于浮点误差控制的极小 Schmidt 概率不能解释成可信的小本征值测量。

已执行的不同实现／解析核对：

1. $N=4$，两模型、OBC/PBC：进制更新稀疏矩阵与独立 Kronecker-product 稠密构造比较，最大 Frobenius 差 $8.34\times10^{-15}$；稀疏／稠密基态能量差至多 $5.33\times10^{-15}$。
2. 同样四个小系统：SVD 熵与显式收缩环境指标后对约化矩阵对角化／求纯度比较，最大 $S_1/S_2$ 差 $9.44\times10^{-16}$；纯态互补区间 $S_1$ 差至多 $1.12\times10^{-16}$。
3. $ZX=\omega XZ$ 的浮点矩阵检查；$q=2$ 双倍 Hamiltonian 归一化检查。
4. PBC Ising 偶数 $N$ 的独立解析基态能量
   $$E_0=-2\csc\frac{\pi}{2N}$$
   与全部四个生产尺寸比较，最大绝对差 $3.10\times10^{-13}$。该式来自反周期 Jordan–Wigner 基态扇区的 $\epsilon_k=4\sin(k/2)$ 零点能求和，不以纠缠拟合为输入。
5. 生产态的平移、整体 clock 翻转、矩阵 Hermiticity、归一化与 CMI 非负检查均保存在 JSON。有限 $g>0$ 时负的局域非对角元连接整个配置图，Perron–Frobenius 保证有限链基态唯一且可取严格正；数值得到的波函数分量也全部为正。

这里是独立实现交叉检查，不冒充独立 fresh 子代理审查；委派深度限制不允许再开审核代理。浮点残差、舍入误差检查不是区间算术证明，也未转化成有严格谱隙输入的熵误差上界。

## 3. 基态能量与半链纠缠

完整结果还包括每个 $\ell=1,\ldots,N/2$；下表只列半链：

| 模型 | $N$ | $E_0$ | $\|H\psi-E\psi\|_2$ | $S_1(N/2)$ | $S_2(N/2)$ |
|---|---:|---:|---:|---:|---:|
| Ising | 8 | -10.2516617909660 | $8.52\times10^{-15}$ | 0.6350956655 | 0.4817502690 |
| Ising | 10 | -12.7849064429994 | $4.82\times10^{-13}$ | 0.6720147574 | 0.5115872695 |
| Ising | 12 | -15.3225951510809 | $1.25\times10^{-13}$ | 0.7022545115 | 0.5357123329 |
| Ising | 14 | -17.8628085407607 | $4.93\times10^{-12}$ | 0.7278576538 | 0.5559533787 |
| Potts $q=3$ | 6 | -14.7990958311530 | $6.89\times10^{-14}$ | 0.9370838114 | 0.6878988187 |
| Potts $q=3$ | 8 | -19.6247222159580 | $4.33\times10^{-12}$ | 1.0129518708 | 0.7509669248 |
| Potts $q=3$ | 10 | -24.4691331324559 | $5.62\times10^{-13}$ | 1.0720747527 | 0.7992250557 |

最大 Hilbert 空间维数为 $3^{10}=59049$。求解不使用低能 CFT、已知 $c$ 或 sewing 假设。

## 4. CFT 系数：边界因子及有限尺寸偏差

圆周上单一区间的 CFT 预言是
$$S_n(\ell,N)=\frac{c}{6}\left(1+\frac1n\right)
 \log\left[\frac N\pi\sin\frac{\pi\ell}{N}\right]+s_n+\text{corrections}.$$
因此 PBC 的 $n=1$ 斜率是 $c/3$，$n=2$ 是 $c/4$。**OBC 中接触物理端点的区间**才使用
$$S_n^{\rm boundary}(\ell,N)=\frac{c}{12}\left(1+\frac1n\right)
 \log\left[\frac{2N}{\pi}\sin\frac{\pi\ell}{N}\right]+\text{boundary constant}+\text{corrections}.$$
其前因子不是 $c(1+1/n)/6$；OBC 内部区间也不能直接套这个单端点公式。

跨尺寸半链拟合：对 $S_n(N/2,N)=\alpha_n\log(N/\pi)+b_n$ 做两参数最小二乘，再按 PBC 前因子定义 $c_{\rm eff}=6\alpha_n/(1+1/n)$。

| 模型及尺寸 | $c_{\rm eff}$ from $S_1$ | RMS fit residual | $c_{\rm eff}$ from $S_2$ | RMS fit residual |
|---|---:|---:|---:|---:|
| Ising $N=8,10,12,14$ | 0.4972731011 | $3.07\times10^{-5}$ | 0.5304583958 | $1.13\times10^{-4}$ |
| Potts $N=6,8,10$ | 0.7927047358 | $7.28\times10^{-5}$ | 0.8719800573 | $1.75\times10^{-4}$ |

同一尺寸内改变拟合窗口也改变结果：

| 模型 | 区间窗口 | $c_{\rm eff}$ from $S_1$ | $c_{\rm eff}$ from $S_2$ |
|---|---|---:|---:|
| Ising $N=14$ | $1\le\ell\le7$ | 0.5081210456 | 0.5429582671 |
| Ising $N=14$ | $2\le\ell\le7$ | 0.5020110087 | 0.5339051253 |
| Ising $N=14$ | $3\le\ell\le7$ | 0.5011281306 | 0.5291618115 |
| Potts $N=10$ | $1\le\ell\le5$ | 0.8194020799 | 0.8835418029 |
| Potts $N=10$ | $2\le\ell\le5$ | 0.8056368274 | 0.8716446766 |
| Potts $N=10$ | $3\le\ell\le5$ | 0.8035103259 | 0.8647528875 |

**解释边界：** $S_1$ 的有效系数接近理论比较值，$S_2$ 保留明显有限尺寸偏差。RMS 拟合残差只度量选定点对直线的偏离，既不是 $c$ 的系统误差，也不是连续极限误差；两点两参数拟合的零残差尤其没有验证力。这里不声称从七个有限矩阵推出了 CFT、唯一极限、普适性或 sewing。

## 5. 连续分区 CMI：不预设 Markov

令 $A=[0,a)$、$B=[a,a+b)$、$C=[a+b,a+b+c)$，其余站点为 $D$。直接对四个子系统计算 von Neumann 熵，定义
$$I(A:C|B)=S(AB)+S(BC)-S(B)-S(ABC).$$
没有用平移对称假设替代实际偏迹，也没有把 Rényi-2 的同形组合称为具有强次可加性的 CMI。

| 模型 | $N$ | 全链 $(a,b,c)$ | 全链 CMI | 真子区间 $(a,b,c,d)$ | 真子区间 CMI |
|---|---:|---|---:|---|---:|
| Ising | 8 | (2,2,4) | 0.6350956655 | (2,2,2,2) | 0.1163439148 |
| Ising | 10 | (3,3,4) | 0.6636285312 | (2,2,2,4) | 0.0806782022 |
| Ising | 12 | (4,4,4) | 0.6782315413 | (3,3,3,3) | 0.1158331645 |
| Ising | 14 | (4,4,6) | 0.7236201315 | (3,3,3,5) | 0.0878463163 |
| Potts $q=3$ | 6 | (2,2,2) | 0.8982631294 | (1,1,1,3) | 0.1139039305 |
| Potts $q=3$ | 8 | (2,2,4) | 1.0129518708 | (2,2,2,2) | 0.1864371710 |
| Potts $q=3$ | 10 | (3,3,4) | 1.0586447488 | (2,2,2,4) | 0.1292591491 |

全链纯分区有 $S(ABC)=0$，因而 $I(A:C|B)=S(A)+S(C)-S(B)$；**圆周上此时 $A$ 与 $C$ 还直接跨 PBC 键相接**，不能把它误读成仅由 $B$ 隔开的两个区域。因此另算 $D\ne\varnothing$ 的真子区间作为更干净的检验。其 CMI 仍明显非零。不同尺寸的 $(a,b,c,d)/N$ 并非完全相同，不能从表中非单调值推断某个固定几何比的 CMI 极限。

**Verified：** 上述有限矩阵计算、解析 Ising 能量核对、两种矩阵构造、SVD／偏迹熵核对、有限尺寸拟合与非零 CMI 数值。

**Assumptions：** 所写 Hamiltonian、$g=1$、完整自旋张量积 Hilbert 空间、PBC 生产数据、双精度计算；CFT 公式只作为待比较的外部理论预言。

**Not verified：** 连续极限的存在／识别、任何代数或路径积分 sewing 定理、界面资料充分性、OBC 大尺寸标度、热态 sewing、swap/replica identity，以及带严格熵误差上界的区间算术认证。
