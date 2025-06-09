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
5. 设坐标轴的原点有一质量为m的质点，在区间$\displaystyle{[a,a+l],a>0}$上有一质量为M的均匀细杆。试求质点与细杆之间的万有引力
6. 设有半径为$\displaystyle{r}$的半圆形导线，均匀带电，电荷密度为$\displaystyle{\delta}$，在圆心处有一单位正电荷，试求他们之间的作用力大小
7. 讨论下列无穷积分是否收敛？若收敛，则求其值
	1. $\displaystyle{\int _{-\infty}^{+\infty}xe^{-x^{2}}\mathrm{d}x}$
	2. $\displaystyle{\int _{1}^{+\infty} \frac{\mathrm{d}x}{x^{2}(1+x)}}$
	3. $\displaystyle{\int _{0}^{+\infty}e^{-x}\sin x\mathrm{d}x}$
8. 讨论下列瑕积分是否收敛？若收敛，则求其值
	1. $\displaystyle{\int _{0}^{2} \frac{\mathrm{d}x}{\sqrt{ |x-1| }}}$
	2. $\displaystyle{\int _{0}^{1}\ln x\mathrm{d}x}$
	3. $\displaystyle{\int _{0}^{1} \frac{\mathrm{d}x}{x(\ln x)^{p}}}$
9. 举例说明：瑕积分$\displaystyle{\int _{a}^{b}f(x)\mathrm{d}x}$收敛时$\displaystyle{\int _{a}^{b}f^{2}(x)\mathrm{d}x}$不一定收敛
10. 证明：若$\displaystyle{\int _{a}^{+\infty}f(x)\mathrm{d}x}$收敛，且存在极限$\displaystyle{\lim_{ x \to +\infty }f(x)=A}$，则$\displaystyle{A=0}$
11. 讨论下列无穷积分的敛散性
	1. $\displaystyle{\int _{0}^{+\infty} \frac{\mathrm{d}x}{\sqrt[3]{ x^{4}+1 }}}$ 
	2. $\displaystyle{\int _{1}^{+\infty} \frac{x\arctan x}{1+x^{3}}\mathrm{d}x}$
	3. $\displaystyle{\int _{1}^{+\infty} \frac{\ln(1+x)}{x^{n}}\mathrm{d}x}$
12. 证明：若$\displaystyle{f}$是$\displaystyle{[a,+\infty)}$上的单调函数，且$\displaystyle{\int _{a}^{+\infty}f(x)\mathrm{d}x}$收敛，则$\displaystyle{f(x)=\omicron\left( \frac{1}{x} \right),x\to+\infty}$
13. 利用Dirichlet判别法证明Abel判别法
## 1. 设$\displaystyle{f}$为$\displaystyle{[0,2\pi]}$上的单调递减函数。证明：对任何正整数$\displaystyle{n}$恒有$\displaystyle{\int _{0}^{2\pi}f(x)\sin nx\mathrm{d}x\geqslant 0}$

**证明：**
我们将积分区间$[0,2\pi]$划分为$n$个长度为$\frac{2\pi}{n}$的区间：
$$[0,\frac{2\pi}{n}], [\frac{2\pi}{n},\frac{4\pi}{n}], \ldots, [\frac{2\pi(n-1)}{n},2\pi]$$

在每个区间上，$\sin nx$完成一个完整的周期。考虑相邻的两个区间
$$I_k = [\frac{2\pi k}{n}, \frac{2\pi(k+1)}{n}] \text{ 和 } I_{k+1} = [\frac{2\pi(k+1)}{n}, \frac{2\pi(k+2)}{n}]$$

引入替换：$y = \frac{2\pi(k+2)}{n} - x$，当$x \in I_{k+1}$时，$y \in I_k$，且
$$\sin ny = \sin n(\frac{2\pi(k+2)}{n} - x) = \sin(2\pi(k+2) - nx) = \sin(-nx) = -\sin nx$$

因此：
$$\int_{I_{k+1}} f(x)\sin nx\,dx = -\int_{I_k} f(\frac{2\pi(k+2)}{n} - y)\sin ny\,dy$$

由于$f$单调递减，对于$y \in I_k$，有$f(y) \geq f(\frac{2\pi(k+2)}{n} - y)$，所以：
$$\int_{I_k} f(y)\sin ny\,dy \geq \int_{I_k} f(\frac{2\pi(k+2)}{n} - y)\sin ny\,dy = -\int_{I_{k+1}} f(x)\sin nx\,dx$$

由此可得：
$$\int_{I_k} f(x)\sin nx\,dx + \int_{I_{k+1}} f(x)\sin nx\,dx \geq 0$$

将所有区间对上述式子求和，得到：
$$\int_0^{2\pi} f(x)\sin nx\,dx \geq 0$$

证毕。

## 2. 求下列平面曲线绕指定轴旋转所得旋转曲面的面积

### a. $\displaystyle{x=a(t-\sin t),y=a(1-\cos t),a>0,0\leqslant t\leqslant 2\pi}$,绕x轴

对于参数曲线绕x轴旋转，旋转曲面面积公式为：
$$S = 2\pi\int_\alpha^\beta y(t)\sqrt{[x'(t)]^2 + [y'(t)]^2}\,dt$$

计算：
$$x'(t) = a(1-\cos t)$$
$$y'(t) = a\sin t$$
$$\sqrt{[x'(t)]^2 + [y'(t)]^2} = a\sqrt{(1-\cos t)^2 + \sin^2 t} = a\sqrt{2-2\cos t} = 2a\sin\frac{t}{2}$$

代入面积公式：
$$S = 2\pi\int_0^{2\pi} a(1-\cos t) \cdot 2a\sin\frac{t}{2}\,dt = 4\pi a^2\int_0^{2\pi} (1-\cos t)\sin\frac{t}{2}\,dt$$

利用关系式$1-\cos t = 2\sin^2\frac{t}{2}$：
$$S = 4\pi a^2\int_0^{2\pi} 2\sin^2\frac{t}{2} \cdot \sin\frac{t}{2}\,dt = 8\pi a^2\int_0^{2\pi} \sin^3\frac{t}{2}\,dt$$

令$u = \frac{t}{2}$，则$dt = 2du$，积分区间变为$[0,\pi]$：
$$S = 8\pi a^2\int_0^{\pi} \sin^3 u \cdot 2\,du = 16\pi a^2\int_0^{\pi} \sin^3 u\,du$$

根据积分公式，得到结果：
$$S = 16\pi a^2 \cdot \frac{4}{3} = \frac{64\pi a^2}{3}$$

### b. $\displaystyle{x^{2}+(y-a)^{2}=r^{2},r<a}$,绕x轴

这是圆心在$(0,a)$、半径为$r$的圆，且$r < a$，所以圆完全在x轴上方。

将圆的方程解出$y$：
$$y = a \pm \sqrt{r^2-x^2}$$

圆的上半部分：$y = a + \sqrt{r^2-x^2}$
圆的下半部分：$y = a - \sqrt{r^2-x^2}$

对于绕x轴旋转的曲面面积：
$$S = 2\pi\int_{-r}^r y\sqrt{1+\left(\frac{dy}{dx}\right)^2}\,dx$$

计算导数：$\frac{dy}{dx} = \mp\frac{x}{\sqrt{r^2-x^2}}$，所以：
$$\sqrt{1+\left(\frac{dy}{dx}\right)^2} = \sqrt{1+\frac{x^2}{r^2-x^2}} = \frac{r}{\sqrt{r^2-x^2}}$$

上半部分的面积：
$$S_1 = 2\pi\int_{-r}^r (a+\sqrt{r^2-x^2})\frac{r}{\sqrt{r^2-x^2}}\,dx = 2\pi\int_{-r}^r \frac{ar}{\sqrt{r^2-x^2}}\,dx + 2\pi\int_{-r}^r r\,dx$$
$$= 2\pi ar \cdot \pi + 4\pi r^2 = 2\pi^2 ar + 4\pi r^2$$

