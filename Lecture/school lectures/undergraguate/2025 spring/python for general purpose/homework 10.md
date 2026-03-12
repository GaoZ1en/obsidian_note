# 作业 分析美国房价与犯罪率的关系
1. 背景：
	1. 用一个包含美国波士顿地区房价和犯罪率等信息的经典数据集。目标是使用 Pandas 进行数据处理和探索，并使用 Statsmodels 构建和分析一个简单的线性回归模型，以研究犯罪率对房价的影响。
2. 数据集：
	1. 使用 statsmodels.datasets 中的 boston 数据集。这个数据集包含以下字段（部分）：
		1. CRIM: 城镇人均犯罪率
		2. ZN: 划为超过 25,000 平方英尺居住用地的比例
		3. INDUS: 每个城镇非零售业务的比例
		4. CHAS: 是否靠近查尔斯河 (1 如果靠近；0 否则)
		5. NOX: 一氧化氮浓度 (每千万份)
		6. RM: 每户住宅的平均房间数
		7. AGE: 1940 年以前建造的自有住房单位的比例
		8. DIS: 到波士顿五个就业中心的加权距离
		9. RAD: 径向公路的可达性指数
		10. TAX: 每 10,000 美元的全额物业税率
		11. PTRATIO: 城镇的师生比例
		12. B: 1000(B_k−0.63)^2 ，其中 Bk 是城镇中黑人的比例
		13. LSTAT: 人口中地位较低人群的百分比
		14. MEDV: 自有住房的中位数估值（以千美元计）
3. 任务：
	1. 加载数据：
		1. 使用 statsmodels.api 加载 boston 数据集。
		2. 将数据集转换为 Pandas DataFrame，包含特征（data）和目标变量（target，即 MEDV）。
		3. 为 DataFrame 添加列名，列名可以从 boston.feature_names 获取，目标变量的列名设置为 ’MEDV’。
	2. 数据探索与预处理：
		1. 查看 DataFrame 的基本信息（如 head(), info(), describe()）。
		2. 检查是否存在缺失值。如果存在，请考虑如何处理（例如，删除包含缺失值的行或使用均值/中位数填充，你需要根据实际情况判断哪种方法更合适，这里假设数据集中没有缺失值）。
		3. 绘制犯罪率 (CRIM) 和房价 (MEDV) 的散点图，初步观察它们之间的关系。
		4. 计算犯罪率 (CRIM) 和房价 (MEDV) 的相关系数。
	3. 构建线性回归模型：
		1. 使用 Statsmodels 的 OLS（Ordinary Least Squares）方法构建一个简单的线性回归模型，其中犯罪率 (CRIM) 作为自变量，房价 (MEDV) 作为因变量。
		2. 使用 fit() 方法拟合模型。
	4. 模型分析：
		1. 打印模型的摘要信息 (summary())，解释模型的主要参数，例如截距（intercept）、斜率（coefficient of CRIM）、R-squared 值和 p-value。
		2. 根据模型的斜率和 p-value，解释犯罪率对房价的影响方向和统计显著性。
	5. 拓展（可选）：
		1. 尝试使用其他特征（例如 RM，每户住宅的平均房间数）作为自变量构建新的线性回归模型，并比较模型的结果。
		2. 构建包含多个自变量（例如 CRIM 和 RM）的多元线性回归模型，并分析结果。
	6. 提交内容：
		1. 加载数据并创建 Pandas DataFrame 的代码
		2. 数据探索和预处理的代码以及相应的解释
		3. 构建和拟合线性回归模型的代码
		4. 模型摘要信息的输出以及对模型参数的解释
		5. （如果完成拓展任务）拓展任务的代码和结果分析
4. 提示：
	1. 确保你的代码有清晰的注释。
	2. 对于模型结果的解释，要结合实际意义进行分析。
5. # 完整的Python代码：波士顿房价与犯罪率分析

