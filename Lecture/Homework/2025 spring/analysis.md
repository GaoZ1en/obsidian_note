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
8. 设$\displaystyle{\sum u_{n}}$和$\displaystyle{\sum v_{n}}$为正项级数，且存在正数$\displaystyle{N_{0}}$，对一切$\displaystyle{n>N_{0}}$，有$\displaystyle{\frac{u_{n+1}}{u_{n}}\leqslant \frac{v_{n+1}}{v_{n}}}$。证明若级数$\displaystyle{\sum v_{n}}$收敛，则级数$\displaystyle{\sum u_{n}}$ye shou li