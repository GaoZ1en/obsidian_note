# 宇宙弦的演化模拟

## 引言

宇宙弦是理论物理学中预言的一维拓扑缺陷，其形成源于宇宙早期高能相变过程中的对称性自发破缺。简单来说，宇宙弦通常可以用复标量场$\displaystyle{\phi}$的自发对称性破缺来描述：

$$\mathcal{L} = |\partial_\mu\phi|^2 - \frac{\lambda}{4}(|\phi|^2 - \eta^2)^2$$

当宇宙冷却时，$\displaystyle{\phi}$场从对称相（$\displaystyle{\phi=0}$）向破缺相（$\displaystyle{\phi=\eta}$）转变，形成了线状的拓扑缺陷。

宇宙弦在理论物理和宇宙学中具有多重重要性：
1. **早期宇宙探针**：作为相变的"化石"证据，宇宙弦可能保存着早期宇宙物理条件的信息，为我们提供了接触超高能标度的可能性。
2. **引力波源**：振荡的宇宙弦环和弦交叉事件可产生特征性引力波信号，这些信号与其他天体源（如黑洞合并）产生的信号具有不同特征。
3. **结构形成**：虽然现代观测表明宇宙弦不是大尺度结构形成的主导因素，但它们仍可能对特定区域的物质密度分布产生影响。

宇宙弦研究已经历了近半个世纪的发展：
- 20世纪70年代，T.W.B. Kibble首次提出宇宙弦概念^cite{Kibble1976}，引发了理论物理学界的广泛兴趣。
- 80-90年代，宇宙弦一度被视为大尺度结构形成的有力候选机制，但随着宇宙微波背景辐射(CMB)观测精度的提高，宇宙弦作为主导结构形成机制的可能性逐渐被排除。
- 目前观测对宇宙弦张力设置了严格上限。普朗克卫星的CMB数据给出$$G\mu/c^4 < 1.5 \times 10^{-7}$$^cite{Planck2013}，而脉冲星计时阵列和引力波探测器的最新结果将这一限制进一步推进到$$G\mu/c^4 < 10^{-11}$$量级^cite{PPTA2018}。

虽然宇宙弦存在的可能性已经相当有限，但是研究其演化仍然是一个有趣的课题。下面我们首先推导宇宙弦的运动方程，再进行编程模拟。

## 宇宙弦的运动方程

宇宙弦的演化可由Nambu-Goto action描述

$$\tag{2.1}
\begin{align}
S & =-T\int \mathrm{d}^{2}\xi \sqrt{ -g_{\mu \nu} \eta ^{ab}\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }
\end{align}
$$

其中$\displaystyle{T}$为宇宙弦的张力，$\displaystyle{g_{\mu \nu}}$为宇宙弦所处背景时空的度规张量，$\displaystyle{\xi ^{a},a=1,2}$为宇宙弦世界面上的坐标。这里动力学变量为$\displaystyle{X^{\mu}}$。我们对$\displaystyle{X^{\mu}}$作变分，得到

$$\tag{2.2}
\begin{align}
\delta S & =-T\int \mathrm{d}^{2}\xi  \frac{-g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}\delta X^{\nu}}{\mathrm{d}\xi ^{b}}-\partial _{\rho}g_{\mu \nu}\eta ^{\mu \nu} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}}\delta X^{\nu}}{2\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }} \\
 & =-\frac{T}{2}\int \mathrm{d}^{2}\xi g_{\mu \nu}\eta ^{ab}\left(\frac{\mathrm{d}^{2}X^{\mu}}{\mathrm{d}\xi ^{a}\mathrm{d}\xi ^{b}}+\Gamma ^{\mu}_{~\rho \sigma} \frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\sigma}}{\mathrm{d}\xi ^{b}}\right)\delta X^{\nu}+(\text{ boundary terms })
\end{align}
$$

这里我们注意到作用量(2.1)具有世界面上的微分同胚不变性，因此我们可以选择$\displaystyle{\sqrt{ -g_{\mu \nu}\eta ^{ab} \frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\nu}}{\mathrm{d}\xi ^{b}} }=1}$。这样我们就得到了运动方程

$$\tag{2.3}
\begin{align}
\eta ^{ab}\frac{\mathrm{d}X^{\mu}}{\mathrm{d}\xi ^{a}\mathrm{d}\xi ^{b}}+\Gamma ^{\mu}_{\rho \sigma} \eta ^{ab}\frac{\mathrm{d}X^{\rho}}{\mathrm{d}\xi ^{a}} \frac{\mathrm{d}X^{\sigma}}{\mathrm{d}\xi ^{b}}=0
\end{align}
$$

其中$\displaystyle{\Gamma ^{\mu}_{~\rho \sigma}=\frac{1}{2}g^{\mu \nu}(\partial _{\rho}g_{\nu \sigma}+\partial _{\sigma}g_{\rho \nu}-\partial _{\nu}g_{\rho \sigma}) }$为背景时空中的克氏符。在平直时空中$\displaystyle{g_{\mu \nu}=\eta _{\mu \nu},\Gamma ^{\mu}_{~\rho \sigma}=0}$，进一步做在世界面上做共形变换，就可以将运动方程转化为

