# Direct loop：Rust 精确计算版

对应相邻 `directloopTest1_长度22_独立计算与论文对比分离版_20261013_2104.nb` 的主计算流程，已将可运行上限扩展到 24。原 notebook 未修改。Rust 程序独立生成 loop 基、SDE、TrE，并计算三个精确秩；生产代码不读取论文计数或 Mathematica 对照数据。

## Linux 运行

需要 64 位 Linux、Rust 1.87 或更新的稳定工具链，以及 Rust 工具链使用的系统链接器。首次构建会下载 `Cargo.lock` 锁定的 Rust 依赖；运行阶段不需要 Mathematica、Python 或网络。

在本目录执行：

```sh
cargo test --release --locked
./run.sh --max-length 22 --threads 16 --output runs/L22
```

编译完成后也可以直接运行：

```sh
./target/release/directloop --max-length 22 --threads 16 --output runs/L22-new
```

`--threads 16` 表示 16 个**生成工作线程**，另有至多两个精确消元线程；不是固定开启 16 个 Mathematica 内核。在 14900HX 上可以比较 `--threads 8` 与 `--threads 16` 的总耗时。生成已经足够快时，更多线程不会等比例加速精确消元；CPU 利用率不是完成速度的直接指标。

默认计算到 16，默认生成线程数取系统报告的可用并行度。`--batch-size` 默认 2048，批内短行优先，同一主元列优先保留更短的行。运行进度写到 stderr，最终 JSON 写到 stdout。输出目录必须为空，避免混合旧数据。

## 结果与续算

每完成一个偶数长度，输出目录保存：

- `table.json`：各长度累计 loops、SDE、TrE、AllE 计数和分阶段计时。
- `checkpoint.bin`：三个精确主元表、TrE 分组代表和已完成的长度。

从最后一个**已完成长度**继续：

```sh
./target/release/directloop --max-length 22 --threads 16 --output runs/L22 --resume
```

中断时尚未完成的整个长度会重新计算。临时文件写完并同步后才替换 checkpoint。`--no-checkpoint` 可以省去主元表保存，只保留 `table.json`，此时该次新增进度不能用于续算。只有自己生成且版本匹配的 checkpoint 才应作为输入。

这是主计算流程的移植，当前不提供 notebook 的交互式方程展示，也不读写原 `.wxf` 方程缓存或原 Mathematica checkpoint。两个程序的结果目录相互独立。

## 算术与约定

- 固定 `lambda = 7/5`；秩在有理数域上计算，不是浮点秩或模素数秩。
- 方向编码为 `0,1,2,3 = -a,a,-b,b`，反向方向为 `d xor 1`。
- loop key 是带前导 `1` 的四进制编码；空 loop 的 key 为 `1`，常数列保留。
- 与 notebook 相同，消去相邻回溯，并取循环旋转、反向和正方形 D4 作用下的规范代表。
- TrE 双迹 key 保留两个 loop 的相对位置，不能把两个 loop 各自平移后独立规范化。实现沿用 notebook 的 rooted-cycle 约定。
- 支持 `4 <= L <= 24` 的偶数长度。`L=24` 的 SDE 临时路径最长 26 步，仍在 31 步的整数编码范围内。没有把整数编码扩展到任意长度。

SDE 导出的系数为 `A + lambda B`；Rust 用等价整数行 `5A + 7B`。精确消元使用本原整数行：消去列 `c` 时，令 `g = gcd(p_c,r_c)`，计算 `(p_c/g) r - (r_c/g) p`，再除去整行系数的公因子。这些操作保持有理数行空间。

普通行先用带溢出检查的 `i64` 运算，溢出后整步重算为 `i128`；结果不能表示为 `i64` 时转为任意精度 `BigInt`。不会将溢出值截断或改为浮点数。release 构建也保留溢出检查。

## 性能设计

1. 路径使用整数和固定长度临时数组，生成时按 necklace 周期、无回溯和剩余闭合距离剪枝。
2. 前缀子树并行枚举；规范化使用最小循环旋转算法。
3. 后续批次持续预取，生成与消元重叠；待处理批次数有上限。
4. 按固定批次顺序消元，避免任务完成顺序改变主元选择和稀疏填充。
5. 子线程先去重 TrE 记录，避免将重复 cut 全部交给消元器。
6. 小主元行按需进一步消元并缓存，限制缓存化简造成的填充，减少重复追踪主元链；超出 128 项的尝试暂缓至新增 4096 个主元后再试。该限制只跳过可选的缓存化简，不会跳过必要消元、截断方程或丢弃非零项。
7. 只有 SDE/TrE 中新增的独立行余项送入 AllE；已在相应行空间内的行不再重复消元。余项与原始行只相差已有行的线性组合及非零比例，因此保持联合行空间。
8. SDE/TrE 与 AllE 使用独立主元表，可在两个线程上同时精确消元。
9. 消元交换并复用输入与输出缓冲区，长期保留的主元行收紧容量；单列主元直接删除对应列后精确归一化。
10. 路径使用栈缓冲区解码，SDE 系数原地合并，TrE 在批次缓冲区内完成逐 loop 去重，减少每条路径的临时分配。
11. 批内优先处理短行；相同主元列遇到更短的行时，交换主元并继续消去被换出的旧行。这些操作保留有理数行空间，未采用近似秩。