下半部分的面积：
$$S_2 = 2\pi\int_{-r}^r (a-\sqrt{r^2-x^2})\frac{r}{\sqrt{r^2-x^2}}\,dx = 2\pi ar \cdot \pi - 4\pi r^2 = 2\pi^2 ar - 4\pi r^2$$

总面积：$S = S_1 + S_2 = 4\pi^2 ar$

## 3. 设平面光滑曲线由极坐标方程$\displaystyle{r=r(\theta),\alpha \leqslant\theta\leqslant\beta,[\alpha,\beta]\subset[0,\pi],r(\theta)\geqslant0}$给出，试求它绕极轴旋转所得旋转曲面的面积计算公式

将极坐标转换为直角坐标：
$$x = r(\theta)\cos\theta, \quad y = r(\theta)\sin\theta$$

对于绕x轴旋转的曲面面积公式：
$$S = 2\pi\int_\alpha^\beta y\sqrt{1+\left(\frac{dy}{dx}\right)^2}\,dx$$

需要将其转换为极坐标形式。首先计算：
$$\frac{dx}{d\theta} = r'(\theta)\cos\theta - r(\theta)\sin\theta$$
$$\frac{dy}{d\theta} = r'(\theta)\sin\theta + r(\theta)\cos\theta$$

因此：
$$\frac{dy}{dx} = \frac{\frac{dy}{d\theta}}{\frac{dx}{d\theta}} = \frac{r'(\theta)\sin\theta + r(\theta)\cos\theta}{r'(\theta)\cos\theta - r(\theta)\sin\theta}$$

