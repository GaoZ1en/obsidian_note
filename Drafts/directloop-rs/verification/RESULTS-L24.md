# L=24 扩展与资源试跑

本页记录优化前版本；下文监测和运行说明对应当时的程序。当前算法、监测器和后续试跑见 `OPTIMIZATION.md` 与 README。

2026-10-16。结论：代码上限已扩展到 24，回归检查通过；**本次未算完 L=24，不能给出其最终秩、完整耗时或最终峰值内存**。

## 改动与验证

上限从 22 改为 24，同步命令行提示，并补充编码边界检查。消元算法、精确算术、耦合 `lambda=7/5` 和 checkpoint 格式不变。`L=24` 的 SDE seed 长度为 22，最长临时路径为 26，未超过 31 步的 `u64` 编码范围。

**Verified:** `cargo test --release --locked` 的 10 项测试通过，包括原 Mathematica 小长度 fixture、整数溢出和断点续算测试，以及新增的 24/26/31 步编码检查。静态检查通过。本次从零重算的所有 `L<=22` 计数与已有对照表一致。原 notebook SHA-256 仍为 `551f3fe07a4a9efc0417ab19d47d948c134080008eda708c4ee486fb0dd6490a`。

**Assumptions:** 沿用原 notebook 的路径等价关系、TrE 相对位置、常数列与有理数秩定义。此次只扩展可运行的长度，没有增加物理假设。

**Not verified:** `L=24` 的完整计数尚未得到，也没有独立 Mathematica 对照；本次没有在用户的 i9-14900HX / Linux / 64 GB 以上机器上运行。有限检查不能替代原物理关系的证明。

## 实测

Apple M5，10 核 CPU，16 GB 内存，macOS 26.5.1；4 个生成线程，另有至多两个消元线程。从空结果目录开始，保留正常断点。

| 项目 | 结果 |
|---|---:|
| 停止前总耗时 | 669.98 s（约 11 分 10 秒） |
| 最后完整完成的长度 | 22 |
| 停止时阶段 | L=24 的 SDE；尚未进入 TrE |
| L=24 seed 总数 | 19,685,474 |
| 最后一次进度记录的已处理非零 SDE 行 | 13,284,042 |
| 当时累计 SDE 秩（非最终结果） | 6,695,415 |
| 峰值常驻内存 RSS | 3.796 GiB |
| 采样最高 physical footprint（包含压缩页记账） | 7.798 GiB |
| 系统 swap 使用量 | 从 0.466 GiB 增至 2.024 GiB |
| 停止原因 | 系统 swap 增量超过设定的 1.5 GiB |

这次还设定了 8 GiB 的进程内存停止线，但实际先触发系统 swap 增长停止线。监测器终止了计算进程（退出信号 SIGTERM），不是算术错误或 OOM 崩溃。系统 swap 是整机指标，不能将增量全部归因于本进程；也不能由这次受限试跑断言 16 GB 一定算不完，或 64 GB 一定够用。

`L=24` 开始后的最后一条进度约为 609 秒。每两秒采样一次，总计时包含监测开销和最多约两秒的完成检测延迟。约第 606 秒另做过一次一秒的线程栈采样：主线程的 90 次采样均在消元入口，其中 73 次落在 `eliminate_column`，13 次落在 `lower_pivot`；生成线程大多等待。这个短时快照支持当时瓶颈在精确消元，而非生成线程数量不足，不代表整个运行各阶段的占比。

原始测量：`resources-m5-L24.json`；阶段日志：`resources-m5-L24-progress.log`。本机的 `runs/measured24/checkpoint.bin` 保留完整的 `L=22` 状态，约 856 MiB，未放入便携源码包。重启时可以从该断点继续，但 `L=24` 这一层需要重算。

## 在 64 GB 以上 Linux 上继续测试

源码目录内执行：

```sh
cargo test --release --locked
cargo build --release --locked
python3 verification/measure_resources.py --max-length 24 --threads 16 --memory-limit-gib 48 --run-dir runs/measured24-linux --report verification/resources-linux-L24.json
```

48 GiB 是此次试跑建议的 RSS 停止线，为系统留出余量；不是预测的需求量或硬性内存配额。Linux 脚本目前监测 RSS，未实施 macOS 的 footprint / swap 检查。实际需要多少内存、多久完成，仍以完整运行的报告为准。更多生成线程不会消除有主元依赖的消元瓶颈。