`--serial-ranks` 可关闭第 8 项，用于比较。生成与消元仍可重叠。各 `*_wall_seconds` 是阶段实际经过时间；`*_reduce_seconds` 是两个消元器忙碌时长之和，因重叠而可能大于该阶段 wall time。`compute_seconds` 不含该长度结束后的 checkpoint 写盘。

顺序可用 `--row-order input|short|pivot-asc|pivot-desc` 与 `--pivot-strategy first|short` 调整。较大批次不一定更快，也可能增加内存；本次默认值由实测选定，不代表其它长度的全局最优值。若更重视内存，可比较 `--batch-size 256 --row-order pivot-asc --pivot-strategy short`。已有 v1 checkpoint 仍可读取，但改变顺序后续算的耗时不能当作同配置从零运行的计时。

本轮优化的逐项比较与验证范围见 `verification/OPTIMIZATION.md`；早期的 `RESULTS.md` 和 `RESULTS-L24.md` 保留原版本测量结果。

## 验证

```sh
cargo test --release --locked
./target/release/directloop --verify verification/reference-small.json --threads 4
```

随包的 `reference-small.json` 是直接运行原 notebook 定义生成的，包含源文件 SHA-256、Mathematica 版本和平台。检查完整基列表、seed 列表、每个 SDE 的整数系数、规范化去重后的 TrE 记录，另有随机路径和独立 `MatrixRank` 对照；不会仅检查最终计数。

若旁边有原 notebook，且装有 Mathematica，可生成更大的完整记录对照：

```sh
mkdir -p verification/generated
wolframscript -file verification/export_reference.wls verification/generated/reference-16.json 16
./target/release/directloop --verify verification/generated/reference-16.json
```

导出器只执行选定的定义单元，不执行 notebook 中的大规模运行单元；原 notebook 的输入单元布局发生改变时应重新审查索引。原程序计时脚本是 `verification/benchmark_notebook.wls`。

本次执行的验证范围、结果和计时见 `verification/RESULTS.md`。这些计算对照验证移植一致性，不构成对原 notebook 所用物理关系的一般证明，也不证明有限长度之外的结论。

可选的线程回归与从空目录开始的计时（需要 Python 3）：

```sh
python3 verification/check_threads.py
python3 verification/benchmark.py --max-length 18 --threads 4 --repetitions 3 --output verification/local-benchmark.json
```

第二条加 `--mathematica` 可同时测原 notebook；需要将原 notebook 放在本项目目录的上一级，并安装可用的 `wolframscript`。

## L=24 资源测量

直接运行可用 `./run.sh --max-length 24 --threads 16 --output runs/L24`。也可在构建后运行带内存监测的脚本：

```sh
python3 verification/measure_resources.py --max-length 24 --threads 4 --memory-limit-gib 8 --run-dir runs/measured24 --report verification/local-resources24.json
```

该脚本每两秒采样进程常驻内存；macOS 还检查包含压缩页的 physical footprint，以及系统交换空间增量。默认在进程内存超过 8 GiB 或系统交换空间增加超过 1.5 GiB 时终止本次进程，保留此前完成长度的断点；Linux 使用 RSS 加该进程的 `VmSwap` 检查内存停止线，不检查整机 swap 增量。这是定时采样停止线，不能保证瞬时内存严格不超过阈值。可加 `--max-seconds 900` 设置 15 分钟的试跑停止线。日志在结果目录旁的 `*-logs` 目录。

资源报告包括退出状态、停止原因、已完成长度、峰值内存和采样记录。停止后可用原结果目录加 `--resume` 续算，未完成的长度会从头重算。`L=24` 没有原 notebook 内置表的独立对照值。

初版 M5 / 16 GB 试跑在约 11 分 10 秒时因系统交换空间增长触及停止线，尚未完成 SDE，未进入 TrE；不是一次完整的 `L=24` 计时。详见 `verification/RESULTS-L24.md`；优化版记录见 `verification/OPTIMIZATION.md`。64 GB 以上的 Linux 机器可将脚本的 `--memory-limit-gib` 改为 `48` 再试跑；这只是预留系统内存的测试设置，不是已证明足够的最终内存需求。Linux 的运行与监测分支尚未在目标机器实测。

优化版试跑完成了 `L=24` 的 SDE 阶段（约 605 秒），随后在 TrE 975/4421 个批次附近触及 8 GiB 进程内存停止线，总运行约 12 分 30 秒。完整的 `L=24` TrE/AllE 结果仍未取得。
