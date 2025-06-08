# homework 6

## 1. 求由抛物线$\displaystyle{y=x^{2}}$与$\displaystyle{y=2-x^{2}}$所围图形的面积

首先求两条抛物线的交点：
$$x^2 = 2-x^2 \Rightarrow 2x^2 = 2 \Rightarrow x^2 = 1 \Rightarrow x = \pm 1$$

所以交点为$(-1,1)$和$(1,1)$。围成的面积为：
$$A = \int_{-1}^{1} [(2-x^2) - x^2] dx = \int_{-1}^{1} [2 - 2x^2] dx = 2\int_{-1}^{1} (1 - x^2) dx$$
$$= 2\left[x - \frac{x^3}{3}\right]_{-1}^{1} = 2\left[\left(1 - \frac{1}{3}\right) - \left(-1 + \frac{1}{3}\right)\right] = 2 \cdot \frac{4}{3} = \frac{8}{3}$$

## 2. 求内摆线$\displaystyle{x=a\cos ^{3}t,y=a\sin ^{3}t,a>0}$所围图形的面积

使用格林公式计算参数曲线所围面积：
$$A = \frac{1}{2}\int_0^{2\pi} [x(t)y'(t) - y(t)x'(t)] dt$$

计算导数：
$$x'(t) = -3a\cos^2 t \sin t$$
$$y'(t) = 3a\sin^2 t \cos t$$

代入公式：
$$A = \frac{1}{2}\int_0^{2\pi} [a\cos^3 t \cdot 3a\sin^2 t \cos t - a\sin^3 t \cdot (-3a\cos^2 t \sin t)] dt$$
$$= \frac{3a^2}{2}\int_0^{2\pi} [\cos^4 t \sin^2 t + \cos^2 t \sin^4 t] dt$$
$$= \frac{3a^2}{2}\int_0^{2\pi} \cos^2 t \sin^2 t dt$$

利用三角恒等式：$\cos^2 t \sin^2 t = \frac{1-\cos 4t}{8}$

$$A = \frac{3a^2}{2}\int_0^{2\pi} \frac{1-\cos 4t}{8} dt = \frac{3a^2}{16}\int_0^{2\pi} (1-\cos 4t) dt$$
$$= \frac{3a^2}{16}[t - \frac{\sin 4t}{4}]_0^{2\pi} = \frac{3a^2}{16} \cdot 2\pi = \frac{3\pi a^2}{8}$$

## 3. 求由曲线$\displaystyle{\sqrt{ \frac{x}{a} }+\sqrt{ \frac{y}{b} }=1,a,b>0}$与坐标轴所围图形的面积

由方程可知，当$x=0$时，$y=b$；当$y=0$时，$x=a$。
将方程解出$y$：
$$\sqrt{\frac{y}{b}} = 1 - \sqrt{\frac{x}{a}}$$
两边平方：
$$\frac{y}{b} = \left(1 - \sqrt{\frac{x}{a}}\right)^2 = 1 - 2\sqrt{\frac{x}{a}} + \frac{x}{a}$$
$$y = b\left(1 - 2\sqrt{\frac{x}{a}} + \frac{x}{a}\right)$$

面积为：
$$A = \int_0^a y dx = \int_0^a b\left(1 - 2\sqrt{\frac{x}{a}} + \frac{x}{a}\right) dx$$
$$= b\left[x - 2\sqrt{a} \cdot \frac{2}{3}x^{3/2}a^{-1/2} + \frac{x^2}{2a}\right]_0^a$$
$$= b\left[a - \frac{4a}{3} + \frac{a}{2}\right] = b \cdot \frac{a}{6} = \frac{ab}{6}$$

## 4. 求下列平面曲线绕轴旋转所围成立体的体积

### a. $\displaystyle{y=\sin x,0\leqslant x\leqslant\pi}$,绕x轴

$$V = \pi \int_0^{\pi} \sin^2 x dx = \pi \int_0^{\pi} \frac{1-\cos 2x}{2} dx = \frac{\pi}{2} \int_0^{\pi} (1-\cos 2x) dx$$
$$= \frac{\pi}{2} \left[x - \frac{\sin 2x}{2}\right]_0^{\pi} = \frac{\pi}{2} \cdot \pi = \frac{\pi^2}{2}$$

## 5. 导出曲边梯形$\displaystyle{0\leqslant y\leqslant f(x)，a\leqslant x\leqslant b}$绕y轴旋转所得立体的体积公式

当曲边梯形绕$y$轴旋转时，取$[x,x+dx]$上的一个微元，其绕$y$轴旋转形成一个圆柱壳。

这个圆柱壳的半径为$x$，高度为$f(x)$，厚度为$dx$，其体积为：
$$dV = 2\pi x \cdot f(x) \cdot dx$$

对整个区间积分，得到总体积：
$$V = \int_a^b dV = \int_a^b 2\pi x \cdot f(x) \cdot dx = 2\pi \int_a^b x f(x) dx$$

## 8. 求下列曲线的弧长

### a. $\displaystyle{x=a\cos ^{3}t,y=a\sin ^{3}t,0\leqslant t\leqslant 2\pi}$

$$x'(t) = -3a\cos^2 t \sin t$$
$$y'(t) = 3a\sin^2 t \cos t$$

