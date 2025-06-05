# Nambu-Goto作用量运动方程推导

## 基本定义

Nambu-Goto作用量描述弦在时空中的最小面积运动，是弦理论中最基本的作用量之一。对于参数化为 $$X^\mu(\tau,\sigma)$$ 的弦世界面，Nambu-Goto作用量定义为：

$$S_{\text{NG}} = -T\int d\tau d\sigma \sqrt{-\det(\gamma_{ab})}$$

其中：
- $$T$$ 是弦张力常数
- $$\gamma_{ab}$$ 是世界面上的诱导度规
- $$a,b \in \{\tau,\sigma\}$$ 是世界面参数

诱导度规由目标时空度规 $$\eta_{\mu\nu}$$ 拉回到世界面得到：

$$\gamma_{ab} = \partial_a X^\mu \partial_b X^\nu \eta_{\mu\nu}$$

## 度规计算

首先计算度规分量：
- $$\gamma_{\tau\tau} = \dot{X}^\mu\dot{X}^\nu\eta_{\mu\nu} \equiv \dot{X}^2$$
- $$\gamma_{\sigma\sigma} = X'^\mu X'^\nu\eta_{\mu\nu} \equiv X'^2$$
- $$\gamma_{\tau\sigma} = \gamma_{\sigma\tau} = \dot{X}^\mu X'^\nu\eta_{\mu\nu} \equiv \dot{X}\cdot X'$$

其中点表示对 $$\tau$$ 的导数，撇表示对 $$\sigma$$ 的导数。

度规行列式为：
$$\det(\gamma_{ab}) = \gamma_{\tau\tau}\gamma_{\sigma\sigma} - \gamma_{\tau\sigma}^2 = \dot{X}^2 X'^2 - (\dot{X}\cdot X')^2$$

## 作用量变分

要推导运动方程，我们对作用量进行变分：
$$\delta S_{\text{NG}} = -T \int d\tau d\sigma \delta\left(\sqrt{-\det(\gamma_{ab})}\right)$$

使用链式法则：
$$\delta\left(\sqrt{-\det(\gamma_{ab})}\right) = -\frac{1}{2}\frac{1}{\sqrt{-\det(\gamma_{ab})}}\delta(\det(\gamma_{ab}))$$

对于行列式的变分，可利用公式：
$$\delta(\det(\gamma_{ab})) = \det(\gamma_{ab})\gamma^{ab}\delta\gamma_{ab}$$

其中 $$\gamma^{ab}$$ 是 $$\gamma_{ab}$$ 的逆矩阵。

## 度规变分

计算 $$\delta\gamma_{ab}$$：
$$\delta\gamma_{ab} = \delta(\partial_a X^\mu \partial_b X^\nu \eta_{\mu\nu}) = \partial_a(\delta X^\mu)\partial_b X^\nu\eta_{\mu\nu} + \partial_a X^\mu\partial_b(\delta X^\nu)\eta_{\mu\nu}$$

代入作用量变分：
$$\delta S_{\text{NG}} = \frac{T}{2}\int d\tau d\sigma \sqrt{-\det(\gamma_{ab})}\gamma^{ab}[\partial_a(\delta X^\mu)\partial_b X^\nu + \partial_a X^\mu\partial_b(\delta X^\nu)]\eta_{\mu\nu}$$

利用 $$\gamma^{ab}$$ 的对称性简化：
$$\delta S_{\text{NG}} = T\int d\tau d\sigma \sqrt{-\det(\gamma_{ab})}\gamma^{ab}\partial_a(\delta X^\mu)\partial_b X^\nu\eta_{\mu\nu}$$

## 分部积分与运动方程

进行分部积分（对 $$a$$ 指标）：
$$\delta S_{\text{NG}} = T\int d\tau d\sigma \left[\partial_a\left(\sqrt{-\det(\gamma_{ab})}\gamma^{ab}\partial_b X^\nu\eta_{\mu\nu}\delta X^\mu\right) - \partial_a\left(\sqrt{-\det(\gamma_{ab})}\gamma^{ab}\partial_b X^\nu\eta_{\mu\nu}\right)\delta X^\mu\right]$$

第一项在适当边界条件下（周期性或Dirichlet/Neumann边界条件）为零。根据最小作用量原理，$$\delta S_{\text{NG}}=0$$，得到运动方程：

$$\partial_a\left(\sqrt{-\det(\gamma_{ab})}\gamma^{ab}\partial_b X^\mu\right) = 0$$

## 物理解释

这个非线性偏微分方程描述了弦在时空中的运动。值得注意的是：

1. 方程的复杂性来自于度规 $$\gamma_{ab}$$ 本身依赖于 $$X^\mu$$
2. 在特定规范（如共形规范）下，方程可简化为波动方程形式
3. 由于计算复杂性，实际应用中通常使用等价的Polyakov作用量 ^cite{Polyakov1981}

在光锥规范下，这些方程简化为标准波动方程，其解可表示为左右运动模式的叠加。

[[弦理论]] [[共形场论]] [[世界面量子化]]