```python
"""
波士顿房价与犯罪率关系分析
这个脚本加载波士顿房价数据集，探索犯罪率与房价的关系，
并使用线性回归模型进行分析。
"""

# 导入必要的库
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import statsmodels.api as sm
from statsmodels.datasets import boston

# 设置更好的图表样式
plt.style.use('seaborn')
sns.set_palette("deep")
plt.rcParams['figure.figsize'] = [10, 6]
plt.rcParams['font.size'] = 12

print("="*80)
print("1. 加载波士顿房价数据集")
print("="*80)

# 加载波士顿数据集
boston_data = boston.load()

# 将数据转换为Pandas DataFrame
df = pd.DataFrame(boston_data.data, columns=boston_data.feature_names)

# 添加目标变量(房价)
df['MEDV'] = boston_data.target

# 查看数据集前五行
print("数据集前5行:")
print(df.head())

print("\n"+"="*80)
print("2. 数据探索与预处理")
print("="*80)

# 查看数据集的基本信息
print("\n数据集的基本信息:")
print(df.info())

# 查看描述性统计
print("\n描述性统计:")
print(df.describe())

# 检查缺失值
print("\n缺失值检查:")
print(df.isnull().sum())

# 创建犯罪率与房价的散点图
plt.figure(figsize=(12, 5))

plt.subplot(1, 2, 1)
plt.scatter(df['CRIM'], df['MEDV'], alpha=0.6, color='darkblue')
plt.title('犯罪率与房价的关系')
plt.xlabel('犯罪率 (CRIM)')
plt.ylabel('房价中位数(千美元) (MEDV)')
plt.grid(True, alpha=0.3)

# 由于犯罪率分布不均，添加对数变换的散点图
plt.subplot(1, 2, 2)
plt.scatter(np.log(df['CRIM'] + 1), df['MEDV'], alpha=0.6, color='darkred')
plt.title('犯罪率(对数变换)与房价的关系')
plt.xlabel('犯罪率对数 log(CRIM+1)')
plt.ylabel('房价中位数(千美元) (MEDV)')
plt.grid(True, alpha=0.3)
plt.tight_layout()
plt.savefig('crime_vs_price.png')  # 保存图片以便查看

# 计算犯罪率与房价的相关系数
correlation = df['CRIM'].corr(df['MEDV'])
print(f"\n犯罪率与房价的相关系数: {correlation:.4f}")

print("\n"+"="*80)
print("3. 构建单变量线性回归模型: 犯罪率预测房价")
print("="*80)

# 添加常数项(截距)
X = sm.add_constant(df['CRIM'])
y = df['MEDV']

# 创建OLS模型并拟合
model = sm.OLS(y, X)
results = model.fit()

# 打印模型摘要
print(results.summary())

# 提取并解释关键参数
print("\n模型参数解释:")
print(f"截距(β₀): {results.params[0]:.4f} - 当犯罪率为0时预测的房价")
print(f"犯罪率系数(β₁): {results.params[1]:.4f} - 犯罪率每增加1个单位，房价的变化量")
print(f"R平方值: {results.rsquared:.4f} - 模型解释的房价变异比例")
print(f"犯罪率的p值: {results.pvalues[1]:.6f} - 衡量犯罪率影响是否显著")

# 结果解释
if results.params[1] < 0 and results.pvalues[1] < 0.05:
    print("结论: 犯罪率对房价有统计显著的负面影响。")
elif results.params[1] > 0 and results.pvalues[1] < 0.05:
    print("结论: 犯罪率对房价有统计显著的正面影响。")
else:
    print("结论: 犯罪率与房价之间没有统计显著的关系。")

# 可视化回归线
plt.figure(figsize=(12, 5))

plt.subplot(1, 2, 1)
plt.scatter(df['CRIM'], df['MEDV'], alpha=0.6, color='darkblue')
# 生成预测值
crim_range = np.linspace(df['CRIM'].min(), df['CRIM'].max(), 100)
X_pred = sm.add_constant(crim_range)
y_pred = results.predict(X_pred)
plt.plot(crim_range, y_pred, 'r-', linewidth=2)
plt.title('犯罪率与房价: 线性回归')
plt.xlabel('犯罪率 (CRIM)')
plt.ylabel('房价中位数(千美元) (MEDV)')
plt.grid(True, alpha=0.3)

# 犯罪率对数变换的回归线
plt.subplot(1, 2, 2)
X_log = sm.add_constant(np.log(df['CRIM'] + 1))
model_log = sm.OLS(y, X_log).fit()
plt.scatter(np.log(df['CRIM'] + 1), df['MEDV'], alpha=0.6, color='darkred')
log_range = np.linspace(0, np.log(df['CRIM'].max() + 1), 100)
X_log_pred = sm.add_constant(log_range)
y_log_pred = model_log.predict(X_log_pred)
plt.plot(log_range, y_log_pred, 'g-', linewidth=2)
plt.title('犯罪率(对数)与房价: 线性回归')
plt.xlabel('犯罪率对数 log(CRIM+1)')
plt.ylabel('房价中位数(千美元) (MEDV)')
plt.grid(True, alpha=0.3)
plt.tight_layout()
plt.savefig('crime_regression.png')  # 保存图片以便查看

print("\n"+"="*80)
print("4. 拓展分析")
print("="*80)

# 以平均房间数(RM)为自变量的模型
X_rm = sm.add_constant(df['RM'])
model_rm = sm.OLS(y, X_rm)
results_rm = model_rm.fit()
print("\n以平均房间数(RM)为自变量的模型:")
print(results_rm.summary())

# 构建包含犯罪率(CRIM)和房间数(RM)的多元回归模型
X_multi = sm.add_constant(df[['CRIM', 'RM']])
model_multi = sm.OLS(y, X_multi)
results_multi = model_multi.fit()
print("\n多元回归模型(CRIM和RM):")
print(results_multi.summary())

# 模型比较
print("\n模型比较:")
print(f"R平方值(仅CRIM): {results.rsquared:.4f}")
print(f"R平方值(仅RM): {results_rm.rsquared:.4f}")
print(f"R平方值(CRIM和RM): {results_multi.rsquared:.4f}")

# 绘制实际值与预测值的对比图
plt.figure(figsize=(15, 5))

# 模型1: 仅CRIM
plt.subplot(1, 3, 1)
plt.scatter(df['MEDV'], results.predict(), alpha=0.6, color='blue')
plt.plot([0, 50], [0, 50], 'r--')  # 45度参考线
plt.title('模型1: 仅犯罪率(CRIM)')
plt.xlabel('实际房价')
plt.ylabel('预测房价')
plt.xlim(0, 50)
plt.ylim(0, 50)
plt.grid(True, alpha=0.3)

# 模型2: 仅RM
plt.subplot(1, 3, 2)
plt.scatter(df['MEDV'], results_rm.predict(), alpha=0.6, color='green')
plt.plot([0, 50], [0, 50], 'r--')  # 45度参考线
plt.title('模型2: 仅房间数(RM)')
plt.xlabel('实际房价')
plt.ylabel('预测房价')
plt.xlim(0, 50)
plt.ylim(0, 50)
plt.grid(True, alpha=0.3)

# 模型3: CRIM+RM
plt.subplot(1, 3, 3)
plt.scatter(df['MEDV'], results_multi.predict(), alpha=0.6, color='purple')
plt.plot([0, 50], [0, 50], 'r--')  # 45度参考线
plt.title('模型3: 犯罪率+房间数')
plt.xlabel('实际房价')
plt.ylabel('预测房价')
plt.xlim(0, 50)
plt.ylim(0, 50)
plt.grid(True, alpha=0.3)

plt.tight_layout()
plt.savefig('model_comparison.png')  # 保存图片以便查看

print("\n分析完成! 请查看生成的图片文件和上面的结果进行分析。")
```

请运行以上代码，并将输出结果分享给我，我将基于这些结果进行详细分析。代码会生成三个图片文件：
1. crime_vs_price.png - 展示犯罪率与房价的散点图
2. crime_regression.png - 展示线性回归拟合结果
3. model_comparison.png - 比较三个不同模型的预测效果

这些图片和控制台输出的统计结果将帮助我们全面分析犯罪率与房价之间的关系。