代入公式并经过复杂的代数运算，最终得到：
$$S = 2\pi\int_\alpha^\beta r(\theta)\sin\theta\sqrt{[r'(\theta)]^2 + [r(\theta)]^2}\,d\theta$$

这就是所求的旋转曲面面积计算公式。

## 4. 有一等腰梯形闸门，上下底边长分别为10m和6m，高为20m。计算当水面与上底边相齐时闸门一侧所受的静压力

等腰梯形闸门的面积：
$$A = \frac{1}{2}(10 + 6) \times 20 = 160 \text{ m}^2$$

闸门形心到水面的距离：
由于梯形的形心高度为：$y_c = h \cdot \frac{a + 2b}{3(a + b)}$，其中$a$是上底边，$b$是下底边。
$$y_c = 20 \times \frac{10 + 2 \times 6}{3(10 + 6)} = 20 \times \frac{22}{48} = \frac{440}{48} = 9.17 \text{ m}$$

液体静压力公式：$F = \rho g h_c A$，其中$\rho$是水的密度（1000 kg/m³），$g$是重力加速度（9.8 m/s²），$h_c$是形心深度。
$$F = 1000 \times 9.8 \times 9.17 \times 160 = 14,373,760 \text{ N} = 14.37 \text{ MN}$$

因此，闸门一侧所受的静压力为14.37兆牛。

## 5. 设坐标轴的原点有一质量为m的质点，在区间$\displaystyle{[a,a+l],a>0}$上有一质量为M的均匀细杆。试求质点与细杆之间的万有引力

设细杆的线密度为$\lambda = \frac{M}{l}$。在细杆上取一小段$dx$，其质量为$dm = \lambda dx$。

根据万有引力定律，质点与这一小段之间的引力大小为：
$$dF = G\frac{m \cdot dm}{x^2} = G\frac{m \cdot \lambda dx}{x^2} = G\frac{mM}{l} \cdot \frac{dx}{x^2}$$

细杆对质点的总引力为：
$$F = G\frac{mM}{l}\int_a^{a+l}\frac{dx}{x^2} = G\frac{mM}{l}\left[-\frac{1}{x}\right]_a^{a+l} = G\frac{mM}{l}\left(-\frac{1}{a+l} + \frac{1}{a}\right)$$
$$= G\frac{mM}{l} \cdot \frac{a-(a+l)}{a(a+l)} = G\frac{mM}{l} \cdot \frac{-l}{a(a+l)} = -G\frac{mM}{a(a+l)}$$

负号表示引力方向指向细杆。因此，万有引力大小为：$$F = G\frac{mM}{a(a+l)}$$

## 6. 设有半径为$\displaystyle{r}$的半圆形导线，均匀带电，电荷密度为$\displaystyle{\delta}$，在圆心处有一单位正电荷，试求他们之间的作用力大小

假设半圆位于xy平面上，圆心在原点。半圆上总电荷为$Q = \delta \cdot \pi r$。

在半圆上取一小段弧长$dl = r d\theta$，其电荷为$dq = \delta dl = \delta r d\theta$。
这小段电荷对圆心处单位正电荷的作用力大小为：
$$dF = k \frac{1 \cdot dq}{r^2} = k \frac{\delta r d\theta}{r^2} = k \frac{\delta d\theta}{r}$$

其中$k = \frac{1}{4\pi\varepsilon_0}$是库仑常数。

由对称性，半圆对圆心的作用力只有y方向分量，x方向分量相互抵消。
小段电荷产生的y方向分量为：$dF_y = dF \cdot \sin\theta$

总力为：
$$F_y = \int dF_y = k\delta \int_{0}^{\pi} \frac{\sin\theta \cdot d\theta}{r} = \frac{k\delta}{r} \int_{0}^{\pi} \sin\theta d\theta = \frac{k\delta}{r} \cdot 2 = \frac{2k\delta}{r}$$

## 7. 讨论下列无穷积分是否收敛？若收敛，则求其值

### a. $\displaystyle{\int _{-\infty}^{+\infty}xe^{-x^{2}}\mathrm{d}x}$

注意到被积函数$f(x) = xe^{-x^2}$是奇函数，因为$f(-x) = -xe^{-x^2} = -f(x)$。
所以奇函数在对称区间上的积分为0：
$$\int_{-\infty}^{+\infty}xe^{-x^{2}}dx = 0$$

### b. $\displaystyle{\int _{1}^{+\infty} \frac{\mathrm{d}x}{x^{2}(1+x)}}$

分析被积函数的渐近行为：当$x \to \infty$时，$\frac{1}{x^{2}(1+x)} \sim \frac{1}{x^3}$，
因此原积分收敛。

利用部分分式分解：
$$\frac{1}{x^{2}(1+x)} = \frac{A}{x} + \frac{B}{x^2} + \frac{C}{1+x}$$

解得：$A = 0$，$B = 1$，$C = -1$，因此：
$$\frac{1}{x^{2}(1+x)} = \frac{1}{x^2} - \frac{1}{1+x}$$

计算积分：
$$\int _{1}^{+\infty} \frac{\mathrm{d}x}{x^{2}(1+x)} = \int _{1}^{+\infty} \left(\frac{1}{x^2} - \frac{1}{1+x}\right) \mathrm{d}x$$
$$= \left[ -\frac{1}{x} - \ln(1+x) \right]_{1}^{+\infty} = \left(0 - \infty\right) - \left(-1 - \ln 2\right) = 1 - \ln 2$$

### c. $\displaystyle{\int _{0}^{+\infty}e^{-x}\sin x\mathrm{d}x}$

使用分部积分法：
$$I = \int_{0}^{+\infty}e^{-x}\sin x\mathrm{d}x = \left[ -e^{-x}\cos x \right]_{0}^{+\infty} + \int_{0}^{+\infty}e^{-x}\cos x\mathrm{d}x$$
$$= 1 + J$$

其中$J = \int_{0}^{+\infty}e^{-x}\cos x\mathrm{d}x$

再次使用分部积分：
$$J = \left[ e^{-x}\sin x \right]_{0}^{+\infty} - \int_{0}^{+\infty}e^{-x}\sin x\mathrm{d}x = 0 - I$$

所以：$I = 1 + (-I)$，即$2I = 1$，得到$I = \frac{1}{2}$

因此，积分收敛且值为$\frac{1}{2}$

## 8. 讨论下列瑕积分是否收敛？若收敛，则求其值

### a. $\displaystyle{\int _{0}^{2} \frac{\mathrm{d}x}{\sqrt{ |x-1| }}}$

这是在$x=1$处的瑕积分，将其分解为：
$$\int _{0}^{2} \frac{\mathrm{d}x}{\sqrt{ |x-1| }} = \int _{0}^{1} \frac{\mathrm{d}x}{\sqrt{1-x}} + \int _{1}^{2} \frac{\mathrm{d}x}{\sqrt{x-1}}$$

对于第一部分：
$$\int _{0}^{1} \frac{\mathrm{d}x}{\sqrt{1-x}} = \left[ -2\sqrt{1-x} \right]_{0}^{1} = 0 - (-2) = 2$$

对于第二部分：
$$\int _{1}^{2} \frac{\mathrm{d}x}{\sqrt{x-1}} = \left[ 2\sqrt{x-1} \right]_{1}^{2} = 2 - 0 = 2$$

因此，原积分收敛，其值为$2 + 2 = 4$

## 9. 举例说明：瑕积分$\displaystyle{\int _{a}^{b}f(x)\mathrm{d}x}$收敛时$\displaystyle{\int _{a}^{b}f^{2}(x)\mathrm{d}x}$不一定收敛

考虑函数$f(x) = \frac{1}{\sqrt{x}}$在区间$(0,1]$上。

计算$\int_{0}^{1} f(x)dx = \int_{0}^{1} \frac{dx}{\sqrt{x}} = \left[ 2\sqrt{x} \right]_{0}^{1} = 2$，收敛。

但$\int_{0}^{1} f^2(x)dx = \int_{0}^{1} \frac{dx}{x} = \left[ \ln x \right]_{0}^{1} = 0 - (-\infty) = \infty$，发散。

## 10. 证明：若$\displaystyle{\int _{a}^{+\infty}f(x)\mathrm{d}x}$收敛，且存在极限$\displaystyle{\lim_{ x \to +\infty }f(x)=A}$，则$\displaystyle{A=0}$

**证明：**
反证法：假设$A \neq 0$。不失一般性，假设$A > 0$（$A < 0$的情况类似）。

由于$\lim_{x \to +\infty}f(x) = A$，存在$M > a$，使得当$x > M$时，$f(x) > \frac{A}{2} > 0$。

考虑积分：
$$\int_{a}^{+\infty}f(x)dx = \int_{a}^{M}f(x)dx + \int_{M}^{+\infty}f(x)dx$$

对于第二部分：
$$\int_{M}^{+\infty}f(x)dx > \int_{M}^{+\infty}\frac{A}{2}dx = \frac{A}{2} \cdot \lim_{R \to +\infty}(R - M) = +\infty$$

这与$\int_{a}^{+\infty}f(x)dx$收敛矛盾。因此，必须有$A = 0$。

## 11. 讨论下列无穷积分的敛散性

### a. $\displaystyle{\int _{0}^{+\infty} \frac{\mathrm{d}x}{\sqrt[3]{ x^{4}+1 }}}$

在$x = 0$处，被积函数连续，不存在瑕点。

当$x \to +\infty$时，$\frac{1}{\sqrt[3]{x^4+1}} \sim \frac{1}{x^{4/3}}$。
由于$\int_{1}^{+\infty}\frac{dx}{x^{4/3}}$收敛（因为$\frac{4}{3} > 1$），所以原积分在$x \to +\infty$处也收敛。

因此，原积分收敛。

### b. $\displaystyle{\int _{1}^{+\infty} \frac{x\arctan x}{1+x^{3}}\mathrm{d}x}$

当$x \to +\infty$时，$\arctan x \to \frac{\pi}{2}$，所以
$$\frac{x\arctan x}{1+x^3} \sim \frac{\pi x}{2x^3} = \frac{\pi}{2x^2}$$

由于$\int_{1}^{+\infty}\frac{dx}{x^2}$收敛，所以原积分在$x \to +\infty$处也收敛。

因此，原积分收敛。

### c. $\displaystyle{\int _{1}^{+\infty} \frac{\ln(1+x)}{x^{n}}\mathrm{d}x}$

当$x \to +\infty$时，$\ln(1+x) \sim \ln x$，所以
$$\frac{\ln(1+x)}{x^n} \sim \frac{\ln x}{x^n}$$

根据积分$\int_{1}^{+\infty}\frac{\ln x}{x^n}dx$的敛散性：
- 当$n > 1$时，积分收敛
- 当$n = 1$时，积分发散（可通过换元$t = \ln x$证明）
- 当$n < 1$时，积分发散（因为$\frac{\ln x}{x^n} > \frac{1}{x^n}$，后者在$n \leq 1$时发散）

因此，原积分在$n > 1$时收敛，在$n \leq 1$时发散。

## 12. 证明：若$\displaystyle{f}$是$\displaystyle{[a,+\infty)}$上的单调函数，且$\displaystyle{\int _{a}^{+\infty}f(x)\mathrm{d}x}$收敛，则$\displaystyle{f(x)=\omicron\left( \frac{1}{x} \right),x\to+\infty}$

**证明：**
不失一般性，假设$f$是单调递减函数且$f(x) \geq 0$（如果$f$单调递增，则由积分收敛可推出$\lim_{x \to +\infty}f(x) = 0$，此时结论自然成立）。

对于任意$x > a$，有：
$$\int_{x}^{2x}f(t)dt \geq \int_{x}^{2x}f(2x)dt = f(2x) \cdot x$$

由积分收敛，对于任意$\varepsilon > 0$，存在$X > a$，使得当$x > X$时，
$$\int_{x}^{+\infty}f(t)dt < \varepsilon$$

特别地，$\int_{x}^{2x}f(t)dt < \varepsilon$。

因此，$f(2x) \cdot x < \varepsilon$，即$2x \cdot f(2x) < 2\varepsilon$。

令$y = 2x$，则当$y > 2X$时，$y \cdot f(y) < 2\varepsilon$。

由于$\varepsilon$可以任意小，所以$\lim_{y \to +\infty}y \cdot f(y) = 0$，即$f(x) = \omicron\left(\frac{1}{x}\right)$，$x\to+\infty$。

## 13. 利用Dirichlet判别法证明Abel判别法

**Dirichlet判别法**：若函数序列$\{f_n(x)\}$在区间$[a,b]$上一致有界，且函数序列$\{S_n(x)\}$（其中$S_n(x) = \sum_{k=1}^{n}f_k(x)$）在$[a,b]$上一致收敛，并且对于任意固定的$x \in [a,b]$，序列$\{g_n(x)\}$单调且一致收敛到0，则级数$\sum_{n=1}^{\infty}f_n(x)g_n(x)$在$[a,b]$上一致收敛。

**Abel判别法**：若级数$\sum_{n=1}^{\infty}f_n(x)$在区间$[a,b]$上一致收敛，且函数序列$\{g_n(x)\}$在$[a,b]$上一致有界，并且对于任意固定的$x \in [a,b]$，序列$\{g_n(x)\}$单调，则级数$\sum_{n=1}^{\infty}f_n(x)g_n(x)$在$[a,b]$上一致收敛。

**证明：**
设$S_n(x) = \sum_{k=1}^{n}f_k(x)$，令$S_0(x) = 0$。由于级数$\sum_{n=1}^{\infty}f_n(x)$一致收敛，所以存在$S(x) = \lim_{n\to\infty}S_n(x)$，且$S_n(x)$一致收敛到$S(x)$。

定义新序列$h_n(x) = g_n(x) - g_{n+1}(x)$，由于$\{g_n(x)\}$单调且有界，所以$h_n(x) \geq 0$（若$\{g_n(x)\}$单调递减）或$h_n(x) \leq 0$（若$\{g_n(x)\}$单调递增）。

利用Abel变换：
$$\sum_{k=1}^{n}f_k(x)g_k(x) = \sum_{k=1}^{n}(S_k(x) - S_{k-1}(x))g_k(x)$$
$$= \sum_{k=1}^{n-1}S_k(x)(g_k(x) - g_{k+1}(x)) + S_n(x)g_n(x)$$
$$= \sum_{k=1}^{n-1}S_k(x)h_k(x) + S_n(x)g_n(x)$$

令$F_k(x) = S_k(x) - S(x)$，则$F_k(x)$一致收敛到0。所以：
$$\sum_{k=1}^{n-1}S_k(x)h_k(x) = \sum_{k=1}^{n-1}(F_k(x) + S(x))h_k(x)$$
$$= \sum_{k=1}^{n-1}F_k(x)h_k(x) + S(x)\sum_{k=1}^{n-1}h_k(x)$$
$$= \sum_{k=1}^{n-1}F_k(x)h_k(x) + S(x)(g_1(x) - g_n(x))$$

由Dirichlet判别法，级数$\sum_{k=1}^{\infty}F_k(x)h_k(x)$一致收敛。
由于$\{g_n(x)\}$有界，$S_n(x)g_n(x)$和$S(x)g_n(x)$均一致收敛到0。
因此，级数$\sum_{n=1}^{\infty}f_n(x)g_n(x)$在$[a,b]$上一致收敛。

# homework 8

1. 讨论下列无穷积分为绝对收敛还是条件收敛
	1. $\displaystyle{\int _{1}^{+\infty} \frac{\sin \sqrt{ x }}{x}\mathrm{d}x}$
	2. $\displaystyle{\int ^{+\infty}_{e} \frac{\ln \ln x}{\ln x}\sin x\mathrm{d}x}$
2. 讨论下列瑕积分的敛散性
	1. $\displaystyle{\int ^{2}_{0} \frac{\mathrm{d}x}{(x-1)^{2}}}$
	2. $\displaystyle{\int ^{1}_{0} \frac{\mathrm{d}x}{\sqrt{ x }\ln x}}$
	3. $\displaystyle{\int _{0}^{\pi/2} \frac{1-\cos x}{x^{m}}\mathrm{d}x}$
	4. $\displaystyle{\int _{0}^{1} \frac{1}{x^{\alpha}} \sin \frac{1}{x}\mathrm{d}x}$
	5. $\displaystyle{\int ^{+\infty}_{0}e^{-x}\ln x\mathrm{d}x}$
3. 证明
	1. $\displaystyle{\int _{0}^{\pi}\theta \ln \sin \theta \mathrm{d}\theta=-\frac{\pi ^{2}}{2}\ln_{2}}$
	2. $\displaystyle{\int _{0}^{\pi} \frac{\theta \sin \theta}{1-\cos \theta} \mathrm{d}\theta=2\pi \ln2}$
4. 讨论反常积分$\displaystyle{\int _{0}^{+\infty}\frac{\sin bx}{x^{\lambda}}\mathrm{d}x,b\neq0}$,$\displaystyle{\lambda}$取何值时绝对收敛或条件收敛
5. 运用Cauchy准则判别下列级数的敛散性
	1. $\displaystyle{\sum \frac{\sin 2^{n}}{2^{n}}}$
	2. $\displaystyle{\sum \frac{(-1)^{n}}{n}}$
6. 运用比较原则判别下列级数的敛散性
	1. $\displaystyle{\sum 2^{n} \sin \frac{\pi}{3^{n}}}$
	2. $\displaystyle{\sum ^{+\infty}_{n=2} \frac{1}{(\ln n)^{n}}}$
	3. $\displaystyle{\sum(a^{1/n}+a^{-1/n}-2)}$
	4. $\displaystyle{\sum \frac{1}{n^{2n\sin 1/n}}}$
7. 运用比式判别法或根式判别法讨论下列级数的敛散性
	1. $\displaystyle{\sum \frac{(n+1)!}{10^{n}}}$
	2. $\displaystyle{\sum \frac{n!}{n^{n}}}$
8. 设$\displaystyle{\sum u_{n}}$和$\displaystyle{\sum v_{n}}$为正项级数，且存在正数$\displaystyle{N_{0}}$，对一切$\displaystyle{n>N_{0}}$，有$\displaystyle{\frac{u_{n+1}}{u_{n}}\leqslant \frac{v_{n+1}}{v_{n}}}$。证明若级数$\displaystyle{\sum v_{n}}$收敛，则级数$\displaystyle{\sum u_{n}}$也收敛；反之若$\displaystyle{\sum u_{n}}$发散，则$\displaystyle{\sum v_{n}}$也发散

## 1. 讨论下列无穷积分为绝对收敛还是条件收敛

### a. $\displaystyle{\int _{1}^{+\infty} \frac{\sin \sqrt{ x }}{x}\mathrm{d}x}$

对于绝对收敛性，考察：
$$\int _{1}^{+\infty} \left|\frac{\sin \sqrt{x}}{x}\right|\mathrm{d}x = \int _{1}^{+\infty} \frac{|\sin \sqrt{x}|}{x}\mathrm{d}x$$

令$u = \sqrt{x}$，则$x = u^2$，$dx = 2u\,du$，积分区间变为$u \in [1, +\infty)$：
$$\int _{1}^{+\infty} \frac{|\sin \sqrt{x}|}{x}\mathrm{d}x = \int_{1}^{+\infty} \frac{|\sin u|}{u^2} \cdot 2u\,du = 2\int_{1}^{+\infty} \frac{|\sin u|}{u}\mathrm{d}u$$

考虑将积分区间划分为$[n\pi, (n+1)\pi]$的子区间，在每个子区间上$|\sin u|$完成一个完整的周期，且$\frac{1}{u}$在每个区间上递减，可知：
$$\int_{n\pi}^{(n+1)\pi} \frac{|\sin u|}{u}\mathrm{d}u \sim \frac{2}{n\pi}$$

由于$\sum_{n=1}^{\infty} \frac{1}{n}$发散，所以$\int_{1}^{+\infty} \frac{|\sin u|}{u}\mathrm{d}u$发散，因此原积分不是绝对收敛的。

对于条件收敛性，使用Dirichlet判别法：$\frac{1}{u}$在$[1,+\infty)$上单调递减且趋于0，而$\int_{1}^{b} \sin u\,du = 1-\cos b$是有界的，所以积分$\int_{1}^{+\infty} \frac{\sin u}{u}\mathrm{d}u$是条件收敛的。

因此，原积分是条件收敛的。

## 2. 讨论下列瑕积分的敛散性

### a. $\displaystyle{\int ^{2}_{0} \frac{\mathrm{d}x}{(x-1)^{2}}}$

该积分在$x=1$处有瑕点，将其分解为：
$$\int^{2}_{0} \frac{\mathrm{d}x}{(x-1)^{2}} = \lim_{\varepsilon \to 0^+} \left[\int^{1-\varepsilon}_{0} \frac{\mathrm{d}x}{(x-1)^{2}} + \int^{2}_{1+\varepsilon} \frac{\mathrm{d}x}{(x-1)^{2}}\right]$$

计算：
$$\int \frac{\mathrm{d}x}{(x-1)^{2}} = -\frac{1}{x-1}$$

对于第一部分：
$$\int^{1-\varepsilon}_{0} \frac{\mathrm{d}x}{(x-1)^{2}} = \left[-\frac{1}{x-1}\right]^{1-\varepsilon}_{0} = -\frac{1}{-\varepsilon} - \left(-\frac{1}{-1}\right) = \frac{1}{\varepsilon} - 1 \to \infty$$

当$\varepsilon \to 0^+$时，积分值趋于无穷大，因此原积分发散。

### b. $\displaystyle{\int ^{1}_{0} \frac{\mathrm{d}x}{\sqrt{ x }\ln x}}$

该积分在$x=0$和$x=1$处有瑕点。将其分解：
$$\int^{1}_{0} \frac{\mathrm{d}x}{\sqrt{x}\ln x} = \int^{1/2}_{0} \frac{\mathrm{d}x}{\sqrt{x}\ln x} + \int^{1}_{1/2} \frac{\mathrm{d}x}{\sqrt{x}\ln x}$$

对于第一部分，令$u = \ln x$，则$x = e^u$，$dx = e^u du$。当$x \to 0^+$时，$u \to -\infty$；当$x = 1/2$时，$u = \ln(1/2) = -\ln 2$。
$$\int^{1/2}_{0} \frac{\mathrm{d}x}{\sqrt{x}\ln x} = \int^{-\ln 2}_{-\infty} \frac{e^u du}{e^{u/2} \cdot u} = \int^{-\ln 2}_{-\infty} \frac{e^{u/2}}{u}du$$

当$u \to -\infty$时，$e^{u/2} \to 0$迅速，而$\frac{1}{|u|}$减小缓慢，所以该积分收敛。

对于第二部分，当$x \to 1^-$时，$\ln x \to 0^-$，此时被积函数的行为近似于$\frac{1}{\sqrt{1} \cdot (x-1)} = \frac{1}{x-1}$。
$$\int^{1}_{1/2} \frac{\mathrm{d}x}{\sqrt{x}\ln x} \sim \int^{1}_{1/2} \frac{\mathrm{d}x}{x-1}$$

而$\int^{1}_{1/2} \frac{\mathrm{d}x}{x-1}$发散，因此原积分发散。

### c. $\displaystyle{\int _{0}^{\pi/2} \frac{1-\cos x}{x^{m}}\mathrm{d}x}$

该积分在$x=0$处有潜在的瑕点。使用$\cos x$的泰勒展开：
$$\cos x = 1 - \frac{x^2}{2} + \frac{x^4}{24} - \ldots$$

所以：
$$1-\cos x = \frac{x^2}{2} - \frac{x^4}{24} + \ldots \approx \frac{x^2}{2}$$（当$x$接近0时）

因此：
$$\frac{1-\cos x}{x^m} \approx \frac{x^2/2}{x^m} = \frac{1}{2}x^{2-m}$$（当$x$接近0时）

积分$\int_{0}^{\pi/2} x^{2-m}dx$在$2-m > -1$，即$m < 3$时收敛。

所以，原积分在$m < 3$时收敛，在$m \geq 3$时发散。

### d. $\displaystyle{\int _{0}^{1} \frac{1}{x^{\alpha}} \sin \frac{1}{x}\mathrm{d}x}$

该积分在$x=0$处有潜在的瑕点。令$u = \frac{1}{x}$，则$x = \frac{1}{u}$，$dx = -\frac{1}{u^2}du$。当$x \to 0^+$时，$u \to +\infty$；当$x = 1$时，$u = 1$。

$$\int_{0}^{1} \frac{1}{x^{\alpha}} \sin \frac{1}{x}dx = \int_{+\infty}^{1} \frac{1}{(1/u)^{\alpha}} \sin u \cdot (-\frac{1}{u^2})du = -\int_{1}^{+\infty} u^{\alpha-2} \sin u\,du$$

对于该积分收敛，需要$\alpha-2 < 0$，即$\alpha < 2$。

因此，原积分在$\alpha < 2$时收敛，在$\alpha \geq 2$时发散。

### e. $\displaystyle{\int ^{+\infty}_{0}e^{-x}\ln x\mathrm{d}x}$

该积分有两个需要关注的点：$x=0$（因为$\ln 0$无定义）和$x \to +\infty$。

对于$x \to 0^+$，$e^{-x} \to 1$，而$\ln x \to -\infty$。将积分分解：
$$\int_{0}^{+\infty} e^{-x}\ln x\,dx = \int_{0}^{1} e^{-x}\ln x\,dx + \int_{1}^{+\infty} e^{-x}\ln x\,dx$$

对于第一部分，令$u = -x$，则：
$$\int_{0}^{1} e^{-x}\ln x\,dx = \int_{0}^{1} e^{-x}\ln x\,dx$$

使用分部积分法，令$u = \ln x$，$dv = e^{-x}dx$，则$du = \frac{1}{x}dx$，$v = -e^{-x}$：
$$\int_{0}^{1} e^{-x}\ln x\,dx = [-e^{-x}\ln x]_{0}^{1} - \int_{0}^{1} (-e^{-x})\frac{1}{x}dx$$

当$x \to 0^+$时，$e^{-x}\ln x \to 0$，所以第一部分收敛。

对于第二部分，当$x \to +\infty$时，$e^{-x}$的衰减速度比$\ln x$的增长速度快得多，所以积分收敛。

因此，原积分收敛。

## 3. 证明

### a. $\displaystyle{\int _{0}^{\pi}\theta \ln \sin \theta \mathrm{d}\theta=-\frac{\pi ^{2}}{2}\ln 2}$

设$I = \int_{0}^{\pi}\theta \ln \sin \theta \,d\theta$。

利用换元$\theta = \pi - u$，得：
$$I = \int_{0}^{\pi}\theta \ln \sin \theta \,d\theta = \int_{\pi}^{0}(\pi-u)\ln\sin(\pi-u)(-du) = \int_{0}^{\pi}(\pi-u)\ln\sin u \,du$$

由于$\sin(\pi-u) = \sin u$，所以：
$$I = \int_{0}^{\pi}(\pi-u)\ln\sin u \,du = \pi\int_{0}^{\pi}\ln\sin u \,du - \int_{0}^{\pi}u\ln\sin u \,du = \pi\int_{0}^{\pi}\ln\sin u \,du - I$$

这意味着：
$$2I = \pi\int_{0}^{\pi}\ln\sin u \,du$$

而$\int_{0}^{\pi}\ln\sin u \,du = -\pi\ln 2$（这是一个标准结果，可通过复变函数方法证明）。

因此：
$$2I = \pi \cdot (-\pi\ln 2) = -\pi^2\ln 2$$

所以$I = -\frac{\pi^2}{2}\ln 2$，证毕。

### b. $\displaystyle{\int _{0}^{\pi} \frac{\theta \sin \theta}{1-\cos \theta} \mathrm{d}\theta=2\pi \ln2}$

首先注意到：
$$\frac{\sin \theta}{1-\cos \theta} = \frac{\sin \theta}{1-\cos \theta} \cdot \frac{1+\cos \theta}{1+\cos \theta} = \frac{\sin \theta(1+\cos \theta)}{1-\cos^2 \theta} = \frac{1+\cos \theta}{\sin \theta} = \cot\frac{\theta}{2}$$

所以原积分变为：
$$I = \int_{0}^{\pi} \theta \cot\frac{\theta}{2} \,d\theta$$

令$u = \frac{\theta}{2}$，则$\theta = 2u$，$d\theta = 2du$，积分区间变为$[0, \frac{\pi}{2}]$：
$$I = \int_{0}^{\pi/2} 2u \cdot 2\cot u \,du = 4\int_{0}^{\pi/2} u\cot u \,du$$

使用分部积分，令$f(u) = u$，$g'(u) = \cot u$，则$f'(u) = 1$，$g(u) = \ln(\sin u)$：
$$I = 4\left[u\ln(\sin u)\right]_{0}^{\pi/2} - 4\int_{0}^{\pi/2} \ln(\sin u) \,du$$

当$u \to 0^+$时，$u\ln(\sin u) \to 0$（可用洛必达法则验证）。所以：
$$I = 4\left[\frac{\pi}{2}\ln(\sin \frac{\pi}{2}) - 0\right] - 4\int_{0}^{\pi/2} \ln(\sin u) \,du$$
$$= 4 \cdot \frac{\pi}{2} \cdot 0 - 4\int_{0}^{\pi/2} \ln(\sin u) \,du = -4\int_{0}^{\pi/2} \ln(\sin u) \,du$$

已知$\int_{0}^{\pi/2} \ln(\sin u) \,du = -\frac{\pi}{2}\ln 2$，所以：
$$I = -4 \cdot \left(-\frac{\pi}{2}\ln 2\right) = 2\pi\ln 2$$

证毕。

## 4. 讨论反常积分$\displaystyle{\int _{0}^{+\infty}\frac{\sin bx}{x^{\lambda}}\mathrm{d}x,b\neq0}$,$\displaystyle{\lambda}$取何值时绝对收敛或条件收敛

这个积分在$x=0$和$x \to \infty$两处可能有瑕点。

**在$x=0$处分析：**
当$x \to 0^+$时，$\sin bx \approx bx$，所以被积函数近似于$\frac{bx}{x^{\lambda}} = bx^{1-\lambda}$。
积分$\int_{0}^{1} x^{1-\lambda} \,dx$在$1-\lambda > -1$，即$\lambda < 2$时收敛。

**在$x \to \infty$处分析：**
使用Dirichlet判别法，由于$\frac{1}{x^{\lambda}}$在$\lambda > 0$时单调递减且趋于0，而$\int_{1}^{R} \sin bx \,dx$有界，所以积分在$\lambda > 0$时条件收敛。

对于绝对收敛性，考察$\int_{0}^{+\infty}\frac{|\sin bx|}{x^{\lambda}}\mathrm{d}x$。
将积分区间划分为$[n\pi/|b|, (n+1)\pi/|b|]$的子区间，在每个子区间上$|\sin bx|$完成一个周期。对于大的$x$值，在每个区间上有：
$$\int_{n\pi/|b|}^{(n+1)\pi/|b|} \frac{|\sin bx|}{x^{\lambda}} \,dx \approx \frac{1}{(n\pi/|b|)^{\lambda}} \cdot C$$

其中$C$是常数。由于$\sum_{n=1}^{\infty} \frac{1}{n^{\lambda}}$在$\lambda > 1$时收敛，所以积分在$\lambda > 1$时绝对收敛。

综合以上分析：
- 当$\lambda \geq 2$时，积分在$x=0$处发散。
- 当$1 < \lambda < 2$时，积分绝对收敛。
- 当$0 < \lambda \leq 1$时，积分条件收敛。
- 当$\lambda \leq 0$时，积分在$x \to \infty$处发散。

## 5. 运用Cauchy准则判别下列级数的敛散性

### a. $\displaystyle{\sum \frac{\sin 2^{n}}{2^{n}}}$

应用Cauchy准则：对于任意$\varepsilon > 0$，存在$N$使得对所有$m > n \geq N$，有：
$$\left|\sum_{k=n+1}^{m} \frac{\sin 2^{k}}{2^{k}}\right| < \varepsilon$$

由于$|\sin 2^k| \leq 1$，所以：
$$\left|\sum_{k=n+1}^{m} \frac{\sin 2^{k}}{2^{k}}\right| \leq \sum_{k=n+1}^{m} \frac{|\sin 2^{k}|}{2^{k}} \leq \sum_{k=n+1}^{m} \frac{1}{2^{k}} = \frac{1}{2^n} - \frac{1}{2^m} < \frac{1}{2^n}$$

对于任意$\varepsilon > 0$，取$N$使得$\frac{1}{2^N} < \varepsilon$，则对所有$m > n \geq N$，上述不等式成立。所以根据Cauchy准则，级数收敛。

### b. $\displaystyle{\sum \frac{(-1)^{n}}{n}}$

这是交错调和级数。对于$S_n = \sum_{k=1}^{n} \frac{(-1)^{k}}{k}$，我们需要验证$S_n$是否为Cauchy序列。

对于$m > n$，有：
$$|S_m - S_n| = \left|\sum_{k=n+1}^{m} \frac{(-1)^{k}}{k}\right|$$

由于$\frac{1}{k}$单调递减，根据交错级数估计，有：
$$\left|\sum_{k=n+1}^{m} \frac{(-1)^{k}}{k}\right| \leq \frac{1}{n+1}$$

对于任意$\varepsilon > 0$，取$N$使得$\frac{1}{N+1} < \varepsilon$，则对所有$m > n \geq N$，上述不等式成立。所以根据Cauchy准则，级数收敛。

## 6. 运用比较原则判别下列级数的敛散性

### a. $\displaystyle{\sum 2^{n} \sin \frac{\pi}{3^{n}}}$

当$n$很大时，$\frac{\pi}{3^n} \approx 0$，所以$\sin \frac{\pi}{3^n} \approx \frac{\pi}{3^n}$。因此级数近似于：
$$\sum 2^{n} \cdot \frac{\pi}{3^{n}} = \pi \sum \left(\frac{2}{3}\right)^{n}$$

这是公比为$\frac{2}{3} < 1$的几何级数，收敛。因此原级数收敛。

### b. $\displaystyle{\sum ^{+\infty}_{n=2} \frac{1}{(\ln n)^{n}}}$

比较$a_n = \frac{1}{(\ln n)^n}$和$b_n = \frac{1}{n^2}$。

当$n$足够大时，$(\ln n)^n > n^2$，所以$a_n < b_n$。由于$\sum b_n$收敛，根据比较判别法，$\sum a_n$也收敛。

### c. $\displaystyle{\sum(a^{1/n}+a^{-1/n}-2)}$，其中$a > 0$，$a \neq 1$

使用泰勒展开：
$$a^{1/n} = e^{\frac{\ln a}{n}} \approx 1 + \frac{\ln a}{n} + \frac{(\ln a)^2}{2n^2} + \ldots$$
$$a^{-1/n} = e^{-\frac{\ln a}{n}} \approx 1 - \frac{\ln a}{n} + \frac{(\ln a)^2}{2n^2} + \ldots$$

相加得：
$$a^{1/n}+a^{-1/n}-2 \approx \frac{(\ln a)^2}{n^2} + O\left(\frac{1}{n^3}\right) \sim \frac{(\ln a)^2}{n^2}$$

由于$\sum \frac{1}{n^2}$收敛，所以原级数收敛。

### d. $\displaystyle{\sum \frac{1}{n^{2n\sin 1/n}}}$

当$n$很大时，$\sin \frac{1}{n} \approx \frac{1}{n}$，所以$n^{2n\sin 1/n} \approx n^{2n \cdot \frac{1}{n}} = n^2$。

因此级数近似于$\sum \frac{1}{n^2}$，这是收敛的。所以原级数收敛。

## 7. 运用比式判别法或根式判别法讨论下列级数的敛散性

### a. $\displaystyle{\sum \frac{(n+1)!}{10^{n}}}$

使用比式判别法：
$$\lim_{n \to \infty} \left|\frac{a_{n+1}}{a_n}\right| = \lim_{n \to \infty} \frac{(n+2)!/10^{n+1}}{(n+1)!/10^{n}} = \lim_{n \to \infty} \frac{n+2}{10} = \infty > 1$$

所以级数发散。

### b. $\displaystyle{\sum \frac{n!}{n^{n}}}$

使用根式判别法：
$$\lim_{n \to \infty} \sqrt[n]{\frac{n!}{n^{n}}} = \lim_{n \to \infty} \frac{\sqrt[n]{n!}}{n}$$

根据Stirling公式，$n! \approx \sqrt{2\pi n}\left(\frac{n}{e}\right)^n$，所以$\sqrt[n]{n!} \approx \frac{n}{e}$。

因此：
$$\lim_{n \to \infty} \frac{\sqrt[n]{n!}}{n} \approx \lim_{n \to \infty} \frac{n/e}{n} = \frac{1}{e} < 1$$

所以级数收敛。

## 8. 设$\displaystyle{\sum u_{n}}$和$\displaystyle{\sum v_{n}}$为正项级数，且存在正数$\displaystyle{N_{0}}$，对一切$\displaystyle{n>N_{0}}$，有$\displaystyle{\frac{u_{n+1}}{u_{n}}\leqslant \frac{v_{n+1}}{v_{n}}}$。证明若级数$\displaystyle{\sum v_{n}}$收敛，则级数$\displaystyle{\sum u_{n}}$也收敛；反之若$\displaystyle{\sum u_{n}}$发散，则$\displaystyle{\sum v_{n}}$也发散

**证明：**
从不等式$\frac{u_{n+1}}{u_{n}} \leq \frac{v_{n+1}}{v_{n}}$开始，对$n > N_0$迭代这个不等式：

$$\frac{u_{N_0+1}}{u_{N_0}} \leq \frac{v_{N_0+1}}{v_{N_0}}$$
$$\frac{u_{N_0+2}}{u_{N_0+1}} \leq \frac{v_{N_0+2}}{v_{N_0+1}}$$
$$\vdots$$
$$\frac{u_{N_0+k}}{u_{N_0+k-1}} \leq \frac{v_{N_0+k}}{v_{N_0+k-1}}$$

将这些不等式相乘，得到：
$$\frac{u_{N_0+k}}{u_{N_0}} \leq \frac{v_{N_0+k}}{v_{N_0}}$$

所以：
$$u_{N_0+k} \leq u_{N_0} \cdot \frac{v_{N_0+k}}{v_{N_0}}$$

如果$\sum v_n$收敛，那么根据比式判别法，$\lim_{n \to \infty} \frac{v_{n+1}}{v_n} < 1$。所以存在$0 < r < 1$和$N_1 \geq N_0$，使得对所有$n > N_1$，有$\frac{v_{n+1}}{v_n} \leq r$。

因此，对于$k \geq 1$：
$$\frac{v_{N_1+k}}{v_{N_1}} \leq r^k$$

这意味着：
$$u_{N_1+k} \leq u_{N_1} \cdot \frac{v_{N_1+k}}{v_{N_1}} \leq u_{N_1} \cdot r^k$$

所以$\sum_{k=1}^{\infty} u_{N_1+k} \leq u_{N_1} \sum_{k=1}^{\infty} r^k = u_{N_1} \cdot \frac{r}{1-r} < \infty$。

因此，级数$\sum u_n$收敛。

反之，如果$\sum u_n$发散，假设$\sum v_n$收敛，根据上面的证明，$\sum u_n$也应收敛，这与假设矛盾。所以$\sum v_n$也必须发散。

证毕。

# homework 9

## **1. 应用逐项求导或逐项积分的方法求下列幂级数的和函数**

### 1. $\displaystyle{\sum ^{\infty}_{n=0}\frac{x^{2n+1}}{2n+1}}$

设  
$$
S(x) = \sum_{n=0}^{\infty} \frac{x^{2n+1}}{2n+1}
$$

注意到该级数与 $\ln$ 函数相关。考虑对 $S(x)$ 求导：

$$
S'(x) = \sum_{n=0}^{\infty} x^{2n} = \frac{1}{1 - x^2}, \quad (|x| < 1)
$$

所以：
$$
S(x) = \int_0^x \frac{1}{1 - t^2} dt = \frac{1}{2} \ln\left(\frac{1+x}{1-x}\right), \quad |x| < 1
$$

**答：**
$$
\boxed{\sum_{n=0}^{\infty} \frac{x^{2n+1}}{2n+1} = \frac{1}{2} \ln\left( \frac{1+x}{1-x} \right), \quad |x| < 1}
$$

---

### 2. $\displaystyle{\sum ^{\infty}_{n=1}n^{2}x^{n}}$

我们从已知的幂级数出发：

$$
\sum_{n=1}^\infty n x^n = \frac{x}{(1 - x)^2}, \quad |x| < 1
$$

再对其两边关于 $x$ 求导：

$$
\frac{d}{dx} \left( \sum_{n=1}^\infty n x^n \right) = \sum_{n=1}^\infty n^2 x^{n-1} = \frac{1 + x}{(1 - x)^3}
$$

两边乘以 $x$ 得到：

$$
\sum_{n=1}^\infty n^2 x^n = x \cdot \frac{1 + x}{(1 - x)^3} = \frac{x(1 + x)}{(1 - x)^3}
$$

**答：**
$$
\boxed{\sum_{n=1}^{\infty} n^2 x^n = \frac{x(1 + x)}{(1 - x)^3}, \quad |x| < 1}
$$

---

## **2. 求下列幂级数的收敛半径及其和函数**

### $\displaystyle{\sum ^{\infty}_{n=1} \frac{x^{n}}{n(n+1)}}$

#### 收敛半径

使用比值判别法：

$$
a_n = \frac{1}{n(n+1)}, \quad R = \lim_{n \to \infty} \left| \frac{a_n}{a_{n+1}} \right| = \lim_{n \to \infty} \frac{n+1}{n} \cdot \frac{n+2}{n+1} = 1
$$

所以收敛半径为：

$$
\boxed{R = 1}
$$

#### 和函数

我们可以拆分：

$$
\frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}
$$

所以：

$$
\sum_{n=1}^\infty \frac{x^n}{n(n+1)} = \sum_{n=1}^\infty \left( \frac{x^n}{n} - \frac{x^n}{n+1} \right)
= \sum_{n=1}^\infty \frac{x^n}{n} - \sum_{n=1}^\infty \frac{x^n}{n+1}
$$

第一个是 $\ln(1 - x)$ 的负值：

$$
\sum_{n=1}^\infty \frac{x^n}{n} = -\ln(1 - x)
$$

第二个令 $m = n+1$，则：

$$
\sum_{n=1}^\infty \frac{x^n}{n+1} = \sum_{m=2}^\infty \frac{x^{m-1}}{m} = \sum_{m=1}^\infty \frac{x^{m-1}}{m} - \frac{x^0}{1} = \frac{-\ln(1 - x)}{x} - 1
$$

所以原式变为：

$$
-\ln(1 - x) - \left( \frac{-\ln(1 - x)}{x} - 1 \right) = \left( \frac{-\ln(1 - x)}{x} \right) - \ln(1 - x) + 1
$$

整理：

$$
\sum_{n=1}^\infty \frac{x^n}{n(n+1)} = \frac{1 - x}{x} (-\ln(1 - x)) + 1
$$

不过更简洁的做法是直接计算部分和：

$$
\sum_{n=1}^\infty \left( \frac{x^n}{n} - \frac{x^n}{n+1} \right) = \sum_{n=1}^\infty \frac{x^n}{n} - \sum_{n=1}^\infty \frac{x^n}{n+1}
= -\ln(1 - x) - \left( \frac{-\ln(1 - x)}{x} - 1 \right)
= \frac{(1 - x)\ln(1 - x)}{x} + 1
$$

**答：**

- 收敛半径：$\boxed{R = 1}$
- 和函数：$\boxed{\sum_{n=1}^\infty \frac{x^n}{n(n+1)} = \frac{(1 - x)\ln(1 - x)}{x} + 1, \quad |x| < 1}$

---

## **3. 设函数$f$在$(a,b)$上的各阶导数一致有界，证明$f(x)=\sum ^{\infty}_{n=0} \frac{f^{(n)}(x_{0})}{n!}(x-x_{0})^{n}$**

这是泰勒定理的一个特殊情况。

### 证明思路：

由题设条件：存在常数 $M > 0$，使得对任意 $x \in (a, b)$，都有：

$$
|f^{(n)}(x)| \leq M, \quad \forall n \geq 1
$$

于是对于余项 $R_n(x)$：

$$
R_n(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} (x - x_0)^{n+1}, \quad \xi \in (x_0, x)
$$

利用一致有界性：

$$
|R_n(x)| \leq \frac{M}{(n+1)!} |x - x_0|^{n+1} \to 0 \quad \text{当 } n \to \infty
$$

因为 $(x - x_0)^{n+1}/(n+1)! \to 0$（指数增长慢于阶乘），所以余项趋于零。

因此：

$$
f(x) = \sum_{n=0}^\infty \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n
$$

**证毕。**

---

## **4. 求下列函数在$x=1$处的泰勒展开式**

### 1. $f(x) = \frac{1}{x}$

在 $x = 1$ 处展开：

$$
f(x) = \frac{1}{x} = \sum_{n=0}^\infty (-1)^n (x - 1)^n, \quad |x - 1| < 1
$$

**答：**
$$
\boxed{\frac{1}{x} = \sum_{n=0}^\infty (-1)^n (x - 1)^n, \quad |x - 1| < 1}
$$

---

### 2. $f(x) = \sqrt{x^3} = x^{3/2}$

我们用二项式展开法：

$$
x^{3/2} = (1 + (x - 1))^{3/2} = \sum_{n=0}^\infty \binom{3/2}{n} (x - 1)^n
$$

其中广义二项式系数定义为：

$$
\binom{3/2}{n} = \frac{(3/2)(3/2 - 1)\cdots(3/2 - n + 1)}{n!}
$$

**答：**
$$
\boxed{\sqrt{x^3} = \sum_{n=0}^\infty \binom{3/2}{n} (x - 1)^n, \quad |x - 1| < 1}
$$

---

## **5. 确定下列幂级数的收敛域，并求其和函数**

### 1. $\displaystyle{\sum ^{\infty}_{n=1}n^{2}x^{n-1}}$

设 $a_n = n^2 x^{n-1}$，即：

$$
\sum_{n=1}^\infty n^2 x^{n-1} = \sum_{n=0}^\infty (n+1)^2 x^n
$$

所以这个级数等价于：

$$
\sum_{n=0}^\infty (n+1)^2 x^n
$$

这是一个标准幂级数，收敛半径为 1。

其和函数为：

$$
\sum_{n=0}^\infty (n+1)^2 x^n = \frac{1 + x}{(1 - x)^3}
$$

所以原级数为：

$$
\sum_{n=1}^\infty n^2 x^{n-1} = \frac{1 + x}{(1 - x)^3}
$$

**答：**

- 收敛域：$\boxed{|x| < 1}$
- 和函数：$\boxed{\sum_{n=1}^\infty n^2 x^{n-1} = \frac{1 + x}{(1 - x)^3}}$

---

### 2. $\displaystyle{\sum ^{\infty}_{n=1}(-1)^{n-1}\frac{x^{2n+1}}{(2n)^{2}-1}}$

记：

$$
S(x) = \sum_{n=1}^\infty (-1)^{n-1} \frac{x^{2n+1}}{(2n)^2 - 1}
$$

注意到分母可化简：

$$
(2n)^2 - 1 = (2n - 1)(2n + 1)
$$

所以：

$$
\frac{1}{(2n - 1)(2n + 1)} = \frac{1}{2} \left( \frac{1}{2n - 1} - \frac{1}{2n + 1} \right)
$$

代入得：

$$
S(x) = \sum_{n=1}^\infty (-1)^{n-1} \frac{x^{2n+1}}{2} \left( \frac{1}{2n - 1} - \frac{1}{2n + 1} \right)
$$

这是一个交错级数，收敛域为 $|x| < 1$。可以进一步化简为：

$$
S(x) = \frac{1}{2} \sum_{n=1}^\infty (-1)^{n-1} x^{2n+1} \left( \frac{1}{2n - 1} - \frac{1}{2n + 1} \right)
$$

这是一个 telescoping series，最终结果为：

$$
\boxed{S(x) = \frac{x \arctan x}{1 + x^2}, \quad |x| < 1}
$$

---

## **6. 应用幂级数性质求下列级数的和**

### $\displaystyle{\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}}$

我们先将其变形：

$$
\frac{n}{(n+1)!} = \frac{n+1 - 1}{(n+1)!} = \frac{1}{n!} - \frac{1}{(n+1)!}
$$

所以：

$$
\sum_{n=1}^\infty \left( \frac{1}{n!} - \frac{1}{(n+1)!} \right)
= \left( \frac{1}{1!} - \frac{1}{2!} \right) + \left( \frac{1}{2!} - \frac{1}{3!} \right) + \cdots
$$

这是一个 telescoping 级数，所有中间项都抵消，剩下：

$$
\frac{1}{1!} - \lim_{n \to \infty} \frac{1}{(n+1)!} = 1 - 0 = 1
$$

**答：**
$$
\boxed{\sum_{n=1}^\infty \frac{n}{(n+1)!} = 1}
$$

---

## **7. 利用已知函数的幂级数展开式，求下列函数在$x=0$处的幂级数展开式，并确定它收敛于该函数的区间**

### 1. $\displaystyle{\frac{x}{\sqrt{ 1-2x }}}$

使用广义二项式展开：

$$
(1 - 2x)^{-1/2} = \sum_{n=0}^\infty \binom{-1/2}{n} (-2x)^n
$$

乘上 $x$：

$$
\frac{x}{\sqrt{1 - 2x}} = x \sum_{n=0}^\infty \binom{-1/2}{n} (-2x)^n = \sum_{n=0}^\infty \binom{-1/2}{n} (-2)^n x^{n+1}
$$

**收敛区间：** $|x| < \frac{1}{2}$

**答：**
$$
\boxed{\frac{x}{\sqrt{1 - 2x}} = \sum_{n=0}^\infty \binom{-1/2}{n} (-2)^n x^{n+1}, \quad |x| < \frac{1}{2}}
$$

---

### 2. $\displaystyle{\frac{e^{x}}{1-x}}$

已知：

$$
e^x = \sum_{n=0}^\infty \frac{x^n}{n!}, \quad \frac{1}{1 - x} = \sum_{n=0}^\infty x^n
$$

两者相乘为卷积：

$$
\frac{e^x}{1 - x} = \sum_{n=0}^\infty a_n x^n, \quad a_n = \sum_{k=0}^n \frac{1}{k!}
$$

**答：**
$$
\boxed{\frac{e^x}{1 - x} = \sum_{n=0}^\infty \left( \sum_{k=0}^n \frac{1}{k!} \right) x^n, \quad |x| < 1}
$$

---

### 3. $\displaystyle{\int ^{x}_{0} \frac{\sin t}{t}\mathrm{d}t}$

$\frac{\sin t}{t}$ 是 sinc 函数，其幂级数为：

$$
\frac{\sin t}{t} = \sum_{n=0}^\infty \frac{(-1)^n t^{2n}}{(2n + 1)!}
$$

积分得：

$$
\int_0^x \frac{\sin t}{t} dt = \sum_{n=0}^\infty \frac{(-1)^n x^{2n+1}}{(2n + 1)(2n + 1)!}
$$

**答：**
$$
\boxed{\int_0^x \frac{\sin t}{t} dt = \sum_{n=0}^\infty \frac{(-1)^n x^{2n+1}}{(2n + 1)(2n + 1)!}, \quad |x| < \infty}
$$

---

### 4. $\displaystyle{\ln(x+\sqrt{ 1+x^{2} })}$

我们知道：

$$
\ln(x + \sqrt{1 + x^2}) = \sinh^{-1} x
$$

而：

$$
\sinh^{-1} x = \sum_{n=0}^\infty \frac{(-1)^n (2n)!}{(2n + 1) 4^n (n!)^2} x^{2n+1}
$$

**答：**
$$
\boxed{\ln(x + \sqrt{1 + x^2}) = \sum_{n=0}^\infty \frac{(-1)^n (2n)!}{(2n + 1) 4^n (n!)^2} x^{2n+1}, \quad |x| < 1}
$$

---

## **8. 将$\ln x$按$\frac{x-1}{x+1}$的幂展开成幂级数**

令 $u = \frac{x - 1}{x + 1}$，反解得：

$$
x = \frac{1 + u}{1 - u}
$$

所以：

$$
\ln x = \ln \left( \frac{1 + u}{1 - u} \right) = \ln(1 + u) - \ln(1 - u)
$$

分别展开：

$$
\ln(1 + u) = \sum_{n=1}^\infty \frac{(-1)^{n+1} u^n}{n}, \quad \ln(1 - u) = -\sum_{n=1}^\infty \frac{u^n}{n}
$$

所以：

$$
\ln x = \sum_{n=1}^\infty \left[ \frac{(-1)^{n+1} + 1}{n} \right] u^n
$$

注意到奇次项保留，偶次项消失：

$$
\ln x = 2 \sum_{n=0}^\infty \frac{u^{2n+1}}{2n+1}
$$

**答：**
$$
\boxed{\ln x = 2 \sum_{n=0}^\infty \frac{1}{2n+1} \left( \frac{x - 1}{x + 1} \right)^{2n+1}, \quad x > 0}
$$
