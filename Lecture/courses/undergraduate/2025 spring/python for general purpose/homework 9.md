1. 结合 NumPy, SciPy 和 Matplotlib 模拟一个简单的科学实验并进行数据分析和可视化。
1. 背景：
	1. 我们知道，一个热的物体放在温度较低的环境中会逐渐冷却。这个过程可以用牛顿冷却定律来近似描述（在一定条件下）：
	1. $T(t) = T_{环境} + (T_0 - T_{环境}) ＼cdot e^{-k ＼cdot t}$
	1. 其中：
		1. $T(t)$ 是物体在时间 $t$ 时的温度
		1. $T_{环境}$ 是环境的温度
		1. $T_0$ 是物体初始（$t=0$ 时）的温度
		1. $k$ 是一个冷却常数，取决于物体的性质和环境
		1. $e$ 是自然对数的底数（约等于 2.718）
	1. 假设我们做了一个实验，测量了一个热水杯放在教室里随时间变化的温度。但实验测量总会有一些误差（噪音）。我们的任务是用编程来：
		1. 模拟这个带有噪音的实验数据。
		1. 使用 SciPy 的工具找到最符合这个数据的冷却曲线（即找出最佳的 $T_{环境}$, $T_0$, $k$ 值）。
		1. 用 Matplotlib 把原始的实验数据点和拟合出的光滑曲线画在同一张图上，看看拟合效果如何。
1. 你需要使用的库：
	1. `numpy`：用于生成时间和温度数组，处理数值数据。
	1. `scipy.optimize` 的 `curve_fit` 函数：用于进行曲线拟合。
	1. `matplotlib.pyplot`：用于绘制图表。
1. 作业步骤：
	1. 模拟实验数据 (使用 NumPy)
		1. 设定参数：
			1. 假设环境温度 `ambient_temp = 25.0` 摄氏度。
			1. 假设物体初始温度 `initial_temp = 90.0` 摄氏度。
			1. 假设冷却常数 `cooling_constant = 0.05` (单位假设为 1/分钟)。
			1. 设定模拟的总时长，比如 `total_time = 60` 分钟。
			1. 设定测量点数量，比如 `num_measurements = 30` 个点。
		1. 生成时间点：使用 NumPy 的 `linspace` 函数，生成从 0 分钟到 `total_time` 分钟的 `num_measurements` 个等间隔的时间点。将结果存储在一个 NumPy 数组 `time_points` 中。
		1. 计算理想温度： 根据牛顿冷却定律的公式，使用设定的参数 (`ambient_temp`, `initial_temp`, `cooling_constant`) 和上面生成的时间点 `time_points`，计算出每个时间点对应的“理想”温度。使用 NumPy 的 `exp` 函数来计算指数。将结果存储在一个 NumPy 数组 `ideal_temperature` 中。
		1. 添加噪音：模拟实验测量误差。使用 NumPy 的随机数生成功能（比如 `np.random.normal`），生成与 `ideal_temperature` 数组形状相同的随机噪音。假设噪音的平均值是 0，标准差 `noise_level = 1.5` 摄氏度。将这个噪音加到 `ideal_temperature` 数组上，得到模拟的“实验测量”温度数据。将结果存储在一个 NumPy 数组 `measured_temperature` 中。
	1. 使用 SciPy 进行曲线拟合 (使用 SciPy)
		1. 定义拟合函数： 创建一个 Python 函数，它接受时间数组作为第一个参数，然后接受需要拟合的参数（即 $T_{环境}, T_0, k$）作为后续参数。这个函数的返回值是根据输入时间和参数计算出的温度值。函数的定义应该像这样：def cooling_law(t, T_ambient, T0, k): return T_ambient + (T0 - T_ambient) * np.exp(-k * t)
		1. （提示：这里的 `T0` 代表的是初始温度，但在这个函数中它是一个需要被拟合的参数，所以命名为 `T0` 可能会有点混淆，但为了对应公式暂且这么写。实际上 `curve_fit` 拟合的是公式中的 `T_ambient`, `T0` 和 `k`）
		1. 进行拟合： 使用 `scipy.optimize.curve_fit` 函数。它至少需要三个参数：
			1. 你要拟合的函数（上面定义的 `cooling_law`）。
			1. 实验数据的 x 值（`time_points` 数组）。
			1. 实验数据的 y 值（`measured_temperature` 数组）
		1. （可选但推荐）提供一个初始猜测值 `p0` 给拟合参数，这有助于拟合过程。你可以根据你模拟数据时设定的参数给一个大致的猜测，比如 `p0 = [20, 80, 0.1]`。
		1. `curve_fit` 会返回两个东西：最佳拟合参数数组 (通常命名为 `params`) 和协方差矩阵 (通常命名为 `covariance`)。你只需要取出第一个返回值，也就是最佳拟合参数。将最佳拟合参数存储在一个变量中，比如 `best_fit_params`。
	1. 可视化结果 (使用 Matplotlib)
		1. 创建图表： 使用 `matplotlib.pyplot.figure()` 创建一个图，并使用 `matplotlib.pyplot.subplot()` 创建一个子图（或者直接用 `matplotlib.pyplot.plot` 等函数开始画图）。
		1. 绘制原始数据点： 使用 `matplotlib.pyplot.scatter()` 函数，将 `time_points` 作为 x 轴数据，`measured_temperature` 作为 y 轴数据，绘制散点图。可以设置 `label=’Measured Data’`。
		1. 绘制拟合曲线：
			1. 使用最佳拟合参数 `best_fit_params` 和原始的 `time_points` 数组（或者为了让曲线更光滑，可以生成一个更密集的新的时间点数组），调用你之前定义的 `cooling_law` 函数，计算出拟合曲线上的温度值。
			1. 使用 `matplotlib.pyplot.plot()` 函数，将时间点作为 x 轴数据，计算出的拟合温度作为 y 轴数据，绘制一条光滑的曲线。可以设置 `label=’Fitted Curve’`，并选择一种不同于散点的颜色和线型。
		1. 添加图表元素：
			1. 使用 `matplotlib.pyplot.xlabel()` 给 x 轴添加标签（比如“时间 (分钟)”）。
			1. 使用 `matplotlib.pyplot.ylabel()` 给 y 轴添加标签（比如“温度 (摄氏度)”）。
			1. 使用 `matplotlib.pyplot.title()` 给图表添加标题（比如“物体冷却实验数据与拟合曲线”）。
			1. 使用 `matplotlib.pyplot.legend()` 显示图例。
			1. 使用 `matplotlib.pyplot.grid(True)` 添加网格线，让图表更容易阅读。
		1. 显示图表：使用 `matplotlib.pyplot.show()` 显示绘制好的图表。
	1. 输出结果并反思
		1. 打印出 SciPy 拟合出的最佳参数值（即 `best_fit_params`）。可以给它们加上文字说明，比如：“最佳拟合环境温度: ...”、“最佳拟合初始温度: ...”、“最佳拟合冷却常数: ...”。
		1. 对照你在步骤 1 中设定的原始参数（`ambient_temp`, `initial_temp`, `cooling_constant`），观察 SciPy 拟合出的参数与原始参数有多接近。思考为什么会有差异（因为有噪音）。
		1. 观察绘制出的图表，判断拟合曲线是否很好地穿过了实验数据点。