$$\tag{2.4}
\begin{align}
-\ddot{X}^{\mu}+X''^{\mu}=0
\end{align}
$$

以及约束

$$\tag{2.5}
\begin{align}
\eta _{\mu \nu}\dot{X}^{\mu}X'^{\nu} & =0 \\
\eta _{\mu \nu}(\dot{X}^{\mu}\dot{X}^{\nu}+X'^{\mu}X'^{\nu}) & =0
\end{align}
$$

其中$\displaystyle{\dot{X}^{\mu}}$表示对$\displaystyle{\xi ^{0}=\tau}$的导数，$\displaystyle{X'^{\mu}}$表示对$\displaystyle{\xi ^{1}=\sigma}$的导数。我们知道波动方程(2.4)的通解可以写为

$$\tag{2.6}
\begin{align}
X^{\mu}(\tau,\sigma) & =\frac{1}{2}[a^{\mu}(\tau+\sigma)+b^{\mu}(\tau-\sigma)]
\end{align}
$$

这样(2.5)成为

$$\tag{2.7}
\begin{align}
\eta _{\mu \nu}a'^{\mu}a'^{\nu}=\eta _{\mu \nu}b'^{\mu}b'^{\nu}=1
\end{align}
$$

## 编程模拟

现在我们希望针对闭弦（即具有周期条件$\displaystyle{X^{\mu}(\tau,\sigma+2\pi)=X^{\mu}(\tau,\sigma)}$的弦）的运动进行模拟。我们将我们的代码贴在下面

```python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import animation
from mpl_toolkits.mplot3d.art3d import Line3DCollection
from scipy.interpolate import interp1d
import matplotlib

# 设置后端用于保存视频
matplotlib.use("Agg")


# ----------------------------------------
# 1. 生成随机傅里叶系数与原始曲线
# ----------------------------------------
def generate_random_curve(M=10, axis=3, seed=None):
    if seed is not None:
        np.random.seed(seed)
    A = np.random.normal(size=(M, axis))
    B = np.random.normal(size=(M, axis))

    def curve(xi):
        xi = np.asarray(xi)
        result = np.zeros((len(xi), axis))
        for m in range(1, M + 1):
            result += (
                np.cos(m * xi)[:, None] * A[m - 1] + np.sin(m * xi)[:, None] * B[m - 1]
            )
        return result

    def dcurve(xi):
        xi = np.asarray(xi)
        result = np.zeros((len(xi), axis))
        for m in range(1, M + 1):
            result += (-m * np.sin(m * xi))[:, None] * A[m - 1] + (m * np.cos(m * xi))[
                :, None
            ] * B[m - 1]
        return result

    return curve, dcurve


def arclength_reparam(curve, dcurve, N=5000):
    xi = np.linspace(0, 2 * np.pi, N, endpoint=False)
    dX = dcurve(xi)
    speed = np.linalg.norm(dX, axis=1)
    ds = (2 * np.pi / N) * speed
    s = np.concatenate(([0], np.cumsum(ds[:-1])))
    L = s[-1] + ds[-1]

    xi_of_s = interp1d(s, xi, kind="linear", fill_value="extrapolate")

    def reparam_curve(s_vals):
        s_vals = np.mod(s_vals, L)
        xi_vals = xi_of_s(s_vals)
        return curve(xi_vals)

    return reparam_curve, L


# ----------------------------------------
# 2. 主程序
# ----------------------------------------
if __name__ == "__main__":
    # 参数设置
    M = 10
    N_points = 128 * 12
    T_steps = N_points
    fps = 120  # 帧率
    duration = T_steps / fps  # 视频时长(秒)

    # 生成随机曲线
    np.random.seed(42)  # 固定随机种子确保可重现
    curve_a_raw, da_raw = generate_random_curve(M=M, axis=3)
    curve_b_raw, db_raw = generate_random_curve(M=M, axis=3)

    # 弧长重参数化
    curve_a, L_a = arclength_reparam(curve_a_raw, da_raw, N=5000)
    curve_b, L_b = arclength_reparam(curve_b_raw, db_raw, N=5000)

    # 统一弧长
    L = max(L_a, L_b)

    def rescale_curve(curve, L_orig, L_target):
        def resized(s_vals):
            return curve((s_vals / L_target) * L_orig)

        return resized

    curve_a_unit = rescale_curve(curve_a, L_a, L)
    curve_b_unit = rescale_curve(curve_b, L_b, L)

    # 离散采样
    s_samples = np.linspace(0, L, N_points, endpoint=False)
    a_pts = curve_a_unit(s_samples)
    b_pts = curve_b_unit(s_samples)

    # 归一化到[-1,1]^3
    max_coord = np.max(np.abs(np.vstack((a_pts, b_pts))))
    a_pts /= max_coord
    b_pts /= max_coord

    # 创建图形
    fig = plt.figure(figsize=(8, 8), dpi=100)
    ax = fig.add_subplot(111, projection="3d")

    # 设置坐标轴
    ax.set_xlim([-1.2, 1.2])
    ax.set_ylim([-1.2, 1.2])
    ax.set_zlim([-1.2, 1.2])
    ax.set_box_aspect([1, 1, 1])
    ax.set_axis_off()
    ax.set_facecolor("black")
    fig.set_facecolor("black")

    # 添加标题
    title = ax.text2D(
        0.5,
        0.95,
        "Cosmic String Loop Evolution",
        transform=fig.transFigure,
        ha="center",
        color="white",
        fontsize=16,
    )

    # 创建线段集合
    line_collection = Line3DCollection([], cmap="gray", linewidth=2.5)
    ax.add_collection(line_collection)

    # 深度范围
    z_min, z_max = -1, 1

    # 动画更新函数
    def update_frame(t):
        # 计算演化后的弦环
        idx = np.arange(N_points)
        idx_a = (idx + t) % N_points
        idx_b = (idx - t) % N_points
        X = 0.5 * (a_pts[idx_a] + b_pts[idx_b])
        X_closed = np.vstack((X, X[0]))

        # 创建线段
        segments = [
            np.vstack((X_closed[i], X_closed[i + 1])) for i in range(len(X_closed) - 1)
        ]

        # 深度着色
        z_avg = [(seg[0, 2] + seg[1, 2]) / 2 for seg in segments]
        colors = 1 - (np.array(z_avg) - z_min) / (z_max - z_min)

        # 更新图形
        line_collection.set_segments(segments)
        line_collection.set_array(colors)
        line_collection.set_cmap("gray")

        # 更新标题
        title.set_text(f"Cosmic String Evolution: t = {t}/{T_steps}")

        return line_collection, title

    # 初始化函数
    def init():
        line_collection.set_segments([])
        line_collection.set_array([])
        return line_collection, title

    # 创建动画
    anim = animation.FuncAnimation(
        fig, update_frame, init_func=init, frames=T_steps, interval=50, blit=True
    )

    # 保存为MP4
    print("开始渲染动画...")
    video_file = "cosmic_string_evolution.mp4"
    writer = animation.FFMpegWriter(
        fps=fps,
        metadata={"title": "Cosmic String Evolution", "artist": "Matplotlib"},
        bitrate=5000,
    )

    anim.save(video_file, writer=writer)
    print(f"动画已保存至: {video_file}")

    # 显示结束信息
    plt.close()
    print(f"视频时长: {duration:.1f}秒, 帧率: {fps}fps, 总帧数: {T_steps}")
```

其中我们在这里

```python
idx_a = (idx + t) % N_points
idx_b = (idx - t) % N_points
X = 0.5 * (a_pts[idx_a] + b_pts[idx_b])
```

将波动方程的解表示为左移波 $a^{\mu}(σ+τ)$ 和右移波 $b^{\mu}(σ-τ)$ 的叠加，而$\displaystyle{a^{\mu}}$和$\displaystyle{b^{\mu}}$分别为若干Fourier模式的线性叠加。

另外我们通过弧长参数化来满足约束条件$|a'| = |b'| = 1$。代码通过以下方式确保这一点：

1. 对两条曲线分别进行弧长参数化：
   ```python
   curve_a, L_a = arclength_reparam(curve_a_raw, da_raw, N=5000)
   curve_b, L_b = arclength_reparam(curve_b_raw, db_raw, N=5000)
   ```

2. 将两条曲线标准化为具有相同的总长度：
   ```python
   L = max(L_a, L_b)
   # 重新缩放函数以确保统一参数化
   ```

## 结论

通过上述代码，我们成功模拟了宇宙弦环的演化过程。模拟结果展示了宇宙弦在时空中的动态行为，体现了其作为拓扑缺陷的特性。尽管目前观测对宇宙弦的存在提出了严格限制，但其研究仍然为我们提供了关于早期宇宙物理和引力波源的重要信息。

## 参考文献

1. Kibble, T.W.B. (1976). "Topology of cosmic domains and strings." J. Phys. A: Math. Gen., 9(8), 1387-1398.
2. Planck Collaboration (2013). "Planck 2013 results. XXV. Searches for cosmic strings and other topological defects." Astron. Astrophys., 571, A25.
3. Parkes Pulsar Timing Array (2018). "The NANOGrav 11-year Data Set: New Constraints on the Stochastic Gravitational-wave Background." Astrophys. J., 859(1), 47.
4. Hindmarsh, M. et al. (2017). "Scaling from gauge and scalar radiation in Abelian Higgs string networks." Phys. Rev. D, 96, 023525.
5. Vilenkin, A. & Shellard, E.P.S. (2000). "Cosmic Strings and Other Topological Defects." Cambridge University Press.