弧长公式：
$$L = \int_0^{2\pi} \sqrt{(x'(t))^2 + (y'(t))^2} dt$$
$$= 3a\int_0^{2\pi} \sqrt{\cos^2 t \sin^2 t} dt = 3a\int_0^{2\pi} |\cos t \sin t| dt$$

计算时需考虑$\cos t \sin t$的符号，在不同区间分别积分：
$$L = 3a \cdot 2 = 6a$$

### b. $\displaystyle{r=a\sin ^{3} \frac{\theta}{3},0\leqslant\theta\leqslant3\pi}$

极坐标曲线弧长公式：
$$L = \int_0^{3\pi} \sqrt{r^2 + \left(\frac{dr}{d\theta}\right)^2} d\theta$$

计算$\frac{dr}{d\theta} = a\sin^2 \frac{\theta}{3} \cos \frac{\theta}{3} \cdot \frac{1}{3}$

代入弧长公式并计算：
$$L = a\int_0^{3\pi} \sin^2 \frac{\theta}{3} d\theta = \frac{a}{2}\int_0^{3\pi} \left(1-\cos\frac{2\theta}{3}\right) d\theta = \frac{3\pi a}{2}$$

## 9. 求下列各曲线在指定点处的曲率

### a. $\displaystyle{xy=4}$,在点$\displaystyle{(2,2)}$

曲线可改写为$y = \frac{4}{x}$

计算导数：
$$y' = -\frac{4}{x^2}$$
$$y'' = \frac{8}{x^3}$$

在点$(2,2)$处：
$$y'(2) = -1$$
$$y''(2) = 1$$

曲率公式：
$$\kappa = \frac{|y''|}{(1+(y')^2)^{3/2}} = \frac{1}{(1+1)^{3/2}} = \frac{1}{2\sqrt{2}} = \frac{\sqrt{2}}{4}$$

### b. $\displaystyle{x=a(t-\sin t),y=a(1-\cos t),a>0}$,在$\displaystyle{t=\frac{\pi}{2}}$处的点

计算导数：
$$x'(t) = a(1-\cos t)$$
$$y'(t) = a\sin t$$
$$x''(t) = a\sin t$$
$$y''(t) = a\cos t$$

在$t = \frac{\pi}{2}$处：
$$x'(\frac{\pi}{2}) = a$$
$$y'(\frac{\pi}{2}) = a$$
$$x''(\frac{\pi}{2}) = a$$
$$y''(\frac{\pi}{2}) = 0$$

参数方程曲率公式：
$$\kappa = \frac{|x'y'' - y'x''|}{(x'^2 + y'^2)^{3/2}} = \frac{|a \cdot 0 - a \cdot a|}{(a^2 + a^2)^{3/2}} = \frac{a^2}{2\sqrt{2}a^3} = \frac{1}{2\sqrt{2}a}$$

## 10. 求曲线$\displaystyle{y=e^{x}}$上曲率最大的点

曲率公式：$\kappa = \frac{|y''|}{(1+(y')^2)^{3/2}}$

计算导数：
$$y' = e^x$$
$$y'' = e^x$$

曲率表达式：
$$\kappa = \frac{e^x}{(1+(e^x)^2)^{3/2}}$$

求导并令其为零：
$$\frac{d\kappa}{dx} = \frac{e^x[1 - 2(e^x)^2]}{(1+(e^x)^2)^{5/2}} = 0$$

由于$e^x > 0$，所以：
$$1 - 2(e^x)^2 = 0 \Rightarrow (e^x)^2 = \frac{1}{2} \Rightarrow e^x = \frac{1}{\sqrt{2}}$$
$$x = \ln\frac{1}{\sqrt{2}} = -\frac{1}{2}\ln 2$$

对应的$y = \frac{1}{\sqrt{2}}$，即曲率最大点为$(-\frac{1}{2}\ln 2, \frac{1}{\sqrt{2}})$

# homework 7

1. 设$\displaystyle{f}$为$\displaystyle{[0,2\pi]}$上的单调递减函数。证明：对任何正整数$\displaystyle{n}$恒有$\displaystyle{\int _{0}^{2\pi}f(x)\sin nx\mathrm{d}x\geqslant 0}$
2. 求下列平面曲线绕指定轴旋转所得旋转曲面的面积
	1. $\displaystyle{x=a(t-\sin t),y=a(1-\cos t),a>0,0\leqslant t\leqslant 2\pi}$,绕x轴
	2. $\displaystyle{\frac{x^{2}}{a^{2}}+\frac{y^{2}}{b^{2}}=1}$,绕y轴
	3. $\displaystyle{x^{2}+(y-a)^{2}=r^{2},r<a}$,绕x轴
3. 设平面光滑曲线由极坐标方程$\displaystyle{r=r(\theta),\alpha \leqslant\theta\leqslant\beta,[\alpha,\beta]\subset[0,\pi],r(\theta)\geqslant0}$给出，试求它绕极轴旋转所得旋转曲面的面积计算公式
4. 有一等腰梯形闸门，上下底边长分别为10m和6m，高为20m。计算当水面与上底边相齐时闸门一侧所受的静压力
5. 设坐标轴的原点有一质量为m的质点，在区间$\displaystyle{[a,a+l],a>0}$上you yi