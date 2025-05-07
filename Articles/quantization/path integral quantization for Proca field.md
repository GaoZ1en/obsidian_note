
$$\tag{0.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$
---

introduce

$$\tag{1.2}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A_{\mu}\left(\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}+\eta ^{\mu \nu}m^{2}\right)A_{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}x'J^{\mu}(x)(D^{-1})_{\mu \nu}(x,x')J^{\nu}(x')\right)
\end{align}
$$

where $\displaystyle{D^{\mu \nu}=\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}}$, and $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{1.3}
\begin{align}
iD^{\mu \nu}(x)(D^{-1})_{\nu \rho}(x,x') & =\delta ^{\mu}_{\rho}\delta ^{4}(x-x') \\
(D^{-1})_{\mu \nu}(x,x') & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot (x-x')}\left( \eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{m^{2}} \right)
\end{align}
$$

then we have the correlation function

$$\tag{1.4}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(x') }  & = \frac{\braket{ 0|\mathcal{T}A_{\mu}(x)A_{\nu}(x')|0 }}{\braket{ 0|0 } } \\
 & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J^{\mu}(x)\delta J^{\nu}(x')}\Big|_{J=0} \\
 & =  (D^{-1})_{\mu \nu}(x,x')
\end{align}
$$

---

$$\tag{2.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right) \\
  & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i}A^{j}-\partial _{j}A^{i})+\frac{1}{2}(\partial _{0}A^{i}+\partial _{i}A^{0})^{2}+\frac{1}{2}m^{2}(A^{0})^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right)
\end{align}
$$

the equation of motion for $\displaystyle{A_{0}}$ is then

$$\tag{2.2}
\begin{align}
\partial _{i}^{2}A^{0}-m^{2}A^{0}=-\partial _{i}\partial _{0}A^{i}
\end{align}
$$

to solve this equation, we introduce Green function

$$\tag{2.3}
\begin{align}
(\partial _{i}^{2}-m^{2})G(\vec{x},\vec{x}') & =\delta ^{3}(\vec{x}-\vec{x}') \\
\implies G(\vec{x},\vec{x}') & = -\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{e^{i\vec{k}\cdot(\vec{x}-\vec{y})}}{\vec{k}^{2}+m^{2}} \\
\implies A^{0}(x) & =-\int \mathrm{d}^{3}\vec{y} G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y)
\end{align}
$$

then the effective Lagrangian becomes

$$\tag{2.4}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i}A^{j}-\partial _{j}A^{i})+\frac{1}{2}(\partial _{0}A^{i}+\partial _{i}A^{0})^{2}+\frac{1}{2}m^{2}(A^{0})^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\left( \partial _{0}A^{i}-\int \mathrm{d}^{3}\vec{y} \partial _{i}G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y)\right)^{2}+\frac{1}{2}m^{2}\left( \int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y) \right)^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\partial _{0}A^{i}\partial _{0}A^{i}+\partial _{0}A^{i}\int \mathrm{d}^{3}\vec{y} \partial _{i}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{i}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{i}G(\vec{x},\vec{z})\partial _{k}\partial _{0}A^{k}(z)\right. \\
 & \left. +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{k}\partial _{0}A^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2} \right) \\
 & =\int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]
\end{align}
$$

consider

$$\tag{2.5}
\begin{align}
\braket{ A_{0}(x)A_{i}(x') }  & = \frac{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}A_{0}(x)A_{i}(x')\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right) }}{\displaystyle{\int \mathcal{D}A^{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)A_{i}(x')\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\braket{ A^{j}(y)A_{i}(x') }  \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\braket{ 0|\mathcal{T}A^{j}(y)A_{i}(x')|0 }  \\
 & = \braket{ 0|\mathcal{T}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}A^{j}(y)\right)A_{i}(x')|0 } \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{i}(x')|0 } 
\end{align}
$$

where $\displaystyle{\mathcal{L}_{\mathrm{eff}}[A^{i}]}$ is given in (1.4). similarly, we have

$$\tag{2.6}
\begin{align}
\braket{ A_{0}(x)A_{0}(x') }  & =\frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A_{0}(x)A_{0}(x')\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int\mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A_{0}(x)A_{0}(x')\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}(\vec{\nabla} ^{2}-m^{2})A^{0}_{q}\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}(\vec{\nabla}^{2}-m^{2})A^{0}_{q}\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}A^{k}(z)+\delta(x_{0}-x_{0}')\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{i}{\vec{k}^{2}+m^{2}}e^{i\vec{k}\cdot(\vec{x}-\vec{x}')}\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)} \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}\braket{ A^{j}(y)A^{k}(z) }+i\delta(x_{0}-x_{0}')G(\vec{x},\vec{x}')  \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}\braket{0|\mathcal{T} A^{j}(y)A^{k}(z)|0 }+i\delta(x_{0}-x_{0}')G(\vec{x},\vec{x}')
\end{align}
$$

$$\tag{2.6'}
\begin{align}
 & \int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}\braket{0|\mathcal{T} A^{j}(y)A^{k}(z)|0 } \\
 & =\left( \braket{ 0|\mathcal{T}\left( \int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}A^{j}(y) \right)\left( \int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}A^{k}(z) \right)|0 } \right)+\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\braket{ 0|\left[ A^{j}(y), \int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}A^{k}(z)  \right]|0 } \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x')|0 }+\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y} G(\vec{x},\vec{y})\partial _{y,j}\braket{ 0|\left[A^{j}(y),A_{0}(x') \right]|0 } \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x')|0 }-\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\frac{\vec{\nabla}^{2}_{y}\partial_{y,0}}{m^{2}} \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(y-x')}
\end{align}
$$

$$\tag{.}
\begin{align}
 & \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}}\vec{\nabla}^{2}_{y}\partial _{y,0}e^{-i\omega(y_{0}-x_{0}')-i\vec{k}\cdot \vec{x}'}\int \mathrm{d}^{3}\vec{y} G(\vec{x},\vec{y})e^{i\vec{k}\cdot\vec{y}} \\
 & = \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{\omega _{k}\vec{k}^{2}}{k^{2}+m^{2}}e^{-i\omega(y_{0}-x_{0}')-i\vec{k}\cdot \vec{x}'} \int \mathrm{d}^{3}\vec{y} \int \frac{\mathrm{d}^{3}\vec{k}'}{(2\pi)^{3}} \frac{i}{\vec{k}'^{2}+m^{2}}e^{i\vec{k}'\cdot(\vec{x}-\vec{y})}e^{i\vec{k}\cdot \vec{y}} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{\omega _{k}\vec{k}^{2}}{k^{2}+m^{2}}e^{-i \omega(x_{0}-x_{0}')-i\vec{k}\cdot \vec{x}'}\int \mathrm{d}^{3}\vec{k}' \frac{i}{\vec{k}'^{2}+m^{2}} e^{i\vec{k}'\cdot \vec{x}}\int \frac{\mathrm{d}^{3}\vec{y}}{(2\pi)^{3}}e^{i\vec{y}\cdot(\vec{k}-\vec{k}')} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{\omega _{k}\vec{k}^{2}}{k^{2}+m^{2}}e^{-i \omega(x_{0}-x_{0}')-i\vec{k}\cdot \vec{x}'} \int \mathrm{d}^{3}\vec{k}' \frac{i}{\vec{k}'^{2}+m^{2}}e^{i\vec{k}'\cdot\vec{x}} \delta ^{3}(\vec{k}-\vec{k}') \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}\omega _{k}} \frac{i\vec{k}^{2}}{k^{2}+m^{2}} e^{ik\cdot(x-x')}
\end{align}
$$

remember that $\displaystyle{y_{0}=x_{0},z_{0}=x_{0}'}$. 

---

$$\tag{3.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right) \\
 & = \int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i})\right)
\end{align}
$$


作业 图像尺寸调整大师
- 目标： 学习使用 Python 的 Pillow (PIL) 库批量处理图像文件，具体是调整一个文件夹中所有图像的大小到指定尺寸。
- 背景： 在日常工作中，我们经常需要处理大量的图片，例如为网页优化图片大小，或者统一数据集中的图像尺寸。手动一张张调整效率低下且容易出错。利用脚本进行自动化处理是提高效率的关键。
- 任务描述：
	- 接收一个输入文件夹的路径作为参数。
	- 接收一个输出文件夹的路径作为参数。
	- 接收目标图像的宽度和高度作为参数。
	- 遍历输入文件夹中的所有图像文件（例如 .jpg, .png 等）。
	- 对于每一个找到的图像文件，使用 Pillow 库将其尺寸调整到指定的目标宽度和高度。
	- 将调整后的图像保存到指定的输出文件夹中。
	- 处理可能出现的错误，例如文件不是图片文件，或者文件损坏等。
- 要求：
	- 使用 Pillow 库进行图像处理。
	- 脚本应该可以通过命令行运行，接受输入文件夹、输出文件夹、目标宽度和目标高度作为参数。
	- 调整图像大小时，可以选择保持或不保持图像的原始宽高比（请在代码中注释说明你的选择）。
	- 处理非图像文件时，应跳过并给出提示（可选：记录到日志文件）。
	- 如果输出文件夹不存在，脚本应该能够自动创建它。
	- 在调整和保存图像时，尽量保持原始图像的文件格式（如果 Pillow 支持）。
	- 代码应有适当的注释，解释关键部分的逻辑。
	- 提交的代码文件应命名为 resize_images.py。
- 技术提示：
	- 可以使用 os 模块来遍历文件夹和处理文件路径。
	- 可以使用 argparse 模块来解析命令行参数。
	- Pillow 库的主要类是 Image。可以使用 Image.open() 打开图像，image.resize((width, height)) 调整尺寸，image.save(output_path) 保存图像。
	- 在调整尺寸时，image.resize() 方法默认不保持宽高比。如果需要保持宽高比，你需要根据原始图像的尺寸和目标尺寸计算新的尺寸。
	- 使用 try...except 块来处理文件操作和图像处理过程中可能出现的异常。
- 评分标准：
	- 正确性（能否正确批量调整图像大小）。
	- 命令行参数处理的完整性。
	- 对非图像文件的处理。
	- 输出文件夹的创建。
	- 代码的可读性和注释的清晰度。
	- 错误处理机制。
	- （可选）是否考虑了保持宽高比的情况。
- 思考题（可选，加分项）：
	- 如何在保持宽高比的同时，将图像填充到目标尺寸（例如，用白色或黑色填充空白区域）？
	- 如何批量处理子文件夹中的图像？
	- 如何添加一个选项，让用户选择调整尺寸时使用的采样滤波器（filter）？